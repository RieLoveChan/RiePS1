.set noreorder
.set noat
.set nomacro

.section .text.FUN_80099e3c
.globl FUN_80099e3c
.type FUN_80099e3c, @function
FUN_80099e3c:
.L80099e3c:
/* 0x80099e3c */ addiu	$sp,$sp,-24
.L80099e40:
/* 0x80099e40 */ lui	$v1,0x800b
.L80099e44:
/* 0x80099e44 */ lw	$v0,-14100($v1)
.L80099e48:
/* 0x80099e48 */ lui	$a0,0x800f
.L80099e4c:
/* 0x80099e4c */ sw	$ra,16($sp)
.L80099e50:
/* 0x80099e50 */ sb	$zero,0($v0)
.L80099e54:
/* 0x80099e54 */ lw	$v1,-14100($v1)
.L80099e58:
/* 0x80099e58 */ addiu	$v0,$zero,1
.L80099e5c:
/* 0x80099e5c */ sb	$v0,10497($a0)
.L80099e60:
/* 0x80099e60 */ lui	$v0,0x800e
.L80099e64:
/* 0x80099e64 */ sb	$zero,69($v1)
.L80099e68:
/* 0x80099e68 */ lw	$a0,2836($v0)
.L80099e6c:
/* 0x80099e6c */ jal	0x8003bac8
.L80099e70:
/* 0x80099e70 */ addiu	$a1,$zero,4
.L80099e74:
/* 0x80099e74 */ lw	$ra,16($sp)
.L80099e78:
/* 0x80099e78 */ sll	$zero,$zero,0x0
.L80099e7c:
/* 0x80099e7c */ jr	$ra
.L80099e80:
/* 0x80099e80 */ addiu	$sp,$sp,24
.size FUN_80099e3c, .-FUN_80099e3c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_80099e9c
.globl FUN_80099e9c
.type FUN_80099e9c, @function
FUN_80099e9c:
.L80099e9c:
/* 0x80099e9c */ lui	$v0,0x800e
.L80099ea0:
/* 0x80099ea0 */ lw	$v0,2840($v0)
.L80099ea4:
/* 0x80099ea4 */ sll	$zero,$zero,0x0
.L80099ea8:
/* 0x80099ea8 */ lbu	$v1,124($v0)
.L80099eac:
/* 0x80099eac */ addiu	$v0,$zero,1
.L80099eb0:
/* 0x80099eb0 */ bne	$v1,$v0,.L80099ed4
.L80099eb4:
/* 0x80099eb4 */ addu	$a0,$zero,$zero
.L80099eb8:
/* 0x80099eb8 */ lui	$v0,0x800b
.L80099ebc:
/* 0x80099ebc */ lw	$v0,-14100($v0)
.L80099ec0:
/* 0x80099ec0 */ sll	$zero,$zero,0x0
.L80099ec4:
/* 0x80099ec4 */ lbu	$v0,80($v0)
.L80099ec8:
/* 0x80099ec8 */ sll	$zero,$zero,0x0
.L80099ecc:
/* 0x80099ecc */ xori	$v0,$v0,0x1
.L80099ed0:
/* 0x80099ed0 */ sltiu	$a0,$v0,1
.L80099ed4:
/* 0x80099ed4 */ jr	$ra
.L80099ed8:
/* 0x80099ed8 */ addu	$v0,$a0,$zero
.size FUN_80099e9c, .-FUN_80099e9c
