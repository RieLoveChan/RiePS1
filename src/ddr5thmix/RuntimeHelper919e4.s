.set noreorder
.set noat
.set nomacro

.section .text.FUN_800919e4
.globl FUN_800919e4
.type FUN_800919e4, @function
FUN_800919e4:
/* Runtime resource and state helper. */
.L800919e4:
/* 0x800919e4 */ addiu	$sp,$sp,-24
.L800919e8:
/* 0x800919e8 */ sw	$s0,16($sp)
.L800919ec:
/* 0x800919ec */ addu	$s0,$a0,$zero
.L800919f0:
/* 0x800919f0 */ addiu	$a0,$zero,86
.L800919f4:
/* 0x800919f4 */ addiu	$a1,$zero,-1
.L800919f8:
/* 0x800919f8 */ sw	$ra,20($sp)
.L800919fc:
/* 0x800919fc */ jal	0x8002a8b0
.L80091a00:
/* 0x80091a00 */ addu	$a2,$a1,$zero
.L80091a04:
/* 0x80091a04 */ addu	$a0,$s0,$zero
.L80091a08:
/* 0x80091a08 */ addu	$a1,$zero,$zero
.L80091a0c:
/* 0x80091a0c */ jal	0x8005b2a4
.L80091a10:
/* 0x80091a10 */ addiu	$a2,$zero,104
.L80091a14:
/* 0x80091a14 */ lui	$v0,0x800f
.L80091a18:
/* 0x80091a18 */ lw	$v1,10488($v0)
.L80091a1c:
/* 0x80091a1c */ addiu	$v0,$zero,-1
.L80091a20:
/* 0x80091a20 */ sw	$v0,92($s0)
.L80091a24:
/* 0x80091a24 */ jal	0x8007f968
.L80091a28:
/* 0x80091a28 */ sw	$v1,88($s0)
.L80091a2c:
/* 0x80091a2c */ andi	$v0,$v0,0x2
.L80091a30:
/* 0x80091a30 */ bne	$v0,$zero,.L80091a44
.L80091a34:
/* 0x80091a34 */ addiu	$v0,$zero,2
.L80091a38:
/* 0x80091a38 */ jal	0x8007f968
.L80091a3c:
/* 0x80091a3c */ sll	$zero,$zero,0x0
.L80091a40:
/* 0x80091a40 */ andi	$v0,$v0,0x1
.L80091a44:
/* 0x80091a44 */ sltu	$v0,$zero,$v0
.L80091a48:
/* 0x80091a48 */ jal	0x8007f968
.L80091a4c:
/* 0x80091a4c */ sh	$v0,6($s0)
.L80091a50:
/* 0x80091a50 */ andi	$v0,$v0,0x2
.L80091a54:
/* 0x80091a54 */ bne	$v0,$zero,.L80091a68
.L80091a58:
/* 0x80091a58 */ addiu	$v1,$zero,2
.L80091a5c:
/* 0x80091a5c */ jal	0x8007f968
.L80091a60:
/* 0x80091a60 */ sll	$zero,$zero,0x0
.L80091a64:
/* 0x80091a64 */ andi	$v1,$v0,0x1
.L80091a68:
/* 0x80091a68 */ addu	$a1,$zero,$zero
.L80091a6c:
/* 0x80091a6c */ lui	$v0,0x800f
.L80091a70:
/* 0x80091a70 */ addiu	$a2,$v0,10504
.L80091a74:
/* 0x80091a74 */ addu	$a0,$s0,$zero
.L80091a78:
/* 0x80091a78 */ xori	$v0,$v1,0x2
.L80091a7c:
/* 0x80091a7c */ sltiu	$v0,$v0,1
.L80091a80:
/* 0x80091a80 */ sh	$v0,8($s0)
.L80091a84:
/* 0x80091a84 */ addiu	$v0,$zero,8
.L80091a88:
/* 0x80091a88 */ sh	$v0,4($s0)
.L80091a8c:
/* 0x80091a8c */ ori	$v0,$zero,0x9284
.L80091a90:
/* 0x80091a90 */ lb	$v1,36($a2)
.L80091a94:
/* 0x80091a94 */ addu	$a2,$a2,$v0
.L80091a98:
/* 0x80091a98 */ addiu	$a1,$a1,1
.L80091a9c:
/* 0x80091a9c */ slti	$v0,$a1,2
.L80091aa0:
/* 0x80091aa0 */ sw	$v1,96($a0)
.L80091aa4:
/* 0x80091aa4 */ bne	$v0,$zero,.L80091a8c
.L80091aa8:
/* 0x80091aa8 */ addiu	$a0,$a0,4
.L80091aac:
/* 0x80091aac */ addu	$a1,$zero,$zero
.L80091ab0:
/* 0x80091ab0 */ lui	$v0,0x8002
.L80091ab4:
/* 0x80091ab4 */ addiu	$t3,$v0,-6320
.L80091ab8:
/* 0x80091ab8 */ addu	$a2,$s0,$zero
.L80091abc:
/* 0x80091abc */ lui	$v0,0x8002
.L80091ac0:
/* 0x80091ac0 */ addiu	$t2,$v0,-6256
.L80091ac4:
/* 0x80091ac4 */ sll	$t0,$a1,0x5
.L80091ac8:
/* 0x80091ac8 */ sll	$v1,$a1,0x2
.L80091acc:
/* 0x80091acc */ lh	$v0,0($a2)
.L80091ad0:
/* 0x80091ad0 */ lw	$a3,0($t2)
.L80091ad4:
/* 0x80091ad4 */ sll	$v0,$v0,0x2
.L80091ad8:
/* 0x80091ad8 */ addu	$v0,$v0,$t0
.L80091adc:
/* 0x80091adc */ addu	$v0,$v0,$t3
.L80091ae0:
/* 0x80091ae0 */ lw	$a0,0($v0)
.L80091ae4:
/* 0x80091ae4 */ lui	$v0,0x8002
.L80091ae8:
/* 0x80091ae8 */ addiu	$v0,$v0,-6248
.L80091aec:
/* 0x80091aec */ j	0x80091b4c
.L80091af0:
/* 0x80091af0 */ addu	$t1,$v1,$v0
.L80091af4:
/* 0x80091af4 */ lw	$v0,0($t1)
.L80091af8:
/* 0x80091af8 */ sll	$zero,$zero,0x0
.L80091afc:
/* 0x80091afc */ bne	$a0,$v0,.L80091b68
.L80091b00:
/* 0x80091b00 */ sll	$zero,$zero,0x0
.L80091b04:
/* 0x80091b04 */ lh	$v0,8($s0)
.L80091b08:
/* 0x80091b08 */ sll	$zero,$zero,0x0
.L80091b0c:
/* 0x80091b0c */ bne	$v0,$zero,.L80091b68
.L80091b10:
/* 0x80091b10 */ sll	$zero,$zero,0x0
.L80091b14:
/* 0x80091b14 */ lh	$v0,0($a2)
.L80091b18:
/* 0x80091b18 */ lh	$v1,4($s0)
.L80091b1c:
/* 0x80091b1c */ addiu	$v0,$v0,1
.L80091b20:
/* 0x80091b20 */ div	$zero,$v0,$v1
.L80091b24:
/* 0x80091b24 */ mfhi	$v1
.L80091b28:
/* 0x80091b28 */ sll	$zero,$zero,0x0
.L80091b2c:
/* 0x80091b2c */ sh	$v1,0($a2)
.L80091b30:
/* 0x80091b30 */ sll	$v1,$v1,0x10
.L80091b34:
/* 0x80091b34 */ sra	$v0,$v1,0x10
.L80091b38:
/* 0x80091b38 */ beq	$v0,$zero,.L80091b68
.L80091b3c:
/* 0x80091b3c */ sll	$v0,$v0,0x2
.L80091b40:
/* 0x80091b40 */ addu	$v0,$v0,$t0
.L80091b44:
/* 0x80091b44 */ addu	$v0,$v0,$t3
.L80091b48:
/* 0x80091b48 */ lw	$a0,0($v0)
.L80091b4c:
/* 0x80091b4c */ sll	$zero,$zero,0x0
.L80091b50:
/* 0x80091b50 */ bne	$a0,$a3,.L80091af4
.L80091b54:
/* 0x80091b54 */ sll	$zero,$zero,0x0
.L80091b58:
/* 0x80091b58 */ lh	$v0,6($s0)
.L80091b5c:
/* 0x80091b5c */ sll	$zero,$zero,0x0
.L80091b60:
/* 0x80091b60 */ beq	$v0,$zero,.L80091b14
.L80091b64:
/* 0x80091b64 */ sll	$zero,$zero,0x0
.L80091b68:
/* 0x80091b68 */ addiu	$a2,$a2,2
.L80091b6c:
/* 0x80091b6c */ addiu	$a1,$a1,1
.L80091b70:
/* 0x80091b70 */ slti	$v0,$a1,2
.L80091b74:
/* 0x80091b74 */ bne	$v0,$zero,.L80091ac4
.L80091b78:
/* 0x80091b78 */ addiu	$t2,$t2,4
.L80091b7c:
/* 0x80091b7c */ lui	$v0,0x800f
.L80091b80:
/* 0x80091b80 */ addiu	$v0,$v0,10504
.L80091b84:
/* 0x80091b84 */ addiu	$v1,$zero,1
.L80091b88:
/* 0x80091b88 */ sb	$zero,25($v0)
.L80091b8c:
/* 0x80091b8c */ sb	$zero,21($v0)
.L80091b90:
/* 0x80091b90 */ sb	$v1,26($v0)
.L80091b94:
/* 0x80091b94 */ lw	$ra,20($sp)
.L80091b98:
/* 0x80091b98 */ lw	$s0,16($sp)
.L80091b9c:
/* 0x80091b9c */ jr	$ra
.L80091ba0:
/* 0x80091ba0 */ addiu	$sp,$sp,24
.size FUN_800919e4, .-FUN_800919e4
