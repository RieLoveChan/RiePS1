.set noreorder
.set noat
.set nomacro

.section .text.FUN_80042e1c
.globl FUN_80042e1c
.type FUN_80042e1c, @function
FUN_80042e1c:
.L80042e1c:
/* 0x80042e1c */ addiu	$sp,$sp,-32
.L80042e20:
/* 0x80042e20 */ addiu	$a0,$zero,8
.L80042e24:
/* 0x80042e24 */ addiu	$a1,$zero,15
.L80042e28:
/* 0x80042e28 */ sw	$ra,28($sp)
.L80042e2c:
/* 0x80042e2c */ jal	0x80043134
.L80042e30:
/* 0x80042e30 */ sw	$s0,24($sp)
.L80042e34:
/* 0x80042e34 */ addiu	$a0,$zero,8
.L80042e38:
/* 0x80042e38 */ jal	0x80048e80
.L80042e3c:
/* 0x80042e3c */ addu	$a1,$zero,$zero
.L80042e40:
/* 0x80042e40 */ lui	$v0,0x8011
.L80042e44:
/* 0x80042e44 */ addiu	$v0,$v0,27696
.L80042e48:
/* 0x80042e48 */ lh	$a1,2($v0)
.L80042e4c:
/* 0x80042e4c */ lh	$a2,4($v0)
.L80042e50:
/* 0x80042e50 */ lh	$a3,6($v0)
.L80042e54:
/* 0x80042e54 */ lh	$v1,8($v0)
.L80042e58:
/* 0x80042e58 */ lh	$v0,10($v0)
.L80042e5c:
/* 0x80042e5c */ addiu	$a0,$zero,8
.L80042e60:
/* 0x80042e60 */ sw	$v1,16($sp)
.L80042e64:
/* 0x80042e64 */ jal	0x80048d18
.L80042e68:
/* 0x80042e68 */ sw	$v0,20($sp)
.L80042e6c:
/* 0x80042e6c */ addiu	$a0,$zero,8
.L80042e70:
/* 0x80042e70 */ addu	$a1,$zero,$zero
.L80042e74:
/* 0x80042e74 */ jal	0x80048dec
.L80042e78:
/* 0x80042e78 */ addu	$a2,$a1,$zero
.L80042e7c:
/* 0x80042e7c */ addiu	$a0,$zero,8
.L80042e80:
/* 0x80042e80 */ addiu	$a1,$zero,128
.L80042e84:
/* 0x80042e84 */ addu	$a2,$a1,$zero
.L80042e88:
/* 0x80042e88 */ jal	0x80048b94
.L80042e8c:
/* 0x80042e8c */ addu	$a3,$a1,$zero
.L80042e90:
/* 0x80042e90 */ addiu	$a0,$zero,8
.L80042e94:
/* 0x80042e94 */ jal	0x80048c3c
.L80042e98:
/* 0x80042e98 */ addiu	$a1,$zero,-1
.L80042e9c:
/* 0x80042e9c */ lui	$s0,0x800e
.L80042ea0:
/* 0x80042ea0 */ lw	$a1,30120($s0)
.L80042ea4:
/* 0x80042ea4 */ jal	0x80048aa8
.L80042ea8:
/* 0x80042ea8 */ addiu	$a0,$zero,8
.L80042eac:
/* 0x80042eac */ jal	0x80043344
.L80042eb0:
/* 0x80042eb0 */ addiu	$a0,$zero,8
.L80042eb4:
/* 0x80042eb4 */ lw	$ra,28($sp)
.L80042eb8:
/* 0x80042eb8 */ sw	$zero,30120($s0)
.L80042ebc:
/* 0x80042ebc */ lw	$s0,24($sp)
.L80042ec0:
/* 0x80042ec0 */ jr	$ra
.L80042ec4:
/* 0x80042ec4 */ addiu	$sp,$sp,32
.size FUN_80042e1c, .-FUN_80042e1c
