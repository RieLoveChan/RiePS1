    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetVertex0,"ax",@progbits
    .globl SetVertex0
    .type SetVertex0, @function
    .ent SetVertex0
SetVertex0:
    lwc2    $0, 0($a0)
    lwc2    $1, 4($a0)
    jr      $ra
    nop
    .end SetVertex0
    .size SetVertex0, . - SetVertex0
