.set noreorder
.set noat
.set nomacro

.section .text.FUN_80049c24
.globl FUN_80049c24
.type FUN_80049c24, @function
FUN_80049c24:
.L80049c24:
/* 0x80049c24 */ addiu	$sp,$sp,-24
.L80049c28:
/* 0x80049c28 */ sw	$s0,16($sp)
.L80049c2c:
/* 0x80049c2c */ addu	$s0,$a0,$zero
.L80049c30:
/* 0x80049c30 */ lui	$v0,0x8011
.L80049c34:
/* 0x80049c34 */ addu	$a0,$zero,$zero
.L80049c38:
/* 0x80049c38 */ sw	$ra,20($sp)
.L80049c3c:
/* 0x80049c3c */ jal	0x8002a8b0
.L80049c40:
/* 0x80049c40 */ sb	$zero,27684($v0)
.L80049c44:
/* 0x80049c44 */ jal	0x8002a8b0
.L80049c48:
/* 0x80049c48 */ addu	$a0,$zero,$zero
.L80049c4c:
/* 0x80049c4c */ jal	0x8002a8b0
.L80049c50:
/* 0x80049c50 */ sll	$zero,$zero,0x0
.L80049c54:
/* 0x80049c54 */ jal	0x8002a8b0
.L80049c58:
/* 0x80049c58 */ sll	$zero,$zero,0x0
.L80049c5c:
/* 0x80049c5c */ jal	0x8002a8b0
.L80049c60:
/* 0x80049c60 */ sll	$zero,$zero,0x0
.L80049c64:
/* 0x80049c64 */ jal	0x8009643c
.L80049c68:
/* 0x80049c68 */ sll	$zero,$zero,0x0
.L80049c6c:
/* 0x80049c6c */ beq	$v0,$zero,.L80049c84
.L80049c70:
/* 0x80049c70 */ sll	$zero,$zero,0x0
.L80049c74:
/* 0x80049c74 */ jal	0x8002a8b0
.L80049c78:
/* 0x80049c78 */ addu	$a0,$zero,$zero
.L80049c7c:
/* 0x80049c7c */ jal	0x8002a8b0
.L80049c80:
/* 0x80049c80 */ addiu	$a0,$zero,1
.L80049c84:
/* 0x80049c84 */ jal	0x800497bc
.L80049c88:
/* 0x80049c88 */ sll	$zero,$zero,0x0
.L80049c8c:
/* 0x80049c8c */ beq	$v0,$zero,.L80049cac
.L80049c90:
/* 0x80049c90 */ sll	$zero,$zero,0x0
.L80049c94:
/* 0x80049c94 */ jal	0x8002a8b0
.L80049c98:
/* 0x80049c98 */ addiu	$a0,$zero,254
.L80049c9c:
/* 0x80049c9c */ jal	0x8002a8b0
.L80049ca0:
/* 0x80049ca0 */ addiu	$a0,$zero,1
.L80049ca4:
/* 0x80049ca4 */ j	.L80049cc0
.L80049ca8:
/* 0x80049ca8 */ addiu	$a0,$zero,-1
.L80049cac:
/* 0x80049cac */ jal	0x8002a8b0
.L80049cb0:
/* 0x80049cb0 */ addiu	$a0,$zero,254
.L80049cb4:
/* 0x80049cb4 */ jal	0x8002a8b0
.L80049cb8:
/* 0x80049cb8 */ addu	$a0,$zero,$zero
.L80049cbc:
/* 0x80049cbc */ addu	$a0,$zero,$zero
.L80049cc0:
/* 0x80049cc0 */ jal	0x8002a8b0
.L80049cc4:
/* 0x80049cc4 */ sll	$zero,$zero,0x0
.L80049cc8:
/* 0x80049cc8 */ addu	$a0,$zero,$zero
.L80049ccc:
/* 0x80049ccc */ addiu	$a1,$zero,16
.L80049cd0:
/* 0x80049cd0 */ addiu	$a2,$zero,-1
.L80049cd4:
/* 0x80049cd4 */ lui	$v0,0x800f
.L80049cd8:
/* 0x80049cd8 */ addiu	$v1,$v0,10504
.L80049cdc:
/* 0x80049cdc */ ori	$v0,$zero,0x9284
.L80049ce0:
/* 0x80049ce0 */ sb	$a1,40($v1)
.L80049ce4:
/* 0x80049ce4 */ sb	$a1,41($v1)
.L80049ce8:
/* 0x80049ce8 */ sb	$a2,42($v1)
.L80049cec:
/* 0x80049cec */ addu	$v1,$v1,$v0
.L80049cf0:
/* 0x80049cf0 */ addiu	$a0,$a0,1
.L80049cf4:
/* 0x80049cf4 */ slti	$v0,$a0,2
.L80049cf8:
/* 0x80049cf8 */ bne	$v0,$zero,.L80049ce0
.L80049cfc:
/* 0x80049cfc */ ori	$v0,$zero,0x9284
.L80049d00:
/* 0x80049d00 */ jal	0x8002a8b0
.L80049d04:
/* 0x80049d04 */ addiu	$a0,$zero,1
.L80049d08:
/* 0x80049d08 */ jal	0x8009851c
.L80049d0c:
/* 0x80049d0c */ sll	$zero,$zero,0x0
.L80049d10:
/* 0x80049d10 */ jal	0x8002a8b0
.L80049d14:
/* 0x80049d14 */ sll	$zero,$zero,0x0
.L80049d18:
/* 0x80049d18 */ lui	$v1,0x800f
.L80049d1c:
/* 0x80049d1c */ addiu	$v0,$zero,41
.L80049d20:
/* 0x80049d20 */ addiu	$a0,$s0,4
.L80049d24:
/* 0x80049d24 */ jal	0x8004ba34
.L80049d28:
/* 0x80049d28 */ sh	$v0,10504($v1)
.L80049d2c:
/* 0x80049d2c */ lw	$ra,20($sp)
.L80049d30:
/* 0x80049d30 */ lw	$s0,16($sp)
.L80049d34:
/* 0x80049d34 */ jr	$ra
.L80049d38:
/* 0x80049d38 */ addiu	$sp,$sp,24
.size FUN_80049c24, .-FUN_80049c24
.set noreorder
.set noat
.set nomacro

.section .text.FUN_80049d3c
.globl FUN_80049d3c
.type FUN_80049d3c, @function
FUN_80049d3c:
.L80049d3c:
/* 0x80049d3c */ addiu	$sp,$sp,-24
.L80049d40:
/* 0x80049d40 */ lui	$v0,0x800f
.L80049d44:
/* 0x80049d44 */ addu	$a0,$zero,$zero
.L80049d48:
/* 0x80049d48 */ addiu	$a1,$zero,16
.L80049d4c:
/* 0x80049d4c */ addiu	$a2,$zero,-1
.L80049d50:
/* 0x80049d50 */ addiu	$v1,$v0,10504
.L80049d54:
/* 0x80049d54 */ sw	$ra,16($sp)
.L80049d58:
/* 0x80049d58 */ sh	$zero,10504($v0)
.L80049d5c:
/* 0x80049d5c */ ori	$v0,$zero,0x9284
.L80049d60:
/* 0x80049d60 */ sb	$a1,40($v1)
.L80049d64:
/* 0x80049d64 */ sb	$a1,41($v1)
.L80049d68:
/* 0x80049d68 */ sb	$a2,42($v1)
.L80049d6c:
/* 0x80049d6c */ addu	$v1,$v1,$v0
.L80049d70:
/* 0x80049d70 */ addiu	$a0,$a0,1
.L80049d74:
/* 0x80049d74 */ slti	$v0,$a0,2
.L80049d78:
/* 0x80049d78 */ bne	$v0,$zero,.L80049d60
.L80049d7c:
/* 0x80049d7c */ ori	$v0,$zero,0x9284
.L80049d80:
/* 0x80049d80 */ lui	$a0,0x8002
.L80049d84:
/* 0x80049d84 */ jal	0x8007eea8
.L80049d88:
/* 0x80049d88 */ addiu	$a0,$a0,-17648
.L80049d8c:
/* 0x80049d8c */ jal	0x8009851c
.L80049d90:
/* 0x80049d90 */ sll	$zero,$zero,0x0
.L80049d94:
/* 0x80049d94 */ jal	0x8002a8b0
.L80049d98:
/* 0x80049d98 */ sll	$zero,$zero,0x0
.L80049d9c:
/* 0x80049d9c */ jal	0x80042f60
.L80049da0:
/* 0x80049da0 */ sll	$zero,$zero,0x0
.L80049da4:
/* 0x80049da4 */ jal	0x80049fd4
.L80049da8:
/* 0x80049da8 */ sll	$zero,$zero,0x0
.L80049dac:
/* 0x80049dac */ jal	0x80042df8
.L80049db0:
/* 0x80049db0 */ sll	$zero,$zero,0x0
.L80049db4:
/* 0x80049db4 */ jal	0x8008eb48
.L80049db8:
/* 0x80049db8 */ sll	$zero,$zero,0x0
.L80049dbc:
/* 0x80049dbc */ lui	$v0,0x8010
.L80049dc0:
/* 0x80049dc0 */ addiu	$a0,$v0,20768
.L80049dc4:
/* 0x80049dc4 */ sw	$zero,20768($v0)
.L80049dc8:
/* 0x80049dc8 */ lui	$v0,0x800e
.L80049dcc:
/* 0x80049dcc */ lw	$v0,-25924($v0)
.L80049dd0:
/* 0x80049dd0 */ sll	$zero,$zero,0x0
.L80049dd4:
/* 0x80049dd4 */ jalr	$v0
.L80049dd8:
/* 0x80049dd8 */ addu	$a1,$zero,$zero
.L80049ddc:
/* 0x80049ddc */ lw	$ra,16($sp)
.L80049de0:
/* 0x80049de0 */ sll	$zero,$zero,0x0
.L80049de4:
/* 0x80049de4 */ jr	$ra
.L80049de8:
/* 0x80049de8 */ addiu	$sp,$sp,24
.size FUN_80049d3c, .-FUN_80049d3c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_80049dec
.globl FUN_80049dec
.type FUN_80049dec, @function
FUN_80049dec:
.L80049dec:
/* 0x80049dec */ addiu	$sp,$sp,-216
.L80049df0:
/* 0x80049df0 */ lui	$v1,0x800f
.L80049df4:
/* 0x80049df4 */ addiu	$v1,$v1,10376
.L80049df8:
/* 0x80049df8 */ sw	$s1,196($sp)
.L80049dfc:
/* 0x80049dfc */ lui	$s1,0x8010
.L80049e00:
/* 0x80049e00 */ sw	$ra,208($sp)
.L80049e04:
/* 0x80049e04 */ sw	$s3,204($sp)
.L80049e08:
/* 0x80049e08 */ sw	$s2,200($sp)
.L80049e0c:
/* 0x80049e0c */ sw	$s0,192($sp)
.L80049e10:
/* 0x80049e10 */ lw	$v0,112($v1)
.L80049e14:
/* 0x80049e14 */ lw	$a0,116($v1)
.L80049e18:
/* 0x80049e18 */ addiu	$v0,$v0,1
.L80049e1c:
/* 0x80049e1c */ addiu	$a0,$a0,1
.L80049e20:
/* 0x80049e20 */ sw	$v0,112($v1)
.L80049e24:
/* 0x80049e24 */ lui	$v0,0x800e
.L80049e28:
/* 0x80049e28 */ addiu	$s3,$v0,-25924
.L80049e2c:
/* 0x80049e2c */ sw	$a0,116($v1)
.L80049e30:
/* 0x80049e30 */ lw	$v0,20768($s1)
.L80049e34:
/* 0x80049e34 */ addiu	$s2,$s1,20768
.L80049e38:
/* 0x80049e38 */ sll	$v0,$v0,0x2
.L80049e3c:
/* 0x80049e3c */ addu	$v0,$v0,$s3
.L80049e40:
/* 0x80049e40 */ lw	$v0,4($v0)
.L80049e44:
/* 0x80049e44 */ sll	$zero,$zero,0x0
.L80049e48:
/* 0x80049e48 */ jalr	$v0
.L80049e4c:
/* 0x80049e4c */ addu	$a0,$s2,$zero
.L80049e50:
/* 0x80049e50 */ lw	$v1,20768($s1)
.L80049e54:
/* 0x80049e54 */ addu	$s0,$v0,$zero
.L80049e58:
/* 0x80049e58 */ beq	$s0,$v1,.L80049e98
.L80049e5c:
/* 0x80049e5c */ addu	$a0,$s2,$zero
.L80049e60:
/* 0x80049e60 */ sll	$v0,$v1,0x2
.L80049e64:
/* 0x80049e64 */ addu	$v0,$v0,$s3
.L80049e68:
/* 0x80049e68 */ lw	$v0,8($v0)
.L80049e6c:
/* 0x80049e6c */ sll	$zero,$zero,0x0
.L80049e70:
/* 0x80049e70 */ jalr	$v0
.L80049e74:
/* 0x80049e74 */ addu	$a1,$s0,$zero
.L80049e78:
/* 0x80049e78 */ sll	$v0,$s0,0x2
.L80049e7c:
/* 0x80049e7c */ addu	$v0,$v0,$s3
.L80049e80:
/* 0x80049e80 */ lw	$a1,20768($s1)
.L80049e84:
/* 0x80049e84 */ lw	$v0,0($v0)
.L80049e88:
/* 0x80049e88 */ sll	$zero,$zero,0x0
.L80049e8c:
/* 0x80049e8c */ jalr	$v0
.L80049e90:
/* 0x80049e90 */ addu	$a0,$s2,$zero
.L80049e94:
/* 0x80049e94 */ sw	$s0,20768($s1)
.L80049e98:
/* 0x80049e98 */ addiu	$v1,$sp,24
.L80049e9c:
/* 0x80049e9c */ lui	$v0,0x8002
.L80049ea0:
/* 0x80049ea0 */ addiu	$v0,$v0,-17196
.L80049ea4:
/* 0x80049ea4 */ addiu	$a0,$v0,160
.L80049ea8:
/* 0x80049ea8 */ lw	$a2,0($v0)
.L80049eac:
/* 0x80049eac */ lw	$a3,4($v0)
.L80049eb0:
/* 0x80049eb0 */ lw	$t0,8($v0)
.L80049eb4:
/* 0x80049eb4 */ lw	$t1,12($v0)
.L80049eb8:
/* 0x80049eb8 */ sw	$a2,0($v1)
.L80049ebc:
/* 0x80049ebc */ sw	$a3,4($v1)
.L80049ec0:
/* 0x80049ec0 */ sw	$t0,8($v1)
.L80049ec4:
/* 0x80049ec4 */ sw	$t1,12($v1)
.L80049ec8:
/* 0x80049ec8 */ addiu	$v0,$v0,16
.L80049ecc:
/* 0x80049ecc */ bne	$v0,$a0,.L80049ea8
.L80049ed0:
/* 0x80049ed0 */ addiu	$v1,$v1,16
.L80049ed4:
/* 0x80049ed4 */ lw	$a2,0($v0)
.L80049ed8:
/* 0x80049ed8 */ lw	$a3,4($v0)
.L80049edc:
/* 0x80049edc */ sw	$a2,0($v1)
.L80049ee0:
/* 0x80049ee0 */ jal	0x80042e1c
.L80049ee4:
/* 0x80049ee4 */ sw	$a3,4($v1)
.L80049ee8:
/* 0x80049ee8 */ lw	$ra,208($sp)
.L80049eec:
/* 0x80049eec */ lw	$s3,204($sp)
.L80049ef0:
/* 0x80049ef0 */ lw	$s2,200($sp)
.L80049ef4:
/* 0x80049ef4 */ lw	$s1,196($sp)
.L80049ef8:
/* 0x80049ef8 */ lw	$s0,192($sp)
.L80049efc:
/* 0x80049efc */ jr	$ra
.L80049f00:
/* 0x80049f00 */ addiu	$sp,$sp,216
.size FUN_80049dec, .-FUN_80049dec
