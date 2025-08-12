#include <stdint.h>

#define MMIO_BASE       0x20000000
#define MAILBOX_BASE    (MMIO_BASE + 0xB880)
#define MAILBOX_READ    ((volatile uint32_t *)(MAILBOX_BASE + 0x00))
#define MAILBOX_STATUS  ((volatile uint32_t *)(MAILBOX_BASE + 0x18))
#define MAILBOX_WRITE   ((volatile uint32_t *)(MAILBOX_BASE + 0x20))
#define MAILBOX_FULL    0x80000000
#define MAILBOX_EMPTY   0x40000000

// Mailbox channels
#define MBOX_CH_PROP    8

// Framebuffer info (must be 16-byte aligned)
volatile uint32_t __attribute__((aligned(16))) mbox[36];

static void mailbox_write(uint8_t channel, uint32_t data) {
    while (*MAILBOX_STATUS & MAILBOX_FULL);
    *MAILBOX_WRITE = (data & ~0xF) | (channel & 0xF);
}

static uint32_t mailbox_read(uint8_t channel) {
    uint32_t val;
    do {
        while (*MAILBOX_STATUS & MAILBOX_EMPTY);
        val = *MAILBOX_READ;
    } while ((val & 0xF) != channel);
    return val & ~0xF;
}

// Map pixel coordinate to complex plane (adjust to zoom/pan)
static inline float map_to_real(int x, int width, float min_r, float max_r) {
    return min_r + ((float)x / (float)width) * (max_r - min_r);
}

static inline float map_to_imag(int y, int height, float min_i, float max_i) {
    return min_i + ((float)y / (float)height) * (max_i - min_i);
}

// Compute iteration count for Mandelbrot at point (cr, ci)
static int mandelbrot(float cr, float ci, int max_iter) {
    float zr = 0.0, zi = 0.0;
    int iter = 0;
    while (zr * zr + zi * zi <= 4.0 && iter < max_iter) {
        float temp = zr * zr - zi * zi + cr;
        zi = 2.0 * zr * zi + ci;
        zr = temp;
        iter++;
    }
    return iter;
}

// Convert HSV (0-255 for h,s,v) to RGB (0-255 each)
static void hsv_to_rgb(uint8_t h, uint8_t s, uint8_t v,
                       uint8_t *r, uint8_t *g, uint8_t *b) {
    uint8_t region, remainder, p, q, t;

    if (s == 0) {
        *r = v;
        *g = v;
        *b = v;
        return;
    }

    region = h / 43;              // 0-5
    remainder = (h - (region * 43)) * 6;

    p = (v * (255 - s)) >> 8;
    q = (v * (255 - ((s * remainder) >> 8))) >> 8;
    t = (v * (255 - ((s * (255 - remainder)) >> 8))) >> 8;

    switch (region) {
        case 0: *r = v; *g = t; *b = p; break;
        case 1: *r = q; *g = v; *b = p; break;
        case 2: *r = p; *g = v; *b = t; break;
        case 3: *r = p; *g = q; *b = v; break;
        case 4: *r = t; *g = p; *b = v; break;
        default:*r = v; *g = p; *b = q; break;
    }
}

// Colour wheel function: input 0–255 → RGB
void colour_wheel(uint8_t x, uint8_t *r, uint8_t *g, uint8_t *b) {
    hsv_to_rgb(x, 255, 255, r, g, b); // full saturation, full brightness
}

static inline uint32_t ilog2(uint32_t x) {
    uint32_t r = 0;
    while (x >>= 1) r++;
    return r;
}

uint32_t get_colour(uint8_t iter, int max_iter) {
    // Simple grayscale mapping
    uint8_t log_max_iter = max_iter;
    uint8_t log_iter = iter; // +1 to avoid log(0)
    uint8_t color = (uint8_t)(255 - (log_iter * 255 / log_max_iter))+200;
    uint8_t r, g, b;

    colour_wheel(color, &r, &g, &b);
    if (log_iter == log_max_iter) {
        // Color for points in the set (black)
        r = g = b = 150;
    }
    return (b << 16) | (g << 8) | r; // RGB888 format
}

void draw_mandelbrot(uint32_t *framebuffer, int width, int height) {
    const int max_iter = 500;

    // Define complex plane window (classic Mandelbrot view)
    float min_r = -2.5;
    float max_r = 1.0;
    float min_i = -1.0;
    float max_i = 1.0;

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            float cr = map_to_real(x, width, min_r, max_r);
            float ci = map_to_imag(y, height, min_i, max_i);

            int iter = mandelbrot(cr, ci, max_iter);

            // Assuming framebuffer is RGB888 in 0x00RRGGBB format
            uint32_t pixel = get_colour(iter, max_iter);

            framebuffer[y * width + x] = pixel;
        }
    }
}

void kernel_main(void) {
    // Prepare framebuffer request
    mbox[0] = 35 * 4;      // buffer size
    mbox[1] = 0;           // request code

    mbox[2] = 0x48003;     // set phys width/height
    mbox[3] = 8;
    mbox[4] = 8;
    mbox[5] = 640;         // width
    mbox[6] = 480;         // height

    mbox[7] = 0x48004;     // set virt width/height
    mbox[8] = 8;
    mbox[9] = 8;
    mbox[10] = 640;
    mbox[11] = 480;

    mbox[12] = 0x48005;    // set depth
    mbox[13] = 4;
    mbox[14] = 4;
    mbox[15] = 32;         // bits per pixel

    mbox[16] = 0x40001;    // allocate framebuffer
    mbox[17] = 8;
    mbox[18] = 8;
    mbox[19] = 16;         // alignment
    mbox[20] = 0;          // size

    mbox[21] = 0;          // end tag

    // Send to GPU
    mailbox_write(MBOX_CH_PROP, (uint32_t)(uintptr_t)mbox);
    mailbox_read(MBOX_CH_PROP);

    // Framebuffer address is at mbox[19]
    uint32_t fb_addr = mbox[19] & 0x3FFFFFFF; // convert GPU addr to ARM addr
    uint32_t fb_size = mbox[20];
    uint32_t pitch   = 640 * 4;

    // Fill framebuffer with blue
    uint32_t *fb = (uint32_t *)fb_addr;
    // for (uint32_t y = 0; y < 480; y++) {
    //     for (uint32_t x = 0; x < 640; x++) {
    //         fb[y * (pitch/4) + x] = 0xFF00FF; // Blue
    //     }
    // }

    draw_mandelbrot(fb, 640, 480);

    while (1); // hang
}
