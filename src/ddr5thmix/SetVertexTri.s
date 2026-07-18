    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetVertexTri,"ax",@progbits
    .globl SetVertexTri
    .type SetVertexTri, @function
    .ent SetVertexTri
SetVertexTri:
    lwc2    $0, 0($a0)
    lwc2    $1, 4($a0)
    lwc2    $2, 0($a1)
    lwc2    $3, 4($a1)
    lwc2    $4, 0($a2)
    lwc2    $5, 4($a2)
    jr      $ra
    nop
    .end SetVertexTri
    .size SetVertexTri, . - SetVertexTri
