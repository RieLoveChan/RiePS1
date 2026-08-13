.set noreorder
.set noat
.set nomacro

.section .text.FUN_80088d20
.globl FUN_80088d20
.type FUN_80088d20, @function
FUN_80088d20:
/* Runtime resource and record processing helper. */
.L80088d20:
/* 0x80088d20 */ addiu	$sp,$sp,-88
.L80088d24:
/* 0x80088d24 */ sw	$s8,80($sp)
.L80088d28:
/* 0x80088d28 */ addu	$s8,$a1,$zero
.L80088d2c:
/* 0x80088d2c */ sw	$s2,56($sp)
.L80088d30:
/* 0x80088d30 */ addu	$s2,$a2,$zero
.L80088d34:
/* 0x80088d34 */ sw	$s0,48($sp)
.L80088d38:
/* 0x80088d38 */ addu	$s0,$a3,$zero
.L80088d3c:
/* 0x80088d3c */ sw	$s1,52($sp)
.L80088d40:
/* 0x80088d40 */ lw	$s1,104($sp)
.L80088d44:
/* 0x80088d44 */ addiu	$a0,$zero,120
.L80088d48:
/* 0x80088d48 */ sw	$ra,84($sp)
.L80088d4c:
/* 0x80088d4c */ sw	$s7,76($sp)
.L80088d50:
/* 0x80088d50 */ sw	$s6,72($sp)
.L80088d54:
/* 0x80088d54 */ sw	$s5,68($sp)
.L80088d58:
/* 0x80088d58 */ sw	$s4,64($sp)
.L80088d5c:
/* 0x80088d5c */ jal	0x80098880
.L80088d60:
/* 0x80088d60 */ sw	$s3,60($sp)
.L80088d64:
/* 0x80088d64 */ addu	$s4,$v0,$zero
.L80088d68:
/* 0x80088d68 */ lui	$v0,0x800f
.L80088d6c:
/* 0x80088d6c */ lw	$v0,10488($v0)
.L80088d70:
/* 0x80088d70 */ bltz	$s0,.L80088da8
.L80088d74:
/* 0x80088d74 */ sw	$v0,32($sp)
.L80088d78:
/* 0x80088d78 */ slt	$v0,$s1,$s0
.L80088d7c:
/* 0x80088d7c */ bne	$v0,$zero,.L80088da0
.L80088d80:
/* 0x80088d80 */ addiu	$t1,$zero,24
.L80088d84:
/* 0x80088d84 */ sll	$v0,$s0,0x1
.L80088d88:
/* 0x80088d88 */ addu	$v0,$v0,$s0
.L80088d8c:
/* 0x80088d8c */ sll	$v0,$v0,0x3
.L80088d90:
/* 0x80088d90 */ div	$zero,$v0,$s1
.L80088d94:
/* 0x80088d94 */ mflo	$t0
.L80088d98:
/* 0x80088d98 */ j 0x80088dac
.L80088d9c:
/* 0x80088d9c */ sw	$t0,36($sp)
.L80088da0:
/* 0x80088da0 */ j 0x80088dac
.L80088da4:
/* 0x80088da4 */ sw	$t1,36($sp)
.L80088da8:
/* 0x80088da8 */ sw	$zero,36($sp)
.L80088dac:
/* 0x80088dac */ jal	0x80085b50
.L80088db0:
/* 0x80088db0 */ sll	$zero,$zero,0x0
.L80088db4:
/* 0x80088db4 */ bne	$v0,$zero,.L80088f0c
.L80088db8:
/* 0x80088db8 */ addu	$s5,$zero,$zero
.L80088dbc:
/* 0x80088dbc */ addu	$s7,$s5,$zero
.L80088dc0:
/* 0x80088dc0 */ addu	$s1,$zero,$zero
.L80088dc4:
/* 0x80088dc4 */ sll	$t0,$s5,0x1
.L80088dc8:
/* 0x80088dc8 */ sw	$t0,40($sp)
.L80088dcc:
/* 0x80088dcc */ lw	$t0,36($sp)
.L80088dd0:
/* 0x80088dd0 */ addiu	$t1,$zero,24
.L80088dd4:
/* 0x80088dd4 */ subu	$s6,$t1,$t0
.L80088dd8:
/* 0x80088dd8 */ addiu	$s3,$zero,128
.L80088ddc:
/* 0x80088ddc */ addiu	$t0,$zero,896
.L80088de0:
/* 0x80088de0 */ sll	$a0,$s1,0x7
.L80088de4:
/* 0x80088de4 */ lw	$t1,40($sp)
.L80088de8:
/* 0x80088de8 */ lh	$v1,4($s4)
.L80088dec:
/* 0x80088dec */ addu	$v0,$s1,$t1
.L80088df0:
/* 0x80088df0 */ sll	$v0,$v0,0x7
.L80088df4:
/* 0x80088df4 */ addiu	$v0,$v0,316
.L80088df8:
/* 0x80088df8 */ subu	$v0,$t0,$v0
.L80088dfc:
/* 0x80088dfc */ lw	$t1,32($sp)
.L80088e00:
/* 0x80088e00 */ sll	$zero,$zero,0x0
.L80088e04:
/* 0x80088e04 */ addu	$s0,$v0,$t1
.L80088e08:
/* 0x80088e08 */ lh	$v0,2($s4)
.L80088e0c:
/* 0x80088e0c */ addiu	$t0,$zero,1024
.L80088e10:
/* 0x80088e10 */ addu	$a2,$v0,$a0
.L80088e14:
/* 0x80088e14 */ slt	$v0,$t0,$s0
.L80088e18:
/* 0x80088e18 */ beq	$v0,$zero,.L80088e28
.L80088e1c:
/* 0x80088e1c */ addu	$a3,$v1,$s7
.L80088e20:
/* 0x80088e20 */ div	$zero,$s0,$t0
.L80088e24:
/* 0x80088e24 */ mfhi	$s0
.L80088e28:
/* 0x80088e28 */ sll	$zero,$zero,0x0
.L80088e2c:
/* 0x80088e2c */ addiu	$v0,$s0,320
.L80088e30:
/* 0x80088e30 */ addiu	$t0,$zero,896
.L80088e34:
/* 0x80088e34 */ subu	$s0,$t0,$v0
.L80088e38:
/* 0x80088e38 */ slti	$v0,$s0,-3
.L80088e3c:
/* 0x80088e3c */ beq	$v0,$zero,.L80088ee4
.L80088e40:
/* 0x80088e40 */ addiu	$v0,$s0,128
.L80088e44:
/* 0x80088e44 */ slti	$v0,$v0,-3
.L80088e48:
/* 0x80088e48 */ bne	$v0,$zero,.L80088e58
.L80088e4c:
/* 0x80088e4c */ addu	$a0,$s8,$zero
.L80088e50:
/* 0x80088e50 */ addiu	$v0,$zero,-4
.L80088e54:
/* 0x80088e54 */ subu	$s3,$v0,$s0
.L80088e58:
/* 0x80088e58 */ addu	$a1,$s2,$zero
.L80088e5c:
/* 0x80088e5c */ addiu	$t1,$zero,24
.L80088e60:
/* 0x80088e60 */ sw	$s3,16($sp)
.L80088e64:
/* 0x80088e64 */ sw	$t1,20($sp)
.L80088e68:
/* 0x80088e68 */ lh	$v1,10($s4)
.L80088e6c:
/* 0x80088e6c */ addiu	$v0,$zero,-1
.L80088e70:
/* 0x80088e70 */ sw	$v0,28($sp)
.L80088e74:
/* 0x80088e74 */ jal	0x80048144
.L80088e78:
/* 0x80088e78 */ sw	$v1,24($sp)
.L80088e7c:
/* 0x80088e7c */ addu	$a0,$s8,$zero
.L80088e80:
/* 0x80088e80 */ addu	$a1,$s2,$zero
.L80088e84:
/* 0x80088e84 */ sll	$a2,$s5,0x4
.L80088e88:
/* 0x80088e88 */ lh	$v0,14($s4)
.L80088e8c:
/* 0x80088e8c */ lh	$a3,16($s4)
.L80088e90:
/* 0x80088e90 */ jal	0x80049208
.L80088e94:
/* 0x80088e94 */ addu	$a2,$v0,$a2
.L80088e98:
/* 0x80088e98 */ addu	$a0,$s8,$zero
.L80088e9c:
/* 0x80088e9c */ addu	$a1,$s2,$zero
.L80088ea0:
/* 0x80088ea0 */ addu	$a2,$s0,$zero
.L80088ea4:
/* 0x80088ea4 */ srl	$a3,$s6,0x1f
.L80088ea8:
/* 0x80088ea8 */ addu	$a3,$s6,$a3
.L80088eac:
/* 0x80088eac */ sra	$a3,$a3,0x1
.L80088eb0:
/* 0x80088eb0 */ lw	$t0,36($sp)
.L80088eb4:
/* 0x80088eb4 */ addiu	$a3,$a3,157
.L80088eb8:
/* 0x80088eb8 */ sw	$s3,16($sp)
.L80088ebc:
/* 0x80088ebc */ jal	0x80049364
.L80088ec0:
/* 0x80088ec0 */ sw	$t0,20($sp)
.L80088ec4:
/* 0x80088ec4 */ addu	$a0,$s8,$zero
.L80088ec8:
/* 0x80088ec8 */ addu	$a1,$s2,$zero
.L80088ecc:
/* 0x80088ecc */ addiu	$a2,$zero,128
.L80088ed0:
/* 0x80088ed0 */ addu	$a3,$a2,$zero
.L80088ed4:
/* 0x80088ed4 */ addu	$t1,$a2,$zero
.L80088ed8:
/* 0x80088ed8 */ jal	0x800490f8
.L80088edc:
/* 0x80088edc */ sw	$t1,16($sp)
.L80088ee0:
/* 0x80088ee0 */ addiu	$s2,$s2,1
.L80088ee4:
/* 0x80088ee4 */ addiu	$s1,$s1,1
.L80088ee8:
/* 0x80088ee8 */ slti	$v0,$s1,2
.L80088eec:
/* 0x80088eec */ bne	$v0,$zero,.L80088ddc
.L80088ef0:
/* 0x80088ef0 */ addiu	$s3,$zero,128
.L80088ef4:
/* 0x80088ef4 */ addiu	$s5,$s5,1
.L80088ef8:
/* 0x80088ef8 */ slti	$v0,$s5,4
.L80088efc:
/* 0x80088efc */ bne	$v0,$zero,.L80088dc0
.L80088f00:
/* 0x80088f00 */ addiu	$s7,$s7,24
.L80088f04:
/* 0x80088f04 */ j 0x80089058
.L80088f08:
/* 0x80088f08 */ addu	$a0,$s8,$zero
.L80088f0c:
/* 0x80088f0c */ addiu	$t0,$zero,24
.L80088f10:
/* 0x80088f10 */ lw	$t1,36($sp)
.L80088f14:
/* 0x80088f14 */ addu	$s6,$s5,$zero
.L80088f18:
/* 0x80088f18 */ subu	$s7,$t0,$t1
.L80088f1c:
/* 0x80088f1c */ addu	$s1,$zero,$zero
.L80088f20:
/* 0x80088f20 */ sll	$t0,$s5,0x1
.L80088f24:
/* 0x80088f24 */ sw	$t0,44($sp)
.L80088f28:
/* 0x80088f28 */ addiu	$s3,$zero,128
.L80088f2c:
/* 0x80088f2c */ addiu	$t0,$zero,640
.L80088f30:
/* 0x80088f30 */ sll	$a0,$s1,0x7
.L80088f34:
/* 0x80088f34 */ lw	$t1,44($sp)
.L80088f38:
/* 0x80088f38 */ lh	$v1,4($s4)
.L80088f3c:
/* 0x80088f3c */ addu	$v0,$s1,$t1
.L80088f40:
/* 0x80088f40 */ sll	$v0,$v0,0x7
.L80088f44:
/* 0x80088f44 */ addiu	$v0,$v0,316
.L80088f48:
/* 0x80088f48 */ lw	$t1,32($sp)
.L80088f4c:
/* 0x80088f4c */ subu	$v0,$t0,$v0
.L80088f50:
/* 0x80088f50 */ addu	$s0,$v0,$t1
.L80088f54:
/* 0x80088f54 */ lh	$v0,2($s4)
.L80088f58:
/* 0x80088f58 */ sll	$zero,$zero,0x0
.L80088f5c:
/* 0x80088f5c */ addu	$a2,$v0,$a0
.L80088f60:
/* 0x80088f60 */ addiu	$a0,$zero,768
.L80088f64:
/* 0x80088f64 */ slt	$v0,$a0,$s0
.L80088f68:
/* 0x80088f68 */ beq	$v0,$zero,.L80088f78
.L80088f6c:
/* 0x80088f6c */ addu	$a3,$v1,$s6
.L80088f70:
/* 0x80088f70 */ div	$zero,$s0,$a0
.L80088f74:
/* 0x80088f74 */ mfhi	$s0
.L80088f78:
/* 0x80088f78 */ sll	$zero,$zero,0x0
.L80088f7c:
/* 0x80088f7c */ addiu	$v0,$s0,320
.L80088f80:
/* 0x80088f80 */ addiu	$t0,$zero,640
.L80088f84:
/* 0x80088f84 */ subu	$s0,$t0,$v0
.L80088f88:
/* 0x80088f88 */ slti	$v0,$s0,-3
.L80088f8c:
/* 0x80088f8c */ beq	$v0,$zero,.L80089034
.L80088f90:
/* 0x80088f90 */ addiu	$v0,$s0,128
.L80088f94:
/* 0x80088f94 */ slti	$v0,$v0,-3
.L80088f98:
/* 0x80088f98 */ bne	$v0,$zero,.L80088fa8
.L80088f9c:
/* 0x80088f9c */ addu	$a0,$s8,$zero
.L80088fa0:
/* 0x80088fa0 */ addiu	$v0,$zero,-4
.L80088fa4:
/* 0x80088fa4 */ subu	$s3,$v0,$s0
.L80088fa8:
/* 0x80088fa8 */ addu	$a1,$s2,$zero
.L80088fac:
/* 0x80088fac */ addiu	$t1,$zero,24
.L80088fb0:
/* 0x80088fb0 */ sw	$s3,16($sp)
.L80088fb4:
/* 0x80088fb4 */ sw	$t1,20($sp)
.L80088fb8:
/* 0x80088fb8 */ lh	$v1,10($s4)
.L80088fbc:
/* 0x80088fbc */ addiu	$v0,$zero,-1
.L80088fc0:
/* 0x80088fc0 */ sw	$v0,28($sp)
.L80088fc4:
/* 0x80088fc4 */ jal	0x80048144
.L80088fc8:
/* 0x80088fc8 */ sw	$v1,24($sp)
.L80088fcc:
/* 0x80088fcc */ addu	$a0,$s8,$zero
.L80088fd0:
/* 0x80088fd0 */ addu	$a1,$s2,$zero
.L80088fd4:
/* 0x80088fd4 */ sll	$a2,$s5,0x4
.L80088fd8:
/* 0x80088fd8 */ lh	$v0,14($s4)
.L80088fdc:
/* 0x80088fdc */ lh	$a3,16($s4)
.L80088fe0:
/* 0x80088fe0 */ jal	0x80049208
.L80088fe4:
/* 0x80088fe4 */ addu	$a2,$v0,$a2
.L80088fe8:
/* 0x80088fe8 */ addu	$a0,$s8,$zero
.L80088fec:
/* 0x80088fec */ addu	$a1,$s2,$zero
.L80088ff0:
/* 0x80088ff0 */ addu	$a2,$s0,$zero
.L80088ff4:
/* 0x80088ff4 */ srl	$a3,$s7,0x1f
.L80088ff8:
/* 0x80088ff8 */ addu	$a3,$s7,$a3
.L80088ffc:
/* 0x80088ffc */ sra	$a3,$a3,0x1
.L80089000:
/* 0x80089000 */ lw	$t0,36($sp)
.L80089004:
/* 0x80089004 */ addiu	$a3,$a3,157
.L80089008:
/* 0x80089008 */ sw	$s3,16($sp)
.L8008900c:
/* 0x8008900c */ jal	0x80049364
.L80089010:
/* 0x80089010 */ sw	$t0,20($sp)
.L80089014:
/* 0x80089014 */ addu	$a0,$s8,$zero
.L80089018:
/* 0x80089018 */ addu	$a1,$s2,$zero
.L8008901c:
/* 0x8008901c */ addiu	$a2,$zero,128
.L80089020:
/* 0x80089020 */ addu	$a3,$a2,$zero
.L80089024:
/* 0x80089024 */ addu	$t1,$a2,$zero
.L80089028:
/* 0x80089028 */ jal	0x800490f8
.L8008902c:
/* 0x8008902c */ sw	$t1,16($sp)
.L80089030:
/* 0x80089030 */ addiu	$s2,$s2,1
.L80089034:
/* 0x80089034 */ addiu	$s1,$s1,1
.L80089038:
/* 0x80089038 */ slti	$v0,$s1,2
.L8008903c:
/* 0x8008903c */ bne	$v0,$zero,.L80088f2c
.L80089040:
/* 0x80089040 */ addiu	$s3,$zero,128
.L80089044:
/* 0x80089044 */ addiu	$s5,$s5,1
.L80089048:
/* 0x80089048 */ slti	$v0,$s5,3
.L8008904c:
/* 0x8008904c */ bne	$v0,$zero,.L80088f1c
.L80089050:
/* 0x80089050 */ addiu	$s6,$s6,24
.L80089054:
/* 0x80089054 */ addu	$a0,$s8,$zero
.L80089058:
/* 0x80089058 */ addiu	$v0,$zero,1
.L8008905c:
/* 0x8008905c */ lui	$s0,0x8011
.L80089060:
/* 0x80089060 */ addiu	$s0,$s0,27696
.L80089064:
/* 0x80089064 */ sw	$v0,16($sp)
.L80089068:
/* 0x80089068 */ sw	$v0,20($sp)
.L8008906c:
/* 0x8008906c */ lh	$a2,2($s0)
.L80089070:
/* 0x80089070 */ addiu	$v0,$zero,-1
.L80089074:
/* 0x80089074 */ sw	$v0,28($sp)
.L80089078:
/* 0x80089078 */ lh	$a3,4($s0)
.L8008907c:
/* 0x8008907c */ lh	$v0,10($s0)
.L80089080:
/* 0x80089080 */ addu	$a1,$s2,$zero
.L80089084:
/* 0x80089084 */ jal	0x80048144
.L80089088:
/* 0x80089088 */ sw	$v0,24($sp)
.L8008908c:
/* 0x8008908c */ addu	$a0,$s8,$zero
.L80089090:
/* 0x80089090 */ lh	$a2,14($s0)
.L80089094:
/* 0x80089094 */ lh	$a3,16($s0)
.L80089098:
/* 0x80089098 */ jal	0x80049208
.L8008909c:
/* 0x8008909c */ addu	$a1,$s2,$zero
.L800890a0:
/* 0x800890a0 */ addu	$a0,$s8,$zero
.L800890a4:
/* 0x800890a4 */ addu	$a1,$s2,$zero
.L800890a8:
/* 0x800890a8 */ addiu	$a2,$zero,-320
.L800890ac:
/* 0x800890ac */ addiu	$a3,$zero,157
.L800890b0:
/* 0x800890b0 */ addiu	$v0,$zero,316
.L800890b4:
/* 0x800890b4 */ sw	$v0,16($sp)
.L800890b8:
/* 0x800890b8 */ addiu	$v0,$zero,24
.L800890bc:
/* 0x800890bc */ jal	0x80049364
.L800890c0:
/* 0x800890c0 */ sw	$v0,20($sp)
.L800890c4:
/* 0x800890c4 */ addu	$a0,$s8,$zero
.L800890c8:
/* 0x800890c8 */ addu	$a1,$s2,$zero
.L800890cc:
/* 0x800890cc */ addu	$a2,$zero,$zero
.L800890d0:
/* 0x800890d0 */ addu	$a3,$a2,$zero
.L800890d4:
/* 0x800890d4 */ addiu	$v0,$zero,50
.L800890d8:
/* 0x800890d8 */ jal	0x800490f8
.L800890dc:
/* 0x800890dc */ sw	$v0,16($sp)
.L800890e0:
/* 0x800890e0 */ addiu	$v0,$s2,1
.L800890e4:
/* 0x800890e4 */ lw	$ra,84($sp)
.L800890e8:
/* 0x800890e8 */ lw	$s8,80($sp)
.L800890ec:
/* 0x800890ec */ lw	$s7,76($sp)
.L800890f0:
/* 0x800890f0 */ lw	$s6,72($sp)
.L800890f4:
/* 0x800890f4 */ lw	$s5,68($sp)
.L800890f8:
/* 0x800890f8 */ lw	$s4,64($sp)
.L800890fc:
/* 0x800890fc */ lw	$s3,60($sp)
.L80089100:
/* 0x80089100 */ lw	$s2,56($sp)
.L80089104:
/* 0x80089104 */ lw	$s1,52($sp)
.L80089108:
/* 0x80089108 */ lw	$s0,48($sp)
.L8008910c:
/* 0x8008910c */ jr	$ra
.L80089110:
/* 0x80089110 */ addiu	$sp,$sp,88
.size FUN_80088d20, .-FUN_80088d20
