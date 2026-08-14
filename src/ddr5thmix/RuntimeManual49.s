    .set noreorder
    .set noat
    .set nomacro

    .section .text.FUN_80049f7c,"ax",@progbits
    .globl FUN_80049f7c
FUN_80049f7c:
    addiu $sp,$sp,-24
    sw $ra,16($sp)
    jal FUN_8004bbb4
    addiu $a0,$a0,4
    jal FUN_8002a8b0
    nop
    lw $ra,16($sp)
    addu $v0,$zero,$zero
    jr $ra
    addiu $sp,$sp,24

    .section .text.FUN_80049fa4,"ax",@progbits
    .globl FUN_80049fa4
FUN_80049fa4:
    addiu $sp,$sp,-24
    sw $ra,16($sp)
    jal FUN_8004bc54
    addiu $a0,$a0,4
    jal FUN_8002a8b0
    nop
    lw $ra,16($sp)
    nop
    jr $ra
    addiu $sp,$sp,24
