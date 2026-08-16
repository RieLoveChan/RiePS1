    .set noreorder
    .set noat
    .set nomacro
    .section .text.FUN_80023048,"ax",@progbits
    .globl FUN_80023048
FUN_80023048:
    lui $v0,0x800b
    lw $v0,-0x3718($v0)
    addiu $sp,$sp,-24
    sw $ra,16($sp)
    lh $v1,42($v0)
    addiu $v0,$zero,1
    beq $v1,$v0,.Lone
    slti $v0,$v1,2
    beq $v0,$zero,.Lge
    nop
    beq $v1,$zero,.Lzero
    nop
    j .Ldone
    nop
.Lge:
    addiu $v0,$zero,2
    beq $v1,$v0,.Ltwo
    nop
    j .Ldone
    nop
.Lzero:
    jal FUN_800235f8
    nop
    j .Ldone
    nop
.Lone:
    jal FUN_80023690
    nop
    j .Ldone
    nop
.Ltwo:
    jal FUN_80022f04
    nop
.Ldone:
    lw $ra,16($sp)
    nop
    jr $ra
    addiu $sp,$sp,24
