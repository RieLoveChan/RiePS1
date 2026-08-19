.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8c10
.globl FUN_800a8c10
.type FUN_800a8c10, @function
FUN_800a8c10:
.L800a8c10:
/* 0x800a8c10 */ addiu	$sp,$sp,-64
.L800a8c14:
/* 0x800a8c14 */ sw	$s4,48($sp)
.L800a8c18:
/* 0x800a8c18 */ addu	$s4,$a0,$zero
.L800a8c1c:
/* 0x800a8c1c */ sw	$s5,52($sp)
.L800a8c20:
/* 0x800a8c20 */ addu	$s5,$a1,$zero
.L800a8c24:
/* 0x800a8c24 */ sw	$s1,36($sp)
.L800a8c28:
/* 0x800a8c28 */ addu	$s1,$a2,$zero
.L800a8c2c:
/* 0x800a8c2c */ sw	$s6,56($sp)
.L800a8c30:
/* 0x800a8c30 */ addu	$s6,$a3,$zero
.L800a8c34:
/* 0x800a8c34 */ lui	$v0,0x91a2
.L800a8c38:
/* 0x800a8c38 */ ori	$v0,$v0,0xb3c5
.L800a8c3c:
/* 0x800a8c3c */ mult	$s1,$v0
.L800a8c40:
/* 0x800a8c40 */ sw	$s3,44($sp)
.L800a8c44:
/* 0x800a8c44 */ lw	$s3,80($sp)
.L800a8c48:
/* 0x800a8c48 */ addiu	$a3,$zero,3
.L800a8c4c:
/* 0x800a8c4c */ sw	$s2,40($sp)
.L800a8c50:
/* 0x800a8c50 */ sra	$s2,$s1,0x1f
.L800a8c54:
/* 0x800a8c54 */ sw	$ra,60($sp)
.L800a8c58:
/* 0x800a8c58 */ sw	$s0,32($sp)
.L800a8c5c:
/* 0x800a8c5c */ sw	$zero,16($sp)
.L800a8c60:
/* 0x800a8c60 */ sw	$s6,24($sp)
.L800a8c64:
/* 0x800a8c64 */ sw	$s3,20($sp)
.L800a8c68:
/* 0x800a8c68 */ mfhi	$v1
.L800a8c6c:
/* 0x800a8c6c */ addu	$s0,$v1,$s1
.L800a8c70:
/* 0x800a8c70 */ sra	$s0,$s0,0xb
.L800a8c74:
/* 0x800a8c74 */ subu	$s0,$s0,$s2
.L800a8c78:
/* 0x800a8c78 */ jal	0x800a6430
.L800a8c7c:
/* 0x800a8c7c */ addu	$a2,$s0,$zero
.L800a8c80:
/* 0x800a8c80 */ lui	$v0,0x8888
.L800a8c84:
/* 0x800a8c84 */ ori	$v0,$v0,0x8889
.L800a8c88:
/* 0x800a8c88 */ mult	$s1,$v0
.L800a8c8c:
/* 0x800a8c8c */ addiu	$a0,$s4,62
.L800a8c90:
/* 0x800a8c90 */ addu	$a1,$s5,$zero
.L800a8c94:
/* 0x800a8c94 */ addiu	$a3,$zero,2
.L800a8c98:
/* 0x800a8c98 */ sll	$a2,$s0,0x4
.L800a8c9c:
/* 0x800a8c9c */ subu	$a2,$a2,$s0
.L800a8ca0:
/* 0x800a8ca0 */ sllv	$a2,$a2,$a3
.L800a8ca4:
/* 0x800a8ca4 */ sw	$zero,16($sp)
.L800a8ca8:
/* 0x800a8ca8 */ sw	$s3,20($sp)
.L800a8cac:
/* 0x800a8cac */ sw	$s6,24($sp)
.L800a8cb0:
/* 0x800a8cb0 */ mfhi	$v1
.L800a8cb4:
/* 0x800a8cb4 */ addu	$s1,$v1,$s1
.L800a8cb8:
/* 0x800a8cb8 */ sra	$s1,$s1,0x5
.L800a8cbc:
/* 0x800a8cbc */ subu	$s1,$s1,$s2
.L800a8cc0:
/* 0x800a8cc0 */ jal	0x800a6430
.L800a8cc4:
/* 0x800a8cc4 */ subu	$a2,$s1,$a2
.L800a8cc8:
/* 0x800a8cc8 */ lw	$ra,60($sp)
.L800a8ccc:
/* 0x800a8ccc */ lw	$s6,56($sp)
.L800a8cd0:
/* 0x800a8cd0 */ lw	$s5,52($sp)
.L800a8cd4:
/* 0x800a8cd4 */ lw	$s4,48($sp)
.L800a8cd8:
/* 0x800a8cd8 */ lw	$s3,44($sp)
.L800a8cdc:
/* 0x800a8cdc */ lw	$s2,40($sp)
.L800a8ce0:
/* 0x800a8ce0 */ lw	$s1,36($sp)
.L800a8ce4:
/* 0x800a8ce4 */ lw	$s0,32($sp)
.L800a8ce8:
/* 0x800a8ce8 */ jr	$ra
.L800a8cec:
/* 0x800a8cec */ addiu	$sp,$sp,64
.size FUN_800a8c10, .-FUN_800a8c10
