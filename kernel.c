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
    for (uint32_t y = 0; y < 480; y++) {
        for (uint32_t x = 0; x < 640; x++) {
            fb[y * (pitch/4) + x] = 0xFF00FF; // Blue
        }
    }

    while (1); // hang
}
