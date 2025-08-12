# Cross compiler prefix
CROSS_COMPILE = arm-none-eabi-
CC  = $(CROSS_COMPILE)gcc
LD  = $(CROSS_COMPILE)gcc
OBJCOPY = $(CROSS_COMPILE)objcopy

# Source files
ASM_SRC = start.s
C_SRC   = kernel.c

# Output directory
OUT_DIR = debug

# Output files
ASM_OBJ = $(OUT_DIR)/start.o
C_OBJ   = $(OUT_DIR)/kernel.o
ELF     = $(OUT_DIR)/kernel.elf
BIN     = $(OUT_DIR)/kernel.img

# Compiler flags (no -lgcc here)
CFLAGS = -Wall -O2 -ffreestanding -nostdlib -nostartfiles -mcpu=arm1176jzf-s

# Linker flags (include linker script and libgcc)
LDFLAGS = -T link.ld -lgcc

# Ensure output directory exists
$(shell mkdir -p $(OUT_DIR))

all: $(BIN)

# Compile assembly
$(ASM_OBJ): $(ASM_SRC)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile C source
$(C_OBJ): $(C_SRC)
	$(CC) $(CFLAGS) -c $< -o $@

# Link the ELF
$(ELF): $(ASM_OBJ) $(C_OBJ)
	$(LD) $(CFLAGS) -o $@ $^ $(LDFLAGS) -lgcc

# Convert ELF to binary image
$(BIN): $(ELF)
	$(OBJCOPY) -O binary $< $@

clean:
	rm -rf $(OUT_DIR)
