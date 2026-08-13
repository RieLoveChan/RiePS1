.set noreorder
.set noat
.set nomacro

.section .text.FUN_80093e44
.globl FUN_80093e44
.type FUN_80093e44, @function
FUN_80093e44:
/* Runtime resource and state helper. */
.L80093e44:
/* 0x80093e44 */ addiu	$sp,$sp,-24
.L80093e48:
/* 0x80093e48 */ lui	$v0,0x800f
.L80093e4c:
/* 0x80093e4c */ sw	$s0,16($sp)
.L80093e50:
/* 0x80093e50 */ addiu	$s0,$v0,10504
.L80093e54:
/* 0x80093e54 */ sw	$ra,20($sp)
.L80093e58:
/* 0x80093e58 */ lb	$v0,23($s0)
.L80093e5c:
/* 0x80093e5c */ sll	$zero,$zero,0x0
.L80093e60:
/* 0x80093e60 */ bne	$v0,$zero,.L80093f10
.L80093e64:
/* 0x80093e64 */ addu	$v0,$zero,$zero
.L80093e68:
/* 0x80093e68 */ lb	$v0,22($s0)
.L80093e6c:
/* 0x80093e6c */ sll	$zero,$zero,0x0
.L80093e70:
/* 0x80093e70 */ beq	$v0,$zero,.L80093e80
.L80093e74:
/* 0x80093e74 */ sll	$zero,$zero,0x0
.L80093e78:
/* 0x80093e78 */ j 0x80093f10
.L80093e7c:
/* 0x80093e7c */ addu	$v0,$zero,$zero
.L80093e80:
/* 0x80093e80 */ lh	$v0,30($s0)
.L80093e84:
/* 0x80093e84 */ sll	$zero,$zero,0x0
.L80093e88:
/* 0x80093e88 */ bne	$v0,$zero,.L80093f10
.L80093e8c:
/* 0x80093e8c */ addu	$v0,$zero,$zero
.L80093e90:
/* 0x80093e90 */ lh	$v0,14($s0)
.L80093e94:
/* 0x80093e94 */ sll	$zero,$zero,0x0
.L80093e98:
/* 0x80093e98 */ bgez	$v0,.L80093f10
.L80093e9c:
/* 0x80093e9c */ addu	$v0,$zero,$zero
.L80093ea0:
/* 0x80093ea0 */ jal	0x8009ff8c
.L80093ea4:
/* 0x80093ea4 */ addiu	$a0,$zero,1
.L80093ea8:
/* 0x80093ea8 */ andi	$v0,$v0,0xff
.L80093eac:
/* 0x80093eac */ beq	$v0,$zero,.L80093e78
.L80093eb0:
/* 0x80093eb0 */ addiu	$v0,$v0,-3
.L80093eb4:
/* 0x80093eb4 */ sltiu	$v0,$v0,3
.L80093eb8:
/* 0x80093eb8 */ beq	$v0,$zero,.L80093f10
.L80093ebc:
/* 0x80093ebc */ addu	$v0,$zero,$zero
.L80093ec0:
/* 0x80093ec0 */ lw	$v0,56($s0)
.L80093ec4:
/* 0x80093ec4 */ sll	$zero,$zero,0x0
.L80093ec8:
/* 0x80093ec8 */ bne	$v0,$zero,.L80093ee4
.L80093ecc:
/* 0x80093ecc */ ori	$v0,$zero,0x8000
.L80093ed0:
/* 0x80093ed0 */ addu	$v0,$s0,$v0
.L80093ed4:
/* 0x80093ed4 */ lw	$v0,4796($v0)
.L80093ed8:
/* 0x80093ed8 */ sll	$zero,$zero,0x0
.L80093edc:
/* 0x80093edc */ beq	$v0,$zero,.L80093f10
.L80093ee0:
/* 0x80093ee0 */ addu	$v0,$zero,$zero
.L80093ee4:
/* 0x80093ee4 */ jal	0x80093cd0
.L80093ee8:
/* 0x80093ee8 */ addu	$a0,$zero,$zero
.L80093eec:
/* 0x80093eec */ andi	$v0,$v0,0xf
.L80093ef0:
/* 0x80093ef0 */ bne	$v0,$zero,.L80093f0c
.L80093ef4:
/* 0x80093ef4 */ sll	$zero,$zero,0x0
.L80093ef8:
/* 0x80093ef8 */ jal	0x80093cd0
.L80093efc:
/* 0x80093efc */ addiu	$a0,$zero,1
.L80093f00:
/* 0x80093f00 */ andi	$v1,$v0,0xf
.L80093f04:
/* 0x80093f04 */ beq	$v1,$zero,.L80093f10
.L80093f08:
/* 0x80093f08 */ addu	$v0,$zero,$zero
.L80093f0c:
/* 0x80093f0c */ addiu	$v0,$zero,1
.L80093f10:
/* 0x80093f10 */ lw	$ra,20($sp)
.L80093f14:
/* 0x80093f14 */ lw	$s0,16($sp)
.L80093f18:
/* 0x80093f18 */ jr	$ra
.L80093f1c:
/* 0x80093f1c */ addiu	$sp,$sp,24
.size FUN_80093e44, .-FUN_80093e44

