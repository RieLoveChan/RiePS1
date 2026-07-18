    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetVertex2,"ax",@progbits
    .globl SetVertex2
    .type SetVertex2, @function
    .ent SetVertex2
SetVertex2:
    lwc2    $4, 0($a0)
    lwc2    $5, 4($a0)
    jr      $ra
    nop
    .end SetVertex2
    .size SetVertex2, . - SetVertex2
