.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0cb0
.globl FUN_800a0cb0
.type FUN_800a0cb0, @function
FUN_800a0cb0:
.L800a0cb0:
/* 0x800a0cb0 */ lui	$a1,0x800f
.L800a0cb4:
/* 0x800a0cb4 */ lui	$v1,0x800b
.L800a0cb8:
/* 0x800a0cb8 */ lw	$a0,-14100($v1)
.L800a0cbc:
/* 0x800a0cbc */ addiu	$v0,$zero,1
.L800a0cc0:
/* 0x800a0cc0 */ sb	$v0,10497($a1)
.L800a0cc4:
/* 0x800a0cc4 */ sb	$zero,81($a0)
.L800a0cc8:
/* 0x800a0cc8 */ lw	$v0,-14100($v1)
.L800a0ccc:
/* 0x800a0ccc */ sll	$zero,$zero,0x0
.L800a0cd0:
/* 0x800a0cd0 */ sb	$zero,64($v0)
.L800a0cd4:
/* 0x800a0cd4 */ lw	$v0,-14100($v1)
.L800a0cd8:
/* 0x800a0cd8 */ jr	$ra
.L800a0cdc:
/* 0x800a0cdc */ sb	$zero,65($v0)
.size FUN_800a0cb0, .-FUN_800a0cb0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0ce0
.globl FUN_800a0ce0
.type FUN_800a0ce0, @function
FUN_800a0ce0:
.L800a0ce0:
/* 0x800a0ce0 */ addiu	$sp,$sp,-24
.L800a0ce4:
/* 0x800a0ce4 */ sw	$ra,16($sp)
.L800a0ce8:
/* 0x800a0ce8 */ jal	0x800a00d4
.L800a0cec:
/* 0x800a0cec */ sll	$zero,$zero,0x0
.L800a0cf0:
/* 0x800a0cf0 */ lw	$ra,16($sp)
.L800a0cf4:
/* 0x800a0cf4 */ sll	$zero,$zero,0x0
.L800a0cf8:
/* 0x800a0cf8 */ jr	$ra
.L800a0cfc:
/* 0x800a0cfc */ addiu	$sp,$sp,24
.size FUN_800a0ce0, .-FUN_800a0ce0
