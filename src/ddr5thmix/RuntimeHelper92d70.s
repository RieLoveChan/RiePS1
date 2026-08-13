.set noreorder
.set noat
.set nomacro

.section .text.FUN_80092d70
.globl FUN_80092d70
.type FUN_80092d70, @function
FUN_80092d70:
/* Runtime resource and state helper. */
.L80092d70:
/* 0x80092d70 */ addiu	$sp,$sp,-40
.L80092d74:
/* 0x80092d74 */ lui	$a0,0x8017
.L80092d78:
/* 0x80092d78 */ ori	$a0,$a0,0x4000
.L80092d7c:
/* 0x80092d7c */ sw	$s0,24($sp)
.L80092d80:
/* 0x80092d80 */ addu	$s0,$zero,$zero
.L80092d84:
/* 0x80092d84 */ lui	$v1,0x8017
.L80092d88:
/* 0x80092d88 */ lw	$v1,16408($v1)
.L80092d8c:
/* 0x80092d8c */ lui	$v0,0x8011
.L80092d90:
/* 0x80092d90 */ sw	$s1,28($sp)
.L80092d94:
/* 0x80092d94 */ addiu	$s1,$v0,20952
.L80092d98:
/* 0x80092d98 */ sw	$ra,36($sp)
.L80092d9c:
/* 0x80092d9c */ sw	$s2,32($sp)
.L80092da0:
/* 0x80092da0 */ addu	$s2,$v1,$a0
.L80092da4:
/* 0x80092da4 */ lbu	$a0,0($s1)
.L80092da8:
/* 0x80092da8 */ jal	0x8007ee38
.L80092dac:
/* 0x80092dac */ sll	$zero,$zero,0x0
.L80092db0:
/* 0x80092db0 */ jal	0x8007f14c
.L80092db4:
/* 0x80092db4 */ addu	$a0,$v0,$zero
.L80092db8:
/* 0x80092db8 */ addu	$a2,$s0,$zero
.L80092dbc:
/* 0x80092dbc */ sll	$v1,$v0,0x1
.L80092dc0:
/* 0x80092dc0 */ addu	$v1,$v1,$v0
.L80092dc4:
/* 0x80092dc4 */ sll	$v1,$v1,0x4
.L80092dc8:
/* 0x80092dc8 */ addu	$v1,$v1,$v0
.L80092dcc:
/* 0x80092dcc */ sll	$v1,$v1,0x6
.L80092dd0:
/* 0x80092dd0 */ bgez	$s0,.L80092ddc
.L80092dd4:
/* 0x80092dd4 */ addu	$a0,$s2,$v1
.L80092dd8:
/* 0x80092dd8 */ addiu	$a2,$s0,3
.L80092ddc:
/* 0x80092ddc */ andi	$v0,$s0,0xf
.L80092de0:
/* 0x80092de0 */ ori	$v0,$v0,0x1f0
.L80092de4:
/* 0x80092de4 */ sw	$v0,16($sp)
.L80092de8:
/* 0x80092de8 */ sra	$a2,$a2,0x2
.L80092dec:
/* 0x80092dec */ sll	$a1,$a2,0x1
.L80092df0:
/* 0x80092df0 */ addu	$a1,$a1,$a2
.L80092df4:
/* 0x80092df4 */ sll	$a1,$a1,0x6
.L80092df8:
/* 0x80092df8 */ addiu	$a1,$a1,3200
.L80092dfc:
/* 0x80092dfc */ sra	$a1,$a1,0x2
.L80092e00:
/* 0x80092e00 */ addiu	$v0,$zero,-32768
.L80092e04:
/* 0x80092e04 */ or	$a1,$a1,$v0
.L80092e08:
/* 0x80092e08 */ sll	$a1,$a1,0x10
.L80092e0c:
/* 0x80092e0c */ sll	$a2,$a2,0x2
.L80092e10:
/* 0x80092e10 */ subu	$a2,$s0,$a2
.L80092e14:
/* 0x80092e14 */ sll	$a2,$a2,0x5
.L80092e18:
/* 0x80092e18 */ addiu	$a2,$a2,128
.L80092e1c:
/* 0x80092e1c */ sll	$a2,$a2,0x10
.L80092e20:
/* 0x80092e20 */ sra	$a1,$a1,0x10
.L80092e24:
/* 0x80092e24 */ sra	$a2,$a2,0x10
.L80092e28:
/* 0x80092e28 */ jal	0x800223a8
.L80092e2c:
/* 0x80092e2c */ addiu	$a3,$zero,896
.L80092e30:
/* 0x80092e30 */ addiu	$s0,$s0,1
.L80092e34:
/* 0x80092e34 */ slti	$v0,$s0,12
.L80092e38:
/* 0x80092e38 */ bne	$v0,$zero,.L80092da4
.L80092e3c:
/* 0x80092e3c */ addiu	$s1,$s1,2
.L80092e40:
/* 0x80092e40 */ lui	$v1,0x8011
.L80092e44:
/* 0x80092e44 */ lw	$ra,36($sp)
.L80092e48:
/* 0x80092e48 */ lw	$s2,32($sp)
.L80092e4c:
/* 0x80092e4c */ lw	$s1,28($sp)
.L80092e50:
/* 0x80092e50 */ lw	$s0,24($sp)
.L80092e54:
/* 0x80092e54 */ addiu	$v0,$zero,1
.L80092e58:
/* 0x80092e58 */ sb	$v0,27685($v1)
.L80092e5c:
/* 0x80092e5c */ jr	$ra
.L80092e60:
/* 0x80092e60 */ addiu	$sp,$sp,40
.size FUN_80092d70, .-FUN_80092d70

