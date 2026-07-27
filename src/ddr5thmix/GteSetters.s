    .set noreorder
    .set noat
    .set nomacro

    .section .text.SetRGBfifo,"ax",@progbits
    .globl SetRGBfifo
    .type SetRGBfifo, @function
    .ent SetRGBfifo
SetRGBfifo:
    lwc2    $20, 0($a0)
    lwc2    $21, 0($a1)
    lwc2    $22, 0($a2)
    jr      $ra
    nop
    .end SetRGBfifo
    .size SetRGBfifo, . - SetRGBfifo

    .section .text.SetIR123,"ax",@progbits
    .globl SetIR123
    .type SetIR123, @function
    .ent SetIR123
SetIR123:
    mtc2    $a0, $9
    mtc2    $a1, $10
    mtc2    $a2, $11
    jr      $ra
    nop
    .end SetIR123
    .size SetIR123, . - SetIR123

    .section .text.SetIR0,"ax",@progbits
    .globl SetIR0
    .type SetIR0, @function
    .ent SetIR0
SetIR0:
    mtc2    $a0, $8
    jr      $ra
    nop
    .end SetIR0
    .size SetIR0, . - SetIR0

    .section .text.SetSZfifo3,"ax",@progbits
    .globl SetSZfifo3
    .type SetSZfifo3, @function
    .ent SetSZfifo3
SetSZfifo3:
    mtc2    $a0, $17
    mtc2    $a1, $18
    mtc2    $a2, $19
    jr      $ra
    nop
    .end SetSZfifo3
    .size SetSZfifo3, . - SetSZfifo3

    .section .text.SetSZfifo4,"ax",@progbits
    .globl SetSZfifo4
    .type SetSZfifo4, @function
    .ent SetSZfifo4
SetSZfifo4:
    mtc2    $a0, $16
    mtc2    $a1, $17
    mtc2    $a2, $18
    mtc2    $a3, $19
    jr      $ra
    nop
    .end SetSZfifo4
    .size SetSZfifo4, . - SetSZfifo4

    .section .text.SetSXSYfifo,"ax",@progbits
    .globl SetSXSYfifo
    .type SetSXSYfifo, @function
    .ent SetSXSYfifo
SetSXSYfifo:
    mtc2    $a0, $12
    mtc2    $a1, $13
    mtc2    $a2, $14
    jr      $ra
    nop
    .end SetSXSYfifo
    .size SetSXSYfifo, . - SetSXSYfifo

    .section .text.SetRii,"ax",@progbits
    .globl SetRii
    .type SetRii, @function
    .ent SetRii
SetRii:
    ctc2    $a0, $0
    ctc2    $a1, $2
    ctc2    $a2, $4
    jr      $ra
    nop
    .end SetRii
    .size SetRii, . - SetRii

    .section .text.SetMAC123,"ax",@progbits
    .globl SetMAC123
    .type SetMAC123, @function
    .ent SetMAC123
SetMAC123:
    mtc2    $a0, $25
    mtc2    $a1, $26
    mtc2    $a2, $27
    jr      $ra
    nop
    .end SetMAC123
    .size SetMAC123, . - SetMAC123

    .section .text.SetData32,"ax",@progbits
    .globl SetData32
    .type SetData32, @function
    .ent SetData32
SetData32:
    mtc2    $a0, $30
    jr      $ra
    nop
    .end SetData32
    .size SetData32, . - SetData32

    .section .text.SetDQA,"ax",@progbits
    .globl SetDQA
    .type SetDQA, @function
    .ent SetDQA
SetDQA:
    ctc2    $a0, $27
    jr      $ra
    nop
    .end SetDQA
    .size SetDQA, . - SetDQA

    .section .text.SetDQB,"ax",@progbits
    .globl SetDQB
    .type SetDQB, @function
    .ent SetDQB
SetDQB:
    ctc2    $a0, $28
    jr      $ra
    nop
    .end SetDQB
    .size SetDQB, . - SetDQB
