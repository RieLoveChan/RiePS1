.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8d98
.globl FUN_800a8d98
.type FUN_800a8d98, @function
FUN_800a8d98:
.L800a8d98:
/* 0x800a8d98 */ addiu	$sp,$sp,-72
.L800a8d9c:
/* 0x800a8d9c */ sw	$s4,48($sp)
.L800a8da0:
/* 0x800a8da0 */ addu	$s4,$a1,$zero
.L800a8da4:
/* 0x800a8da4 */ sw	$s5,52($sp)
.L800a8da8:
/* 0x800a8da8 */ addu	$s5,$a2,$zero
.L800a8dac:
/* 0x800a8dac */ sw	$s6,56($sp)
.L800a8db0:
/* 0x800a8db0 */ addu	$s6,$a3,$zero
.L800a8db4:
/* 0x800a8db4 */ sw	$s2,40($sp)
.L800a8db8:
/* 0x800a8db8 */ addu	$s2,$a0,$zero
.L800a8dbc:
/* 0x800a8dbc */ sw	$s1,36($sp)
.L800a8dc0:
/* 0x800a8dc0 */ addu	$s1,$zero,$zero
.L800a8dc4:
/* 0x800a8dc4 */ sw	$s7,60($sp)
.L800a8dc8:
/* 0x800a8dc8 */ lw	$s7,88($sp)
.L800a8dcc:
/* 0x800a8dcc */ lui	$v0,0x800e
.L800a8dd0:
/* 0x800a8dd0 */ sw	$s3,44($sp)
.L800a8dd4:
/* 0x800a8dd4 */ addiu	$s3,$v0,9712
.L800a8dd8:
/* 0x800a8dd8 */ sw	$ra,64($sp)
.L800a8ddc:
/* 0x800a8ddc */ sw	$s0,32($sp)
.L800a8de0:
/* 0x800a8de0 */ addu	$v1,$s5,$s1
.L800a8de4:
/* 0x800a8de4 */ lbu	$v0,0($v1)
.L800a8de8:
/* 0x800a8de8 */ sll	$zero,$zero,0x0
.L800a8dec:
/* 0x800a8dec */ beq	$v0,$zero,.L800a8e4c
.L800a8df0:
/* 0x800a8df0 */ addu	$s0,$v0,$zero
.L800a8df4:
/* 0x800a8df4 */ addiu	$s0,$s0,-32
.L800a8df8:
/* 0x800a8df8 */ sll	$s0,$s0,0x3
.L800a8dfc:
/* 0x800a8dfc */ addu	$s0,$s0,$s3
.L800a8e00:
/* 0x800a8e00 */ addiu	$v0,$zero,10
.L800a8e04:
/* 0x800a8e04 */ sll	$a0,$s2,0x10
.L800a8e08:
/* 0x800a8e08 */ lui	$a2,0x800e
.L800a8e0c:
/* 0x800a8e0c */ sra	$a0,$a0,0x10
.L800a8e10:
/* 0x800a8e10 */ addu	$a1,$s4,$zero
.L800a8e14:
/* 0x800a8e14 */ lh	$a3,0($s0)
.L800a8e18:
/* 0x800a8e18 */ lh	$v1,2($s0)
.L800a8e1c:
/* 0x800a8e1c */ addiu	$a2,$a2,9040
.L800a8e20:
/* 0x800a8e20 */ sw	$s7,20($sp)
.L800a8e24:
/* 0x800a8e24 */ sw	$s6,24($sp)
.L800a8e28:
/* 0x800a8e28 */ sw	$v0,28($sp)
.L800a8e2c:
/* 0x800a8e2c */ jal	0x800ac2bc
.L800a8e30:
/* 0x800a8e30 */ sw	$v1,16($sp)
.L800a8e34:
/* 0x800a8e34 */ lw	$v0,4($s0)
.L800a8e38:
/* 0x800a8e38 */ addiu	$s1,$s1,1
.L800a8e3c:
/* 0x800a8e3c */ addu	$s2,$s2,$v0
.L800a8e40:
/* 0x800a8e40 */ slti	$v0,$s1,32
.L800a8e44:
/* 0x800a8e44 */ bne	$v0,$zero,.L800a8de4
.L800a8e48:
/* 0x800a8e48 */ addu	$v1,$s5,$s1
.L800a8e4c:
/* 0x800a8e4c */ lw	$ra,64($sp)
.L800a8e50:
/* 0x800a8e50 */ lw	$s7,60($sp)
.L800a8e54:
/* 0x800a8e54 */ lw	$s6,56($sp)
.L800a8e58:
/* 0x800a8e58 */ lw	$s5,52($sp)
.L800a8e5c:
/* 0x800a8e5c */ lw	$s4,48($sp)
.L800a8e60:
/* 0x800a8e60 */ lw	$s3,44($sp)
.L800a8e64:
/* 0x800a8e64 */ lw	$s2,40($sp)
.L800a8e68:
/* 0x800a8e68 */ lw	$s1,36($sp)
.L800a8e6c:
/* 0x800a8e6c */ lw	$s0,32($sp)
.L800a8e70:
/* 0x800a8e70 */ jr	$ra
.L800a8e74:
/* 0x800a8e74 */ addiu	$sp,$sp,72
.size FUN_800a8d98, .-FUN_800a8d98
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8e78
.globl FUN_800a8e78
.type FUN_800a8e78, @function
FUN_800a8e78:
.L800a8e78:
/* 0x800a8e78 */ addiu	$sp,$sp,-80
.L800a8e7c:
/* 0x800a8e7c */ sw	$s2,48($sp)
.L800a8e80:
/* 0x800a8e80 */ sw	$a0,80($sp)
.L800a8e84:
/* 0x800a8e84 */ addu	$s2,$a0,$zero
.L800a8e88:
/* 0x800a8e88 */ lw	$a0,96($sp)
.L800a8e8c:
/* 0x800a8e8c */ sw	$s3,52($sp)
.L800a8e90:
/* 0x800a8e90 */ addu	$s3,$a2,$zero
.L800a8e94:
/* 0x800a8e94 */ sw	$s8,72($sp)
.L800a8e98:
/* 0x800a8e98 */ addu	$s8,$zero,$zero
.L800a8e9c:
/* 0x800a8e9c */ sw	$s1,44($sp)
.L800a8ea0:
/* 0x800a8ea0 */ addiu	$s1,$zero,1
.L800a8ea4:
/* 0x800a8ea4 */ sw	$s0,40($sp)
.L800a8ea8:
/* 0x800a8ea8 */ addu	$s0,$s8,$zero
.L800a8eac:
/* 0x800a8eac */ sw	$ra,76($sp)
.L800a8eb0:
/* 0x800a8eb0 */ sw	$s7,68($sp)
.L800a8eb4:
/* 0x800a8eb4 */ sw	$s6,64($sp)
.L800a8eb8:
/* 0x800a8eb8 */ sw	$s5,60($sp)
.L800a8ebc:
/* 0x800a8ebc */ sw	$s4,56($sp)
.L800a8ec0:
/* 0x800a8ec0 */ sw	$a1,84($sp)
.L800a8ec4:
/* 0x800a8ec4 */ blez	$a0,.L800a8ee8
.L800a8ec8:
/* 0x800a8ec8 */ sw	$a3,92($sp)
.L800a8ecc:
/* 0x800a8ecc */ sll	$v0,$s1,0x2
.L800a8ed0:
/* 0x800a8ed0 */ addu	$v0,$v0,$s1
.L800a8ed4:
/* 0x800a8ed4 */ sll	$s1,$v0,0x1
.L800a8ed8:
/* 0x800a8ed8 */ addiu	$s0,$s0,1
.L800a8edc:
/* 0x800a8edc */ slt	$v0,$s0,$a0
.L800a8ee0:
/* 0x800a8ee0 */ bne	$v0,$zero,.L800a8ed0
.L800a8ee4:
/* 0x800a8ee4 */ sll	$v0,$s1,0x2
.L800a8ee8:
/* 0x800a8ee8 */ div	$zero,$s3,$s1
.L800a8eec:
/* 0x800a8eec */ mflo	$v0
.L800a8ef0:
/* 0x800a8ef0 */ addiu	$s1,$zero,1
.L800a8ef4:
/* 0x800a8ef4 */ addu	$s0,$zero,$zero
.L800a8ef8:
/* 0x800a8ef8 */ lw	$t0,92($sp)
.L800a8efc:
/* 0x800a8efc */ sltu	$s7,$s0,$a0
.L800a8f00:
/* 0x800a8f00 */ addu	$s5,$t0,$a0
.L800a8f04:
/* 0x800a8f04 */ addiu	$v1,$s5,-1
.L800a8f08:
/* 0x800a8f08 */ slt	$v0,$s0,$v0
.L800a8f0c:
/* 0x800a8f0c */ blez	$v1,.L800a8f30
.L800a8f10:
/* 0x800a8f10 */ sw	$v0,32($sp)
.L800a8f14:
/* 0x800a8f14 */ sll	$v0,$s1,0x2
.L800a8f18:
/* 0x800a8f18 */ addu	$v0,$v0,$s1
.L800a8f1c:
/* 0x800a8f1c */ sll	$s1,$v0,0x1
.L800a8f20:
/* 0x800a8f20 */ addiu	$s0,$s0,1
.L800a8f24:
/* 0x800a8f24 */ slt	$v0,$s0,$v1
.L800a8f28:
/* 0x800a8f28 */ bne	$v0,$zero,.L800a8f18
.L800a8f2c:
/* 0x800a8f2c */ sll	$v0,$s1,0x2
.L800a8f30:
/* 0x800a8f30 */ addu	$v0,$s5,$s7
.L800a8f34:
/* 0x800a8f34 */ blez	$v0,.L800a9044
.L800a8f38:
/* 0x800a8f38 */ addu	$s0,$zero,$zero
.L800a8f3c:
/* 0x800a8f3c */ lw	$t0,84($sp)
.L800a8f40:
/* 0x800a8f40 */ sll	$zero,$zero,0x0
.L800a8f44:
/* 0x800a8f44 */ addiu	$t0,$t0,8
.L800a8f48:
/* 0x800a8f48 */ sw	$t0,36($sp)
.L800a8f4c:
/* 0x800a8f4c */ lw	$t0,104($sp)
.L800a8f50:
/* 0x800a8f50 */ addiu	$s6,$zero,10
.L800a8f54:
/* 0x800a8f54 */ srl	$v0,$t0,0x1f
.L800a8f58:
/* 0x800a8f58 */ addu	$v0,$t0,$v0
.L800a8f5c:
/* 0x800a8f5c */ sra	$s4,$v0,0x1
.L800a8f60:
/* 0x800a8f60 */ lw	$t0,92($sp)
.L800a8f64:
/* 0x800a8f64 */ sll	$zero,$zero,0x0
.L800a8f68:
/* 0x800a8f68 */ bne	$s0,$t0,.L800a8fc0
.L800a8f6c:
/* 0x800a8f6c */ lui	$v0,0x6666
.L800a8f70:
/* 0x800a8f70 */ lw	$t0,100($sp)
.L800a8f74:
/* 0x800a8f74 */ sll	$zero,$zero,0x0
.L800a8f78:
/* 0x800a8f78 */ sw	$t0,20($sp)
.L800a8f7c:
/* 0x800a8f7c */ lw	$t0,104($sp)
.L800a8f80:
/* 0x800a8f80 */ sll	$zero,$zero,0x0
.L800a8f84:
/* 0x800a8f84 */ sw	$t0,24($sp)
.L800a8f88:
/* 0x800a8f88 */ lw	$t0,32($sp)
.L800a8f8c:
/* 0x800a8f8c */ addiu	$s2,$s2,-6
.L800a8f90:
/* 0x800a8f90 */ bne	$t0,$zero,.L800a8f9c
.L800a8f94:
/* 0x800a8f94 */ sw	$s6,16($sp)
.L800a8f98:
/* 0x800a8f98 */ sw	$s4,24($sp)
.L800a8f9c:
/* 0x800a8f9c */ addu	$a0,$s2,$zero
.L800a8fa0:
/* 0x800a8fa0 */ lui	$a2,0x800e
.L800a8fa4:
/* 0x800a8fa4 */ addiu	$a2,$a2,9064
.L800a8fa8:
/* 0x800a8fa8 */ lw	$a1,36($sp)
.L800a8fac:
/* 0x800a8fac */ addu	$a3,$zero,$zero
.L800a8fb0:
/* 0x800a8fb0 */ jal	0x800ac2bc
.L800a8fb4:
/* 0x800a8fb4 */ sw	$s6,28($sp)
.L800a8fb8:
/* 0x800a8fb8 */ j	.L800a9030
.L800a8fbc:
/* 0x800a8fbc */ addiu	$s2,$s2,16
.L800a8fc0:
/* 0x800a8fc0 */ div	$zero,$s3,$s1
.L800a8fc4:
/* 0x800a8fc4 */ mflo	$a0
.L800a8fc8:
/* 0x800a8fc8 */ mfhi	$s3
.L800a8fcc:
/* 0x800a8fcc */ ori	$v0,$v0,0x6667
.L800a8fd0:
/* 0x800a8fd0 */ sll	$zero,$zero,0x0
.L800a8fd4:
/* 0x800a8fd4 */ mult	$s1,$v0
.L800a8fd8:
/* 0x800a8fd8 */ sra	$v0,$s1,0x1f
.L800a8fdc:
/* 0x800a8fdc */ mfhi	$v1
.L800a8fe0:
/* 0x800a8fe0 */ sra	$v1,$v1,0x2
.L800a8fe4:
/* 0x800a8fe4 */ blez	$a0,.L800a8ff0
.L800a8fe8:
/* 0x800a8fe8 */ subu	$s1,$v1,$v0
.L800a8fec:
/* 0x800a8fec */ addiu	$s8,$zero,1
.L800a8ff0:
/* 0x800a8ff0 */ lw	$t0,100($sp)
.L800a8ff4:
/* 0x800a8ff4 */ sll	$zero,$zero,0x0
.L800a8ff8:
/* 0x800a8ff8 */ sw	$t0,20($sp)
.L800a8ffc:
/* 0x800a8ffc */ lw	$t0,104($sp)
.L800a9000:
/* 0x800a9000 */ sw	$a0,16($sp)
.L800a9004:
/* 0x800a9004 */ bne	$s8,$zero,.L800a9010
.L800a9008:
/* 0x800a9008 */ sw	$t0,24($sp)
.L800a900c:
/* 0x800a900c */ sw	$s4,24($sp)
.L800a9010:
/* 0x800a9010 */ addu	$a0,$s2,$zero
.L800a9014:
/* 0x800a9014 */ lui	$a2,0x800e
.L800a9018:
/* 0x800a9018 */ addiu	$a2,$a2,9064
.L800a901c:
/* 0x800a901c */ lw	$a1,84($sp)
.L800a9020:
/* 0x800a9020 */ addu	$a3,$zero,$zero
.L800a9024:
/* 0x800a9024 */ jal	0x800ac2bc
.L800a9028:
/* 0x800a9028 */ sw	$s6,28($sp)
.L800a902c:
/* 0x800a902c */ addiu	$s2,$s2,24
.L800a9030:
/* 0x800a9030 */ addiu	$s0,$s0,1
.L800a9034:
/* 0x800a9034 */ addu	$v0,$s5,$s7
.L800a9038:
/* 0x800a9038 */ slt	$v0,$s0,$v0
.L800a903c:
/* 0x800a903c */ bne	$v0,$zero,.L800a8f60
.L800a9040:
/* 0x800a9040 */ sll	$zero,$zero,0x0
.L800a9044:
/* 0x800a9044 */ lw	$t0,80($sp)
.L800a9048:
/* 0x800a9048 */ lw	$ra,76($sp)
.L800a904c:
/* 0x800a904c */ lw	$s8,72($sp)
.L800a9050:
/* 0x800a9050 */ lw	$s7,68($sp)
.L800a9054:
/* 0x800a9054 */ lw	$s6,64($sp)
.L800a9058:
/* 0x800a9058 */ lw	$s5,60($sp)
.L800a905c:
/* 0x800a905c */ lw	$s4,56($sp)
.L800a9060:
/* 0x800a9060 */ lw	$s3,52($sp)
.L800a9064:
/* 0x800a9064 */ lw	$s1,44($sp)
.L800a9068:
/* 0x800a9068 */ lw	$s0,40($sp)
.L800a906c:
/* 0x800a906c */ subu	$v0,$s2,$t0
.L800a9070:
/* 0x800a9070 */ lw	$s2,48($sp)
.L800a9074:
/* 0x800a9074 */ jr	$ra
.L800a9078:
/* 0x800a9078 */ addiu	$sp,$sp,80
.size FUN_800a8e78, .-FUN_800a8e78
