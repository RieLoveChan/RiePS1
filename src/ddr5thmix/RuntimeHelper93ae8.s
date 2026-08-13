.set noreorder
.set noat
.set nomacro

.section .text.FUN_80093ae8
.globl FUN_80093ae8
.type FUN_80093ae8, @function
FUN_80093ae8:
/* Runtime resource and state helper. */
.L80093ae8:
/* 0x80093ae8 */ addiu	$sp,$sp,-88
.L80093aec:
/* 0x80093aec */ sw	$s5,68($sp)
.L80093af0:
/* 0x80093af0 */ addu	$s5,$a0,$zero
.L80093af4:
/* 0x80093af4 */ sw	$s3,60($sp)
.L80093af8:
/* 0x80093af8 */ addu	$s3,$a1,$zero
.L80093afc:
/* 0x80093afc */ sw	$s0,48($sp)
.L80093b00:
/* 0x80093b00 */ addu	$s0,$a2,$zero
.L80093b04:
/* 0x80093b04 */ sw	$s7,76($sp)
.L80093b08:
/* 0x80093b08 */ addu	$s7,$a3,$zero
.L80093b0c:
/* 0x80093b0c */ addiu	$a0,$zero,133
.L80093b10:
/* 0x80093b10 */ sw	$ra,84($sp)
.L80093b14:
/* 0x80093b14 */ sw	$s8,80($sp)
.L80093b18:
/* 0x80093b18 */ sw	$s6,72($sp)
.L80093b1c:
/* 0x80093b1c */ sw	$s4,64($sp)
.L80093b20:
/* 0x80093b20 */ sw	$s2,56($sp)
.L80093b24:
/* 0x80093b24 */ jal	0x80098880
.L80093b28:
/* 0x80093b28 */ sw	$s1,52($sp)
.L80093b2c:
/* 0x80093b2c */ addu	$s4,$v0,$zero
.L80093b30:
/* 0x80093b30 */ addiu	$s2,$zero,8
.L80093b34:
/* 0x80093b34 */ lui	$a1,0x800f
.L80093b38:
/* 0x80093b38 */ lhu	$v0,14($s4)
.L80093b3c:
/* 0x80093b3c */ addiu	$v1,$a1,10504
.L80093b40:
/* 0x80093b40 */ addiu	$v0,$v0,64
.L80093b44:
/* 0x80093b44 */ sh	$v0,32($sp)
.L80093b48:
/* 0x80093b48 */ sll	$v0,$s0,0x3
.L80093b4c:
/* 0x80093b4c */ addu	$v0,$v0,$s0
.L80093b50:
/* 0x80093b50 */ sll	$v0,$v0,0x3
.L80093b54:
/* 0x80093b54 */ addu	$v0,$v0,$s0
.L80093b58:
/* 0x80093b58 */ sll	$v0,$v0,0x2
.L80093b5c:
/* 0x80093b5c */ addu	$v0,$v0,$s0
.L80093b60:
/* 0x80093b60 */ sll	$v0,$v0,0x5
.L80093b64:
/* 0x80093b64 */ addu	$v0,$v0,$s0
.L80093b68:
/* 0x80093b68 */ sll	$v0,$v0,0x2
.L80093b6c:
/* 0x80093b6c */ addu	$v0,$v0,$v1
.L80093b70:
/* 0x80093b70 */ lbu	$a0,146($v0)
.L80093b74:
/* 0x80093b74 */ lhu	$t1,16($s4)
.L80093b78:
/* 0x80093b78 */ addiu	$v1,$zero,2
.L80093b7c:
/* 0x80093b7c */ beq	$a0,$v1,.L80093b90
.L80093b80:
/* 0x80093b80 */ sh	$t1,40($sp)
.L80093b84:
/* 0x80093b84 */ addiu	$v0,$zero,10
.L80093b88:
/* 0x80093b88 */ bne	$a0,$v0,.L80093bb0
.L80093b8c:
/* 0x80093b8c */ sll	$zero,$zero,0x0
.L80093b90:
/* 0x80093b90 */ lh	$v1,10504($a1)
.L80093b94:
/* 0x80093b94 */ addiu	$v0,$zero,3
.L80093b98:
/* 0x80093b98 */ beq	$v1,$v0,.L80093bb0
.L80093b9c:
/* 0x80093b9c */ addiu	$v0,$zero,36
.L80093ba0:
/* 0x80093ba0 */ beq	$v1,$v0,.L80093bb0
.L80093ba4:
/* 0x80093ba4 */ addiu	$v0,$zero,19
.L80093ba8:
/* 0x80093ba8 */ bne	$v1,$v0,.L80093bb4
.L80093bac:
/* 0x80093bac */ sll	$zero,$zero,0x0
.L80093bb0:
/* 0x80093bb0 */ sra	$s2,$s2,0x1
.L80093bb4:
/* 0x80093bb4 */ addiu	$s2,$s2,-1
.L80093bb8:
/* 0x80093bb8 */ bltz	$s2,.L80093c9c
.L80093bbc:
/* 0x80093bbc */ sll	$v1,$s0,0x1
.L80093bc0:
/* 0x80093bc0 */ addiu	$v1,$v1,-1
.L80093bc4:
/* 0x80093bc4 */ sll	$v0,$v1,0x1
.L80093bc8:
/* 0x80093bc8 */ addu	$v0,$v0,$v1
.L80093bcc:
/* 0x80093bcc */ sll	$v0,$v0,0x2
.L80093bd0:
/* 0x80093bd0 */ subu	$v0,$v0,$v1
.L80093bd4:
/* 0x80093bd4 */ sll	$s8,$v0,0x4
.L80093bd8:
/* 0x80093bd8 */ addiu	$s6,$zero,64
.L80093bdc:
/* 0x80093bdc */ addu	$a0,$s5,$zero
.L80093be0:
/* 0x80093be0 */ addu	$a1,$s3,$zero
.L80093be4:
/* 0x80093be4 */ addiu	$v0,$zero,32
.L80093be8:
/* 0x80093be8 */ xori	$s1,$s2,0x3
.L80093bec:
/* 0x80093bec */ sll	$s0,$s2,0x6
.L80093bf0:
/* 0x80093bf0 */ andi	$a2,$s2,0x3
.L80093bf4:
/* 0x80093bf4 */ andi	$a3,$s2,0x4
.L80093bf8:
/* 0x80093bf8 */ addiu	$s2,$s2,-1
.L80093bfc:
/* 0x80093bfc */ sll	$a2,$a2,0x5
.L80093c00:
/* 0x80093c00 */ sll	$a3,$a3,0x3
.L80093c04:
/* 0x80093c04 */ sltiu	$s1,$s1,1
.L80093c08:
/* 0x80093c08 */ addiu	$s0,$s0,-128
.L80093c0c:
/* 0x80093c0c */ lh	$v1,2($s4)
.L80093c10:
/* 0x80093c10 */ lh	$t0,4($s4)
.L80093c14:
/* 0x80093c14 */ addu	$s0,$s8,$s0
.L80093c18:
/* 0x80093c18 */ sw	$v0,16($sp)
.L80093c1c:
/* 0x80093c1c */ sw	$v0,20($sp)
.L80093c20:
/* 0x80093c20 */ lh	$v0,10($s4)
.L80093c24:
/* 0x80093c24 */ subu	$s1,$s6,$s1
.L80093c28:
/* 0x80093c28 */ sw	$zero,28($sp)
.L80093c2c:
/* 0x80093c2c */ addu	$a2,$v1,$a2
.L80093c30:
/* 0x80093c30 */ addu	$a3,$t0,$a3
.L80093c34:
/* 0x80093c34 */ jal	0x80048144
.L80093c38:
/* 0x80093c38 */ sw	$v0,24($sp)
.L80093c3c:
/* 0x80093c3c */ addu	$a0,$s5,$zero
.L80093c40:
/* 0x80093c40 */ lhu	$t1,32($sp)
.L80093c44:
/* 0x80093c44 */ addu	$a1,$s3,$zero
.L80093c48:
/* 0x80093c48 */ sll	$a2,$t1,0x10
.L80093c4c:
/* 0x80093c4c */ lhu	$t1,40($sp)
.L80093c50:
/* 0x80093c50 */ sra	$a2,$a2,0x10
.L80093c54:
/* 0x80093c54 */ sll	$a3,$t1,0x10
.L80093c58:
/* 0x80093c58 */ jal	0x80049208
.L80093c5c:
/* 0x80093c5c */ sra	$a3,$a3,0x10
.L80093c60:
/* 0x80093c60 */ addu	$a0,$s5,$zero
.L80093c64:
/* 0x80093c64 */ addu	$a1,$s3,$zero
.L80093c68:
/* 0x80093c68 */ addu	$a2,$s7,$zero
.L80093c6c:
/* 0x80093c6c */ addu	$a3,$s7,$zero
.L80093c70:
/* 0x80093c70 */ jal	0x800490f8
.L80093c74:
/* 0x80093c74 */ sw	$s7,16($sp)
.L80093c78:
/* 0x80093c78 */ addu	$a0,$s5,$zero
.L80093c7c:
/* 0x80093c7c */ addu	$a1,$s3,$zero
.L80093c80:
/* 0x80093c80 */ addu	$a2,$s0,$zero
.L80093c84:
/* 0x80093c84 */ addiu	$a3,$zero,-188
.L80093c88:
/* 0x80093c88 */ sw	$s1,16($sp)
.L80093c8c:
/* 0x80093c8c */ jal	0x80049364
.L80093c90:
/* 0x80093c90 */ sw	$s6,20($sp)
.L80093c94:
/* 0x80093c94 */ bgez	$s2,.L80093bdc
.L80093c98:
/* 0x80093c98 */ addiu	$s3,$s3,1
.L80093c9c:
/* 0x80093c9c */ addu	$v0,$s3,$zero
.L80093ca0:
/* 0x80093ca0 */ lw	$ra,84($sp)
.L80093ca4:
/* 0x80093ca4 */ lw	$s8,80($sp)
.L80093ca8:
/* 0x80093ca8 */ lw	$s7,76($sp)
.L80093cac:
/* 0x80093cac */ lw	$s6,72($sp)
.L80093cb0:
/* 0x80093cb0 */ lw	$s5,68($sp)
.L80093cb4:
/* 0x80093cb4 */ lw	$s4,64($sp)
.L80093cb8:
/* 0x80093cb8 */ lw	$s3,60($sp)
.L80093cbc:
/* 0x80093cbc */ lw	$s2,56($sp)
.L80093cc0:
/* 0x80093cc0 */ lw	$s1,52($sp)
.L80093cc4:
/* 0x80093cc4 */ lw	$s0,48($sp)
.L80093cc8:
/* 0x80093cc8 */ jr	$ra
.L80093ccc:
/* 0x80093ccc */ addiu	$sp,$sp,88
.size FUN_80093ae8, .-FUN_80093ae8

