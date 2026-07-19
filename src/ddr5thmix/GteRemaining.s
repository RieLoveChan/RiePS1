    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetTransMatrix_8002b210,"ax",@progbits
    .globl SetTransMatrix_8002b210
    .type SetTransMatrix_8002b210, @function
    .ent SetTransMatrix_8002b210
SetTransMatrix_8002b210:
    lw      $t0, 20($a0)
    lw      $t1, 24($a0)
    lw      $t2, 28($a0)
    ctc2    $t0, $5
    ctc2    $t1, $6
    ctc2    $t2, $7
    jr      $ra
    nop
    .end SetTransMatrix_8002b210
    .size SetTransMatrix_8002b210, . - SetTransMatrix_8002b210

    .section .text.MulMatrix0,"ax",@progbits
    .globl MulMatrix0
    .type MulMatrix0, @function
    .ent MulMatrix0
MulMatrix0:
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    lw      $t3, 12($a0)
    lw      $t4, 16($a0)
    ctc2    $t0, $0
    ctc2    $t1, $1
    ctc2    $t2, $2
    ctc2    $t3, $3
    ctc2    $t4, $4
    lhu     $t0, 0($a1)
    lw      $t1, 4($a1)
    lw      $t2, 12($a1)
    lui     $at, 0xffff
    and     $t1, $t1, $at
    or      $t0, $t0, $t1
    mtc2    $t0, $0
    mtc2    $t2, $1
    nop
    .word   0x4a486012
    lhu     $t0, 2($a1)
    lw      $t1, 8($a1)
    lh      $t2, 14($a1)
    sll     $t1, $t1, 16
    or      $t0, $t0, $t1
    mfc2    $t3, $9
    mfc2    $t4, $10
    mfc2    $t5, $11
    mtc2    $t0, $0
    mtc2    $t2, $1
    nop
    .word   0x4a486012
    lhu     $t0, 4($a1)
    lw      $t1, 8($a1)
    lw      $t2, 16($a1)
    lui     $at, 0xffff
    and     $t1, $t1, $at
    or      $t0, $t0, $t1
    mfc2    $t6, $9
    mfc2    $t7, $10
    mfc2    $t8, $11
    mtc2    $t0, $0
    mtc2    $t2, $1
    nop
    .word   0x4a486012
    andi    $t3, $t3, 0xffff
    sll     $t6, $t6, 16
    or      $t6, $t6, $t3
    sw      $t6, 0($a2)
    andi    $t5, $t5, 0xffff
    sll     $t8, $t8, 16
    or      $t8, $t8, $t5
    sw      $t8, 12($a2)
    mfc2    $t0, $9
    mfc2    $t1, $10
    andi    $t0, $t0, 0xffff
    sll     $t4, $t4, 16
    or      $t0, $t0, $t4
    sw      $t0, 4($a2)
    andi    $t7, $t7, 0xffff
    sll     $t1, $t1, 16
    or      $t1, $t1, $t7
    sw      $t1, 8($a2)
    swc2    $11, 16($a2)
    addu    $v0, $a2, $zero
    jr      $ra
    nop
    .end MulMatrix0
    .size MulMatrix0, . - MulMatrix0

    .section .text.SetRotMatrix,"ax",@progbits
    .globl SetRotMatrix
    .type SetRotMatrix, @function
    .ent SetRotMatrix
SetRotMatrix:
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    lw      $t3, 12($a0)
    lw      $t4, 16($a0)
    ctc2    $t0, $0
    ctc2    $t1, $1
    ctc2    $t2, $2
    ctc2    $t3, $3
    ctc2    $t4, $4
    jr      $ra
    nop
    .end SetRotMatrix
    .size SetRotMatrix, . - SetRotMatrix

    .section .text.SetLightMatrix,"ax",@progbits
    .globl SetLightMatrix
    .type SetLightMatrix, @function
    .ent SetLightMatrix
SetLightMatrix:
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    lw      $t3, 12($a0)
    lw      $t4, 16($a0)
    ctc2    $t0, $8
    ctc2    $t1, $9
    ctc2    $t2, $10
    ctc2    $t3, $11
    ctc2    $t4, $12
    jr      $ra
    nop
    .end SetLightMatrix
    .size SetLightMatrix, . - SetLightMatrix

    .section .text.SetColorMatrix,"ax",@progbits
    .globl SetColorMatrix
    .type SetColorMatrix, @function
    .ent SetColorMatrix
SetColorMatrix:
    lw      $t0, 0($a0)
    lw      $t1, 4($a0)
    lw      $t2, 8($a0)
    lw      $t3, 12($a0)
    lw      $t4, 16($a0)
    ctc2    $t0, $16
    ctc2    $t1, $17
    ctc2    $t2, $18
    ctc2    $t3, $19
    ctc2    $t4, $20
    jr      $ra
    nop
    .end SetColorMatrix
    .size SetColorMatrix, . - SetColorMatrix

    .section .text.SetTransMatrix,"ax",@progbits
    .globl SetTransMatrix
    .type SetTransMatrix, @function
    .ent SetTransMatrix
SetTransMatrix:
    lw      $t0, 20($a0)
    lw      $t1, 24($a0)
    lw      $t2, 28($a0)
    ctc2    $t0, $5
    ctc2    $t1, $6
    ctc2    $t2, $7
    jr      $ra
    nop
    .end SetTransMatrix
    .size SetTransMatrix, . - SetTransMatrix

    .section .text.SetFarColor,"ax",@progbits
    .globl SetFarColor
    .type SetFarColor, @function
    .ent SetFarColor
SetFarColor:
    sll     $a0, $a0, 4
    sll     $a1, $a1, 4
    sll     $a2, $a2, 4
    ctc2    $a0, $21
    ctc2    $a1, $22
    ctc2    $a2, $23
    jr      $ra
    nop
    .end SetFarColor
    .size SetFarColor, . - SetFarColor

    .section .text.SetBackColor,"ax",@progbits
    .globl SetBackColor
    .type SetBackColor, @function
    .ent SetBackColor
SetBackColor:
    sll     $a0, $a0, 4
    sll     $a1, $a1, 4
    sll     $a2, $a2, 4
    ctc2    $a0, $13
    ctc2    $a1, $14
    ctc2    $a2, $15
    jr      $ra
    nop
    .end SetBackColor
    .size SetBackColor, . - SetBackColor

    .section .text.AverageZ3,"ax",@progbits
    .globl AverageZ3
    .type AverageZ3, @function
    .ent AverageZ3
AverageZ3:
    mtc2    $a0, $17
    mtc2    $a1, $18
    mtc2    $a2, $19
    nop
    .word   0x4b58002d
    mfc2    $v0, $7
    jr      $ra
    nop
    .end AverageZ3
    .size AverageZ3, . - AverageZ3

    .section .text.AverageZ4,"ax",@progbits
    .globl AverageZ4
    .type AverageZ4, @function
    .ent AverageZ4
AverageZ4:
    mtc2    $a0, $16
    mtc2    $a1, $17
    mtc2    $a2, $18
    mtc2    $a3, $19
    nop
    .word   0x4b68002e
    mfc2    $v0, $7
    jr      $ra
    nop
    .end AverageZ4
    .size AverageZ4, . - AverageZ4

    .section .text.Lzc,"ax",@progbits
    .globl Lzc
    .type Lzc, @function
    .ent Lzc
Lzc:
    mtc2    $a0, $30
    nop
    nop
    mfc2    $v0, $31
    jr      $ra
    nop
    .end Lzc
    .size Lzc, . - Lzc
