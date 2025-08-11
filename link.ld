ENTRY(_start)

SECTIONS {
    . = 0x8000; /* Pi loads kernel here */

    .text : {
        *(.init)
        *(.text*)
    }
    .rodata : { *(.rodata*) }
    .data : { *(.data*) }
    .bss : { *(.bss*) *(COMMON) }
}
