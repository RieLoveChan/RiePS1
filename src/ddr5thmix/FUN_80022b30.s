    .set noreorder
    .set noat
    .set nomacro

    .section .text.FUN_80022b30,"ax",@progbits
    .globl FUN_80022b30
    .type FUN_80022b30, @function
    .ent FUN_80022b30
FUN_80022b30:
.L80022b30:
    addiu $sp,$sp,-0x20
.L80022b34:
    addu $a3,$zero,$zero
.L80022b38:
    lui $v0,0x800b
.L80022b3c:
    sw $s0,0x10($sp)
.L80022b40:
    addu $s0,$v0,$zero
.L80022b44:
    lw $v1,-0x3718($s0)
.L80022b48:
    lui $v0,0x800b
.L80022b4c:
    sw $s1,0x14($sp)
.L80022b50:
    addiu $s1,$v0,-0x3720
.L80022b54:
    sw $ra,0x18($sp)
.L80022b58:
    addiu $a2,$v1,0x54
.L80022b5c:
    lw $v1,0x0($a2)
.L80022b60:
    nop
.L80022b64:
    andi $v0,$v1,0x1000
.L80022b68:
    beq $v0,$zero,.L80022b84
.L80022b6c:
    nop
.L80022b70:
    lw $v1,-0x3718($s0)
.L80022b74:
    nop
.L80022b78:
    lhu $v0,0x2c($v1)
.L80022b7c:
    j 0x80022ba4
.L80022b80:
    addiu $v0,$v0,-0x1
.L80022b84:
    andi $v0,$v1,0x4000
.L80022b88:
    beq $v0,$zero,.L80022ba8
.L80022b8c:
    nop
.L80022b90:
    lw $v1,-0x3718($s0)
.L80022b94:
    nop
.L80022b98:
    lhu $v0,0x2c($v1)
.L80022b9c:
    nop
.L80022ba0:
    addiu $v0,$v0,0x1
.L80022ba4:
    sh $v0,0x2c($v1)
.L80022ba8:
    lw $a1,-0x3718($s0)
.L80022bac:
    lui $v0,0x5555
.L80022bb0:
    lh $a0,0x2c($a1)
.L80022bb4:
    ori $v0,$v0,0x5556
.L80022bb8:
    addiu $a0,$a0,0x3
.L80022bbc:
    mult $a0,$v0
.L80022bc0:
    sra $v1,$a0,0x1f
.L80022bc4:
    mfhi $t0
.L80022bc8:
    subu $v1,$t0,$v1
.L80022bcc:
    sll $v0,$v1,0x1
.L80022bd0:
    addu $v0,$v0,$v1
.L80022bd4:
    subu $a0,$a0,$v0
.L80022bd8:
    sh $a0,0x2c($a1)
.L80022bdc:
    lw $v0,0x0($a2)
.L80022be0:
    nop
.L80022be4:
    andi $v0,$v0,0x20
.L80022be8:
    beq $v0,$zero,.L80022c3c
.L80022bec:
    sll $v0,$a0,0x10
.L80022bf0:
    sra $v0,$v0,0xf
.L80022bf4:
    addu $v0,$v0,$s1
.L80022bf8:
    lh $v1,0x0($v0)
.L80022bfc:
    li $v0,0x2
.L80022c00:
    bne $v1,$v0,.L80022c10
.L80022c04:
    nop
.L80022c08:
    jal FUN_80049d3c
.L80022c0c:
    nop
.L80022c10:
    lw $v0,-0x3718($s0)
.L80022c14:
    nop
.L80022c18:
    lh $v0,0x2c($v0)
.L80022c1c:
    nop
.L80022c20:
    sll $v0,$v0,0x1
.L80022c24:
    addu $v0,$v0,$s1
.L80022c28:
    lhu $a0,0x0($v0)
.L80022c2c:
    jal FUN_80023210
.L80022c30:
    nop
.L80022c34:
    j 0x80022ce4
.L80022c38:
    nop
.L80022c3c:
    addiu $a3,$a3,0x1
.L80022c40:
    slti $v0,$a3,0x2
.L80022c44:
    bne $v0,$zero,.L80022b5c
.L80022c48:
    addiu $a2,$a2,0x10
.L80022c4c:
    li $a0,-0x20
.L80022c50:
    li $a1,-0x54
.L80022c54:
    lui $a2,0x800b
.L80022c58:
    addiu $a2,$a2,-0x373c
.L80022c5c:
    jal FUN_80021470
.L80022c60:
    addu $a3,$zero,$zero
.L80022c64:
    li $a0,-0x20
.L80022c68:
    li $a1,-0x40
.L80022c6c:
    lui $a2,0x800b
.L80022c70:
    addiu $a2,$a2,-0x3734
.L80022c74:
    jal FUN_80021470
.L80022c78:
    addu $a3,$zero,$zero
.L80022c7c:
    li $a0,-0x20
.L80022c80:
    li $a1,-0x32
.L80022c84:
    lui $a2,0x800b
.L80022c88:
    addiu $a2,$a2,-0x372c
.L80022c8c:
    jal FUN_80021470
.L80022c90:
    addu $a3,$zero,$zero
.L80022c94:
    li $a0,-0x20
.L80022c98:
    li $a1,-0x24
.L80022c9c:
    lui $a2,0x800b
.L80022ca0:
    addiu $a2,$a2,-0x3728
.L80022ca4:
    jal FUN_80021470
.L80022ca8:
    addu $a3,$zero,$zero
.L80022cac:
    li $a0,-0x34
.L80022cb0:
    lui $v0,0x800b
.L80022cb4:
    lui $a2,0x8002
.L80022cb8:
    lw $v0,-0x3718($v0)
.L80022cbc:
    addiu $a2,$a2,-0x57e8
.L80022cc0:
    lh $v0,0x2c($v0)
.L80022cc4:
    addu $a3,$zero,$zero
.L80022cc8:
    sll $a1,$v0,0x3
.L80022ccc:
    subu $a1,$a1,$v0
.L80022cd0:
    sll $a1,$a1,0x1
.L80022cd4:
    addiu $a1,$a1,-0x40
.L80022cd8:
    sll $a1,$a1,0x10
.L80022cdc:
    jal FUN_80021470
.L80022ce0:
    sra $a1,$a1,0x10
.L80022ce4:
    lw $ra,0x18($sp)
.L80022ce8:
    lw $s1,0x14($sp)
.L80022cec:
    lw $s0,0x10($sp)
.L80022cf0:
    jr $ra
.L80022cf4:
    addiu $sp,$sp,0x20
    .end FUN_80022b30
    .size FUN_80022b30, . - FUN_80022b30
