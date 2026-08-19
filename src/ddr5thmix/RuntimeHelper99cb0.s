.set noreorder
.set noat
.set nomacro

.section .text.FUN_80099cb0
.globl FUN_80099cb0
.type FUN_80099cb0, @function
FUN_80099cb0:
.L80099cb0:
/* 0x80099cb0 */ addiu	$sp,$sp,-48
.L80099cb4:
/* 0x80099cb4 */ sw	$s1,36($sp)
.L80099cb8:
/* 0x80099cb8 */ lui	$s1,0x800b
.L80099cbc:
/* 0x80099cbc */ lw	$v0,-14100($s1)
.L80099cc0:
/* 0x80099cc0 */ sw	$s2,40($sp)
.L80099cc4:
/* 0x80099cc4 */ sw	$ra,44($sp)
.L80099cc8:
/* 0x80099cc8 */ sw	$s0,32($sp)
.L80099ccc:
/* 0x80099ccc */ lbu	$s0,69($v0)
.L80099cd0:
/* 0x80099cd0 */ addiu	$v0,$zero,1
.L80099cd4:
/* 0x80099cd4 */ beq	$s0,$v0,.L80099d7c
.L80099cd8:
/* 0x80099cd8 */ addu	$s2,$zero,$zero
.L80099cdc:
/* 0x80099cdc */ slti	$v0,$s0,2
.L80099ce0:
/* 0x80099ce0 */ beq	$v0,$zero,.L80099cf8
.L80099ce4:
/* 0x80099ce4 */ addiu	$v0,$zero,2
.L80099ce8:
/* 0x80099ce8 */ beq	$s0,$zero,.L80099d08
.L80099cec:
/* 0x80099cec */ lui	$s0,0x800e
.L80099cf0:
/* 0x80099cf0 */ j	.L80099dac
.L80099cf4:
/* 0x80099cf4 */ sll	$zero,$zero,0x0
.L80099cf8:
/* 0x80099cf8 */ beq	$s0,$v0,.L80099da4
.L80099cfc:
/* 0x80099cfc */ lui	$s0,0x800e
.L80099d00:
/* 0x80099d00 */ j	.L80099dac
.L80099d04:
/* 0x80099d04 */ sll	$zero,$zero,0x0
.L80099d08:
/* 0x80099d08 */ addiu	$a1,$zero,-1
.L80099d0c:
/* 0x80099d0c */ addiu	$a0,$zero,1
.L80099d10:
/* 0x80099d10 */ lui	$v0,0x800f
.L80099d14:
/* 0x80099d14 */ addiu	$v0,$v0,10504
.L80099d18:
/* 0x80099d18 */ ori	$v1,$zero,0x9284
.L80099d1c:
/* 0x80099d1c */ addu	$v1,$v0,$v1
.L80099d20:
/* 0x80099d20 */ sb	$a1,41($v1)
.L80099d24:
/* 0x80099d24 */ lui	$v0,0xffff
.L80099d28:
/* 0x80099d28 */ ori	$v0,$v0,0x6d7c
.L80099d2c:
/* 0x80099d2c */ addiu	$a0,$a0,-1
.L80099d30:
/* 0x80099d30 */ bgez	$a0,.L80099d20
.L80099d34:
/* 0x80099d34 */ addu	$v1,$v1,$v0
.L80099d38:
/* 0x80099d38 */ addu	$a0,$zero,$zero
.L80099d3c:
/* 0x80099d3c */ jal	0x800a2694
.L80099d40:
/* 0x80099d40 */ lui	$a1,0x801b
.L80099d44:
/* 0x80099d44 */ addiu	$a0,$zero,1
.L80099d48:
/* 0x80099d48 */ jal	0x800a2694
.L80099d4c:
/* 0x80099d4c */ lui	$a1,0x801b
.L80099d50:
/* 0x80099d50 */ addu	$a0,$zero,$zero
.L80099d54:
/* 0x80099d54 */ lui	$v0,0x800e
.L80099d58:
/* 0x80099d58 */ lw	$v0,2836($v0)
.L80099d5c:
/* 0x80099d5c */ addiu	$a1,$zero,3
.L80099d60:
/* 0x80099d60 */ jal	0x8009befc
.L80099d64:
/* 0x80099d64 */ sb	$zero,1($v0)
.L80099d68:
/* 0x80099d68 */ lui	$v0,0x800b
.L80099d6c:
/* 0x80099d6c */ lw	$v1,-14100($v0)
.L80099d70:
/* 0x80099d70 */ addiu	$v0,$zero,1
.L80099d74:
/* 0x80099d74 */ j	.L80099da8
.L80099d78:
/* 0x80099d78 */ sb	$v0,69($v1)
.L80099d7c:
/* 0x80099d7c */ lui	$v0,0x800e
.L80099d80:
/* 0x80099d80 */ lw	$v0,2836($v0)
.L80099d84:
/* 0x80099d84 */ jal	0x8009c02c
.L80099d88:
/* 0x80099d88 */ sb	$s0,1($v0)
.L80099d8c:
/* 0x80099d8c */ bne	$v0,$s0,.L80099dac
.L80099d90:
/* 0x80099d90 */ lui	$s0,0x800e
.L80099d94:
/* 0x80099d94 */ lw	$v1,-14100($s1)
.L80099d98:
/* 0x80099d98 */ addiu	$v0,$zero,2
.L80099d9c:
/* 0x80099d9c */ j	.L80099dac
.L80099da0:
/* 0x80099da0 */ sb	$v0,69($v1)
.L80099da4:
/* 0x80099da4 */ addiu	$s2,$zero,1
.L80099da8:
/* 0x80099da8 */ lui	$s0,0x800e
.L80099dac:
/* 0x80099dac */ lw	$v0,2836($s0)
.L80099db0:
/* 0x80099db0 */ sll	$zero,$zero,0x0
.L80099db4:
/* 0x80099db4 */ lbu	$s1,1($v0)
.L80099db8:
/* 0x80099db8 */ addiu	$v0,$zero,1
.L80099dbc:
/* 0x80099dbc */ bne	$s1,$v0,.L80099e24
.L80099dc0:
/* 0x80099dc0 */ addu	$v0,$s2,$zero
.L80099dc4:
/* 0x80099dc4 */ addu	$a0,$zero,$zero
.L80099dc8:
/* 0x80099dc8 */ addu	$a1,$a0,$zero
.L80099dcc:
/* 0x80099dcc */ lui	$v0,0x800e
.L80099dd0:
/* 0x80099dd0 */ addiu	$v0,$v0,5568
.L80099dd4:
/* 0x80099dd4 */ sw	$v0,16($sp)
.L80099dd8:
/* 0x80099dd8 */ addiu	$v0,$zero,128
.L80099ddc:
/* 0x80099ddc */ sw	$v0,20($sp)
.L80099de0:
/* 0x80099de0 */ addiu	$v0,$zero,10
.L80099de4:
/* 0x80099de4 */ addiu	$a2,$zero,960
.L80099de8:
/* 0x80099de8 */ addiu	$a3,$zero,256
.L80099dec:
/* 0x80099dec */ jal	0x8009e4cc
.L80099df0:
/* 0x80099df0 */ sw	$v0,24($sp)
.L80099df4:
/* 0x80099df4 */ lw	$v0,2836($s0)
.L80099df8:
/* 0x80099df8 */ sll	$zero,$zero,0x0
.L80099dfc:
/* 0x80099dfc */ lbu	$v0,1($v0)
.L80099e00:
/* 0x80099e00 */ sll	$zero,$zero,0x0
.L80099e04:
/* 0x80099e04 */ bne	$v0,$s1,.L80099e24
.L80099e08:
/* 0x80099e08 */ addu	$v0,$s2,$zero
.L80099e0c:
/* 0x80099e0c */ jal	0x8009b5e0
.L80099e10:
/* 0x80099e10 */ sll	$zero,$zero,0x0
.L80099e14:
/* 0x80099e14 */ lw	$v0,2836($s0)
.L80099e18:
/* 0x80099e18 */ sll	$zero,$zero,0x0
.L80099e1c:
/* 0x80099e1c */ sb	$zero,1($v0)
.L80099e20:
/* 0x80099e20 */ addu	$v0,$s2,$zero
.L80099e24:
/* 0x80099e24 */ lw	$ra,44($sp)
.L80099e28:
/* 0x80099e28 */ lw	$s2,40($sp)
.L80099e2c:
/* 0x80099e2c */ lw	$s1,36($sp)
.L80099e30:
/* 0x80099e30 */ lw	$s0,32($sp)
.L80099e34:
/* 0x80099e34 */ jr	$ra
.L80099e38:
/* 0x80099e38 */ addiu	$sp,$sp,48
.size FUN_80099cb0, .-FUN_80099cb0
