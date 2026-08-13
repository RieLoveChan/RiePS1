.set noreorder
.set noat
.set nomacro

.section .text.FUN_80092ca8
.globl FUN_80092ca8
.type FUN_80092ca8, @function
FUN_80092ca8:
/* Runtime resource and state helper. */
.L80092ca8:
/* 0x80092ca8 */ addiu	$sp,$sp,-24
.L80092cac:
/* 0x80092cac */ addiu	$v0,$zero,1
.L80092cb0:
/* 0x80092cb0 */ sw	$ra,20($sp)
.L80092cb4:
/* 0x80092cb4 */ beq	$a0,$v0,.L80092cd0
.L80092cb8:
/* 0x80092cb8 */ sw	$s0,16($sp)
.L80092cbc:
/* 0x80092cbc */ addiu	$v0,$zero,2
.L80092cc0:
/* 0x80092cc0 */ beq	$a0,$v0,.L80092d18
.L80092cc4:
/* 0x80092cc4 */ lui	$a0,0x8011
.L80092cc8:
/* 0x80092cc8 */ j 0x80092d60
.L80092ccc:
/* 0x80092ccc */ addu	$v0,$zero,$zero
.L80092cd0:
/* 0x80092cd0 */ lui	$v0,0x8011
.L80092cd4:
/* 0x80092cd4 */ addiu	$s0,$v0,20936
.L80092cd8:
/* 0x80092cd8 */ addu	$a0,$s0,$zero
.L80092cdc:
/* 0x80092cdc */ addiu	$a1,$zero,6
.L80092ce0:
/* 0x80092ce0 */ jal	0x80092a80
.L80092ce4:
/* 0x80092ce4 */ addiu	$a2,$zero,1
.L80092ce8:
/* 0x80092ce8 */ bne	$v0,$zero,.L80092d60
.L80092cec:
/* 0x80092cec */ sll	$zero,$zero,0x0
.L80092cf0:
/* 0x80092cf0 */ addiu	$a0,$zero,255
.L80092cf4:
/* 0x80092cf4 */ addiu	$v1,$zero,5
.L80092cf8:
/* 0x80092cf8 */ addiu	$v0,$s0,10
.L80092cfc:
/* 0x80092cfc */ sb	$a0,1($v0)
.L80092d00:
/* 0x80092d00 */ addiu	$v1,$v1,-1
.L80092d04:
/* 0x80092d04 */ bgez	$v1,.L80092cfc
.L80092d08:
/* 0x80092d08 */ addiu	$v0,$v0,-2
.L80092d0c:
/* 0x80092d0c */ lui	$v0,0x8011
.L80092d10:
/* 0x80092d10 */ j 0x80092d5c
.L80092d14:
/* 0x80092d14 */ sb	$zero,20976($v0)
.L80092d18:
/* 0x80092d18 */ addiu	$a0,$a0,20952
.L80092d1c:
/* 0x80092d1c */ addiu	$a1,$zero,12
.L80092d20:
/* 0x80092d20 */ jal	0x80092a80
.L80092d24:
/* 0x80092d24 */ addiu	$a2,$zero,2
.L80092d28:
/* 0x80092d28 */ bne	$v0,$zero,.L80092d60
.L80092d2c:
/* 0x80092d2c */ sll	$zero,$zero,0x0
.L80092d30:
/* 0x80092d30 */ addiu	$a0,$zero,255
.L80092d34:
/* 0x80092d34 */ addiu	$v1,$zero,11
.L80092d38:
/* 0x80092d38 */ lui	$v0,0x8011
.L80092d3c:
/* 0x80092d3c */ addiu	$v0,$v0,20952
.L80092d40:
/* 0x80092d40 */ addiu	$v0,$v0,22
.L80092d44:
/* 0x80092d44 */ sb	$a0,1($v0)
.L80092d48:
/* 0x80092d48 */ addiu	$v1,$v1,-1
.L80092d4c:
/* 0x80092d4c */ bgez	$v1,.L80092d44
.L80092d50:
/* 0x80092d50 */ addiu	$v0,$v0,-2
.L80092d54:
/* 0x80092d54 */ lui	$v0,0x8011
.L80092d58:
/* 0x80092d58 */ sb	$zero,20977($v0)
.L80092d5c:
/* 0x80092d5c */ addu	$v0,$zero,$zero
.L80092d60:
/* 0x80092d60 */ lw	$ra,20($sp)
.L80092d64:
/* 0x80092d64 */ lw	$s0,16($sp)
.L80092d68:
/* 0x80092d68 */ jr	$ra
.L80092d6c:
/* 0x80092d6c */ addiu	$sp,$sp,24
.size FUN_80092ca8, .-FUN_80092ca8

