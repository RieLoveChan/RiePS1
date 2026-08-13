.set noreorder
.set noat
.set nomacro

.section .text.FUN_80095cf8
.globl FUN_80095cf8
.type FUN_80095cf8, @function
FUN_80095cf8:
/* Runtime resource and state helper. */
.L80095cf8:
/* 0x80095cf8 */ addiu	$sp,$sp,-32
.L80095cfc:
/* 0x80095cfc */ lui	$v0,0x800f
.L80095d00:
/* 0x80095d00 */ addiu	$v1,$v0,10504
.L80095d04:
/* 0x80095d04 */ lui	$v0,0x1
.L80095d08:
/* 0x80095d08 */ sw	$s2,24($sp)
.L80095d0c:
/* 0x80095d0c */ addu	$s2,$v1,$v0
.L80095d10:
/* 0x80095d10 */ sw	$ra,28($sp)
.L80095d14:
/* 0x80095d14 */ sw	$s1,20($sp)
.L80095d18:
/* 0x80095d18 */ sw	$s0,16($sp)
.L80095d1c:
/* 0x80095d1c */ lb	$v0,10114($s2)
.L80095d20:
/* 0x80095d20 */ sll	$zero,$zero,0x0
.L80095d24:
/* 0x80095d24 */ beq	$v0,$zero,.L80095ea4
.L80095d28:
/* 0x80095d28 */ addiu	$v0,$zero,1
.L80095d2c:
/* 0x80095d2c */ jal	0x8009d6cc
.L80095d30:
/* 0x80095d30 */ addiu	$s1,$v1,4772
.L80095d34:
/* 0x80095d34 */ beq	$v0,$zero,.L80095ea4
.L80095d38:
/* 0x80095d38 */ addu	$v0,$zero,$zero
.L80095d3c:
/* 0x80095d3c */ jal	0x8002d60c
.L80095d40:
/* 0x80095d40 */ addu	$a0,$zero,$zero
.L80095d44:
/* 0x80095d44 */ lui	$v0,0x800e
.L80095d48:
/* 0x80095d48 */ lw	$v0,3612($v0)
.L80095d4c:
/* 0x80095d4c */ sll	$zero,$zero,0x0
.L80095d50:
/* 0x80095d50 */ lbu	$v0,1($v0)
.L80095d54:
/* 0x80095d54 */ sll	$zero,$zero,0x0
.L80095d58:
/* 0x80095d58 */ bne	$v0,$zero,.L80095e7c
.L80095d5c:
/* 0x80095d5c */ addu	$s0,$zero,$zero
.L80095d60:
/* 0x80095d60 */ sb	$zero,10115($s2)
.L80095d64:
/* 0x80095d64 */ addiu	$a0,$zero,-1
.L80095d68:
/* 0x80095d68 */ addiu	$v1,$zero,14
.L80095d6c:
/* 0x80095d6c */ lui	$v0,0x8011
.L80095d70:
/* 0x80095d70 */ addiu	$v0,$v0,20984
.L80095d74:
/* 0x80095d74 */ addiu	$v0,$v0,588
.L80095d78:
/* 0x80095d78 */ sh	$a0,38($v0)
.L80095d7c:
/* 0x80095d7c */ addiu	$v1,$v1,-1
.L80095d80:
/* 0x80095d80 */ bgez	$v1,.L80095d78
.L80095d84:
/* 0x80095d84 */ addiu	$v0,$v0,-42
.L80095d88:
/* 0x80095d88 */ addu	$t1,$zero,$zero
.L80095d8c:
/* 0x80095d8c */ addiu	$t7,$zero,12
.L80095d90:
/* 0x80095d90 */ addu	$t6,$t1,$zero
.L80095d94:
/* 0x80095d94 */ addu	$v0,$t1,$zero
.L80095d98:
/* 0x80095d98 */ sll	$v0,$v0,0x7
.L80095d9c:
/* 0x80095d9c */ addu	$a2,$v0,$s1
.L80095da0:
/* 0x80095da0 */ lui	$v0,0x8011
.L80095da4:
/* 0x80095da4 */ addiu	$s0,$v0,20984
.L80095da8:
/* 0x80095da8 */ addu	$v0,$t1,$zero
.L80095dac:
/* 0x80095dac */ addu	$a1,$v0,$s0
.L80095db0:
/* 0x80095db0 */ addu	$t0,$v0,$zero
.L80095db4:
/* 0x80095db4 */ addiu	$t5,$t0,1
.L80095db8:
/* 0x80095db8 */ addiu	$v0,$zero,1
.L80095dbc:
/* 0x80095dbc */ lw	$v1,2464($s1)
.L80095dc0:
/* 0x80095dc0 */ sllv	$v0,$v0,$t1
.L80095dc4:
/* 0x80095dc4 */ and	$v1,$v1,$v0
.L80095dc8:
/* 0x80095dc8 */ beq	$v1,$zero,.L80095e68
.L80095dcc:
/* 0x80095dcc */ sll	$zero,$zero,0x0
.L80095dd0:
/* 0x80095dd0 */ addu	$a0,$zero,$zero
.L80095dd4:
/* 0x80095dd4 */ addu	$t4,$t0,$zero
.L80095dd8:
/* 0x80095dd8 */ lhu	$v0,68($a2)
.L80095ddc:
/* 0x80095ddc */ addu	$t3,$t6,$zero
.L80095de0:
/* 0x80095de0 */ sh	$v0,38($a1)
.L80095de4:
/* 0x80095de4 */ lbu	$v0,70($a2)
.L80095de8:
/* 0x80095de8 */ addu	$t2,$t5,$zero
.L80095dec:
/* 0x80095dec */ sb	$v0,40($a1)
.L80095df0:
/* 0x80095df0 */ lbu	$v0,71($a2)
.L80095df4:
/* 0x80095df4 */ addu	$a3,$t7,$zero
.L80095df8:
/* 0x80095df8 */ sb	$v0,41($a1)
.L80095dfc:
/* 0x80095dfc */ addu	$v1,$a0,$t4
.L80095e00:
/* 0x80095e00 */ addu	$v0,$a0,$t3
.L80095e04:
/* 0x80095e04 */ addu	$v0,$s1,$v0
.L80095e08:
/* 0x80095e08 */ lbu	$v0,2100($v0)
.L80095e0c:
/* 0x80095e0c */ addu	$v1,$v1,$s0
.L80095e10:
/* 0x80095e10 */ sb	$v0,0($v1)
.L80095e14:
/* 0x80095e14 */ slti	$v0,$a0,8
.L80095e18:
/* 0x80095e18 */ beq	$v0,$zero,.L80095e34
.L80095e1c:
/* 0x80095e1c */ addu	$v0,$a0,$t2
.L80095e20:
/* 0x80095e20 */ addu	$v1,$a0,$a3
.L80095e24:
/* 0x80095e24 */ addu	$v1,$s1,$v1
.L80095e28:
/* 0x80095e28 */ lbu	$v1,2100($v1)
.L80095e2c:
/* 0x80095e2c */ addu	$v0,$v0,$s0
.L80095e30:
/* 0x80095e30 */ sb	$v1,24($v0)
.L80095e34:
/* 0x80095e34 */ addiu	$a0,$a0,1
.L80095e38:
/* 0x80095e38 */ slti	$v0,$a0,24
.L80095e3c:
/* 0x80095e3c */ bne	$v0,$zero,.L80095e00
.L80095e40:
/* 0x80095e40 */ addu	$v1,$a0,$t4
.L80095e44:
/* 0x80095e44 */ addiu	$v0,$zero,91
.L80095e48:
/* 0x80095e48 */ sb	$v0,24($a1)
.L80095e4c:
/* 0x80095e4c */ addiu	$v0,$zero,93
.L80095e50:
/* 0x80095e50 */ sb	$v0,33($a1)
.L80095e54:
/* 0x80095e54 */ sb	$zero,34($a1)
.L80095e58:
/* 0x80095e58 */ addiu	$a1,$a1,42
.L80095e5c:
/* 0x80095e5c */ addiu	$t0,$t0,42
.L80095e60:
/* 0x80095e60 */ addiu	$t5,$t5,42
.L80095e64:
/* 0x80095e64 */ addiu	$a2,$a2,128
.L80095e68:
/* 0x80095e68 */ addiu	$t7,$t7,24
.L80095e6c:
/* 0x80095e6c */ addiu	$t1,$t1,1
.L80095e70:
/* 0x80095e70 */ slti	$v0,$t1,15
.L80095e74:
/* 0x80095e74 */ bne	$v0,$zero,.L80095db8
.L80095e78:
/* 0x80095e78 */ addiu	$t6,$t6,24
.L80095e7c:
/* 0x80095e7c */ addiu	$v0,$zero,1
.L80095e80:
/* 0x80095e80 */ lui	$v1,0x800b
.L80095e84:
/* 0x80095e84 */ lw	$a0,-14100($v1)
.L80095e88:
/* 0x80095e88 */ addu	$v1,$v0,$zero
.L80095e8c:
/* 0x80095e8c */ sb	$v1,0($a0)
.L80095e90:
/* 0x80095e90 */ lui	$v1,0x800f
.L80095e94:
/* 0x80095e94 */ addiu	$v1,$v1,10504
.L80095e98:
/* 0x80095e98 */ lui	$a0,0x1
.L80095e9c:
/* 0x80095e9c */ addu	$v1,$v1,$a0
.L80095ea0:
/* 0x80095ea0 */ sb	$zero,10114($v1)
.L80095ea4:
/* 0x80095ea4 */ lw	$ra,28($sp)
.L80095ea8:
/* 0x80095ea8 */ lw	$s2,24($sp)
.L80095eac:
/* 0x80095eac */ lw	$s1,20($sp)
.L80095eb0:
/* 0x80095eb0 */ lw	$s0,16($sp)
.L80095eb4:
/* 0x80095eb4 */ jr	$ra
.L80095eb8:
/* 0x80095eb8 */ addiu	$sp,$sp,32
.size FUN_80095cf8, .-FUN_80095cf8

