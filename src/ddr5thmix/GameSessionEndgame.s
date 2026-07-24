# DDR 5th Mix game-session states 8-13 callbacks.
# Semantic MIPS reconstruction from the hash-gated SLPM_868.97 revision.
# States: 8 (RESULT), 9 (GAME_OVER), 10 (ENDING), 11 (PRE_END),
#         12 (LINK END), 13 (NAME ENTRY).

.set noreorder
.set noat

.section .text.FUN_80070bf8, "ax", @progbits
.globl FUN_80070bf8
.type FUN_80070bf8, @function
FUN_80070bf8:
.L80070bf8:
    addiu	$sp,$sp,-0x18
.L80070bfc:
    sw	$s0,0x10($sp)
.L80070c00:
    addu	$s0,$a0,$zero
.L80070c04:
    lui	$v0,0x800f
.L80070c08:
    lui	$a1,0x800f
.L80070c0c:
    sw	$zero,0x28fc($v0)
.L80070c10:
    li	$v0,0x6
.L80070c14:
    lui	$a0,0x8011
.L80070c18:
    addiu	$a0,$a0,0x6aa0
.L80070c1c:
    li	$v1,-0xf1
.L80070c20:
    sw	$ra,0x14($sp)
.L80070c24:
    sh	$v0,0x2908($a1)
.L80070c28:
    lw	$v0,0x188($a0)
.L80070c2c:
    addiu	$a1,$a1,0x2908
.L80070c30:
    and	$v0,$v0,$v1
.L80070c34:
    lh	$v1,0x10($a1)
.L80070c38:
    ori	$v0,$v0,0x20
.L80070c3c:
    bne	$v1,$zero,.L80070c4c
.L80070c40:
    sw	$v0,0x188($a0)
.L80070c44:
    jal	FUN_800a1724
.L80070c48:
    nop
.L80070c4c:
    lui	$v1,0x8011
.L80070c50:
    li	$v0,0x1
.L80070c54:
    addiu	$a0,$s0,0x8
.L80070c58:
    jal	FUN_80073d60
.L80070c5c:
    sw	$v0,0x1ea4($v1)
.L80070c60:
    lw	$ra,0x14($sp)
.L80070c64:
    lw	$s0,0x10($sp)
.L80070c68:
    jr	$ra
.L80070c6c:
    addiu	$sp,$sp,0x18
.size FUN_80070bf8, .-FUN_80070bf8

.section .text.FUN_80070c70, "ax", @progbits
.globl FUN_80070c70
.type FUN_80070c70, @function
FUN_80070c70:
.L80070c70:
    addiu	$sp,$sp,-0x18
.L80070c74:
    sw	$s0,0x10($sp)
.L80070c78:
    sw	$ra,0x14($sp)
.L80070c7c:
    jal	FUN_800a0094
.L80070c80:
    addu	$s0,$a0,$zero
.L80070c84:
    bne	$v0,$zero,.L80070ca0
.L80070c88:
    lui	$v1,0x800f
.L80070c8c:
    lui	$v0,0x800f
.L80070c90:
    lb	$v0,0x291f($v0)
.L80070c94:
    nop
.L80070c98:
    beq	$v0,$zero,.L80070cb4
.L80070c9c:
    nop
.L80070ca0:
    addiu	$v1,$v1,0x2888
.L80070ca4:
    lw	$v0,0x74($v1)
.L80070ca8:
    nop
.L80070cac:
    addiu	$v0,$v0,-0x1
.L80070cb0:
    sw	$v0,0x74($v1)
.L80070cb4:
    jal	FUN_80073554
.L80070cb8:
    addiu	$a0,$s0,0x8
.L80070cbc:
    li	$v1,0x4
.L80070cc0:
    bne	$v0,$v1,.L80070ce8
.L80070cc4:
    lui	$v0,0x800f
.L80070cc8:
    addiu	$a0,$v0,0x2908
.L80070ccc:
    lh	$v0,0xe($a0)
.L80070cd0:
    lhu	$v1,0xe($a0)
.L80070cd4:
    bltz	$v0,.L80070cf4
.L80070cd8:
    li	$v0,0xb
.L80070cdc:
    sh	$v1,0xc($a0)
.L80070ce0:
    j	.L80070cf4
.L80070ce4:
    li	$v0,0x1
.L80070ce8:
    jal	FUN_8006e43c
.L80070cec:
    nop
.L80070cf0:
    li	$v0,0x8
.L80070cf4:
    lw	$ra,0x14($sp)
.L80070cf8:
    lw	$s0,0x10($sp)
.L80070cfc:
    jr	$ra
.L80070d00:
    addiu	$sp,$sp,0x18
.size FUN_80070c70, .-FUN_80070c70

.section .text.FUN_80070d04, "ax", @progbits
.globl FUN_80070d04
.type FUN_80070d04, @function
FUN_80070d04:
.L80070d04:
    addiu	$sp,$sp,-0x18
.L80070d08:
    sw	$s0,0x10($sp)
.L80070d0c:
    addu	$s0,$a0,$zero
.L80070d10:
    lui	$v0,0x8011
.L80070d14:
    li	$a0,0x1
.L80070d18:
    sw	$ra,0x14($sp)
.L80070d1c:
    jal	FUN_8002a8b0
.L80070d20:
    sw	$zero,0x1ea4($v0)
.L80070d24:
    jal	FUN_80073df4
.L80070d28:
    addiu	$a0,$s0,0x8
.L80070d2c:
    lw	$ra,0x14($sp)
.L80070d30:
    lw	$s0,0x10($sp)
.L80070d34:
    jr	$ra
.L80070d38:
    addiu	$sp,$sp,0x18
.size FUN_80070d04, .-FUN_80070d04

.section .text.FUN_80070d3c, "ax", @progbits
.globl FUN_80070d3c
.type FUN_80070d3c, @function
FUN_80070d3c:
.L80070d3c:
    addiu	$sp,$sp,-0x18
.L80070d40:
    lui	$v0,0x800f
.L80070d44:
    lui	$v1,0x800f
.L80070d48:
    sw	$zero,0x28fc($v0)
.L80070d4c:
    li	$v0,0x19
.L80070d50:
    sw	$ra,0x10($sp)
.L80070d54:
    jal	FUN_8005f16c
.L80070d58:
    sh	$v0,0x2908($v1)
.L80070d5c:
    lw	$ra,0x10($sp)
.L80070d60:
    nop
.L80070d64:
    jr	$ra
.L80070d68:
    addiu	$sp,$sp,0x18
.size FUN_80070d3c, .-FUN_80070d3c

.section .text.FUN_8006fba4, "ax", @progbits
.globl FUN_8006fba4
.type FUN_8006fba4, @function
FUN_8006fba4:
.L8006fba4:
    addiu	$sp,$sp,-0x18
.L8006fba8:
    lui	$a0,0x8011
.L8006fbac:
    addiu	$a0,$a0,0x6aa0
.L8006fbb0:
    sw	$ra,0x14($sp)
.L8006fbb4:
    sw	$s0,0x10($sp)
.L8006fbb8:
    lw	$v0,0x188($a0)
.L8006fbbc:
    li	$v1,-0xf1
.L8006fbc0:
    and	$v0,$v0,$v1
.L8006fbc4:
    lui	$v1,0x800f
.L8006fbc8:
    lb	$v1,0x291f($v1)
.L8006fbcc:
    ori	$v0,$v0,0x20
.L8006fbd0:
    beq	$v1,$zero,.L8006fc08
.L8006fbd4:
    sw	$v0,0x188($a0)
.L8006fbd8:
    lui	$a0,0x8888
.L8006fbdc:
    lui	$v0,0x800f
.L8006fbe0:
    lw	$v1,0x28fc($v0)
.L8006fbe4:
    ori	$a0,$a0,0x8889
.L8006fbe8:
    sll	$v0,$v1,0x7
.L8006fbec:
    subu	$v0,$v0,$v1
.L8006fbf0:
    sll	$v0,$v0,0x1
.L8006fbf4:
    mult	$v0,$a0
.L8006fbf8:
    mfhi	$a1
.L8006fbfc:
    addu	$v1,$a1,$v0
.L8006fc00:
    j	.L8006fc34
.L8006fc04:
    sra	$v1,$v1,0x4
.L8006fc08:
    lui	$a0,0x8888
.L8006fc0c:
    lui	$v0,0x800f
.L8006fc10:
    lw	$v1,0x28fc($v0)
.L8006fc14:
    ori	$a0,$a0,0x8889
.L8006fc18:
    sll	$v0,$v1,0x7
.L8006fc1c:
    subu	$v0,$v0,$v1
.L8006fc20:
    sll	$v0,$v0,0x1
.L8006fc24:
    mult	$v0,$a0
.L8006fc28:
    mfhi	$a1
.L8006fc2c:
    addu	$v1,$a1,$v0
.L8006fc30:
    sra	$v1,$v1,0x5
.L8006fc34:
    sra	$v0,$v0,0x1f
.L8006fc38:
    subu	$v1,$v1,$v0
.L8006fc3c:
    li	$v0,0xfe
.L8006fc40:
    subu	$s0,$v0,$v1
.L8006fc44:
    bgez	$s0,.L8006fc5c
.L8006fc48:
    nop
.L8006fc4c:
    jal	FUN_8007f07c
.L8006fc50:
    nop
.L8006fc54:
    j	.L8006fc68
.L8006fc58:
    lui	$v0,0x800f
.L8006fc5c:
    jal	FUN_8002a8b0
.L8006fc60:
    andi	$a0,$s0,0xff
.L8006fc64:
    lui	$v0,0x800f
.L8006fc68:
    lb	$v0,0x291f($v0)
.L8006fc6c:
    nop
.L8006fc70:
    beq	$v0,$zero,.L8006fca0
.L8006fc74:
    nop
.L8006fc78:
    jal	FUN_8005e6a8
.L8006fc7c:
    li	$a0,0x5f
.L8006fc80:
    lui	$v0,0x800f
.L8006fc84:
    lw	$v1,0x28fc($v0)
.L8006fc88:
    nop
.L8006fc8c:
    slti	$v1,$v1,0x41
.L8006fc90:
    beq	$v1,$zero,.L8006fcf4
.L8006fc94:
    li	$v0,0xe
.L8006fc98:
    j	.L8006fcf4
.L8006fc9c:
    li	$v0,0x9
.L8006fca0:
    jal	FUN_8005f18c
.L8006fca4:
    nop
.L8006fca8:
    lui	$v0,0x800f
.L8006fcac:
    lw	$v0,0x28fc($v0)
.L8006fcb0:
    nop
.L8006fcb4:
    slti	$v0,$v0,0x4
.L8006fcb8:
    bne	$v0,$zero,.L8006fcdc
.L8006fcbc:
    lui	$v0,0x800f
.L8006fcc0:
    jal	FUN_8006e698
.L8006fcc4:
    nop
.L8006fcc8:
    beq	$v0,$zero,.L8006fcd8
.L8006fccc:
    slti	$v0,$s0,-0x100
.L8006fcd0:
    bne	$v0,$zero,.L8006fcf4
.L8006fcd4:
    li	$v0,0xe
.L8006fcd8:
    lui	$v0,0x800f
.L8006fcdc:
    lw	$v0,0x28fc($v0)
.L8006fce0:
    nop
.L8006fce4:
    slti	$v0,$v0,0xf1
.L8006fce8:
    bne	$v0,$zero,.L8006fcf4
.L8006fcec:
    li	$v0,0x9
.L8006fcf0:
    li	$v0,0xe
.L8006fcf4:
    lw	$ra,0x14($sp)
.L8006fcf8:
    lw	$s0,0x10($sp)
.L8006fcfc:
    jr	$ra
.L8006fd00:
    addiu	$sp,$sp,0x18
.size FUN_8006fba4, .-FUN_8006fba4

.section .text.FUN_80070d6c, "ax", @progbits
.globl FUN_80070d6c
.type FUN_80070d6c, @function
FUN_80070d6c:
.L80070d6c:
    addiu	$sp,$sp,-0x18
.L80070d70:
    sw	$ra,0x10($sp)
.L80070d74:
    jal	FUN_8002a8b0
.L80070d78:
    li	$a0,0xfe
.L80070d7c:
    jal	FUN_8005f230
.L80070d80:
    nop
.L80070d84:
    jal	FUN_8002313c
.L80070d88:
    nop
.L80070d8c:
    lw	$ra,0x10($sp)
.L80070d90:
    nop
.L80070d94:
    jr	$ra
.L80070d98:
    addiu	$sp,$sp,0x18
.size FUN_80070d6c, .-FUN_80070d6c

.section .text.FUN_80070d9c, "ax", @progbits
.globl FUN_80070d9c
.type FUN_80070d9c, @function
FUN_80070d9c:
.L80070d9c:
    addiu	$sp,$sp,-0x20
.L80070da0:
    sw	$s1,0x14($sp)
.L80070da4:
    addu	$s1,$a0,$zero
.L80070da8:
    li	$a0,0x1
.L80070dac:
    lui	$a1,0x8011
.L80070db0:
    addiu	$a1,$a1,0x6aa0
.L80070db4:
    sw	$ra,0x18($sp)
.L80070db8:
    sw	$s0,0x10($sp)
.L80070dbc:
    lw	$v0,0x188($a1)
.L80070dc0:
    li	$v1,-0xf1
.L80070dc4:
    and	$v0,$v0,$v1
.L80070dc8:
    ori	$v0,$v0,0x20
.L80070dcc:
    jal	FUN_8002a8b0
.L80070dd0:
    sw	$v0,0x188($a1)
.L80070dd4:
    lui	$v0,0x800f
.L80070dd8:
    lui	$v1,0x800f
.L80070ddc:
    sw	$zero,0x28fc($v0)
.L80070de0:
    li	$v0,0x15
.L80070de4:
    lui	$s0,0x8011
.L80070de8:
    sh	$v0,0x2908($v1)
.L80070dec:
    jal	FUN_80073e34
.L80070df0:
    sw	$zero,0x1ea8($s0)
.L80070df4:
    li	$v1,0x2
.L80070df8:
    bne	$v0,$v1,.L80070e10
.L80070dfc:
    li	$v0,0x1
.L80070e00:
    jal	FUN_800a0f7c
.L80070e04:
    sw	$v0,0x1ea8($s0)
.L80070e08:
    j	.L80070e18
.L80070e0c:
    nop
.L80070e10:
    jal	FUN_80075094
.L80070e14:
    addiu	$a0,$s1,0x8
.L80070e18:
    lw	$ra,0x18($sp)
.L80070e1c:
    lw	$s1,0x14($sp)
.L80070e20:
    lw	$s0,0x10($sp)
.L80070e24:
    jr	$ra
.L80070e28:
    addiu	$sp,$sp,0x20
.size FUN_80070d9c, .-FUN_80070d9c

.section .text.FUN_80070e2c, "ax", @progbits
.globl FUN_80070e2c
.type FUN_80070e2c, @function
FUN_80070e2c:
.L80070e2c:
    addiu	$sp,$sp,-0x18
.L80070e30:
    sw	$s0,0x10($sp)
.L80070e34:
    addu	$s0,$a0,$zero
.L80070e38:
    lui	$v0,0x8011
.L80070e3c:
    lw	$v1,0x1ea8($v0)
.L80070e40:
    li	$v0,0x1
.L80070e44:
    bne	$v1,$v0,.L80070e64
.L80070e48:
    sw	$ra,0x14($sp)
.L80070e4c:
    jal	FUN_800a0fb0
.L80070e50:
    nop
.L80070e54:
    bgtz	$v0,.L80070e98
.L80070e58:
    li	$v0,0xa
.L80070e5c:
    j	.L80070eac
.L80070e60:
    nop
.L80070e64:
    jal	FUN_80073e34
.L80070e68:
    nop
.L80070e6c:
    li	$v1,0x2
.L80070e70:
    bne	$v0,$v1,.L80070e7c
.L80070e74:
    li	$a0,0x3d
.L80070e78:
    li	$a0,0x35
.L80070e7c:
    jal	FUN_8007f218
.L80070e80:
    nop
.L80070e84:
    jal	FUN_80075184
.L80070e88:
    addiu	$a0,$s0,0x8
.L80070e8c:
    li	$v1,0x4
.L80070e90:
    bne	$v0,$v1,.L80070eac
.L80070e94:
    li	$v0,0xa
.L80070e98:
    jal	FUN_8002a8b0
.L80070e9c:
    li	$a0,0x1
.L80070ea0:
    jal	FUN_8007f07c
.L80070ea4:
    nop
.L80070ea8:
    li	$v0,0xe
.L80070eac:
    lw	$ra,0x14($sp)
.L80070eb0:
    lw	$s0,0x10($sp)
.L80070eb4:
    jr	$ra
.L80070eb8:
    addiu	$sp,$sp,0x18
.size FUN_80070e2c, .-FUN_80070e2c

.section .text.FUN_80070ebc, "ax", @progbits
.globl FUN_80070ebc
.type FUN_80070ebc, @function
FUN_80070ebc:
.L80070ebc:
    addiu	$sp,$sp,-0x18
.L80070ec0:
    sw	$s0,0x10($sp)
.L80070ec4:
    addu	$s0,$a0,$zero
.L80070ec8:
    lui	$v0,0x8011
.L80070ecc:
    lw	$v1,0x1ea8($v0)
.L80070ed0:
    li	$v0,0x1
.L80070ed4:
    beq	$v1,$v0,.L80070eec
.L80070ed8:
    sw	$ra,0x14($sp)
.L80070edc:
    jal	FUN_8007f07c
.L80070ee0:
    nop
.L80070ee4:
    jal	FUN_800751c8
.L80070ee8:
    addiu	$a0,$s0,0x8
.L80070eec:
    jal	FUN_8002313c
.L80070ef0:
    nop
.L80070ef4:
    lw	$ra,0x14($sp)
.L80070ef8:
    lw	$s0,0x10($sp)
.L80070efc:
    jr	$ra
.L80070f00:
    addiu	$sp,$sp,0x18
.size FUN_80070ebc, .-FUN_80070ebc

.section .text.FUN_80070f04, "ax", @progbits
.globl FUN_80070f04
.type FUN_80070f04, @function
FUN_80070f04:
.L80070f04:
    addiu	$sp,$sp,-0x18
.L80070f08:
    lui	$v0,0x800f
.L80070f0c:
    lui	$v1,0x800f
.L80070f10:
    sw	$zero,0x28fc($v0)
.L80070f14:
    li	$v0,0x14
.L80070f18:
    sw	$ra,0x10($sp)
.L80070f1c:
    jal	FUN_8005f10c
.L80070f20:
    sh	$v0,0x2908($v1)
.L80070f24:
    jal	FUN_8002a8b0
.L80070f28:
    nop
.L80070f2c:
    beq	$v0,$zero,.L80070f3c
.L80070f30:
    nop
.L80070f34:
    jal	FUN_8007f218
.L80070f38:
    li	$a0,0x51
.L80070f3c:
    jal	FUN_8002a8b0
.L80070f40:
    nop
.L80070f44:
    lw	$ra,0x10($sp)
.L80070f48:
    nop
.L80070f4c:
    jr	$ra
.L80070f50:
    addiu	$sp,$sp,0x18
.size FUN_80070f04, .-FUN_80070f04

.section .text.FUN_80070f54, "ax", @progbits
.globl FUN_80070f54
.type FUN_80070f54, @function
FUN_80070f54:
.L80070f54:
    addiu	$sp,$sp,-0x18
.L80070f58:
    lui	$v0,0x800f
.L80070f5c:
    addiu	$a1,$v0,0x2888
.L80070f60:
    sw	$ra,0x10($sp)
.L80070f64:
    lw	$v1,0x74($a1)
.L80070f68:
    li	$v0,0x1
.L80070f6c:
    bne	$v1,$v0,.L80070f8c
.L80070f70:
    lui	$v0,0x8011
.L80070f74:
    addiu	$v0,$v0,0x6aa0
.L80070f78:
    lw	$v1,0x188($v0)
.L80070f7c:
    li	$a0,-0xf1
.L80070f80:
    and	$v1,$v1,$a0
.L80070f84:
    ori	$v1,$v1,0x20
.L80070f88:
    sw	$v1,0x188($v0)
.L80070f8c:
    lw	$v0,0x74($a1)
.L80070f90:
    nop
.L80070f94:
    slti	$v0,$v0,0x2
.L80070f98:
    bne	$v0,$zero,.L80070fc0
.L80070f9c:
    lui	$v0,0x800f
.L80070fa0:
    lui	$v0,0x800f
.L80070fa4:
    lb	$v0,0x291f($v0)
.L80070fa8:
    nop
.L80070fac:
    beq	$v0,$zero,.L80070fc0
.L80070fb0:
    lui	$v0,0x800f
.L80070fb4:
    jal	FUN_80061e80
.L80070fb8:
    nop
.L80070fbc:
    lui	$v0,0x800f
.L80070fc0:
    lw	$v0,0x28fc($v0)
.L80070fc4:
    nop
.L80070fc8:
    slti	$v0,$v0,0x4
.L80070fcc:
    bne	$v0,$zero,.L80070ff4
.L80070fd0:
    li	$v0,0xb
.L80070fd4:
    lui	$v0,0x800f
.L80070fd8:
    lb	$v0,0x291f($v0)
.L80070fdc:
    nop
.L80070fe0:
    beq	$v0,$zero,.L80070ff4
.L80070fe4:
    li	$v0,0xc
.L80070fe8:
    jal	FUN_800702f4
.L80070fec:
    nop
.L80070ff0:
    li	$v0,0x1
.L80070ff4:
    lw	$ra,0x10($sp)
.L80070ff8:
    nop
.L80070ffc:
    jr	$ra
.L80071000:
    addiu	$sp,$sp,0x18
.size FUN_80070f54, .-FUN_80070f54

.section .text.FUN_80071004, "ax", @progbits
.globl FUN_80071004
.type FUN_80071004, @function
FUN_80071004:
.L80071004:
    addiu	$sp,$sp,-0x18
.L80071008:
    sw	$ra,0x10($sp)
.L8007100c:
    jal	FUN_8005f14c
.L80071010:
    nop
.L80071014:
    jal	FUN_8002a8b0
.L80071018:
    nop
.L8007101c:
    lw	$ra,0x10($sp)
.L80071020:
    nop
.L80071024:
    jr	$ra
.L80071028:
    addiu	$sp,$sp,0x18
.size FUN_80071004, .-FUN_80071004

.section .text.FUN_8007102c, "ax", @progbits
.globl FUN_8007102c
.type FUN_8007102c, @function
FUN_8007102c:
.L8007102c:
    addiu	$sp,$sp,-0x18
.L80071030:
    lui	$v0,0x800f
.L80071034:
    lui	$v1,0x800f
.L80071038:
    sw	$zero,0x28fc($v0)
.L8007103c:
    li	$v0,0x18
.L80071040:
    lui	$a0,0x8011
.L80071044:
    addiu	$a0,$a0,0x6aa0
.L80071048:
    sw	$ra,0x10($sp)
.L8007104c:
    sh	$v0,0x2908($v1)
.L80071050:
    lw	$v0,0x188($a0)
.L80071054:
    li	$v1,-0xf1
.L80071058:
    and	$v0,$v0,$v1
.L8007105c:
    ori	$v0,$v0,0x20
.L80071060:
    jal	FUN_8005f10c
.L80071064:
    sw	$v0,0x188($a0)
.L80071068:
    li	$a0,0xd
.L8007106c:
    jal	FUN_8007b778
.L80071070:
    addu	$a1,$zero,$zero
.L80071074:
    lw	$ra,0x10($sp)
.L80071078:
    nop
.L8007107c:
    jr	$ra
.L80071080:
    addiu	$sp,$sp,0x18
.size FUN_8007102c, .-FUN_8007102c

.section .text.FUN_80071084, "ax", @progbits
.globl FUN_80071084
.type FUN_80071084, @function
FUN_80071084:
.L80071084:
    addiu	$sp,$sp,-0x18
.L80071088:
    sw	$ra,0x10($sp)
.L8007108c:
    jal	FUN_8002a8b0
.L80071090:
    nop
.L80071094:
    jal	FUN_8005f12c
.L80071098:
    nop
.L8007109c:
    lui	$a0,0x8011
.L800710a0:
    lui	$v0,0x800f
.L800710a4:
    addiu	$a1,$v0,0x2908
.L800710a8:
    lb	$v1,0xb($a1)
.L800710ac:
    li	$v0,0x1
.L800710b0:
    bne	$v1,$zero,.L800710e4
.L800710b4:
    sb	$v0,0x6c25($a0)
.L800710b8:
    lb	$v0,0x17($a1)
.L800710bc:
    nop
.L800710c0:
    bne	$v0,$zero,.L800710e4
.L800710c4:
    nop
.L800710c8:
    jal	FUN_80093e44
.L800710cc:
    nop
.L800710d0:
    addu	$v1,$v0,$zero
.L800710d4:
    bne	$v1,$zero,.L800710e8
.L800710d8:
    li	$v0,0xd
.L800710dc:
    j	.L800710e8
.L800710e0:
    li	$v0,0xa
.L800710e4:
    li	$v0,0x9
.L800710e8:
    lw	$ra,0x10($sp)
.L800710ec:
    nop
.L800710f0:
    jr	$ra
.L800710f4:
    addiu	$sp,$sp,0x18
.size FUN_80071084, .-FUN_80071084

.section .text.FUN_800710f8, "ax", @progbits
.globl FUN_800710f8
.type FUN_800710f8, @function
FUN_800710f8:
.L800710f8:
    addiu	$sp,$sp,-0x18
.L800710fc:
    sw	$ra,0x10($sp)
.L80071100:
    jal	FUN_8005f14c
.L80071104:
    nop
.L80071108:
    lw	$ra,0x10($sp)
.L8007110c:
    nop
.L80071110:
    jr	$ra
.L80071114:
    addiu	$sp,$sp,0x18
.size FUN_800710f8, .-FUN_800710f8

.section .text.FUN_80071118, "ax", @progbits
.globl FUN_80071118
.type FUN_80071118, @function
FUN_80071118:
.L80071118:
    addiu	$sp,$sp,-0x18
.L8007111c:
    lui	$v0,0x800f
.L80071120:
    lui	$v1,0x800f
.L80071124:
    sw	$zero,0x28fc($v0)
.L80071128:
    li	$v0,0x13
.L8007112c:
    lui	$a1,0x8011
.L80071130:
    addiu	$a1,$a1,0x6aa0
.L80071134:
    sh	$v0,0x2908($v1)
.L80071138:
    li	$v1,-0xf1
.L8007113c:
    sw	$ra,0x10($sp)
.L80071140:
    lw	$v0,0x188($a1)
.L80071144:
    addiu	$a0,$a0,0x8
.L80071148:
    and	$v0,$v0,$v1
.L8007114c:
    ori	$v0,$v0,0x20
.L80071150:
    jal	FUN_80093f20
.L80071154:
    sw	$v0,0x188($a1)
.L80071158:
    lw	$ra,0x10($sp)
.L8007115c:
    nop
.L80071160:
    jr	$ra
.L80071164:
    addiu	$sp,$sp,0x18
.size FUN_80071118, .-FUN_80071118

.section .text.FUN_80071168, "ax", @progbits
.globl FUN_80071168
.type FUN_80071168, @function
FUN_80071168:
.L80071168:
    addiu	$sp,$sp,-0x18
.L8007116c:
    sw	$s0,0x10($sp)
.L80071170:
    addu	$s0,$a0,$zero
.L80071174:
    sw	$ra,0x14($sp)
.L80071178:
    jal	FUN_8007f218
.L8007117c:
    li	$a0,0x51
.L80071180:
    jal	FUN_800a0094
.L80071184:
    nop
.L80071188:
    beq	$v0,$zero,.L800711b4
.L8007118c:
    lui	$v0,0x800f
.L80071190:
    addiu	$a0,$v0,0x2888
.L80071194:
    lw	$v1,0x74($a0)
.L80071198:
    nop
.L8007119c:
    slti	$v0,$v1,0x3d
.L800711a0:
    bne	$v0,$zero,.L800711b4
.L800711a4:
    slti	$v0,$v1,0x4b0
.L800711a8:
    beq	$v0,$zero,.L800711b4
.L800711ac:
    addiu	$v0,$v1,-0x1
.L800711b0:
    sw	$v0,0x74($a0)
.L800711b4:
    jal	FUN_80094620
.L800711b8:
    addiu	$a0,$s0,0x8
.L800711bc:
    beq	$v0,$zero,.L800711ec
.L800711c0:
    lui	$v0,0x800f
.L800711c4:
    lui	$v0,0x800f
.L800711c8:
    addiu	$v1,$v0,0x2888
.L800711cc:
    lw	$v0,0x74($v1)
.L800711d0:
    nop
.L800711d4:
    slti	$v0,$v0,0x4b0
.L800711d8:
    beq	$v0,$zero,.L800711e8
.L800711dc:
    nop
.L800711e0:
    li	$v0,0x4b0
.L800711e4:
    sw	$v0,0x74($v1)
.L800711e8:
    lui	$v0,0x800f
.L800711ec:
    lw	$v1,0x28fc($v0)
.L800711f0:
    nop
.L800711f4:
    slti	$v1,$v1,0x4ec
.L800711f8:
    beq	$v1,$zero,.L80071204
.L800711fc:
    li	$v0,0xa
.L80071200:
    li	$v0,0xd
.L80071204:
    lw	$ra,0x14($sp)
.L80071208:
    lw	$s0,0x10($sp)
.L8007120c:
    jr	$ra
.L80071210:
    addiu	$sp,$sp,0x18
.size FUN_80071168, .-FUN_80071168

.section .text.FUN_80071214, "ax", @progbits
.globl FUN_80071214
.type FUN_80071214, @function
FUN_80071214:
.L80071214:
    addiu	$sp,$sp,-0x18
.L80071218:
    sw	$s0,0x10($sp)
.L8007121c:
    sw	$ra,0x14($sp)
.L80071220:
    jal	FUN_8007f07c
.L80071224:
    addu	$s0,$a0,$zero
.L80071228:
    jal	FUN_80095590
.L8007122c:
    addiu	$a0,$s0,0x8
.L80071230:
    lw	$ra,0x14($sp)
.L80071234:
    lw	$s0,0x10($sp)
.L80071238:
    jr	$ra
.L8007123c:
    addiu	$sp,$sp,0x18
.size FUN_80071214, .-FUN_80071214
