.set noreorder
.set noat
.set nomacro

.section .text.FUN_80091ba4
.globl FUN_80091ba4
.type FUN_80091ba4, @function
FUN_80091ba4:
/* Runtime resource and state helper. */
.L80091ba4:
/* 0x80091ba4 */ addiu	$sp,$sp,-80
.L80091ba8:
/* 0x80091ba8 */ sw	$s8,72($sp)
.L80091bac:
/* 0x80091bac */ addu	$s8,$a0,$zero
.L80091bb0:
/* 0x80091bb0 */ sw	$s7,68($sp)
.L80091bb4:
/* 0x80091bb4 */ addu	$s7,$a1,$zero
.L80091bb8:
/* 0x80091bb8 */ sw	$s6,64($sp)
.L80091bbc:
/* 0x80091bbc */ lw	$s6,96($sp)
.L80091bc0:
/* 0x80091bc0 */ sw	$a3,92($sp)
.L80091bc4:
/* 0x80091bc4 */ lw	$t0,92($sp)
.L80091bc8:
/* 0x80091bc8 */ addiu	$a3,$zero,1
.L80091bcc:
/* 0x80091bcc */ sw	$s1,44($sp)
.L80091bd0:
/* 0x80091bd0 */ addu	$s1,$zero,$zero
.L80091bd4:
/* 0x80091bd4 */ sw	$s4,56($sp)
.L80091bd8:
/* 0x80091bd8 */ addiu	$s4,$zero,316
.L80091bdc:
/* 0x80091bdc */ sw	$s3,52($sp)
.L80091be0:
/* 0x80091be0 */ addiu	$s3,$zero,206
.L80091be4:
/* 0x80091be4 */ sw	$ra,76($sp)
.L80091be8:
/* 0x80091be8 */ sw	$s5,60($sp)
.L80091bec:
/* 0x80091bec */ sw	$s2,48($sp)
.L80091bf0:
/* 0x80091bf0 */ sw	$s0,40($sp)
.L80091bf4:
/* 0x80091bf4 */ sw	$t0,16($sp)
.L80091bf8:
/* 0x80091bf8 */ jal	0x80090f74
.L80091bfc:
/* 0x80091bfc */ sw	$s6,20($sp)
.L80091c00:
/* 0x80091c00 */ addu	$a0,$s8,$zero
.L80091c04:
/* 0x80091c04 */ addu	$a1,$s7,$zero
.L80091c08:
/* 0x80091c08 */ lw	$a3,92($sp)
.L80091c0c:
/* 0x80091c0c */ addu	$a2,$v0,$zero
.L80091c10:
/* 0x80091c10 */ jal	0x80090860
.L80091c14:
/* 0x80091c14 */ sw	$s6,16($sp)
.L80091c18:
/* 0x80091c18 */ addu	$a0,$s8,$zero
.L80091c1c:
/* 0x80091c1c */ addu	$a1,$s7,$zero
.L80091c20:
/* 0x80091c20 */ addu	$a2,$v0,$zero
.L80091c24:
/* 0x80091c24 */ lw	$t0,92($sp)
.L80091c28:
/* 0x80091c28 */ addu	$a3,$s1,$zero
.L80091c2c:
/* 0x80091c2c */ sw	$s6,20($sp)
.L80091c30:
/* 0x80091c30 */ jal	0x80090f74
.L80091c34:
/* 0x80091c34 */ sw	$t0,16($sp)
.L80091c38:
/* 0x80091c38 */ addiu	$a0,$zero,86
.L80091c3c:
/* 0x80091c3c */ jal	0x80098880
.L80091c40:
/* 0x80091c40 */ addu	$s0,$v0,$zero
.L80091c44:
/* 0x80091c44 */ addu	$s2,$v0,$zero
.L80091c48:
/* 0x80091c48 */ jal	0x800924fc
.L80091c4c:
/* 0x80091c4c */ sll	$zero,$zero,0x0
.L80091c50:
/* 0x80091c50 */ beq	$v0,$zero,.L80091c68
.L80091c54:
/* 0x80091c54 */ sll	$zero,$zero,0x0
.L80091c58:
/* 0x80091c58 */ bne	$s1,$zero,.L80091c74
.L80091c5c:
/* 0x80091c5c */ addiu	$a3,$zero,34
.L80091c60:
/* 0x80091c60 */ j	0x80091c74
.L80091c64:
/* 0x80091c64 */ addiu	$a3,$zero,-300
.L80091c68:
/* 0x80091c68 */ beq	$s1,$zero,.L80091c74
.L80091c6c:
/* 0x80091c6c */ addiu	$a3,$zero,-300
.L80091c70:
/* 0x80091c70 */ addiu	$a3,$zero,34
.L80091c74:
/* 0x80091c74 */ addiu	$v1,$zero,-35
.L80091c78:
/* 0x80091c78 */ bne	$s1,$zero,.L80091c84
.L80091c7c:
/* 0x80091c7c */ addiu	$a0,$a3,300
.L80091c80:
/* 0x80091c80 */ addiu	$v1,$zero,5
.L80091c84:
/* 0x80091c84 */ addiu	$a1,$zero,255
.L80091c88:
/* 0x80091c88 */ addiu	$a2,$zero,128
.L80091c8c:
/* 0x80091c8c */ addiu	$a3,$a3,-20
.L80091c90:
/* 0x80091c90 */ addiu	$v0,$v1,-20
.L80091c94:
/* 0x80091c94 */ sw	$v0,16($sp)
.L80091c98:
/* 0x80091c98 */ addiu	$v0,$v1,220
.L80091c9c:
/* 0x80091c9c */ sw	$s2,20($sp)
.L80091ca0:
/* 0x80091ca0 */ sw	$a0,24($sp)
.L80091ca4:
/* 0x80091ca4 */ sw	$v0,28($sp)
.L80091ca8:
/* 0x80091ca8 */ sw	$s4,32($sp)
.L80091cac:
/* 0x80091cac */ sw	$s3,36($sp)
.L80091cb0:
/* 0x80091cb0 */ lw	$a0,84($s8)
.L80091cb4:
/* 0x80091cb4 */ jal	0x8004dab8
.L80091cb8:
/* 0x80091cb8 */ addiu	$s1,$s1,1
.L80091cbc:
/* 0x80091cbc */ sw	$v0,84($s8)
.L80091cc0:
/* 0x80091cc0 */ slti	$v0,$s1,2
.L80091cc4:
/* 0x80091cc4 */ bne	$v0,$zero,.L80091c48
.L80091cc8:
/* 0x80091cc8 */ sll	$zero,$zero,0x0
.L80091ccc:
/* 0x80091ccc */ addu	$s1,$s0,$zero
.L80091cd0:
/* 0x80091cd0 */ jal	0x80098880
.L80091cd4:
/* 0x80091cd4 */ addiu	$a0,$zero,108
.L80091cd8:
/* 0x80091cd8 */ addu	$s0,$v0,$zero
.L80091cdc:
/* 0x80091cdc */ addiu	$s5,$zero,90
.L80091ce0:
/* 0x80091ce0 */ addu	$s4,$zero,$zero
.L80091ce4:
/* 0x80091ce4 */ addiu	$s3,$zero,-261
.L80091ce8:
/* 0x80091ce8 */ lw	$t0,92($sp)
.L80091cec:
/* 0x80091cec */ addu	$s2,$s4,$zero
.L80091cf0:
/* 0x80091cf0 */ sll	$v0,$t0,0x1
.L80091cf4:
/* 0x80091cf4 */ addu	$v0,$v0,$t0
.L80091cf8:
/* 0x80091cf8 */ sll	$v0,$v0,0x3
.L80091cfc:
/* 0x80091cfc */ div	$zero,$v0,$s6
.L80091d00:
/* 0x80091d00 */ mflo	$s6
.L80091d04:
/* 0x80091d04 */ addu	$a0,$s7,$zero
.L80091d08:
/* 0x80091d08 */ addu	$a1,$s1,$zero
.L80091d0c:
/* 0x80091d0c */ lh	$a2,2($s0)
.L80091d10:
/* 0x80091d10 */ lh	$a3,4($s0)
.L80091d14:
/* 0x80091d14 */ addiu	$s4,$s4,1
.L80091d18:
/* 0x80091d18 */ sw	$s5,16($sp)
.L80091d1c:
/* 0x80091d1c */ sw	$s6,20($sp)
.L80091d20:
/* 0x80091d20 */ lh	$v1,10($s0)
.L80091d24:
/* 0x80091d24 */ addiu	$v0,$zero,-1
.L80091d28:
/* 0x80091d28 */ sw	$v0,28($sp)
.L80091d2c:
/* 0x80091d2c */ addu	$a2,$a2,$s2
.L80091d30:
/* 0x80091d30 */ jal	0x80048144
.L80091d34:
/* 0x80091d34 */ sw	$v1,24($sp)
.L80091d38:
/* 0x80091d38 */ addu	$a0,$s7,$zero
.L80091d3c:
/* 0x80091d3c */ addu	$a1,$s1,$zero
.L80091d40:
/* 0x80091d40 */ lh	$a2,14($s0)
.L80091d44:
/* 0x80091d44 */ lh	$a3,16($s0)
.L80091d48:
/* 0x80091d48 */ jal	0x80049208
.L80091d4c:
/* 0x80091d4c */ addu	$s2,$s2,$s5
.L80091d50:
/* 0x80091d50 */ addu	$a0,$s7,$zero
.L80091d54:
/* 0x80091d54 */ addu	$a1,$s1,$zero
.L80091d58:
/* 0x80091d58 */ addu	$a2,$s3,$zero
.L80091d5c:
/* 0x80091d5c */ addiu	$a3,$zero,-180
.L80091d60:
/* 0x80091d60 */ sw	$s5,16($sp)
.L80091d64:
/* 0x80091d64 */ jal	0x80049364
.L80091d68:
/* 0x80091d68 */ sw	$s6,20($sp)
.L80091d6c:
/* 0x80091d6c */ addu	$a0,$s7,$zero
.L80091d70:
/* 0x80091d70 */ addu	$a1,$s1,$zero
.L80091d74:
/* 0x80091d74 */ addiu	$a2,$zero,128
.L80091d78:
/* 0x80091d78 */ addu	$a3,$a2,$zero
.L80091d7c:
/* 0x80091d7c */ addu	$v0,$a2,$zero
.L80091d80:
/* 0x80091d80 */ jal	0x800490f8
.L80091d84:
/* 0x80091d84 */ sw	$v0,16($sp)
.L80091d88:
/* 0x80091d88 */ addiu	$s1,$s1,1
.L80091d8c:
/* 0x80091d8c */ slti	$v0,$s4,3
.L80091d90:
/* 0x80091d90 */ bne	$v0,$zero,.L80091d04
.L80091d94:
/* 0x80091d94 */ addu	$s3,$s3,$s5
.L80091d98:
/* 0x80091d98 */ jal	0x80098880
.L80091d9c:
/* 0x80091d9c */ addiu	$a0,$zero,86
.L80091da0:
/* 0x80091da0 */ addiu	$a1,$zero,255
.L80091da4:
/* 0x80091da4 */ addiu	$a2,$zero,128
.L80091da8:
/* 0x80091da8 */ addiu	$t0,$zero,-180
.L80091dac:
/* 0x80091dac */ sw	$t0,16($sp)
.L80091db0:
/* 0x80091db0 */ addiu	$t0,$zero,-261
.L80091db4:
/* 0x80091db4 */ sw	$v0,20($sp)
.L80091db8:
/* 0x80091db8 */ addiu	$v0,$t0,320
.L80091dbc:
/* 0x80091dbc */ addiu	$t0,$zero,-180
.L80091dc0:
/* 0x80091dc0 */ sw	$v0,24($sp)
.L80091dc4:
/* 0x80091dc4 */ addiu	$v0,$t0,240
.L80091dc8:
/* 0x80091dc8 */ sw	$v0,28($sp)
.L80091dcc:
/* 0x80091dcc */ addiu	$v0,$zero,270
.L80091dd0:
/* 0x80091dd0 */ sw	$v0,32($sp)
.L80091dd4:
/* 0x80091dd4 */ addiu	$v0,$zero,24
.L80091dd8:
/* 0x80091dd8 */ sw	$v0,36($sp)
.L80091ddc:
/* 0x80091ddc */ lw	$a0,84($s8)
.L80091de0:
/* 0x80091de0 */ jal	0x8004dab8
.L80091de4:
/* 0x80091de4 */ addiu	$a3,$zero,-261
.L80091de8:
/* 0x80091de8 */ sw	$v0,84($s8)
.L80091dec:
/* 0x80091dec */ addu	$v0,$s1,$zero
.L80091df0:
/* 0x80091df0 */ lw	$ra,76($sp)
.L80091df4:
/* 0x80091df4 */ lw	$s8,72($sp)
.L80091df8:
/* 0x80091df8 */ lw	$s7,68($sp)
.L80091dfc:
/* 0x80091dfc */ lw	$s6,64($sp)
.L80091e00:
/* 0x80091e00 */ lw	$s5,60($sp)
.L80091e04:
/* 0x80091e04 */ lw	$s4,56($sp)
.L80091e08:
/* 0x80091e08 */ lw	$s3,52($sp)
.L80091e0c:
/* 0x80091e0c */ lw	$s2,48($sp)
.L80091e10:
/* 0x80091e10 */ lw	$s1,44($sp)
.L80091e14:
/* 0x80091e14 */ lw	$s0,40($sp)
.L80091e18:
/* 0x80091e18 */ jr	$ra
.L80091e1c:
/* 0x80091e1c */ addiu	$sp,$sp,80
.size FUN_80091ba4, .-FUN_80091ba4
