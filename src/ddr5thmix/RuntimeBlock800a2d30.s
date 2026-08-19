.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a2d30
.globl FUN_800a2d30
.type FUN_800a2d30, @function
FUN_800a2d30:
.L800a2d30:
/* 0x800a2d30 */ addiu	$sp,$sp,-944
.L800a2d34:
/* 0x800a2d34 */ addu	$a1,$zero,$zero
.L800a2d38:
/* 0x800a2d38 */ sw	$s0,936($sp)
.L800a2d3c:
/* 0x800a2d3c */ addu	$s0,$a1,$zero
.L800a2d40:
/* 0x800a2d40 */ addu	$v1,$a1,$zero
.L800a2d44:
/* 0x800a2d44 */ lui	$v0,0x800e
.L800a2d48:
/* 0x800a2d48 */ lw	$v0,2840($v0)
.L800a2d4c:
/* 0x800a2d4c */ addiu	$a0,$sp,16
.L800a2d50:
/* 0x800a2d50 */ sw	$ra,940($sp)
.L800a2d54:
/* 0x800a2d54 */ addiu	$a2,$v0,4560
.L800a2d58:
/* 0x800a2d58 */ addu	$v0,$a2,$v1
.L800a2d5c:
/* 0x800a2d5c */ lbu	$v0,0($v0)
.L800a2d60:
/* 0x800a2d60 */ sll	$zero,$zero,0x0
.L800a2d64:
/* 0x800a2d64 */ andi	$v0,$v0,0x4
.L800a2d68:
/* 0x800a2d68 */ beq	$v0,$zero,.L800a2d7c
.L800a2d6c:
/* 0x800a2d6c */ sll	$zero,$zero,0x0
.L800a2d70:
/* 0x800a2d70 */ addiu	$a0,$a0,4
.L800a2d74:
/* 0x800a2d74 */ addiu	$s0,$s0,1
.L800a2d78:
/* 0x800a2d78 */ sw	$v1,0($a0)
.L800a2d7c:
/* 0x800a2d7c */ addiu	$v1,$v1,1
.L800a2d80:
/* 0x800a2d80 */ slti	$v0,$v1,228
.L800a2d84:
/* 0x800a2d84 */ bne	$v0,$zero,.L800a2d5c
.L800a2d88:
/* 0x800a2d88 */ addu	$v0,$a2,$v1
.L800a2d8c:
/* 0x800a2d8c */ bne	$s0,$zero,.L800a2d9c
.L800a2d90:
/* 0x800a2d90 */ addiu	$v0,$zero,1
.L800a2d94:
/* 0x800a2d94 */ j	.L800a2e00
.L800a2d98:
/* 0x800a2d98 */ addu	$a1,$zero,$zero
.L800a2d9c:
/* 0x800a2d9c */ bne	$s0,$v0,.L800a2db0
.L800a2da0:
/* 0x800a2da0 */ slti	$v0,$s0,2
.L800a2da4:
/* 0x800a2da4 */ lw	$a1,20($sp)
.L800a2da8:
/* 0x800a2da8 */ j	.L800a2e00
.L800a2dac:
/* 0x800a2dac */ sll	$zero,$zero,0x0
.L800a2db0:
/* 0x800a2db0 */ bne	$v0,$zero,.L800a2e00
.L800a2db4:
/* 0x800a2db4 */ sll	$zero,$zero,0x0
.L800a2db8:
/* 0x800a2db8 */ jal	0x8004d628
.L800a2dbc:
/* 0x800a2dbc */ sll	$zero,$zero,0x0
.L800a2dc0:
/* 0x800a2dc0 */ div	$zero,$v0,$s0
.L800a2dc4:
/* 0x800a2dc4 */ bne	$s0,$zero,.L800a2dd0
.L800a2dc8:
/* 0x800a2dc8 */ sll	$zero,$zero,0x0
.L800a2dcc:
/* 0x800a2dcc */ break	0x7
.L800a2dd0:
/* 0x800a2dd0 */ addiu	$at,$zero,-1
.L800a2dd4:
/* 0x800a2dd4 */ bne	$s0,$at,.L800a2de8
.L800a2dd8:
/* 0x800a2dd8 */ lui	$at,0x8000
.L800a2ddc:
/* 0x800a2ddc */ bne	$v0,$at,.L800a2de8
.L800a2de0:
/* 0x800a2de0 */ sll	$zero,$zero,0x0
.L800a2de4:
/* 0x800a2de4 */ break	0x6
.L800a2de8:
/* 0x800a2de8 */ mfhi	$v1
.L800a2dec:
/* 0x800a2dec */ sll	$zero,$zero,0x0
.L800a2df0:
/* 0x800a2df0 */ addiu	$v1,$v1,1
.L800a2df4:
/* 0x800a2df4 */ sll	$v0,$v1,0x2
.L800a2df8:
/* 0x800a2df8 */ addu	$v0,$sp,$v0
.L800a2dfc:
/* 0x800a2dfc */ lw	$a1,16($v0)
.L800a2e00:
/* 0x800a2e00 */ lw	$ra,940($sp)
.L800a2e04:
/* 0x800a2e04 */ lw	$s0,936($sp)
.L800a2e08:
/* 0x800a2e08 */ addu	$v0,$a1,$zero
.L800a2e0c:
/* 0x800a2e0c */ jr	$ra
.L800a2e10:
/* 0x800a2e10 */ addiu	$sp,$sp,944
.size FUN_800a2d30, .-FUN_800a2d30
