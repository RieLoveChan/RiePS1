.set noreorder
.set noat
.set nomacro

.section .text.FUN_80089da4
.globl FUN_80089da4
.type FUN_80089da4, @function
FUN_80089da4:
/* Runtime resource, state, and dispatch helper. */
.L80089da4:
/* 0x80089da4 */ addiu	$sp,$sp,-112
.L80089da8:
/* 0x80089da8 */ sw	$s1,76($sp)
.L80089dac:
/* 0x80089dac */ lw	$s1,128($sp)
.L80089db0:
/* 0x80089db0 */ sw	$s5,92($sp)
.L80089db4:
/* 0x80089db4 */ addu	$s5,$a2,$zero
.L80089db8:
/* 0x80089db8 */ sw	$s0,72($sp)
.L80089dbc:
/* 0x80089dbc */ addu	$s0,$a3,$zero
.L80089dc0:
/* 0x80089dc0 */ sw	$a0,112($sp)
.L80089dc4:
/* 0x80089dc4 */ addiu	$a0,$zero,92
.L80089dc8:
/* 0x80089dc8 */ sw	$ra,108($sp)
.L80089dcc:
/* 0x80089dcc */ sw	$s8,104($sp)
.L80089dd0:
/* 0x80089dd0 */ sw	$s7,100($sp)
.L80089dd4:
/* 0x80089dd4 */ sw	$s6,96($sp)
.L80089dd8:
/* 0x80089dd8 */ sw	$s4,88($sp)
.L80089ddc:
/* 0x80089ddc */ sw	$s3,84($sp)
.L80089de0:
/* 0x80089de0 */ sw	$s2,80($sp)
.L80089de4:
/* 0x80089de4 */ jal	0x80098880
.L80089de8:
/* 0x80089de8 */ sw	$a1,116($sp)
.L80089dec:
/* 0x80089dec */ addu	$s6,$v0,$zero
.L80089df0:
/* 0x80089df0 */ lui	$v0,0x800f
.L80089df4:
/* 0x80089df4 */ addiu	$a1,$v0,10504
.L80089df8:
/* 0x80089df8 */ lb	$v0,36($a1)
.L80089dfc:
/* 0x80089dfc */ addiu	$a0,$zero,2
.L80089e00:
/* 0x80089e00 */ beq	$v0,$a0,.L80089e70
.L80089e04:
/* 0x80089e04 */ addiu	$v1,$zero,4
.L80089e08:
/* 0x80089e08 */ beq	$v0,$v1,.L80089e70
.L80089e0c:
/* 0x80089e0c */ ori	$v0,$zero,0x8000
.L80089e10:
/* 0x80089e10 */ addu	$a2,$a1,$v0
.L80089e14:
/* 0x80089e14 */ lb	$v0,4776($a2)
.L80089e18:
/* 0x80089e18 */ sll	$zero,$zero,0x0
.L80089e1c:
/* 0x80089e1c */ beq	$v0,$a0,.L80089e68
.L80089e20:
/* 0x80089e20 */ sll	$zero,$zero,0x0
.L80089e24:
/* 0x80089e24 */ beq	$v0,$v1,.L80089e68
.L80089e28:
/* 0x80089e28 */ addiu	$v1,$zero,7
.L80089e2c:
/* 0x80089e2c */ lbu	$v0,146($a1)
.L80089e30:
/* 0x80089e30 */ sll	$zero,$zero,0x0
.L80089e34:
/* 0x80089e34 */ beq	$v0,$v1,.L80089e44
.L80089e38:
/* 0x80089e38 */ sll	$zero,$zero,0x0
.L80089e3c:
/* 0x80089e3c */ bne	$v0,$zero,.L80089e74
.L80089e40:
/* 0x80089e40 */ addu	$v0,$zero,$zero
.L80089e44:
/* 0x80089e44 */ lbu	$v0,4886($a2)
.L80089e48:
/* 0x80089e48 */ sll	$zero,$zero,0x0
.L80089e4c:
/* 0x80089e4c */ beq	$v0,$v1,.L80089e5c
.L80089e50:
/* 0x80089e50 */ sll	$zero,$zero,0x0
.L80089e54:
/* 0x80089e54 */ bne	$v0,$zero,.L80089e70
.L80089e58:
/* 0x80089e58 */ sll	$zero,$zero,0x0
.L80089e5c:
/* 0x80089e5c */ lui	$v0,0xffff
.L80089e60:
/* 0x80089e60 */ j	0x80089e74
.L80089e64:
/* 0x80089e64 */ ori	$v0,$v0,0x6d7c
.L80089e68:
/* 0x80089e68 */ j	0x80089e74
.L80089e6c:
/* 0x80089e6c */ ori	$v0,$zero,0x9284
.L80089e70:
/* 0x80089e70 */ addu	$v0,$zero,$zero
.L80089e74:
/* 0x80089e74 */ addu	$v0,$a1,$v0
.L80089e78:
/* 0x80089e78 */ lbu	$v0,146($v0)
.L80089e7c:
/* 0x80089e7c */ addiu	$v1,$zero,2
.L80089e80:
/* 0x80089e80 */ beq	$v0,$v1,.L80089f28
.L80089e84:
/* 0x80089e84 */ lui	$v0,0x800f
.L80089e88:
/* 0x80089e88 */ addiu	$a1,$v0,10504
.L80089e8c:
/* 0x80089e8c */ lb	$v0,36($a1)
.L80089e90:
/* 0x80089e90 */ sll	$zero,$zero,0x0
.L80089e94:
/* 0x80089e94 */ beq	$v0,$v1,.L80089f04
.L80089e98:
/* 0x80089e98 */ addiu	$a0,$zero,4
.L80089e9c:
/* 0x80089e9c */ beq	$v0,$a0,.L80089f04
.L80089ea0:
/* 0x80089ea0 */ ori	$v0,$zero,0x8000
.L80089ea4:
/* 0x80089ea4 */ addu	$a2,$a1,$v0
.L80089ea8:
/* 0x80089ea8 */ lb	$v0,4776($a2)
.L80089eac:
/* 0x80089eac */ sll	$zero,$zero,0x0
.L80089eb0:
/* 0x80089eb0 */ beq	$v0,$v1,.L80089efc
.L80089eb4:
/* 0x80089eb4 */ sll	$zero,$zero,0x0
.L80089eb8:
/* 0x80089eb8 */ beq	$v0,$a0,.L80089efc
.L80089ebc:
/* 0x80089ebc */ addiu	$v1,$zero,7
.L80089ec0:
/* 0x80089ec0 */ lbu	$v0,146($a1)
.L80089ec4:
/* 0x80089ec4 */ sll	$zero,$zero,0x0
.L80089ec8:
/* 0x80089ec8 */ beq	$v0,$v1,.L80089ed8
.L80089ecc:
/* 0x80089ecc */ sll	$zero,$zero,0x0
.L80089ed0:
/* 0x80089ed0 */ bne	$v0,$zero,.L80089f08
.L80089ed4:
/* 0x80089ed4 */ addu	$v0,$zero,$zero
.L80089ed8:
/* 0x80089ed8 */ lbu	$v0,4886($a2)
.L80089edc:
/* 0x80089edc */ sll	$zero,$zero,0x0
.L80089ee0:
/* 0x80089ee0 */ beq	$v0,$v1,.L80089ef0
.L80089ee4:
/* 0x80089ee4 */ sll	$zero,$zero,0x0
.L80089ee8:
/* 0x80089ee8 */ bne	$v0,$zero,.L80089f04
.L80089eec:
/* 0x80089eec */ sll	$zero,$zero,0x0
.L80089ef0:
/* 0x80089ef0 */ lui	$v0,0xffff
.L80089ef4:
/* 0x80089ef4 */ j	0x80089f08
.L80089ef8:
/* 0x80089ef8 */ ori	$v0,$v0,0x6d7c
.L80089efc:
/* 0x80089efc */ j	0x80089f08
.L80089f00:
/* 0x80089f00 */ ori	$v0,$zero,0x9284
.L80089f04:
/* 0x80089f04 */ addu	$v0,$zero,$zero
.L80089f08:
/* 0x80089f08 */ addu	$v0,$a1,$v0
.L80089f0c:
/* 0x80089f0c */ lbu	$v0,146($v0)
.L80089f10:
/* 0x80089f10 */ sll	$zero,$zero,0x0
.L80089f14:
/* 0x80089f14 */ xori	$v0,$v0,0xa
.L80089f18:
/* 0x80089f18 */ sltiu	$v0,$v0,1
.L80089f1c:
/* 0x80089f1c */ sll	$v0,$v0,0x1
.L80089f20:
/* 0x80089f20 */ j	0x80089f30
.L80089f24:
/* 0x80089f24 */ sw	$v0,44($sp)
.L80089f28:
/* 0x80089f28 */ addiu	$t0,$zero,1
.L80089f2c:
/* 0x80089f2c */ sw	$t0,44($sp)
.L80089f30:
/* 0x80089f30 */ lw	$t1,112($sp)
.L80089f34:
/* 0x80089f34 */ sll	$zero,$zero,0x0
.L80089f38:
/* 0x80089f38 */ lbu	$v0,1968($t1)
.L80089f3c:
/* 0x80089f3c */ sll	$zero,$zero,0x0
.L80089f40:
/* 0x80089f40 */ beq	$v0,$zero,.L80089fd0
.L80089f44:
/* 0x80089f44 */ sw	$zero,48($sp)
.L80089f48:
/* 0x80089f48 */ lw	$a0,1864($t1)
.L80089f4c:
/* 0x80089f4c */ sll	$zero,$zero,0x0
.L80089f50:
/* 0x80089f50 */ bgez	$a0,.L80089f8c
.L80089f54:
/* 0x80089f54 */ negu	$v0,$a0
.L80089f58:
/* 0x80089f58 */ lw	$v1,4($t1)
.L80089f5c:
/* 0x80089f5c */ sll	$zero,$zero,0x0
.L80089f60:
/* 0x80089f60 */ sll	$v1,$v1,0xc
.L80089f64:
/* 0x80089f64 */ div	$zero,$v0,$v1
.L80089f68:
/* 0x80089f68 */ mfhi	$a0
.L80089f6c:
/* 0x80089f6c */ sll	$zero,$zero,0x0
.L80089f70:
/* 0x80089f70 */ subu	$a0,$v1,$a0
.L80089f74:
/* 0x80089f74 */ div	$zero,$a0,$v1
.L80089f78:
/* 0x80089f78 */ mfhi	$v0
.L80089f7c:
/* 0x80089f7c */ sll	$zero,$zero,0x0
.L80089f80:
/* 0x80089f80 */ sra	$v0,$v0,0xc
.L80089f84:
/* 0x80089f84 */ j	0x80089fb4
.L80089f88:
/* 0x80089f88 */ sll	$v0,$v0,0x1
.L80089f8c:
/* 0x80089f8c */ lw	$t0,112($sp)
.L80089f90:
/* 0x80089f90 */ sll	$zero,$zero,0x0
.L80089f94:
/* 0x80089f94 */ lw	$v0,4($t0)
.L80089f98:
/* 0x80089f98 */ sll	$zero,$zero,0x0
.L80089f9c:
/* 0x80089f9c */ sll	$v0,$v0,0xc
.L80089fa0:
/* 0x80089fa0 */ div	$zero,$a0,$v0
.L80089fa4:
/* 0x80089fa4 */ mfhi	$v1
.L80089fa8:
/* 0x80089fa8 */ sll	$zero,$zero,0x0
.L80089fac:
/* 0x80089fac */ sra	$v1,$v1,0xc
.L80089fb0:
/* 0x80089fb0 */ sll	$v0,$v1,0x1
.L80089fb4:
/* 0x80089fb4 */ lw	$t0,112($sp)
.L80089fb8:
/* 0x80089fb8 */ sll	$zero,$zero,0x0
.L80089fbc:
/* 0x80089fbc */ addu	$v0,$t0,$v0
.L80089fc0:
/* 0x80089fc0 */ lh	$v0,22($v0)
.L80089fc4:
/* 0x80089fc4 */ sll	$zero,$zero,0x0
.L80089fc8:
/* 0x80089fc8 */ bne	$v0,$zero,.L80089fd8
.L80089fcc:
/* 0x80089fcc */ sll	$zero,$zero,0x0
.L80089fd0:
/* 0x80089fd0 */ addiu	$t1,$zero,1
.L80089fd4:
/* 0x80089fd4 */ sw	$t1,48($sp)
.L80089fd8:
/* 0x80089fd8 */ bgez	$s0,.L80089fe8
.L80089fdc:
/* 0x80089fdc */ slt	$v0,$s1,$s0
.L80089fe0:
/* 0x80089fe0 */ addu	$s0,$zero,$zero
.L80089fe4:
/* 0x80089fe4 */ slt	$v0,$s1,$s0
.L80089fe8:
/* 0x80089fe8 */ beq	$v0,$zero,.L80089ff8
.L80089fec:
/* 0x80089fec */ sll	$v0,$s0,0x7
.L80089ff0:
/* 0x80089ff0 */ addu	$s0,$s1,$zero
.L80089ff4:
/* 0x80089ff4 */ sll	$v0,$s0,0x7
.L80089ff8:
/* 0x80089ff8 */ div	$zero,$v0,$s1
.L80089ffc:
/* 0x80089ffc */ mflo	$t0
.L8008a000:
/* 0x8008a000 */ lui	$v0,0x800f
.L8008a004:
/* 0x8008a004 */ lw	$v0,10508($v0)
.L8008a008:
/* 0x8008a008 */ lw	$t1,48($sp)
.L8008a00c:
/* 0x8008a00c */ sw	$v0,40($sp)
.L8008a010:
/* 0x8008a010 */ bne	$t1,$zero,.L8008a028
.L8008a014:
/* 0x8008a014 */ sw	$t0,36($sp)
.L8008a018:
/* 0x8008a018 */ srl	$v0,$t0,0x1f
.L8008a01c:
/* 0x8008a01c */ addu	$v0,$t0,$v0
.L8008a020:
/* 0x8008a020 */ sra	$v0,$v0,0x1
.L8008a024:
/* 0x8008a024 */ sw	$v0,36($sp)
.L8008a028:
/* 0x8008a028 */ lw	$t0,112($sp)
.L8008a02c:
/* 0x8008a02c */ sll	$zero,$zero,0x0
.L8008a030:
/* 0x8008a030 */ lbu	$v0,1968($t0)
.L8008a034:
/* 0x8008a034 */ sll	$zero,$zero,0x0
.L8008a038:
/* 0x8008a038 */ beq	$v0,$zero,.L8008a340
.L8008a03c:
/* 0x8008a03c */ lui	$v0,0x800f
.L8008a040:
/* 0x8008a040 */ lw	$v0,10488($v0)
.L8008a044:
/* 0x8008a044 */ lui	$v1,0x8888
.L8008a048:
/* 0x8008a048 */ ori	$v1,$v1,0x8889
.L8008a04c:
/* 0x8008a04c */ sll	$v0,$v0,0xc
.L8008a050:
/* 0x8008a050 */ multu	$v0,$v1
.L8008a054:
/* 0x8008a054 */ mfhi	$t0
.L8008a058:
/* 0x8008a058 */ jal	0x8004964c
.L8008a05c:
/* 0x8008a05c */ srl	$a0,$t0,0x5
.L8008a060:
/* 0x8008a060 */ sll	$v1,$v0,0x1
.L8008a064:
/* 0x8008a064 */ addu	$v1,$v1,$v0
.L8008a068:
/* 0x8008a068 */ sll	$v0,$v1,0x4
.L8008a06c:
/* 0x8008a06c */ subu	$v0,$v0,$v1
.L8008a070:
/* 0x8008a070 */ bgez	$v0,.L8008a07c
.L8008a074:
/* 0x8008a074 */ sll	$zero,$zero,0x0
.L8008a078:
/* 0x8008a078 */ addiu	$v0,$v0,4095
.L8008a07c:
/* 0x8008a07c */ sra	$v0,$v0,0xc
.L8008a080:
/* 0x8008a080 */ addiu	$v0,$v0,83
.L8008a084:
/* 0x8008a084 */ sw	$v0,32($sp)
.L8008a088:
/* 0x8008a088 */ mult	$v0,$s0
.L8008a08c:
/* 0x8008a08c */ lw	$t0,112($sp)
.L8008a090:
/* 0x8008a090 */ mflo	$v1
.L8008a094:
/* 0x8008a094 */ lw	$a0,1864($t0)
.L8008a098:
/* 0x8008a098 */ sll	$zero,$zero,0x0
.L8008a09c:
/* 0x8008a09c */ div	$zero,$v1,$s1
.L8008a0a0:
/* 0x8008a0a0 */ mflo	$t0
.L8008a0a4:
/* 0x8008a0a4 */ addiu	$s2,$zero,-1
.L8008a0a8:
/* 0x8008a0a8 */ bgez	$a0,.L8008a0ec
.L8008a0ac:
/* 0x8008a0ac */ sw	$t0,32($sp)
.L8008a0b0:
/* 0x8008a0b0 */ lw	$t1,112($sp)
.L8008a0b4:
/* 0x8008a0b4 */ sll	$zero,$zero,0x0
.L8008a0b8:
/* 0x8008a0b8 */ lw	$v1,4($t1)
.L8008a0bc:
/* 0x8008a0bc */ negu	$v0,$a0
.L8008a0c0:
/* 0x8008a0c0 */ sll	$v1,$v1,0xc
.L8008a0c4:
/* 0x8008a0c4 */ div	$zero,$v0,$v1
.L8008a0c8:
/* 0x8008a0c8 */ mfhi	$a0
.L8008a0cc:
/* 0x8008a0cc */ sll	$zero,$zero,0x0
.L8008a0d0:
/* 0x8008a0d0 */ subu	$a0,$v1,$a0
.L8008a0d4:
/* 0x8008a0d4 */ div	$zero,$a0,$v1
.L8008a0d8:
/* 0x8008a0d8 */ mfhi	$v0
.L8008a0dc:
/* 0x8008a0dc */ sll	$zero,$zero,0x0
.L8008a0e0:
/* 0x8008a0e0 */ sra	$v0,$v0,0xc
.L8008a0e4:
/* 0x8008a0e4 */ j	0x8008a114
.L8008a0e8:
/* 0x8008a0e8 */ sll	$v0,$v0,0x1
.L8008a0ec:
/* 0x8008a0ec */ lw	$t0,112($sp)
.L8008a0f0:
/* 0x8008a0f0 */ sll	$zero,$zero,0x0
.L8008a0f4:
/* 0x8008a0f4 */ lw	$v0,4($t0)
.L8008a0f8:
/* 0x8008a0f8 */ sll	$zero,$zero,0x0
.L8008a0fc:
/* 0x8008a0fc */ sll	$v0,$v0,0xc
.L8008a100:
/* 0x8008a100 */ div	$zero,$a0,$v0
.L8008a104:
/* 0x8008a104 */ mfhi	$v1
.L8008a108:
/* 0x8008a108 */ sll	$zero,$zero,0x0
.L8008a10c:
/* 0x8008a10c */ sra	$v1,$v1,0xc
.L8008a110:
/* 0x8008a110 */ sll	$v0,$v1,0x1
.L8008a114:
/* 0x8008a114 */ lw	$t0,112($sp)
.L8008a118:
/* 0x8008a118 */ sll	$zero,$zero,0x0
.L8008a11c:
/* 0x8008a11c */ addu	$v0,$t0,$v0
.L8008a120:
/* 0x8008a120 */ lh	$v0,22($v0)
.L8008a124:
/* 0x8008a124 */ sll	$zero,$zero,0x0
.L8008a128:
/* 0x8008a128 */ addiu	$a0,$v0,-1
.L8008a12c:
/* 0x8008a12c */ bltz	$a0,.L8008a140
.L8008a130:
/* 0x8008a130 */ sll	$zero,$zero,0x0
.L8008a134:
/* 0x8008a134 */ jal	0x80096620
.L8008a138:
/* 0x8008a138 */ sll	$zero,$zero,0x0
.L8008a13c:
/* 0x8008a13c */ addu	$s2,$v0,$zero
.L8008a140:
/* 0x8008a140 */ bltz	$s2,.L8008a22c
.L8008a144:
/* 0x8008a144 */ andi	$v0,$s2,0xf
.L8008a148:
/* 0x8008a148 */ beq	$v0,$zero,.L8008a22c
.L8008a14c:
/* 0x8008a14c */ sra	$v0,$s2,0x4
.L8008a150:
/* 0x8008a150 */ addiu	$s1,$v0,-1
.L8008a154:
/* 0x8008a154 */ addu	$s3,$zero,$zero
.L8008a158:
/* 0x8008a158 */ addiu	$s7,$zero,16
.L8008a15c:
/* 0x8008a15c */ addiu	$s4,$zero,24
.L8008a160:
/* 0x8008a160 */ lui	$v0,0x8002
.L8008a164:
/* 0x8008a164 */ addiu	$s8,$v0,-6604
.L8008a168:
/* 0x8008a168 */ addu	$a1,$s5,$zero
.L8008a16c:
/* 0x8008a16c */ lh	$a2,2($s6)
.L8008a170:
/* 0x8008a170 */ lh	$a3,4($s6)
.L8008a174:
/* 0x8008a174 */ addiu	$v0,$zero,1
.L8008a178:
/* 0x8008a178 */ sw	$v0,24($sp)
.L8008a17c:
/* 0x8008a17c */ addiu	$v0,$zero,-1
.L8008a180:
/* 0x8008a180 */ andi	$s0,$s2,0xf
.L8008a184:
/* 0x8008a184 */ slt	$s0,$s3,$s0
.L8008a188:
/* 0x8008a188 */ xori	$s0,$s0,0x1
.L8008a18c:
/* 0x8008a18c */ lw	$a0,116($sp)
.L8008a190:
/* 0x8008a190 */ sll	$s0,$s0,0x1
.L8008a194:
/* 0x8008a194 */ sw	$s7,16($sp)
.L8008a198:
/* 0x8008a198 */ sw	$s4,20($sp)
.L8008a19c:
/* 0x8008a19c */ sw	$v0,28($sp)
.L8008a1a0:
/* 0x8008a1a0 */ addiu	$a2,$a2,2
.L8008a1a4:
/* 0x8008a1a4 */ jal	0x80048144
.L8008a1a8:
/* 0x8008a1a8 */ addiu	$a3,$a3,60
.L8008a1ac:
/* 0x8008a1ac */ lw	$a0,116($sp)
.L8008a1b0:
/* 0x8008a1b0 */ lh	$a2,14($s6)
.L8008a1b4:
/* 0x8008a1b4 */ lh	$a3,16($s6)
.L8008a1b8:
/* 0x8008a1b8 */ jal	0x80049208
.L8008a1bc:
/* 0x8008a1bc */ addu	$a1,$s5,$zero
.L8008a1c0:
/* 0x8008a1c0 */ addu	$a1,$s5,$zero
.L8008a1c4:
/* 0x8008a1c4 */ sll	$a2,$s3,0x4
.L8008a1c8:
/* 0x8008a1c8 */ addiu	$a2,$a2,-281
.L8008a1cc:
/* 0x8008a1cc */ addiu	$a2,$a2,43
.L8008a1d0:
/* 0x8008a1d0 */ addiu	$t1,$zero,-36
.L8008a1d4:
/* 0x8008a1d4 */ lw	$a0,116($sp)
.L8008a1d8:
/* 0x8008a1d8 */ addiu	$a3,$t1,26
.L8008a1dc:
/* 0x8008a1dc */ sw	$s7,16($sp)
.L8008a1e0:
/* 0x8008a1e0 */ jal	0x80049364
.L8008a1e4:
/* 0x8008a1e4 */ sw	$s4,20($sp)
.L8008a1e8:
/* 0x8008a1e8 */ addu	$a1,$s5,$zero
.L8008a1ec:
/* 0x8008a1ec */ sll	$v0,$s1,0x1
.L8008a1f0:
/* 0x8008a1f0 */ addu	$v0,$v0,$s1
.L8008a1f4:
/* 0x8008a1f4 */ addu	$v0,$v0,$s8
.L8008a1f8:
/* 0x8008a1f8 */ addiu	$s3,$s3,1
.L8008a1fc:
/* 0x8008a1fc */ lw	$a0,116($sp)
.L8008a200:
/* 0x8008a200 */ lbu	$a2,0($v0)
.L8008a204:
/* 0x8008a204 */ lbu	$a3,1($v0)
.L8008a208:
/* 0x8008a208 */ lbu	$v0,2($v0)
.L8008a20c:
/* 0x8008a20c */ srav	$a2,$a2,$s0
.L8008a210:
/* 0x8008a210 */ srav	$a3,$a3,$s0
.L8008a214:
/* 0x8008a214 */ srav	$v0,$v0,$s0
.L8008a218:
/* 0x8008a218 */ jal	0x800490f8
.L8008a21c:
/* 0x8008a21c */ sw	$v0,16($sp)
.L8008a220:
/* 0x8008a220 */ slti	$v0,$s3,9
.L8008a224:
/* 0x8008a224 */ bne	$v0,$zero,.L8008a168
.L8008a228:
/* 0x8008a228 */ addiu	$s5,$s5,1
.L8008a22c:
/* 0x8008a22c */ addu	$a1,$s5,$zero
.L8008a230:
/* 0x8008a230 */ addiu	$s2,$zero,150
.L8008a234:
/* 0x8008a234 */ lw	$a0,116($sp)
.L8008a238:
/* 0x8008a238 */ lh	$a2,2($s6)
.L8008a23c:
/* 0x8008a23c */ lh	$a3,4($s6)
.L8008a240:
/* 0x8008a240 */ addiu	$s1,$zero,48
.L8008a244:
/* 0x8008a244 */ sw	$s2,16($sp)
.L8008a248:
/* 0x8008a248 */ sw	$s1,20($sp)
.L8008a24c:
/* 0x8008a24c */ lh	$v0,10($s6)
.L8008a250:
/* 0x8008a250 */ addiu	$s0,$zero,1
.L8008a254:
/* 0x8008a254 */ sw	$s0,28($sp)
.L8008a258:
/* 0x8008a258 */ addiu	$a3,$a3,84
.L8008a25c:
/* 0x8008a25c */ jal	0x80048144
.L8008a260:
/* 0x8008a260 */ sw	$v0,24($sp)
.L8008a264:
/* 0x8008a264 */ lw	$a0,116($sp)
.L8008a268:
/* 0x8008a268 */ lh	$a2,14($s6)
.L8008a26c:
/* 0x8008a26c */ lh	$a3,16($s6)
.L8008a270:
/* 0x8008a270 */ jal	0x80049208
.L8008a274:
/* 0x8008a274 */ addu	$a1,$s5,$zero
.L8008a278:
/* 0x8008a278 */ addu	$a1,$s5,$zero
.L8008a27c:
/* 0x8008a27c */ addiu	$t0,$zero,-281
.L8008a280:
/* 0x8008a280 */ addiu	$s4,$t0,40
.L8008a284:
/* 0x8008a284 */ addu	$a2,$s4,$zero
.L8008a288:
/* 0x8008a288 */ addiu	$t1,$zero,-36
.L8008a28c:
/* 0x8008a28c */ addiu	$s3,$t1,14
.L8008a290:
/* 0x8008a290 */ lw	$a0,116($sp)
.L8008a294:
/* 0x8008a294 */ addu	$a3,$s3,$zero
.L8008a298:
/* 0x8008a298 */ sw	$s2,16($sp)
.L8008a29c:
/* 0x8008a29c */ jal	0x80049364
.L8008a2a0:
/* 0x8008a2a0 */ sw	$s1,20($sp)
.L8008a2a4:
/* 0x8008a2a4 */ addu	$a1,$s5,$zero
.L8008a2a8:
/* 0x8008a2a8 */ lw	$a2,32($sp)
.L8008a2ac:
/* 0x8008a2ac */ lw	$a0,116($sp)
.L8008a2b0:
/* 0x8008a2b0 */ addu	$a3,$a2,$zero
.L8008a2b4:
/* 0x8008a2b4 */ jal	0x800490f8
.L8008a2b8:
/* 0x8008a2b8 */ sw	$a3,16($sp)
.L8008a2bc:
/* 0x8008a2bc */ addu	$s5,$s5,$s0
.L8008a2c0:
/* 0x8008a2c0 */ sw	$s0,16($sp)
.L8008a2c4:
/* 0x8008a2c4 */ sw	$s0,20($sp)
.L8008a2c8:
/* 0x8008a2c8 */ lui	$s0,0x8011
.L8008a2cc:
/* 0x8008a2cc */ addiu	$s0,$s0,27696
.L8008a2d0:
/* 0x8008a2d0 */ lw	$a0,116($sp)
.L8008a2d4:
/* 0x8008a2d4 */ lh	$a2,2($s0)
.L8008a2d8:
/* 0x8008a2d8 */ addiu	$v0,$zero,2
.L8008a2dc:
/* 0x8008a2dc */ sw	$v0,28($sp)
.L8008a2e0:
/* 0x8008a2e0 */ lh	$a3,4($s0)
.L8008a2e4:
/* 0x8008a2e4 */ lh	$v0,10($s0)
.L8008a2e8:
/* 0x8008a2e8 */ addu	$a1,$s5,$zero
.L8008a2ec:
/* 0x8008a2ec */ jal	0x80048144
.L8008a2f0:
/* 0x8008a2f0 */ sw	$v0,24($sp)
.L8008a2f4:
/* 0x8008a2f4 */ lw	$a0,116($sp)
.L8008a2f8:
/* 0x8008a2f8 */ lh	$a2,14($s0)
.L8008a2fc:
/* 0x8008a2fc */ lh	$a3,16($s0)
.L8008a300:
/* 0x8008a300 */ jal	0x80049208
.L8008a304:
/* 0x8008a304 */ addu	$a1,$s5,$zero
.L8008a308:
/* 0x8008a308 */ addu	$a1,$s5,$zero
.L8008a30c:
/* 0x8008a30c */ addu	$a2,$s4,$zero
.L8008a310:
/* 0x8008a310 */ lw	$a0,116($sp)
.L8008a314:
/* 0x8008a314 */ addu	$a3,$s3,$zero
.L8008a318:
/* 0x8008a318 */ sw	$s2,16($sp)
.L8008a31c:
/* 0x8008a31c */ jal	0x80049364
.L8008a320:
/* 0x8008a320 */ sw	$s1,20($sp)
.L8008a324:
/* 0x8008a324 */ addu	$a1,$s5,$zero
.L8008a328:
/* 0x8008a328 */ lw	$a2,32($sp)
.L8008a32c:
/* 0x8008a32c */ lw	$a0,116($sp)
.L8008a330:
/* 0x8008a330 */ addu	$a3,$a2,$zero
.L8008a334:
/* 0x8008a334 */ jal	0x800490f8
.L8008a338:
/* 0x8008a338 */ sw	$a2,16($sp)
.L8008a33c:
/* 0x8008a33c */ addiu	$s5,$s5,1
.L8008a340:
/* 0x8008a340 */ addu	$s3,$zero,$zero
.L8008a344:
/* 0x8008a344 */ sw	$zero,60($sp)
.L8008a348:
/* 0x8008a348 */ addiu	$t0,$zero,-36
.L8008a34c:
/* 0x8008a34c */ sw	$t0,64($sp)
.L8008a350:
/* 0x8008a350 */ addu	$s2,$zero,$zero
.L8008a354:
/* 0x8008a354 */ addiu	$s8,$zero,-281
.L8008a358:
/* 0x8008a358 */ addiu	$t1,$zero,60
.L8008a35c:
/* 0x8008a35c */ sw	$t1,56($sp)
.L8008a360:
/* 0x8008a360 */ lui	$s7,0x800f
.L8008a364:
/* 0x8008a364 */ addiu	$s7,$s7,10504
.L8008a368:
/* 0x8008a368 */ lbu	$v1,146($s7)
.L8008a36c:
/* 0x8008a36c */ addiu	$v0,$zero,7
.L8008a370:
/* 0x8008a370 */ beq	$v1,$v0,.L8008a580
.L8008a374:
/* 0x8008a374 */ sll	$zero,$zero,0x0
.L8008a378:
/* 0x8008a378 */ beq	$v1,$zero,.L8008a580
.L8008a37c:
/* 0x8008a37c */ sll	$v0,$s3,0x2
.L8008a380:
/* 0x8008a380 */ addu	$v0,$v0,$s3
.L8008a384:
/* 0x8008a384 */ sll	$v0,$v0,0x3
.L8008a388:
/* 0x8008a388 */ addiu	$v0,$v0,40
.L8008a38c:
/* 0x8008a38c */ lh	$v1,2($s6)
.L8008a390:
/* 0x8008a390 */ lh	$a0,4($s6)
.L8008a394:
/* 0x8008a394 */ lw	$t0,56($sp)
.L8008a398:
/* 0x8008a398 */ addu	$v1,$v1,$v0
.L8008a39c:
/* 0x8008a39c */ sw	$v1,52($sp)
.L8008a3a0:
/* 0x8008a3a0 */ lbu	$v1,144($s7)
.L8008a3a4:
/* 0x8008a3a4 */ addiu	$v0,$s3,1
.L8008a3a8:
/* 0x8008a3a8 */ bne	$v1,$v0,.L8008a4e4
.L8008a3ac:
/* 0x8008a3ac */ addu	$s4,$a0,$t0
.L8008a3b0:
/* 0x8008a3b0 */ lw	$t1,48($sp)
.L8008a3b4:
/* 0x8008a3b4 */ sll	$zero,$zero,0x0
.L8008a3b8:
/* 0x8008a3b8 */ beq	$t1,$zero,.L8008a4e4
.L8008a3bc:
/* 0x8008a3bc */ lui	$t0,0x800f
.L8008a3c0:
/* 0x8008a3c0 */ addiu	$t0,$t0,10376
.L8008a3c4:
/* 0x8008a3c4 */ lw	$v0,112($t0)
.L8008a3c8:
/* 0x8008a3c8 */ lui	$v1,0x8888
.L8008a3cc:
/* 0x8008a3cc */ ori	$v1,$v1,0x8889
.L8008a3d0:
/* 0x8008a3d0 */ sll	$v0,$v0,0xc
.L8008a3d4:
/* 0x8008a3d4 */ multu	$v0,$v1
.L8008a3d8:
/* 0x8008a3d8 */ lw	$t0,36($sp)
.L8008a3dc:
/* 0x8008a3dc */ sll	$zero,$zero,0x0
.L8008a3e0:
/* 0x8008a3e0 */ sw	$t0,32($sp)
.L8008a3e4:
/* 0x8008a3e4 */ mfhi	$t1
.L8008a3e8:
/* 0x8008a3e8 */ jal	0x8004964c
.L8008a3ec:
/* 0x8008a3ec */ srl	$a0,$t1,0x5
.L8008a3f0:
/* 0x8008a3f0 */ sll	$v1,$v0,0x3
.L8008a3f4:
/* 0x8008a3f4 */ addu	$v1,$v1,$v0
.L8008a3f8:
/* 0x8008a3f8 */ sll	$v1,$v1,0x1
.L8008a3fc:
/* 0x8008a3fc */ bgez	$v1,.L8008a40c
.L8008a400:
/* 0x8008a400 */ sra	$s1,$v1,0xc
.L8008a404:
/* 0x8008a404 */ addiu	$v1,$v1,4095
.L8008a408:
/* 0x8008a408 */ sra	$s1,$v1,0xc
.L8008a40c:
/* 0x8008a40c */ bgez	$s1,.L8008a418
.L8008a410:
/* 0x8008a410 */ sll	$zero,$zero,0x0
.L8008a414:
/* 0x8008a414 */ negu	$s1,$s1
.L8008a418:
/* 0x8008a418 */ bne	$s2,$zero,.L8008a424
.L8008a41c:
/* 0x8008a41c */ lui	$t0,0x800f
.L8008a420:
/* 0x8008a420 */ negu	$s1,$s1
.L8008a424:
/* 0x8008a424 */ addiu	$t0,$t0,10376
.L8008a428:
/* 0x8008a428 */ lw	$a0,112($t0)
.L8008a42c:
/* 0x8008a42c */ jal	0x8004964c
.L8008a430:
/* 0x8008a430 */ sll	$a0,$a0,0x6
.L8008a434:
/* 0x8008a434 */ sll	$v1,$v0,0x1
.L8008a438:
/* 0x8008a438 */ addu	$v1,$v1,$v0
.L8008a43c:
/* 0x8008a43c */ sll	$v1,$v1,0x4
.L8008a440:
/* 0x8008a440 */ bgez	$v1,.L8008a44c
.L8008a444:
/* 0x8008a444 */ sll	$zero,$zero,0x0
.L8008a448:
/* 0x8008a448 */ addiu	$v1,$v1,4095
.L8008a44c:
/* 0x8008a44c */ addu	$a1,$s5,$zero
.L8008a450:
/* 0x8008a450 */ addu	$a3,$s4,$zero
.L8008a454:
/* 0x8008a454 */ lh	$a2,2($s6)
.L8008a458:
/* 0x8008a458 */ addiu	$t1,$zero,40
.L8008a45c:
/* 0x8008a45c */ addiu	$t0,$zero,12
.L8008a460:
/* 0x8008a460 */ addiu	$v0,$zero,1
.L8008a464:
/* 0x8008a464 */ srav	$s0,$v1,$t0
.L8008a468:
/* 0x8008a468 */ lw	$a0,116($sp)
.L8008a46c:
/* 0x8008a46c */ addiu	$s0,$s0,48
.L8008a470:
/* 0x8008a470 */ sw	$t1,16($sp)
.L8008a474:
/* 0x8008a474 */ sw	$t0,20($sp)
.L8008a478:
/* 0x8008a478 */ sw	$v0,24($sp)
.L8008a47c:
/* 0x8008a47c */ sw	$v0,28($sp)
.L8008a480:
/* 0x8008a480 */ jal	0x80048144
.L8008a484:
/* 0x8008a484 */ addiu	$a2,$a2,160
.L8008a488:
/* 0x8008a488 */ lw	$a0,116($sp)
.L8008a48c:
/* 0x8008a48c */ lh	$a2,14($s6)
.L8008a490:
/* 0x8008a490 */ lh	$a3,16($s6)
.L8008a494:
/* 0x8008a494 */ jal	0x80049208
.L8008a498:
/* 0x8008a498 */ addu	$a1,$s5,$zero
.L8008a49c:
/* 0x8008a49c */ addu	$a1,$s5,$zero
.L8008a4a0:
/* 0x8008a4a0 */ addu	$a2,$s8,$s1
.L8008a4a4:
/* 0x8008a4a4 */ lw	$a0,116($sp)
.L8008a4a8:
/* 0x8008a4a8 */ lw	$t1,64($sp)
.L8008a4ac:
/* 0x8008a4ac */ addiu	$t0,$zero,40
.L8008a4b0:
/* 0x8008a4b0 */ sw	$t0,16($sp)
.L8008a4b4:
/* 0x8008a4b4 */ addiu	$a3,$t1,7
.L8008a4b8:
/* 0x8008a4b8 */ addiu	$t1,$zero,12
.L8008a4bc:
/* 0x8008a4bc */ jal	0x80049364
.L8008a4c0:
/* 0x8008a4c0 */ sw	$t1,20($sp)
.L8008a4c4:
/* 0x8008a4c4 */ addu	$a1,$s5,$zero
.L8008a4c8:
/* 0x8008a4c8 */ addu	$a2,$s0,$zero
.L8008a4cc:
/* 0x8008a4cc */ lw	$a0,116($sp)
.L8008a4d0:
/* 0x8008a4d0 */ addu	$a3,$a2,$zero
.L8008a4d4:
/* 0x8008a4d4 */ jal	0x800490f8
.L8008a4d8:
/* 0x8008a4d8 */ sw	$a2,16($sp)
.L8008a4dc:
/* 0x8008a4dc */ j	0x8008a4f4
.L8008a4e0:
/* 0x8008a4e0 */ addiu	$s5,$s5,1
.L8008a4e4:
/* 0x8008a4e4 */ lw	$t0,36($sp)
.L8008a4e8:
/* 0x8008a4e8 */ addu	$s1,$zero,$zero
.L8008a4ec:
/* 0x8008a4ec */ sra	$t0,$t0,0x1
.L8008a4f0:
/* 0x8008a4f0 */ sw	$t0,32($sp)
.L8008a4f4:
/* 0x8008a4f4 */ addu	$a1,$s5,$zero
.L8008a4f8:
/* 0x8008a4f8 */ addu	$a3,$s4,$zero
.L8008a4fc:
/* 0x8008a4fc */ addiu	$t1,$zero,40
.L8008a500:
/* 0x8008a500 */ addiu	$t0,$zero,12
.L8008a504:
/* 0x8008a504 */ lw	$a0,116($sp)
.L8008a508:
/* 0x8008a508 */ lw	$a2,52($sp)
.L8008a50c:
/* 0x8008a50c */ addiu	$v0,$zero,1
.L8008a510:
/* 0x8008a510 */ sw	$v0,24($sp)
.L8008a514:
/* 0x8008a514 */ addiu	$v0,$zero,-1
.L8008a518:
/* 0x8008a518 */ sw	$t1,16($sp)
.L8008a51c:
/* 0x8008a51c */ sw	$t0,20($sp)
.L8008a520:
/* 0x8008a520 */ jal	0x80048144
.L8008a524:
/* 0x8008a524 */ sw	$v0,28($sp)
.L8008a528:
/* 0x8008a528 */ lw	$a0,116($sp)
.L8008a52c:
/* 0x8008a52c */ lh	$a2,14($s6)
.L8008a530:
/* 0x8008a530 */ lh	$a3,16($s6)
.L8008a534:
/* 0x8008a534 */ jal	0x80049208
.L8008a538:
/* 0x8008a538 */ addu	$a1,$s5,$zero
.L8008a53c:
/* 0x8008a53c */ addu	$a1,$s5,$zero
.L8008a540:
/* 0x8008a540 */ addu	$a2,$s8,$s1
.L8008a544:
/* 0x8008a544 */ lw	$a0,116($sp)
.L8008a548:
/* 0x8008a548 */ lw	$t1,64($sp)
.L8008a54c:
/* 0x8008a54c */ addiu	$t0,$zero,40
.L8008a550:
/* 0x8008a550 */ sw	$t0,16($sp)
.L8008a554:
/* 0x8008a554 */ addiu	$a3,$t1,7
.L8008a558:
/* 0x8008a558 */ addiu	$t1,$zero,12
.L8008a55c:
/* 0x8008a55c */ jal	0x80049364
.L8008a560:
/* 0x8008a560 */ sw	$t1,20($sp)
.L8008a564:
/* 0x8008a564 */ addu	$a1,$s5,$zero
.L8008a568:
/* 0x8008a568 */ lw	$a2,32($sp)
.L8008a56c:
/* 0x8008a56c */ lw	$a0,116($sp)
.L8008a570:
/* 0x8008a570 */ addu	$a3,$a2,$zero
.L8008a574:
/* 0x8008a574 */ jal	0x800490f8
.L8008a578:
/* 0x8008a578 */ sw	$a2,16($sp)
.L8008a57c:
/* 0x8008a57c */ addiu	$s5,$s5,1
.L8008a580:
/* 0x8008a580 */ addiu	$s8,$s8,190
.L8008a584:
/* 0x8008a584 */ ori	$v0,$zero,0x9284
.L8008a588:
/* 0x8008a588 */ addu	$s7,$s7,$v0
.L8008a58c:
/* 0x8008a58c */ addiu	$s2,$s2,1
.L8008a590:
/* 0x8008a590 */ lw	$t0,56($sp)
.L8008a594:
/* 0x8008a594 */ slti	$v0,$s2,2
.L8008a598:
/* 0x8008a598 */ addiu	$t0,$t0,12
.L8008a59c:
/* 0x8008a59c */ bne	$v0,$zero,.L8008a368
.L8008a5a0:
/* 0x8008a5a0 */ sw	$t0,56($sp)
.L8008a5a4:
/* 0x8008a5a4 */ lw	$t1,112($sp)
.L8008a5a8:
/* 0x8008a5a8 */ sll	$zero,$zero,0x0
.L8008a5ac:
/* 0x8008a5ac */ lw	$v1,1868($t1)
.L8008a5b0:
/* 0x8008a5b0 */ sll	$zero,$zero,0x0
.L8008a5b4:
/* 0x8008a5b4 */ bgez	$v1,.L8008a5f0
.L8008a5b8:
/* 0x8008a5b8 */ negu	$v0,$v1
.L8008a5bc:
/* 0x8008a5bc */ lw	$a0,4($t1)
.L8008a5c0:
/* 0x8008a5c0 */ sll	$zero,$zero,0x0
.L8008a5c4:
/* 0x8008a5c4 */ sll	$a0,$a0,0xc
.L8008a5c8:
/* 0x8008a5c8 */ div	$zero,$v0,$a0
.L8008a5cc:
/* 0x8008a5cc */ mfhi	$v1
.L8008a5d0:
/* 0x8008a5d0 */ sll	$zero,$zero,0x0
.L8008a5d4:
/* 0x8008a5d4 */ subu	$v1,$a0,$v1
.L8008a5d8:
/* 0x8008a5d8 */ div	$zero,$v1,$a0
.L8008a5dc:
/* 0x8008a5dc */ mfhi	$v0
.L8008a5e0:
/* 0x8008a5e0 */ sll	$zero,$zero,0x0
.L8008a5e4:
/* 0x8008a5e4 */ sra	$v0,$v0,0xc
.L8008a5e8:
/* 0x8008a5e8 */ j	0x8008a618
.L8008a5ec:
/* 0x8008a5ec */ sll	$v0,$v0,0x1
.L8008a5f0:
/* 0x8008a5f0 */ lw	$t0,112($sp)
.L8008a5f4:
/* 0x8008a5f4 */ sll	$zero,$zero,0x0
.L8008a5f8:
/* 0x8008a5f8 */ lw	$v0,4($t0)
.L8008a5fc:
/* 0x8008a5fc */ sll	$zero,$zero,0x0
.L8008a600:
/* 0x8008a600 */ sll	$v0,$v0,0xc
.L8008a604:
/* 0x8008a604 */ div	$zero,$v1,$v0
.L8008a608:
/* 0x8008a608 */ mfhi	$v1
.L8008a60c:
/* 0x8008a60c */ sll	$zero,$zero,0x0
.L8008a610:
/* 0x8008a610 */ sra	$v1,$v1,0xc
.L8008a614:
/* 0x8008a614 */ sll	$v0,$v1,0x1
.L8008a618:
/* 0x8008a618 */ lw	$t0,112($sp)
.L8008a61c:
/* 0x8008a61c */ sll	$zero,$zero,0x0
.L8008a620:
/* 0x8008a620 */ addu	$v0,$t0,$v0
.L8008a624:
/* 0x8008a624 */ lh	$v0,22($v0)
.L8008a628:
/* 0x8008a628 */ sll	$zero,$zero,0x0
.L8008a62c:
/* 0x8008a62c */ slti	$v0,$v0,160
.L8008a630:
/* 0x8008a630 */ beq	$v0,$zero,.L8008a64c
.L8008a634:
/* 0x8008a634 */ addu	$s7,$zero,$zero
.L8008a638:
/* 0x8008a638 */ lw	$a0,40($sp)
.L8008a63c:
/* 0x8008a63c */ lw	$a1,44($sp)
.L8008a640:
/* 0x8008a640 */ jal	0x8007eeb0
.L8008a644:
/* 0x8008a644 */ addu	$a2,$s3,$zero
.L8008a648:
/* 0x8008a648 */ addu	$s7,$v0,$zero
.L8008a64c:
/* 0x8008a64c */ addu	$s2,$zero,$zero
.L8008a650:
/* 0x8008a650 */ addiu	$s8,$zero,24
.L8008a654:
/* 0x8008a654 */ slt	$v0,$s2,$s7
.L8008a658:
/* 0x8008a658 */ beq	$v0,$zero,.L8008a6c0
.L8008a65c:
/* 0x8008a65c */ addiu	$s4,$zero,2
.L8008a660:
/* 0x8008a660 */ lw	$t1,112($sp)
.L8008a664:
/* 0x8008a664 */ sll	$zero,$zero,0x0
.L8008a668:
/* 0x8008a668 */ lw	$v1,1868($t1)
.L8008a66c:
/* 0x8008a66c */ lw	$v0,1864($t1)
.L8008a670:
/* 0x8008a670 */ sll	$zero,$zero,0x0
.L8008a674:
/* 0x8008a674 */ bne	$v1,$v0,.L8008a6c0
.L8008a678:
/* 0x8008a678 */ addu	$s4,$zero,$zero
.L8008a67c:
/* 0x8008a67c */ lw	$v1,1884($t1)
.L8008a680:
/* 0x8008a680 */ addiu	$t0,$zero,-1
.L8008a684:
/* 0x8008a684 */ beq	$v1,$t0,.L8008a6c4
.L8008a688:
/* 0x8008a688 */ addu	$a1,$s5,$zero
.L8008a68c:
/* 0x8008a68c */ lw	$t1,48($sp)
.L8008a690:
/* 0x8008a690 */ sll	$zero,$zero,0x0
.L8008a694:
/* 0x8008a694 */ beq	$t1,$zero,.L8008a6c4
.L8008a698:
/* 0x8008a698 */ lui	$t0,0x800f
.L8008a69c:
/* 0x8008a69c */ addiu	$t0,$t0,10376
.L8008a6a0:
/* 0x8008a6a0 */ lw	$v0,112($t0)
.L8008a6a4:
/* 0x8008a6a4 */ addiu	$a0,$s2,-4
.L8008a6a8:
/* 0x8008a6a8 */ sll	$a0,$a0,0x8
.L8008a6ac:
/* 0x8008a6ac */ subu	$v0,$v0,$v1
.L8008a6b0:
/* 0x8008a6b0 */ sll	$v0,$v0,0x6
.L8008a6b4:
/* 0x8008a6b4 */ jal	0x8004971c
.L8008a6b8:
/* 0x8008a6b8 */ subu	$a0,$v0,$a0
.L8008a6bc:
/* 0x8008a6bc */ addu	$s4,$zero,$zero
.L8008a6c0:
/* 0x8008a6c0 */ addu	$a1,$s5,$zero
.L8008a6c4:
/* 0x8008a6c4 */ sltiu	$s1,$s2,1
.L8008a6c8:
/* 0x8008a6c8 */ sll	$s1,$s1,0x1
.L8008a6cc:
/* 0x8008a6cc */ xori	$s0,$s2,0x8
.L8008a6d0:
/* 0x8008a6d0 */ sltiu	$s0,$s0,1
.L8008a6d4:
/* 0x8008a6d4 */ sll	$s0,$s0,0x1
.L8008a6d8:
/* 0x8008a6d8 */ addiu	$s0,$s0,16
.L8008a6dc:
/* 0x8008a6dc */ addu	$s0,$s1,$s0
.L8008a6e0:
/* 0x8008a6e0 */ addiu	$v0,$zero,1
.L8008a6e4:
/* 0x8008a6e4 */ lh	$v1,2($s6)
.L8008a6e8:
/* 0x8008a6e8 */ lh	$a3,4($s6)
.L8008a6ec:
/* 0x8008a6ec */ addiu	$t1,$zero,-1
.L8008a6f0:
/* 0x8008a6f0 */ lw	$a0,116($sp)
.L8008a6f4:
/* 0x8008a6f4 */ addiu	$a2,$s1,-2
.L8008a6f8:
/* 0x8008a6f8 */ sw	$s0,16($sp)
.L8008a6fc:
/* 0x8008a6fc */ sw	$s8,20($sp)
.L8008a700:
/* 0x8008a700 */ sw	$v0,24($sp)
.L8008a704:
/* 0x8008a704 */ sw	$t1,28($sp)
.L8008a708:
/* 0x8008a708 */ subu	$a2,$v1,$a2
.L8008a70c:
/* 0x8008a70c */ jal	0x80048144
.L8008a710:
/* 0x8008a710 */ addiu	$a3,$a3,60
.L8008a714:
/* 0x8008a714 */ lw	$a0,116($sp)
.L8008a718:
/* 0x8008a718 */ lh	$a2,14($s6)
.L8008a71c:
/* 0x8008a71c */ lh	$a3,16($s6)
.L8008a720:
/* 0x8008a720 */ jal	0x80049208
.L8008a724:
/* 0x8008a724 */ addu	$a1,$s5,$zero
.L8008a728:
/* 0x8008a728 */ addu	$a1,$s5,$zero
.L8008a72c:
/* 0x8008a72c */ sll	$a2,$s2,0x4
.L8008a730:
/* 0x8008a730 */ addiu	$a2,$a2,40
.L8008a734:
/* 0x8008a734 */ addiu	$t0,$zero,-281
.L8008a738:
/* 0x8008a738 */ addu	$a2,$t0,$a2
.L8008a73c:
/* 0x8008a73c */ addiu	$s1,$s1,-4
.L8008a740:
/* 0x8008a740 */ lw	$a0,116($sp)
.L8008a744:
/* 0x8008a744 */ lw	$a3,64($sp)
.L8008a748:
/* 0x8008a748 */ subu	$a2,$a2,$s1
.L8008a74c:
/* 0x8008a74c */ sw	$s0,16($sp)
.L8008a750:
/* 0x8008a750 */ jal	0x80049364
.L8008a754:
/* 0x8008a754 */ sw	$s8,20($sp)
.L8008a758:
/* 0x8008a758 */ lui	$t0,0x8002
.L8008a75c:
/* 0x8008a75c */ lw	$t1,60($sp)
.L8008a760:
/* 0x8008a760 */ addiu	$t0,$t0,-6604
.L8008a764:
/* 0x8008a764 */ addu	$v1,$t1,$t0
.L8008a768:
/* 0x8008a768 */ lbu	$v0,0($v1)
.L8008a76c:
/* 0x8008a76c */ lw	$t0,36($sp)
.L8008a770:
/* 0x8008a770 */ srav	$v0,$v0,$s4
.L8008a774:
/* 0x8008a774 */ mult	$v0,$t0
.L8008a778:
/* 0x8008a778 */ lbu	$v0,1($v1)
.L8008a77c:
/* 0x8008a77c */ mflo	$a2
.L8008a780:
/* 0x8008a780 */ srav	$v0,$v0,$s4
.L8008a784:
/* 0x8008a784 */ sll	$zero,$zero,0x0
.L8008a788:
/* 0x8008a788 */ mult	$v0,$t0
.L8008a78c:
/* 0x8008a78c */ lbu	$v0,2($v1)
.L8008a790:
/* 0x8008a790 */ mflo	$a3
.L8008a794:
/* 0x8008a794 */ srav	$v0,$v0,$s4
.L8008a798:
/* 0x8008a798 */ sll	$zero,$zero,0x0
.L8008a79c:
/* 0x8008a79c */ mult	$v0,$t0
.L8008a7a0:
/* 0x8008a7a0 */ addu	$a1,$s5,$zero
.L8008a7a4:
/* 0x8008a7a4 */ addiu	$s2,$s2,1
.L8008a7a8:
/* 0x8008a7a8 */ lw	$a0,116($sp)
.L8008a7ac:
/* 0x8008a7ac */ sra	$a2,$a2,0x7
.L8008a7b0:
/* 0x8008a7b0 */ sra	$a3,$a3,0x7
.L8008a7b4:
/* 0x8008a7b4 */ mflo	$v1
.L8008a7b8:
/* 0x8008a7b8 */ sra	$v0,$v1,0x7
.L8008a7bc:
/* 0x8008a7bc */ jal	0x800490f8
.L8008a7c0:
/* 0x8008a7c0 */ sw	$v0,16($sp)
.L8008a7c4:
/* 0x8008a7c4 */ slti	$v0,$s2,9
.L8008a7c8:
/* 0x8008a7c8 */ bne	$v0,$zero,.L8008a654
.L8008a7cc:
/* 0x8008a7cc */ addiu	$s5,$s5,1
.L8008a7d0:
/* 0x8008a7d0 */ addiu	$s3,$s3,1
.L8008a7d4:
/* 0x8008a7d4 */ slti	$v0,$s3,3
.L8008a7d8:
/* 0x8008a7d8 */ lw	$t0,60($sp)
.L8008a7dc:
/* 0x8008a7dc */ lw	$t1,64($sp)
.L8008a7e0:
/* 0x8008a7e0 */ addiu	$t0,$t0,3
.L8008a7e4:
/* 0x8008a7e4 */ addiu	$t1,$t1,24
.L8008a7e8:
/* 0x8008a7e8 */ sw	$t0,60($sp)
.L8008a7ec:
/* 0x8008a7ec */ bne	$v0,$zero,.L8008a350
.L8008a7f0:
/* 0x8008a7f0 */ sw	$t1,64($sp)
.L8008a7f4:
/* 0x8008a7f4 */ addu	$s2,$zero,$zero
.L8008a7f8:
/* 0x8008a7f8 */ lui	$v0,0x8011
.L8008a7fc:
/* 0x8008a7fc */ addiu	$s0,$v0,27696
.L8008a800:
/* 0x8008a800 */ addiu	$s1,$zero,-301
.L8008a804:
/* 0x8008a804 */ addu	$a1,$s5,$zero
.L8008a808:
/* 0x8008a808 */ lw	$a0,116($sp)
.L8008a80c:
/* 0x8008a80c */ addiu	$v0,$zero,1
.L8008a810:
/* 0x8008a810 */ sw	$v0,16($sp)
.L8008a814:
/* 0x8008a814 */ sw	$v0,20($sp)
.L8008a818:
/* 0x8008a818 */ lh	$a2,2($s0)
.L8008a81c:
/* 0x8008a81c */ addiu	$v0,$zero,-1
.L8008a820:
/* 0x8008a820 */ sw	$v0,28($sp)
.L8008a824:
/* 0x8008a824 */ lh	$a3,4($s0)
.L8008a828:
/* 0x8008a828 */ lh	$v0,10($s0)
.L8008a82c:
/* 0x8008a82c */ addiu	$s2,$s2,1
.L8008a830:
/* 0x8008a830 */ jal	0x80048144
.L8008a834:
/* 0x8008a834 */ sw	$v0,24($sp)
.L8008a838:
/* 0x8008a838 */ lw	$a0,116($sp)
.L8008a83c:
/* 0x8008a83c */ lh	$a2,14($s0)
.L8008a840:
/* 0x8008a840 */ lh	$a3,16($s0)
.L8008a844:
/* 0x8008a844 */ jal	0x80049208
.L8008a848:
/* 0x8008a848 */ addu	$a1,$s5,$zero
.L8008a84c:
/* 0x8008a84c */ addu	$a1,$s5,$zero
.L8008a850:
/* 0x8008a850 */ addu	$a2,$s1,$zero
.L8008a854:
/* 0x8008a854 */ addiu	$a3,$zero,-29
.L8008a858:
/* 0x8008a858 */ lw	$a0,116($sp)
.L8008a85c:
/* 0x8008a85c */ addiu	$v0,$zero,64
.L8008a860:
/* 0x8008a860 */ sw	$v0,16($sp)
.L8008a864:
/* 0x8008a864 */ addiu	$v0,$zero,61
.L8008a868:
/* 0x8008a868 */ jal	0x80049364
.L8008a86c:
/* 0x8008a86c */ sw	$v0,20($sp)
.L8008a870:
/* 0x8008a870 */ addu	$a1,$s5,$zero
.L8008a874:
/* 0x8008a874 */ addu	$a2,$zero,$zero
.L8008a878:
/* 0x8008a878 */ lw	$a0,116($sp)
.L8008a87c:
/* 0x8008a87c */ addu	$a3,$a2,$zero
.L8008a880:
/* 0x8008a880 */ jal	0x800490f8
.L8008a884:
/* 0x8008a884 */ sw	$zero,16($sp)
.L8008a888:
/* 0x8008a888 */ addiu	$s5,$s5,1
.L8008a88c:
/* 0x8008a88c */ slti	$v0,$s2,2
.L8008a890:
/* 0x8008a890 */ bne	$v0,$zero,.L8008a804
.L8008a894:
/* 0x8008a894 */ addiu	$s1,$s1,205
.L8008a898:
/* 0x8008a898 */ addu	$v0,$s5,$zero
.L8008a89c:
/* 0x8008a89c */ lw	$ra,108($sp)
.L8008a8a0:
/* 0x8008a8a0 */ lw	$s8,104($sp)
.L8008a8a4:
/* 0x8008a8a4 */ lw	$s7,100($sp)
.L8008a8a8:
/* 0x8008a8a8 */ lw	$s6,96($sp)
.L8008a8ac:
/* 0x8008a8ac */ lw	$s5,92($sp)
.L8008a8b0:
/* 0x8008a8b0 */ lw	$s4,88($sp)
.L8008a8b4:
/* 0x8008a8b4 */ lw	$s3,84($sp)
.L8008a8b8:
/* 0x8008a8b8 */ lw	$s2,80($sp)
.L8008a8bc:
/* 0x8008a8bc */ lw	$s1,76($sp)
.L8008a8c0:
/* 0x8008a8c0 */ lw	$s0,72($sp)
.L8008a8c4:
/* 0x8008a8c4 */ jr	$ra
.L8008a8c8:
/* 0x8008a8c8 */ addiu	$sp,$sp,112
.size FUN_80089da4, .-FUN_80089da4
