    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetVertex1,"ax",@progbits
    .globl SetVertex1
    .type SetVertex1, @function
    .ent SetVertex1
SetVertex1:
    lwc2    $2, 0($a0)
    lwc2    $3, 4($a0)
    jr      $ra
    nop
    .end SetVertex1
    .size SetVertex1, . - SetVertex1
