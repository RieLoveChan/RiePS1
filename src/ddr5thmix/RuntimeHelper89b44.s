.set noreorder
.set noat
.set nomacro

.section .text.FUN_80089b44
.globl FUN_80089b44
.type FUN_80089b44, @function
FUN_80089b44:
/* Runtime state and resource helper. */
.L80089b44:
/* 0x80089b44 */ lui	$v0,0x800f
.L80089b48:
/* 0x80089b48 */ lbu	$v0,10530($v0)
.L80089b4c:
/* 0x80089b4c */ addiu	$sp,$sp,-80
.L80089b50:
/* 0x80089b50 */ sw	$s1,44($sp)
.L80089b54:
/* 0x80089b54 */ lw	$s1,96($sp)
.L80089b58:
/* 0x80089b58 */ sw	$s7,68($sp)
.L80089b5c:
/* 0x80089b5c */ addu	$s7,$a0,$zero
.L80089b60:
/* 0x80089b60 */ sw	$s6,64($sp)
.L80089b64:
/* 0x80089b64 */ addu	$s6,$a1,$zero
.L80089b68:
/* 0x80089b68 */ sw	$s5,60($sp)
.L80089b6c:
/* 0x80089b6c */ addu	$s5,$a2,$zero
.L80089b70:
/* 0x80089b70 */ sw	$s0,40($sp)
.L80089b74:
/* 0x80089b74 */ addu	$s0,$a3,$zero
.L80089b78:
/* 0x80089b78 */ sw	$ra,72($sp)
.L80089b7c:
/* 0x80089b7c */ sw	$s4,56($sp)
.L80089b80:
/* 0x80089b80 */ sw	$s3,52($sp)
.L80089b84:
/* 0x80089b84 */ addiu	$v0,$v0,-1
.L80089b88:
/* 0x80089b88 */ sll	$v0,$v0,0x18
.L80089b8c:
/* 0x80089b8c */ sra	$v1,$v0,0x18
.L80089b90:
/* 0x80089b90 */ sltiu	$v0,$v1,6
.L80089b94:
/* 0x80089b94 */ beq	$v0,$zero,.L80089bdc
.L80089b98:
/* 0x80089b98 */ sw	$s2,48($sp)
.L80089b9c:
/* 0x80089b9c */ lui	$v0,0x8002
.L80089ba0:
/* 0x80089ba0 */ addiu	$v0,$v0,-6628
.L80089ba4:
/* 0x80089ba4 */ sll	$v1,$v1,0x2
.L80089ba8:
/* 0x80089ba8 */ addu	$v1,$v1,$v0
.L80089bac:
/* 0x80089bac */ lw	$v0,0($v1)
.L80089bb0:
/* 0x80089bb0 */ sll	$zero,$zero,0x0
.L80089bb4:
/* 0x80089bb4 */ jr	$v0
.L80089bb8:
/* 0x80089bb8 */ sll	$zero,$zero,0x0
.L80089bbc:
/* 0x80089bbc */ j 0x80089be0
.L80089bc0:
/* 0x80089bc0 */ addu	$s4,$zero,$zero
.L80089bc4:
/* 0x80089bc4 */ j 0x80089be0
.L80089bc8:
/* 0x80089bc8 */ addiu	$s4,$zero,1
.L80089bcc:
/* 0x80089bcc */ j 0x80089be0
.L80089bd0:
/* 0x80089bd0 */ addiu	$s4,$zero,2
.L80089bd4:
/* 0x80089bd4 */ j 0x80089be0
.L80089bd8:
/* 0x80089bd8 */ addiu	$s4,$zero,3
.L80089bdc:
/* 0x80089bdc */ addiu	$s4,$zero,-1
.L80089be0:
/* 0x80089be0 */ lw	$v1,1888($s7)
.L80089be4:
/* 0x80089be4 */ addiu	$v0,$zero,-1
.L80089be8:
/* 0x80089be8 */ beq	$v1,$v0,.L80089c14
.L80089bec:
/* 0x80089bec */ lui	$v0,0x800f
.L80089bf0:
/* 0x80089bf0 */ lw	$v0,10488($v0)
.L80089bf4:
/* 0x80089bf4 */ sll	$zero,$zero,0x0
.L80089bf8:
/* 0x80089bf8 */ subu	$a3,$v0,$v1
.L80089bfc:
/* 0x80089bfc */ slti	$v0,$a3,60
.L80089c00:
/* 0x80089c00 */ beq	$v0,$zero,.L80089c10
.L80089c04:
/* 0x80089c04 */ addiu	$v0,$zero,54
.L80089c08:
/* 0x80089c08 */ j 0x80089c14
.L80089c0c:
/* 0x80089c0c */ subu	$s0,$v0,$a3
.L80089c10:
/* 0x80089c10 */ addiu	$s0,$a3,-60
.L80089c14:
/* 0x80089c14 */ slt	$v0,$s1,$s0
.L80089c18:
/* 0x80089c18 */ beq	$v0,$zero,.L80089c24
.L80089c1c:
/* 0x80089c1c */ sll	$zero,$zero,0x0
.L80089c20:
/* 0x80089c20 */ addu	$s0,$s1,$zero
.L80089c24:
/* 0x80089c24 */ bgez	$s0,.L80089c30
.L80089c28:
/* 0x80089c28 */ sll	$zero,$zero,0x0
.L80089c2c:
/* 0x80089c2c */ addu	$s0,$zero,$zero
.L80089c30:
/* 0x80089c30 */ bltz	$s4,.L80089d2c
.L80089c34:
/* 0x80089c34 */ sll	$zero,$zero,0x0
.L80089c38:
/* 0x80089c38 */ jal	0x80098880
.L80089c3c:
/* 0x80089c3c */ addiu	$a0,$zero,92
.L80089c40:
/* 0x80089c40 */ subu	$a0,$s1,$s0
.L80089c44:
/* 0x80089c44 */ sll	$v1,$a0,0x3
.L80089c48:
/* 0x80089c48 */ addu	$v1,$v1,$a0
.L80089c4c:
/* 0x80089c4c */ sll	$v1,$v1,0x2
.L80089c50:
/* 0x80089c50 */ subu	$v1,$v1,$a0
.L80089c54:
/* 0x80089c54 */ sll	$v1,$v1,0x2
.L80089c58:
/* 0x80089c58 */ addu	$v1,$v1,$a0
.L80089c5c:
/* 0x80089c5c */ negu	$v1,$v1
.L80089c60:
/* 0x80089c60 */ mult	$a0,$v1
.L80089c64:
/* 0x80089c64 */ mflo	$v1
.L80089c68:
/* 0x80089c68 */ sll	$zero,$zero,0x0
.L80089c6c:
/* 0x80089c6c */ sll	$zero,$zero,0x0
.L80089c70:
/* 0x80089c70 */ div	$zero,$v1,$s1
.L80089c74:
/* 0x80089c74 */ mflo	$s0
.L80089c78:
/* 0x80089c78 */ sll	$zero,$zero,0x0
.L80089c7c:
/* 0x80089c7c */ sll	$zero,$zero,0x0
.L80089c80:
/* 0x80089c80 */ div	$zero,$s0,$s1
.L80089c84:
/* 0x80089c84 */ mflo	$s0
.L80089c88:
/* 0x80089c88 */ addu	$a0,$s6,$zero
.L80089c8c:
/* 0x80089c8c */ addu	$a1,$s5,$zero
.L80089c90:
/* 0x80089c90 */ addu	$s3,$v0,$zero
.L80089c94:
/* 0x80089c94 */ addiu	$s2,$zero,120
.L80089c98:
/* 0x80089c98 */ addiu	$v0,$zero,-1
.L80089c9c:
/* 0x80089c9c */ sll	$a3,$s4,0x2
.L80089ca0:
/* 0x80089ca0 */ addu	$a3,$a3,$s4
.L80089ca4:
/* 0x80089ca4 */ sll	$a3,$a3,0x2
.L80089ca8:
/* 0x80089ca8 */ lh	$a2,2($s3)
.L80089cac:
/* 0x80089cac */ lh	$t0,4($s3)
.L80089cb0:
/* 0x80089cb0 */ addiu	$a3,$a3,60
.L80089cb4:
/* 0x80089cb4 */ sw	$s2,16($sp)
.L80089cb8:
/* 0x80089cb8 */ addiu	$a2,$a2,200
.L80089cbc:
/* 0x80089cbc */ addiu	$s1,$zero,20
.L80089cc0:
/* 0x80089cc0 */ sw	$s1,20($sp)
.L80089cc4:
/* 0x80089cc4 */ lh	$v1,10($s3)
.L80089cc8:
/* 0x80089cc8 */ addu	$a3,$t0,$a3
.L80089ccc:
/* 0x80089ccc */ sw	$v0,28($sp)
.L80089cd0:
/* 0x80089cd0 */ sw	$v1,24($sp)
.L80089cd4:
/* 0x80089cd4 */ jal	0x80048144
.L80089cd8:
/* 0x80089cd8 */ addiu	$s0,$s0,-299
.L80089cdc:
/* 0x80089cdc */ addu	$a0,$s6,$zero
.L80089ce0:
/* 0x80089ce0 */ lh	$a2,14($s3)
.L80089ce4:
/* 0x80089ce4 */ lh	$a3,16($s3)
.L80089ce8:
/* 0x80089ce8 */ jal	0x80049208
.L80089cec:
/* 0x80089cec */ addu	$a1,$s5,$zero
.L80089cf0:
/* 0x80089cf0 */ addu	$a0,$s6,$zero
.L80089cf4:
/* 0x80089cf4 */ addu	$a1,$s5,$zero
.L80089cf8:
/* 0x80089cf8 */ addu	$a2,$s0,$zero
.L80089cfc:
/* 0x80089cfc */ addiu	$a3,$zero,-180
.L80089d00:
/* 0x80089d00 */ sw	$s2,16($sp)
.L80089d04:
/* 0x80089d04 */ jal	0x80049364
.L80089d08:
/* 0x80089d08 */ sw	$s1,20($sp)
.L80089d0c:
/* 0x80089d0c */ addu	$a0,$s6,$zero
.L80089d10:
/* 0x80089d10 */ addu	$a1,$s5,$zero
.L80089d14:
/* 0x80089d14 */ addiu	$a2,$zero,128
.L80089d18:
/* 0x80089d18 */ addu	$a3,$a2,$zero
.L80089d1c:
/* 0x80089d1c */ addu	$v0,$a2,$zero
.L80089d20:
/* 0x80089d20 */ jal	0x800490f8
.L80089d24:
/* 0x80089d24 */ sw	$v0,16($sp)
.L80089d28:
/* 0x80089d28 */ addiu	$s5,$s5,1
.L80089d2c:
/* 0x80089d2c */ jal	0x80098880
.L80089d30:
/* 0x80089d30 */ addiu	$a0,$zero,91
.L80089d34:
/* 0x80089d34 */ addiu	$a1,$zero,255
.L80089d38:
/* 0x80089d38 */ addiu	$a2,$zero,128
.L80089d3c:
/* 0x80089d3c */ addiu	$v1,$zero,-180
.L80089d40:
/* 0x80089d40 */ sw	$v0,20($sp)
.L80089d44:
/* 0x80089d44 */ addiu	$v0,$zero,60
.L80089d48:
/* 0x80089d48 */ sw	$v0,28($sp)
.L80089d4c:
/* 0x80089d4c */ addiu	$v0,$zero,141
.L80089d50:
/* 0x80089d50 */ sw	$v0,32($sp)
.L80089d54:
/* 0x80089d54 */ addiu	$v0,$zero,20
.L80089d58:
/* 0x80089d58 */ sw	$v1,16($sp)
.L80089d5c:
/* 0x80089d5c */ sw	$zero,24($sp)
.L80089d60:
/* 0x80089d60 */ sw	$v0,36($sp)
.L80089d64:
/* 0x80089d64 */ lw	$a0,1892($s7)
.L80089d68:
/* 0x80089d68 */ jal	0x8004dab8
.L80089d6c:
/* 0x80089d6c */ addiu	$a3,$zero,-320
.L80089d70:
/* 0x80089d70 */ sw	$v0,1892($s7)
.L80089d74:
/* 0x80089d74 */ addu	$v0,$s5,$zero
.L80089d78:
/* 0x80089d78 */ lw	$ra,72($sp)
.L80089d7c:
/* 0x80089d7c */ lw	$s7,68($sp)
.L80089d80:
/* 0x80089d80 */ lw	$s6,64($sp)
.L80089d84:
/* 0x80089d84 */ lw	$s5,60($sp)
.L80089d88:
/* 0x80089d88 */ lw	$s4,56($sp)
.L80089d8c:
/* 0x80089d8c */ lw	$s3,52($sp)
.L80089d90:
/* 0x80089d90 */ lw	$s2,48($sp)
.L80089d94:
/* 0x80089d94 */ lw	$s1,44($sp)
.L80089d98:
/* 0x80089d98 */ lw	$s0,40($sp)
.L80089d9c:
/* 0x80089d9c */ jr	$ra
.L80089da0:
/* 0x80089da0 */ addiu	$sp,$sp,80
.size FUN_80089b44, .-FUN_80089b44
