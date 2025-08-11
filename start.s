.section .init
.global _start
_start:
    // Disable interrupts
    @ cpsid i

    // Set up stack pointer
    ldr sp, =_stack_top

    // Call kernel main
    bl kernel_main

// Halt if we ever return
halt:
    b halt

.section .bss
.space 4096   // simple stack
_stack_top:
