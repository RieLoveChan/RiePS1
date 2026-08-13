.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008cb00
.globl FUN_8008cb00
.type FUN_8008cb00, @function
FUN_8008cb00:
/* Runtime resource, timing, and state helper. */
.L8008cb00:
/* 0x8008cb00 */ addiu	$sp,$sp,-72
.L8008cb04:
/* 0x8008cb04 */ sw	$s4,56($sp)
.L8008cb08:
/* 0x8008cb08 */ addu	$s4,$a0,$zero
.L8008cb0c:
/* 0x8008cb0c */ sw	$s5,60($sp)
.L8008cb10:
/* 0x8008cb10 */ addu	$s5,$a1,$zero
.L8008cb14:
/* 0x8008cb14 */ lw	$v0,88($sp)
.L8008cb18:
/* 0x8008cb18 */ sw	$s6,64($sp)
.L8008cb1c:
/* 0x8008cb1c */ addiu	$s6,$zero,10
.L8008cb20:
/* 0x8008cb20 */ sw	$s1,44($sp)
.L8008cb24:
/* 0x8008cb24 */ addu	$s1,$zero,$zero
.L8008cb28:
/* 0x8008cb28 */ sw	$s0,40($sp)
.L8008cb2c:
/* 0x8008cb2c */ addu	$s0,$s6,$zero
.L8008cb30:
/* 0x8008cb30 */ sw	$s2,48($sp)
.L8008cb34:
/* 0x8008cb34 */ addu	$s2,$a3,$zero
.L8008cb38:
/* 0x8008cb38 */ sw	$ra,68($sp)
.L8008cb3c:
/* 0x8008cb3c */ sw	$s3,52($sp)
.L8008cb40:
/* 0x8008cb40 */ sw	$s0,16($sp)
.L8008cb44:
/* 0x8008cb44 */ subu	$v0,$s2,$v0
.L8008cb48:
/* 0x8008cb48 */ jal	0x80088888
.L8008cb4c:
/* 0x8008cb4c */ addiu	$a3,$v0,13
.L8008cb50:
/* 0x8008cb50 */ addu	$a0,$s4,$zero
.L8008cb54:
/* 0x8008cb54 */ addu	$a1,$s5,$zero
.L8008cb58:
/* 0x8008cb58 */ jal	0x800881b4
.L8008cb5c:
/* 0x8008cb5c */ addu	$a2,$v0,$zero
.L8008cb60:
/* 0x8008cb60 */ addu	$a0,$s4,$zero
.L8008cb64:
/* 0x8008cb64 */ addu	$a1,$s5,$zero
.L8008cb68:
/* 0x8008cb68 */ addu	$a2,$v0,$zero
.L8008cb6c:
/* 0x8008cb6c */ addiu	$a3,$s2,-3
.L8008cb70:
/* 0x8008cb70 */ addiu	$v0,$zero,30
.L8008cb74:
/* 0x8008cb74 */ jal	0x80087938
.L8008cb78:
/* 0x8008cb78 */ sw	$v0,16($sp)
.L8008cb7c:
/* 0x8008cb7c */ addu	$a0,$s4,$zero
.L8008cb80:
/* 0x8008cb80 */ addu	$a1,$s5,$zero
.L8008cb84:
/* 0x8008cb84 */ jal	0x800898b4
.L8008cb88:
/* 0x8008cb88 */ addu	$a2,$v0,$zero
.L8008cb8c:
/* 0x8008cb8c */ addu	$a0,$s4,$zero
.L8008cb90:
/* 0x8008cb90 */ addu	$a1,$s5,$zero
.L8008cb94:
/* 0x8008cb94 */ addu	$a2,$v0,$zero
.L8008cb98:
/* 0x8008cb98 */ addu	$a3,$s2,$zero
.L8008cb9c:
/* 0x8008cb9c */ jal	0x80089b44
.L8008cba0:
/* 0x8008cba0 */ sw	$s0,16($sp)
.L8008cba4:
/* 0x8008cba4 */ addu	$a0,$s4,$zero
.L8008cba8:
/* 0x8008cba8 */ addu	$a1,$s5,$zero
.L8008cbac:
/* 0x8008cbac */ addu	$a2,$v0,$zero
.L8008cbb0:
/* 0x8008cbb0 */ addiu	$a3,$s2,-16
.L8008cbb4:
/* 0x8008cbb4 */ addiu	$v0,$zero,16
.L8008cbb8:
/* 0x8008cbb8 */ jal	0x80088d20
.L8008cbbc:
/* 0x8008cbbc */ sw	$v0,16($sp)
.L8008cbc0:
/* 0x8008cbc0 */ addu	$a0,$s4,$zero
.L8008cbc4:
/* 0x8008cbc4 */ addu	$a1,$s5,$zero
.L8008cbc8:
/* 0x8008cbc8 */ addu	$a2,$v0,$zero
.L8008cbcc:
/* 0x8008cbcc */ addu	$a3,$s2,$zero
.L8008cbd0:
/* 0x8008cbd0 */ jal	0x80089da4
.L8008cbd4:
/* 0x8008cbd4 */ sw	$s0,16($sp)
.L8008cbd8:
/* 0x8008cbd8 */ addu	$s3,$v0,$zero
.L8008cbdc:
/* 0x8008cbdc */ lui	$v0,0x800f
.L8008cbe0:
/* 0x8008cbe0 */ addiu	$s0,$v0,10504
.L8008cbe4:
/* 0x8008cbe4 */ lbu	$v1,146($s0)
.L8008cbe8:
/* 0x8008cbe8 */ addiu	$v0,$zero,7
.L8008cbec:
/* 0x8008cbec */ beq	$v1,$v0,.L8008cc30
.L8008cbf0:
/* 0x8008cbf0 */ ori	$v0,$zero,0x9284
.L8008cbf4:
/* 0x8008cbf4 */ beq	$v1,$zero,.L8008cc30
.L8008cbf8:
/* 0x8008cbf8 */ sll	$zero,$zero,0x0
.L8008cbfc:
/* 0x8008cbfc */ beq	$s1,$zero,.L8008cc08
.L8008cc00:
/* 0x8008cc00 */ addiu	$a3,$zero,-307
.L8008cc04:
/* 0x8008cc04 */ addiu	$a3,$zero,-109
.L8008cc08:
/* 0x8008cc08 */ addu	$a0,$s5,$zero
.L8008cc0c:
/* 0x8008cc0c */ addu	$a1,$s3,$zero
.L8008cc10:
/* 0x8008cc10 */ addu	$a2,$s1,$zero
.L8008cc14:
/* 0x8008cc14 */ addiu	$v0,$zero,52
.L8008cc18:
/* 0x8008cc18 */ sw	$v0,16($sp)
.L8008cc1c:
/* 0x8008cc1c */ sw	$s2,20($sp)
.L8008cc20:
/* 0x8008cc20 */ jal	0x80088474
.L8008cc24:
/* 0x8008cc24 */ sw	$s6,24($sp)
.L8008cc28:
/* 0x8008cc28 */ addu	$s3,$v0,$zero
.L8008cc2c:
/* 0x8008cc2c */ ori	$v0,$zero,0x9284
.L8008cc30:
/* 0x8008cc30 */ addu	$s0,$s0,$v0
.L8008cc34:
/* 0x8008cc34 */ addiu	$s1,$s1,1
.L8008cc38:
/* 0x8008cc38 */ slti	$v0,$s1,2
.L8008cc3c:
/* 0x8008cc3c */ bne	$v0,$zero,.L8008cbe4
.L8008cc40:
/* 0x8008cc40 */ sll	$zero,$zero,0x0
.L8008cc44:
/* 0x8008cc44 */ jal	0x80098880
.L8008cc48:
/* 0x8008cc48 */ addiu	$a0,$zero,91
.L8008cc4c:
/* 0x8008cc4c */ addiu	$a1,$zero,255
.L8008cc50:
/* 0x8008cc50 */ addiu	$a2,$zero,128
.L8008cc54:
/* 0x8008cc54 */ addiu	$v1,$zero,52
.L8008cc58:
/* 0x8008cc58 */ sw	$v0,20($sp)
.L8008cc5c:
/* 0x8008cc5c */ addiu	$v0,$zero,12
.L8008cc60:
/* 0x8008cc60 */ sw	$v0,24($sp)
.L8008cc64:
/* 0x8008cc64 */ addiu	$v0,$zero,292
.L8008cc68:
/* 0x8008cc68 */ sw	$v0,28($sp)
.L8008cc6c:
/* 0x8008cc6c */ addiu	$v0,$zero,284
.L8008cc70:
/* 0x8008cc70 */ sw	$v0,32($sp)
.L8008cc74:
/* 0x8008cc74 */ addiu	$v0,$zero,94
.L8008cc78:
/* 0x8008cc78 */ sw	$v1,16($sp)
.L8008cc7c:
/* 0x8008cc7c */ sw	$v0,36($sp)
.L8008cc80:
/* 0x8008cc80 */ lw	$a0,1892($s4)
.L8008cc84:
/* 0x8008cc84 */ jal	0x8004dab8
.L8008cc88:
/* 0x8008cc88 */ addiu	$a3,$zero,-308
.L8008cc8c:
/* 0x8008cc8c */ addu	$a0,$s4,$zero
.L8008cc90:
/* 0x8008cc90 */ addu	$a1,$s5,$zero
.L8008cc94:
/* 0x8008cc94 */ addu	$a2,$s3,$zero
.L8008cc98:
/* 0x8008cc98 */ addu	$a3,$s2,$zero
.L8008cc9c:
/* 0x8008cc9c */ addiu	$s0,$zero,10
.L8008cca0:
/* 0x8008cca0 */ sw	$v0,1892($s4)
.L8008cca4:
/* 0x8008cca4 */ jal	0x80089370
.L8008cca8:
/* 0x8008cca8 */ sw	$s0,16($sp)
.L8008ccac:
/* 0x8008ccac */ addu	$a0,$s4,$zero
.L8008ccb0:
/* 0x8008ccb0 */ addu	$a1,$s5,$zero
.L8008ccb4:
/* 0x8008ccb4 */ addu	$a2,$v0,$zero
.L8008ccb8:
/* 0x8008ccb8 */ addiu	$a3,$s2,-16
.L8008ccbc:
/* 0x8008ccbc */ addiu	$v0,$zero,16
.L8008ccc0:
/* 0x8008ccc0 */ jal	0x8008a9d8
.L8008ccc4:
/* 0x8008ccc4 */ sw	$v0,16($sp)
.L8008ccc8:
/* 0x8008ccc8 */ addu	$a0,$s4,$zero
.L8008cccc:
/* 0x8008cccc */ addu	$a1,$s5,$zero
.L8008ccd0:
/* 0x8008ccd0 */ addu	$a2,$v0,$zero
.L8008ccd4:
/* 0x8008ccd4 */ addu	$a3,$s2,$zero
.L8008ccd8:
/* 0x8008ccd8 */ jal	0x8008c538
.L8008ccdc:
/* 0x8008ccdc */ sw	$s0,16($sp)
.L8008cce0:
/* 0x8008cce0 */ addu	$a0,$s4,$zero
.L8008cce4:
/* 0x8008cce4 */ addu	$a1,$s5,$zero
.L8008cce8:
/* 0x8008cce8 */ addu	$a2,$v0,$zero
.L8008ccec:
/* 0x8008ccec */ addu	$a3,$s2,$zero
.L8008ccf0:
/* 0x8008ccf0 */ addiu	$v0,$zero,60
.L8008ccf4:
/* 0x8008ccf4 */ jal	0x8008b170
.L8008ccf8:
/* 0x8008ccf8 */ sw	$v0,16($sp)
.L8008ccfc:
/* 0x8008ccfc */ addu	$a0,$s4,$zero
.L8008cd00:
/* 0x8008cd00 */ addu	$a1,$s5,$zero
.L8008cd04:
/* 0x8008cd04 */ addu	$a2,$v0,$zero
.L8008cd08:
/* 0x8008cd08 */ addu	$a3,$s2,$zero
.L8008cd0c:
/* 0x8008cd0c */ jal	0x8008c22c
.L8008cd10:
/* 0x8008cd10 */ sw	$s0,16($sp)
.L8008cd14:
/* 0x8008cd14 */ lw	$ra,68($sp)
.L8008cd18:
/* 0x8008cd18 */ lw	$s6,64($sp)
.L8008cd1c:
/* 0x8008cd1c */ lw	$s5,60($sp)
.L8008cd20:
/* 0x8008cd20 */ lw	$s4,56($sp)
.L8008cd24:
/* 0x8008cd24 */ lw	$s3,52($sp)
.L8008cd28:
/* 0x8008cd28 */ lw	$s2,48($sp)
.L8008cd2c:
/* 0x8008cd2c */ lw	$s1,44($sp)
.L8008cd30:
/* 0x8008cd30 */ lw	$s0,40($sp)
.L8008cd34:
/* 0x8008cd34 */ jr	$ra
.L8008cd38:
/* 0x8008cd38 */ addiu	$sp,$sp,72
.size FUN_8008cb00, .-FUN_8008cb00
