.set noreorder
.set noat
.set nomacro

.section .text.FUN_80083bec
.globl FUN_80083bec
.type FUN_80083bec, @function
FUN_80083bec:
/* Runtime gameplay/resource helper. */
.L80083bec:
/* 0x80083bec */ lui	$v0,0x800f
.L80083bf0:
/* 0x80083bf0 */ addiu	$t5,$v0,10504
.L80083bf4:
/* 0x80083bf4 */ addiu	$t4,$t5,4772
.L80083bf8:
/* 0x80083bf8 */ addiu	$t2,$zero,-2
.L80083bfc:
/* 0x80083bfc */ lui	$v0,0x8010
.L80083c00:
/* 0x80083c00 */ addiu	$t6,$v0,20188
.L80083c04:
/* 0x80083c04 */ addiu	$t3,$zero,1
.L80083c08:
/* 0x80083c08 */ addu	$t0,$t5,$zero
.L80083c0c:
/* 0x80083c0c */ addu	$t1,$zero,$zero
.L80083c10:
/* 0x80083c10 */ addu	$a0,$t1,$t4
.L80083c14:
/* 0x80083c14 */ sw	$zero,4760($t0)
.L80083c18:
/* 0x80083c18 */ lh	$v0,4($a0)
.L80083c1c:
/* 0x80083c1c */ sll	$zero,$zero,0x0
.L80083c20:
/* 0x80083c20 */ beq	$v0,$t2,.L80083cb0
.L80083c24:
/* 0x80083c24 */ addu	$a2,$zero,$zero
.L80083c28:
/* 0x80083c28 */ addu	$a3,$t0,$zero
.L80083c2c:
/* 0x80083c2c */ addiu	$a0,$a0,4
.L80083c30:
/* 0x80083c30 */ lh	$v0,0($a0)
.L80083c34:
/* 0x80083c34 */ sll	$zero,$zero,0x0
.L80083c38:
/* 0x80083c38 */ bltz	$v0,.L80083c9c
.L80083c3c:
/* 0x80083c3c */ sh	$a2,10($a0)
.L80083c40:
/* 0x80083c40 */ sll	$v0,$v0,0x3
.L80083c44:
/* 0x80083c44 */ addu	$a1,$v0,$t6
.L80083c48:
/* 0x80083c48 */ addu	$v1,$zero,$zero
.L80083c4c:
/* 0x80083c4c */ addu	$v0,$a1,$v1
.L80083c50:
/* 0x80083c50 */ lbu	$v0,0($v0)
.L80083c54:
/* 0x80083c54 */ sll	$zero,$zero,0x0
.L80083c58:
/* 0x80083c58 */ beq	$v0,$t3,.L80083c74
.L80083c5c:
/* 0x80083c5c */ addiu	$v0,$zero,32000
.L80083c60:
/* 0x80083c60 */ addiu	$v1,$v1,1
.L80083c64:
/* 0x80083c64 */ slti	$v0,$v1,8
.L80083c68:
/* 0x80083c68 */ bne	$v0,$zero,.L80083c50
.L80083c6c:
/* 0x80083c6c */ addu	$v0,$a1,$v1
.L80083c70:
/* 0x80083c70 */ addiu	$v0,$zero,32000
.L80083c74:
/* 0x80083c74 */ sh	$v0,6($a0)
.L80083c78:
/* 0x80083c78 */ slti	$v0,$v1,8
.L80083c7c:
/* 0x80083c7c */ bne	$v0,$zero,.L80083c8c
.L80083c80:
/* 0x80083c80 */ addiu	$v0,$zero,-3
.L80083c84:
/* 0x80083c84 */ j 0x0083c9c
.L80083c88:
/* 0x80083c88 */ sh	$v0,0($a0)
.L80083c8c:
/* 0x80083c8c */ lw	$v0,4760($a3)
.L80083c90:
/* 0x80083c90 */ sll	$zero,$zero,0x0
.L80083c94:
/* 0x80083c94 */ addiu	$v0,$v0,1
.L80083c98:
/* 0x80083c98 */ sw	$v0,4760($a3)
.L80083c9c:
/* 0x80083c9c */ addiu	$a0,$a0,16
.L80083ca0:
/* 0x80083ca0 */ lh	$v0,0($a0)
.L80083ca4:
/* 0x80083ca4 */ sll	$zero,$zero,0x0
.L80083ca8:
/* 0x80083ca8 */ bne	$v0,$t2,.L80083c34
.L80083cac:
/* 0x80083cac */ addiu	$a2,$a2,1
.L80083cb0:
/* 0x80083cb0 */ lw	$v0,152($t0)
.L80083cb4:
/* 0x80083cb4 */ sll	$zero,$zero,0x0
.L80083cb8:
/* 0x80083cb8 */ srl	$v0,$v0,0x2
.L80083cbc:
/* 0x80083cbc */ andi	$v0,$v0,0x1
.L80083cc0:
/* 0x80083cc0 */ beq	$v0,$zero,.L80083d28
.L80083cc4:
/* 0x80083cc4 */ ori	$v0,$zero,0x9284
.L80083cc8:
/* 0x80083cc8 */ addu	$a0,$t1,$t4
.L80083ccc:
/* 0x80083ccc */ lh	$v0,4($a0)
.L80083cd0:
/* 0x80083cd0 */ lhu	$v1,4($a0)
.L80083cd4:
/* 0x80083cd4 */ beq	$v0,$t2,.L80083d28
.L80083cd8:
/* 0x80083cd8 */ ori	$v0,$zero,0x9284
.L80083cdc:
/* 0x80083cdc */ addiu	$a3,$zero,-4
.L80083ce0:
/* 0x80083ce0 */ addiu	$a2,$zero,-2
.L80083ce4:
/* 0x80083ce4 */ addiu	$a1,$a0,4
.L80083ce8:
/* 0x80083ce8 */ sll	$v0,$v1,0x10
.L80083cec:
/* 0x80083cec */ bltz	$v0,.L80083d10
.L80083cf0:
/* 0x80083cf0 */ sll	$zero,$zero,0x0
.L80083cf4:
/* 0x80083cf4 */ lw	$v0,0($a0)
.L80083cf8:
/* 0x80083cf8 */ sll	$zero,$zero,0x0
.L80083cfc:
/* 0x80083cfc */ andi	$v0,$v0,0x3ff
.L80083d00:
/* 0x80083d00 */ slti	$v0,$v0,128
.L80083d04:
/* 0x80083d04 */ bne	$v0,$zero,.L80083d10
.L80083d08:
/* 0x80083d08 */ sll	$zero,$zero,0x0
.L80083d0c:
/* 0x80083d0c */ sh	$a3,0($a1)
.L80083d10:
/* 0x80083d10 */ addiu	$a1,$a1,16
.L80083d14:
/* 0x80083d14 */ lh	$v0,0($a1)
.L80083d18:
/* 0x80083d18 */ lhu	$v1,0($a1)
.L80083d1c:
/* 0x80083d1c */ bne	$v0,$a2,.L80083ce8
.L80083d20:
/* 0x80083d20 */ addiu	$a0,$a0,16
.L80083d24:
/* 0x80083d24 */ ori	$v0,$zero,0x9284
.L80083d28:
/* 0x80083d28 */ addu	$t0,$t0,$v0
.L80083d2c:
/* 0x80083d2c */ addu	$t1,$t1,$v0
.L80083d30:
/* 0x80083d30 */ lui	$v0,0x1
.L80083d34:
/* 0x80083d34 */ ori	$v0,$v0,0x2508
.L80083d38:
/* 0x80083d38 */ addu	$v0,$t5,$v0
.L80083d3c:
/* 0x80083d3c */ slt	$v0,$t0,$v0
.L80083d40:
/* 0x80083d40 */ bne	$v0,$zero,.L80083c10
.L80083d44:
/* 0x80083d44 */ lui	$v0,0x800f
.L80083d48:
/* 0x80083d48 */ addu	$t1,$zero,$zero
.L80083d4c:
/* 0x80083d4c */ addiu	$t5,$zero,1
.L80083d50:
/* 0x80083d50 */ addiu	$t4,$v0,15276
.L80083d54:
/* 0x80083d54 */ addu	$t2,$t4,$zero
.L80083d58:
/* 0x80083d58 */ addu	$a3,$zero,$zero
.L80083d5c:
/* 0x80083d5c */ addu	$t0,$a3,$zero
.L80083d60:
/* 0x80083d60 */ subu	$v1,$t5,$t1
.L80083d64:
/* 0x80083d64 */ sll	$v0,$v1,0x3
.L80083d68:
/* 0x80083d68 */ addu	$v0,$v0,$v1
.L80083d6c:
/* 0x80083d6c */ sll	$v0,$v0,0x3
.L80083d70:
/* 0x80083d70 */ addu	$v0,$v0,$v1
.L80083d74:
/* 0x80083d74 */ sll	$v0,$v0,0x2
.L80083d78:
/* 0x80083d78 */ addu	$v0,$v0,$v1
.L80083d7c:
/* 0x80083d7c */ sll	$v0,$v0,0x5
.L80083d80:
/* 0x80083d80 */ addu	$v0,$v0,$v1
.L80083d84:
/* 0x80083d84 */ sll	$v0,$v0,0x2
.L80083d88:
/* 0x80083d88 */ addu	$t3,$v0,$t4
.L80083d8c:
/* 0x80083d8c */ sll	$v0,$a3,0x4
.L80083d90:
/* 0x80083d90 */ addu	$a2,$t2,$v0
.L80083d94:
/* 0x80083d94 */ sll	$v0,$t0,0x4
.L80083d98:
/* 0x80083d98 */ lh	$v1,4($a2)
.L80083d9c:
/* 0x80083d9c */ sll	$zero,$zero,0x0
.L80083da0:
/* 0x80083da0 */ bltz	$v1,.L80083de8
.L80083da4:
/* 0x80083da4 */ addu	$a1,$t3,$v0
.L80083da8:
/* 0x80083da8 */ lh	$v1,4($a1)
.L80083dac:
/* 0x80083dac */ addiu	$v0,$zero,-2
.L80083db0:
/* 0x80083db0 */ beq	$v1,$v0,.L80083de8
.L80083db4:
/* 0x80083db4 */ sll	$zero,$zero,0x0
.L80083db8:
/* 0x80083db8 */ bltz	$v1,.L80083e00
.L80083dbc:
/* 0x80083dbc */ sll	$zero,$zero,0x0
.L80083dc0:
/* 0x80083dc0 */ lw	$a0,0($a2)
.L80083dc4:
/* 0x80083dc4 */ lw	$v1,0($a1)
.L80083dc8:
/* 0x80083dc8 */ sll	$zero,$zero,0x0
.L80083dcc:
/* 0x80083dcc */ bne	$a0,$v1,.L80083de0
.L80083dd0:
/* 0x80083dd0 */ slt	$v0,$a0,$v1
.L80083dd4:
/* 0x80083dd4 */ sh	$t0,14($a2)
.L80083dd8:
/* 0x80083dd8 */ j 0x0083e04
.L80083ddc:
/* 0x80083ddc */ addiu	$a3,$a3,1
.L80083de0:
/* 0x80083de0 */ beq	$v0,$zero,.L80083df8
.L80083de4:
/* 0x80083de4 */ slt	$v0,$v1,$a0
.L80083de8:
/* 0x80083de8 */ addiu	$v0,$zero,-1
.L80083dec:
/* 0x80083dec */ sh	$v0,14($a2)
.L80083df0:
/* 0x80083df0 */ j 0x0083e04
.L80083df4:
/* 0x80083df4 */ addiu	$a3,$a3,1
.L80083df8:
/* 0x80083df8 */ beq	$v0,$zero,.L80083e04
.L80083dfc:
/* 0x80083dfc */ sll	$zero,$zero,0x0
.L80083e00:
/* 0x80083e00 */ addiu	$t0,$t0,1
.L80083e04:
/* 0x80083e04 */ lh	$v1,4($a2)
.L80083e08:
/* 0x80083e08 */ addiu	$v0,$zero,-2
.L80083e0c:
/* 0x80083e0c */ bne	$v1,$v0,.L80083d90
.L80083e10:
/* 0x80083e10 */ sll	$v0,$a3,0x4
.L80083e14:
/* 0x80083e14 */ ori	$v0,$zero,0x9284
.L80083e18:
/* 0x80083e18 */ addu	$t2,$t2,$v0
.L80083e1c:
/* 0x80083e1c */ addiu	$t1,$t1,1
.L80083e20:
/* 0x80083e20 */ slti	$v0,$t1,2
.L80083e24:
/* 0x80083e24 */ bne	$v0,$zero,.L80083d5c
.L80083e28:
/* 0x80083e28 */ addu	$a3,$zero,$zero
.L80083e2c:
/* 0x80083e2c */ jr	$ra
.L80083e30:
/* 0x80083e30 */ addu	$v0,$zero,$zero
.size FUN_80083bec, .-FUN_80083bec
