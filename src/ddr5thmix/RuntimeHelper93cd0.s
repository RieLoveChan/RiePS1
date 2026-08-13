.set noreorder
.set noat
.set nomacro

.section .text.FUN_80093cd0
.globl FUN_80093cd0
.type FUN_80093cd0, @function
FUN_80093cd0:
/* Runtime resource and state helper. */
.L80093cd0:
/* 0x80093cd0 */ addiu	$sp,$sp,-40
.L80093cd4:
/* 0x80093cd4 */ sw	$s2,24($sp)
.L80093cd8:
/* 0x80093cd8 */ addu	$s2,$a0,$zero
.L80093cdc:
/* 0x80093cdc */ addiu	$a0,$zero,1
.L80093ce0:
/* 0x80093ce0 */ sw	$ra,32($sp)
.L80093ce4:
/* 0x80093ce4 */ sw	$s3,28($sp)
.L80093ce8:
/* 0x80093ce8 */ sw	$s1,20($sp)
.L80093cec:
/* 0x80093cec */ jal	0x8009ff8c
.L80093cf0:
/* 0x80093cf0 */ sw	$s0,16($sp)
.L80093cf4:
/* 0x80093cf4 */ lui	$a0,0x800f
.L80093cf8:
/* 0x80093cf8 */ addiu	$a0,$a0,10504
.L80093cfc:
/* 0x80093cfc */ sll	$v1,$s2,0x3
.L80093d00:
/* 0x80093d00 */ addu	$v1,$v1,$s2
.L80093d04:
/* 0x80093d04 */ sll	$v1,$v1,0x3
.L80093d08:
/* 0x80093d08 */ addu	$v1,$v1,$s2
.L80093d0c:
/* 0x80093d0c */ sll	$v1,$v1,0x2
.L80093d10:
/* 0x80093d10 */ addu	$v1,$v1,$s2
.L80093d14:
/* 0x80093d14 */ sll	$v1,$v1,0x5
.L80093d18:
/* 0x80093d18 */ addu	$v1,$v1,$s2
.L80093d1c:
/* 0x80093d1c */ sll	$v1,$v1,0x2
.L80093d20:
/* 0x80093d20 */ addu	$v1,$v1,$a0
.L80093d24:
/* 0x80093d24 */ lbu	$a0,146($v1)
.L80093d28:
/* 0x80093d28 */ lw	$v1,4764($v1)
.L80093d2c:
/* 0x80093d2c */ xori	$a0,$a0,0x2
.L80093d30:
/* 0x80093d30 */ sltiu	$s1,$a0,1
.L80093d34:
/* 0x80093d34 */ andi	$a0,$v0,0xff
.L80093d38:
/* 0x80093d38 */ addiu	$v0,$zero,3
.L80093d3c:
/* 0x80093d3c */ beq	$v1,$v0,.L80093d54
.L80093d40:
/* 0x80093d40 */ addiu	$v0,$zero,2
.L80093d44:
/* 0x80093d44 */ bne	$v1,$v0,.L80093d58
.L80093d48:
/* 0x80093d48 */ sll	$zero,$zero,0x0
.L80093d4c:
/* 0x80093d4c */ j 0x80093d58
.L80093d50:
/* 0x80093d50 */ addu	$s1,$s1,$v0
.L80093d54:
/* 0x80093d54 */ addiu	$s1,$s1,4
.L80093d58:
/* 0x80093d58 */ addiu	$v0,$zero,5
.L80093d5c:
/* 0x80093d5c */ beq	$a0,$v0,.L80093d88
.L80093d60:
/* 0x80093d60 */ addiu	$v0,$zero,4
.L80093d64:
/* 0x80093d64 */ bne	$a0,$v0,.L80093d90
.L80093d68:
/* 0x80093d68 */ addu	$s0,$zero,$zero
.L80093d6c:
/* 0x80093d6c */ j 0x80093d90
.L80093d70:
/* 0x80093d70 */ addiu	$s1,$s1,6
.L80093d74:
/* 0x80093d74 */ sll	$v1,$v1,0x4
.L80093d78:
/* 0x80093d78 */ addiu	$v0,$s0,1
.L80093d7c:
/* 0x80093d7c */ andi	$v0,$v0,0xf
.L80093d80:
/* 0x80093d80 */ j 0x80093e08
.L80093d84:
/* 0x80093d84 */ or	$v0,$v1,$v0
.L80093d88:
/* 0x80093d88 */ addiu	$s1,$s1,12
.L80093d8c:
/* 0x80093d8c */ addu	$s0,$zero,$zero
.L80093d90:
/* 0x80093d90 */ lui	$v1,0x800f
.L80093d94:
/* 0x80093d94 */ addiu	$v1,$v1,10504
.L80093d98:
/* 0x80093d98 */ sll	$v0,$s2,0x3
.L80093d9c:
/* 0x80093d9c */ addu	$v0,$v0,$s2
.L80093da0:
/* 0x80093da0 */ sll	$v0,$v0,0x3
.L80093da4:
/* 0x80093da4 */ addu	$v0,$v0,$s2
.L80093da8:
/* 0x80093da8 */ sll	$v0,$v0,0x2
.L80093dac:
/* 0x80093dac */ addu	$v0,$v0,$s2
.L80093db0:
/* 0x80093db0 */ sll	$v0,$v0,0x5
.L80093db4:
/* 0x80093db4 */ addu	$v0,$v0,$s2
.L80093db8:
/* 0x80093db8 */ sll	$v0,$v0,0x2
.L80093dbc:
/* 0x80093dbc */ addu	$v0,$v0,$v1
.L80093dc0:
/* 0x80093dc0 */ sll	$v1,$s1,0x2
.L80093dc4:
/* 0x80093dc4 */ lw	$a0,56($v0)
.L80093dc8:
/* 0x80093dc8 */ lw	$v0,60($v0)
.L80093dcc:
/* 0x80093dcc */ addu	$s3,$v1,$s1
.L80093dd0:
/* 0x80093dd0 */ addu	$s2,$a0,$v0
.L80093dd4:
/* 0x80093dd4 */ jal	0x800a0028
.L80093dd8:
/* 0x80093dd8 */ addu	$a0,$s3,$s0
.L80093ddc:
/* 0x80093ddc */ lw	$v0,4($v0)
.L80093de0:
/* 0x80093de0 */ sll	$zero,$zero,0x0
.L80093de4:
/* 0x80093de4 */ sltu	$v0,$v0,$s2
.L80093de8:
/* 0x80093de8 */ bne	$v0,$zero,.L80093d74
.L80093dec:
/* 0x80093dec */ andi	$v1,$s1,0xff
.L80093df0:
/* 0x80093df0 */ addiu	$s0,$s0,1
.L80093df4:
/* 0x80093df4 */ slti	$v0,$s0,5
.L80093df8:
/* 0x80093df8 */ bne	$v0,$zero,.L80093dd4
.L80093dfc:
/* 0x80093dfc */ andi	$v0,$s1,0xff
.L80093e00:
/* 0x80093e00 */ sll	$v0,$v0,0x4
.L80093e04:
/* 0x80093e04 */ ori	$v0,$v0,0x6
.L80093e08:
/* 0x80093e08 */ addu	$v1,$v0,$zero
.L80093e0c:
/* 0x80093e0c */ andi	$v0,$v1,0xf
.L80093e10:
/* 0x80093e10 */ addiu	$v0,$v0,-1
.L80093e14:
/* 0x80093e14 */ sltiu	$v0,$v0,5
.L80093e18:
/* 0x80093e18 */ bne	$v0,$zero,.L80093e24
.L80093e1c:
/* 0x80093e1c */ sll	$zero,$zero,0x0
.L80093e20:
/* 0x80093e20 */ andi	$v1,$v1,0xff0
.L80093e24:
/* 0x80093e24 */ lw	$ra,32($sp)
.L80093e28:
/* 0x80093e28 */ lw	$s3,28($sp)
.L80093e2c:
/* 0x80093e2c */ lw	$s2,24($sp)
.L80093e30:
/* 0x80093e30 */ lw	$s1,20($sp)
.L80093e34:
/* 0x80093e34 */ lw	$s0,16($sp)
.L80093e38:
/* 0x80093e38 */ addu	$v0,$v1,$zero
.L80093e3c:
/* 0x80093e3c */ jr	$ra
.L80093e40:
/* 0x80093e40 */ addiu	$sp,$sp,40
.size FUN_80093cd0, .-FUN_80093cd0

