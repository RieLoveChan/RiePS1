    .set noreorder
    .set noat
    .set nomacro

    .section .text.LightColor,"ax",@progbits
    .globl LightColor
    .type LightColor, @function
    .ent LightColor
LightColor:
    lwc2    $9, 0($a0)
    lwc2    $10, 4($a0)
    lwc2    $11, 8($a0)
    nop
    .word   0x4a4da412
    swc2    $9, 0($a1)
    swc2    $10, 4($a1)
    swc2    $11, 8($a1)
    jr      $ra
    nop
    .end LightColor
    .size LightColor, . - LightColor

    .section .text.DpqColorLight,"ax",@progbits
    .globl DpqColorLight
    .type DpqColorLight, @function
    .ent DpqColorLight
DpqColorLight:
    lwc2    $9, 0($a0)
    lwc2    $10, 4($a0)
    lwc2    $11, 8($a0)
    lwc2    $6, 0($a1)
    mtc2    $a2, $8
    nop
    .word   0x4a680029
    swc2    $22, 0($a3)
    jr      $ra
    nop
    .end DpqColorLight
    .size DpqColorLight, . - DpqColorLight

    .section .text.DpqColor3,"ax",@progbits
    .globl DpqColor3
    .type DpqColor3, @function
    .ent DpqColor3
DpqColor3:
    lwc2    $20, 0($a0)
    lwc2    $21, 0($a1)
    lwc2    $22, 0($a2)
    lwc2    $6, 0($a2)
    mtc2    $a3, $8
    nop
    .word   0x4af8002a
    lw      $t0, 16($sp)
    lw      $t1, 20($sp)
    lw      $t2, 24($sp)
    swc2    $20, 0($t0)
    swc2    $21, 0($t1)
    swc2    $22, 0($t2)
    jr      $ra
    nop
    .end DpqColor3
    .size DpqColor3, . - DpqColor3

    .section .text.Intpl,"ax",@progbits
    .globl Intpl
    .type Intpl, @function
    .ent Intpl
Intpl:
    lwc2    $9, 0($a0)
    lwc2    $10, 4($a0)
    lwc2    $11, 8($a0)
    mtc2    $a1, $8
    nop
    .word   0x4a980011
    swc2    $22, 0($a2)
    jr      $ra
    nop
    .end Intpl
    .size Intpl, . - Intpl

    .section .text.Square12,"ax",@progbits
    .globl Square12
    .type Square12, @function
    .ent Square12
Square12:
    lwc2    $9, 0($a0)
    lwc2    $10, 4($a0)
    lwc2    $11, 8($a0)
    nop
    .word   0x4aa80428
    swc2    $25, 0($a1)
    swc2    $26, 4($a1)
    swc2    $27, 8($a1)
    jr      $ra
    addu    $v0, $a1, $zero
    .end Square12
    .size Square12, . - Square12

    .section .text.Square0,"ax",@progbits
    .globl Square0
    .type Square0, @function
    .ent Square0
Square0:
    lwc2    $9, 0($a0)
    lwc2    $10, 4($a0)
    lwc2    $11, 8($a0)
    nop
    .word   0x4aa00428
    swc2    $25, 0($a1)
    swc2    $26, 4($a1)
    swc2    $27, 8($a1)
    jr      $ra
    addu    $v0, $a1, $zero
    .end Square0
    .size Square0, . - Square0

    .section .text.OuterProduct12,"ax",@progbits
    .globl OuterProduct12
    .type OuterProduct12, @function
    .ent OuterProduct12
OuterProduct12:
    cfc2    $t5, $0
    cfc2    $t6, $2
    cfc2    $t7, $4
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    ctc2    $t0, $0
    ctc2    $t1, $2
    ctc2    $t2, $4
    lwc2    $11, 8($a1)
    lwc2    $9, 0($a1)
    lwc2    $10, 4($a1)
    nop
    .word   0x4b78000c
    swc2    $25, 0($a2)
    swc2    $26, 4($a2)
    swc2    $27, 8($a2)
    ctc2    $t5, $0
    ctc2    $t6, $2
    ctc2    $t7, $4
    jr      $ra
    nop
    .end OuterProduct12
    .size OuterProduct12, . - OuterProduct12

    .section .text.OuterProduct0,"ax",@progbits
    .globl OuterProduct0
    .type OuterProduct0, @function
    .ent OuterProduct0
OuterProduct0:
    cfc2    $t5, $0
    cfc2    $t6, $2
    cfc2    $t7, $4
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    ctc2    $t0, $0
    ctc2    $t1, $2
    ctc2    $t2, $4
    lwc2    $11, 8($a1)
    lwc2    $9, 0($a1)
    lwc2    $10, 4($a1)
    nop
    .word   0x4b70000c
    swc2    $25, 0($a2)
    swc2    $26, 4($a2)
    swc2    $27, 8($a2)
    ctc2    $t5, $0
    ctc2    $t6, $2
    ctc2    $t7, $4
    jr      $ra
    nop
    .end OuterProduct0
    .size OuterProduct0, . - OuterProduct0
