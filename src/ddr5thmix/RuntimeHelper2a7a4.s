.set noreorder
.set noat
.set nomacro

.section .text.FUN_8002a7a4
.globl FUN_8002a7a4
.type FUN_8002a7a4, @function
FUN_8002a7a4:
.L8002a7a4:
/* 0x8002a7a4 */ addiu	$sp,$sp,-24
.L8002a7a8:
/* 0x8002a7a8 */ sw	$ra,16($sp)
.L8002a7ac:
/* 0x8002a7ac */ jal	0x80032afc
.L8002a7b0:
/* 0x8002a7b0 */ addiu	$a0,$zero,3
.L8002a7b4:
/* 0x8002a7b4 */ jal	0x8002ebac
.L8002a7b8:
/* 0x8002a7b8 */ addiu	$a0,$zero,3
.L8002a7bc:
/* 0x8002a7bc */ addu	$a0,$zero,$zero
.L8002a7c0:
/* 0x8002a7c0 */ addu	$a1,$a0,$zero
.L8002a7c4:
/* 0x8002a7c4 */ jal	0x8002fe7c
.L8002a7c8:
/* 0x8002a7c8 */ addiu	$a2,$zero,1
.L8002a7cc:
/* 0x8002a7cc */ jal	0x80034b4c
.L8002a7d0:
/* 0x8002a7d0 */ addiu	$a0,$zero,20
.L8002a7d4:
/* 0x8002a7d4 */ jal	0x8002f26c
.L8002a7d8:
/* 0x8002a7d8 */ addu	$a0,$zero,$zero
.L8002a7dc:
/* 0x8002a7dc */ jal	0x80032bac
.L8002a7e0:
/* 0x8002a7e0 */ sll	$zero,$zero,0x0
.L8002a7e4:
/* 0x8002a7e4 */ addiu	$a0,$zero,40
.L8002a7e8:
/* 0x8002a7e8 */ jal	0x800320bc
.L8002a7ec:
/* 0x8002a7ec */ addu	$a1,$a0,$zero
.L8002a7f0:
/* 0x8002a7f0 */ lw	$ra,16($sp)
.L8002a7f4:
/* 0x8002a7f4 */ sll	$zero,$zero,0x0
.L8002a7f8:
/* 0x8002a7f8 */ jr	$ra
.L8002a7fc:
/* 0x8002a7fc */ addiu	$sp,$sp,24
.size FUN_8002a7a4, .-FUN_8002a7a4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8002a9dc
.globl FUN_8002a9dc
.type FUN_8002a9dc, @function
FUN_8002a9dc:
.L8002a9dc:
/* 0x8002a9dc */ addiu	$sp,$sp,-64
.L8002a9e0:
/* 0x8002a9e0 */ sw	$s3,44($sp)
.L8002a9e4:
/* 0x8002a9e4 */ addu	$s3,$a0,$zero
.L8002a9e8:
/* 0x8002a9e8 */ sw	$s4,48($sp)
.L8002a9ec:
/* 0x8002a9ec */ addu	$s4,$a1,$zero
.L8002a9f0:
/* 0x8002a9f0 */ addu	$a0,$zero,$zero
.L8002a9f4:
/* 0x8002a9f4 */ sw	$ra,60($sp)
.L8002a9f8:
/* 0x8002a9f8 */ sw	$s6,56($sp)
.L8002a9fc:
/* 0x8002a9fc */ sw	$s5,52($sp)
.L8002aa00:
/* 0x8002aa00 */ sw	$s2,40($sp)
.L8002aa04:
/* 0x8002aa04 */ sw	$s1,36($sp)
.L8002aa08:
/* 0x8002aa08 */ jal	0x80038564
.L8002aa0c:
/* 0x8002aa0c */ sw	$s0,32($sp)
.L8002aa10:
/* 0x8002aa10 */ lw	$s2,0($s3)
.L8002aa14:
/* 0x8002aa14 */ sll	$zero,$zero,0x0
.L8002aa18:
/* 0x8002aa18 */ beq	$s2,$zero,.L8002aaac
.L8002aa1c:
/* 0x8002aa1c */ addu	$s6,$zero,$zero
.L8002aa20:
/* 0x8002aa20 */ lw	$v0,4($s3)
.L8002aa24:
/* 0x8002aa24 */ sll	$zero,$zero,0x0
.L8002aa28:
/* 0x8002aa28 */ srl	$s6,$v0,0x1f
.L8002aa2c:
/* 0x8002aa2c */ addu	$v1,$v0,$zero
.L8002aa30:
/* 0x8002aa30 */ andi	$v0,$s6,0xff
.L8002aa34:
/* 0x8002aa34 */ bne	$v0,$zero,.L8002aa40
.L8002aa38:
/* 0x8002aa38 */ sll	$zero,$zero,0x0
.L8002aa3c:
/* 0x8002aa3c */ addu	$v1,$s3,$v1
.L8002aa40:
/* 0x8002aa40 */ blez	$s2,.L8002aaac
.L8002aa44:
/* 0x8002aa44 */ addu	$s1,$zero,$zero
.L8002aa48:
/* 0x8002aa48 */ addu	$s5,$v0,$zero
.L8002aa4c:
/* 0x8002aa4c */ addu	$s0,$v1,$zero
.L8002aa50:
/* 0x8002aa50 */ beq	$s5,$zero,.L8002aa64
.L8002aa54:
/* 0x8002aa54 */ sll	$zero,$zero,0x0
.L8002aa58:
/* 0x8002aa58 */ lw	$a1,0($s0)
.L8002aa5c:
/* 0x8002aa5c */ j	.L8002aa74
.L8002aa60:
/* 0x8002aa60 */ addu	$a0,$a1,$zero
.L8002aa64:
/* 0x8002aa64 */ lw	$v0,0($s0)
.L8002aa68:
/* 0x8002aa68 */ sll	$zero,$zero,0x0
.L8002aa6c:
/* 0x8002aa6c */ addu	$a1,$s3,$v0
.L8002aa70:
/* 0x8002aa70 */ addu	$a0,$a1,$zero
.L8002aa74:
/* 0x8002aa74 */ jal	0x8002a8b8
.L8002aa78:
/* 0x8002aa78 */ addu	$a1,$s4,$zero
.L8002aa7c:
/* 0x8002aa7c */ sw	$zero,16($sp)
.L8002aa80:
/* 0x8002aa80 */ addu	$a0,$s4,$zero
.L8002aa84:
/* 0x8002aa84 */ addu	$a1,$zero,$zero
.L8002aa88:
/* 0x8002aa88 */ addu	$a2,$a1,$zero
.L8002aa8c:
/* 0x8002aa8c */ jal	0x800223a8
.L8002aa90:
/* 0x8002aa90 */ addu	$a3,$a1,$zero
.L8002aa94:
/* 0x8002aa94 */ jal	0x80038564
.L8002aa98:
/* 0x8002aa98 */ addu	$a0,$zero,$zero
.L8002aa9c:
/* 0x8002aa9c */ addiu	$s1,$s1,1
.L8002aaa0:
/* 0x8002aaa0 */ slt	$v0,$s1,$s2
.L8002aaa4:
/* 0x8002aaa4 */ bne	$v0,$zero,.L8002aa50
.L8002aaa8:
/* 0x8002aaa8 */ addiu	$s0,$s0,4
.L8002aaac:
/* 0x8002aaac */ lw	$s2,8($s3)
.L8002aab0:
/* 0x8002aab0 */ sll	$zero,$zero,0x0
.L8002aab4:
/* 0x8002aab4 */ beq	$s2,$zero,.L8002abc4
.L8002aab8:
/* 0x8002aab8 */ andi	$v0,$s6,0xff
.L8002aabc:
/* 0x8002aabc */ lw	$v1,12($s3)
.L8002aac0:
/* 0x8002aac0 */ bne	$v0,$zero,.L8002aacc
.L8002aac4:
/* 0x8002aac4 */ sll	$zero,$zero,0x0
.L8002aac8:
/* 0x8002aac8 */ addu	$v1,$s3,$v1
.L8002aacc:
/* 0x8002aacc */ blez	$s2,.L8002abbc
.L8002aad0:
/* 0x8002aad0 */ addu	$s1,$zero,$zero
.L8002aad4:
/* 0x8002aad4 */ addiu	$s4,$zero,31775
.L8002aad8:
/* 0x8002aad8 */ addu	$s0,$v1,$zero
.L8002aadc:
/* 0x8002aadc */ andi	$v0,$s6,0xff
.L8002aae0:
/* 0x8002aae0 */ beq	$v0,$zero,.L8002aaf4
.L8002aae4:
/* 0x8002aae4 */ sll	$zero,$zero,0x0
.L8002aae8:
/* 0x8002aae8 */ lw	$a1,0($s0)
.L8002aaec:
/* 0x8002aaec */ j	.L8002ab00
.L8002aaf0:
/* 0x8002aaf0 */ sll	$zero,$zero,0x0
.L8002aaf4:
/* 0x8002aaf4 */ lw	$v0,0($s0)
.L8002aaf8:
/* 0x8002aaf8 */ sll	$zero,$zero,0x0
.L8002aafc:
/* 0x8002aafc */ addu	$a1,$s3,$v0
.L8002ab00:
/* 0x8002ab00 */ lhu	$a0,2($a1)
.L8002ab04:
/* 0x8002ab04 */ lhu	$v1,0($a1)
.L8002ab08:
/* 0x8002ab08 */ andi	$v0,$a0,0x8000
.L8002ab0c:
/* 0x8002ab0c */ beq	$v0,$zero,.L8002ab2c
.L8002ab10:
/* 0x8002ab10 */ andi	$v0,$a0,0x7fff
.L8002ab14:
/* 0x8002ab14 */ sh	$v0,26($sp)
.L8002ab18:
/* 0x8002ab18 */ addiu	$v0,$zero,256
.L8002ab1c:
/* 0x8002ab1c */ sh	$v0,28($sp)
.L8002ab20:
/* 0x8002ab20 */ addiu	$v0,$zero,1
.L8002ab24:
/* 0x8002ab24 */ j	.L8002ab3c
.L8002ab28:
/* 0x8002ab28 */ sh	$v1,24($sp)
.L8002ab2c:
/* 0x8002ab2c */ addiu	$v0,$zero,16
.L8002ab30:
/* 0x8002ab30 */ sh	$v1,24($sp)
.L8002ab34:
/* 0x8002ab34 */ sh	$a0,26($sp)
.L8002ab38:
/* 0x8002ab38 */ sh	$v0,28($sp)
.L8002ab3c:
/* 0x8002ab3c */ sh	$v0,30($sp)
.L8002ab40:
/* 0x8002ab40 */ lh	$v1,28($sp)
.L8002ab44:
/* 0x8002ab44 */ lh	$v0,30($sp)
.L8002ab48:
/* 0x8002ab48 */ sll	$zero,$zero,0x0
.L8002ab4c:
/* 0x8002ab4c */ mult	$v1,$v0
.L8002ab50:
/* 0x8002ab50 */ mflo	$t0
.L8002ab54:
/* 0x8002ab54 */ blez	$t0,.L8002aba0
.L8002ab58:
/* 0x8002ab58 */ addu	$a0,$zero,$zero
.L8002ab5c:
/* 0x8002ab5c */ addiu	$a2,$zero,4
.L8002ab60:
/* 0x8002ab60 */ addu	$v1,$a1,$a2
.L8002ab64:
/* 0x8002ab64 */ lhu	$v0,0($v1)
.L8002ab68:
/* 0x8002ab68 */ sll	$zero,$zero,0x0
.L8002ab6c:
/* 0x8002ab6c */ andi	$v0,$v0,0x7fff
.L8002ab70:
/* 0x8002ab70 */ bne	$v0,$s4,.L8002ab7c
.L8002ab74:
/* 0x8002ab74 */ sll	$zero,$zero,0x0
.L8002ab78:
/* 0x8002ab78 */ sh	$zero,0($v1)
.L8002ab7c:
/* 0x8002ab7c */ lh	$v1,28($sp)
.L8002ab80:
/* 0x8002ab80 */ lh	$v0,30($sp)
.L8002ab84:
/* 0x8002ab84 */ sll	$zero,$zero,0x0
.L8002ab88:
/* 0x8002ab88 */ mult	$v1,$v0
.L8002ab8c:
/* 0x8002ab8c */ addiu	$a0,$a0,1
.L8002ab90:
/* 0x8002ab90 */ mflo	$t0
.L8002ab94:
/* 0x8002ab94 */ slt	$v0,$a0,$t0
.L8002ab98:
/* 0x8002ab98 */ bne	$v0,$zero,.L8002ab60
.L8002ab9c:
/* 0x8002ab9c */ addiu	$a2,$a2,2
.L8002aba0:
/* 0x8002aba0 */ addiu	$a0,$sp,24
.L8002aba4:
/* 0x8002aba4 */ jal	0x80038810
.L8002aba8:
/* 0x8002aba8 */ addiu	$a1,$a1,4
.L8002abac:
/* 0x8002abac */ addiu	$s1,$s1,1
.L8002abb0:
/* 0x8002abb0 */ slt	$v0,$s1,$s2
.L8002abb4:
/* 0x8002abb4 */ bne	$v0,$zero,.L8002aadc
.L8002abb8:
/* 0x8002abb8 */ addiu	$s0,$s0,4
.L8002abbc:
/* 0x8002abbc */ jal	0x80038564
.L8002abc0:
/* 0x8002abc0 */ addu	$a0,$zero,$zero
.L8002abc4:
/* 0x8002abc4 */ lw	$ra,60($sp)
.L8002abc8:
/* 0x8002abc8 */ lw	$s6,56($sp)
.L8002abcc:
/* 0x8002abcc */ lw	$s5,52($sp)
.L8002abd0:
/* 0x8002abd0 */ lw	$s4,48($sp)
.L8002abd4:
/* 0x8002abd4 */ lw	$s3,44($sp)
.L8002abd8:
/* 0x8002abd8 */ lw	$s2,40($sp)
.L8002abdc:
/* 0x8002abdc */ lw	$s1,36($sp)
.L8002abe0:
/* 0x8002abe0 */ lw	$s0,32($sp)
.L8002abe4:
/* 0x8002abe4 */ addiu	$v0,$zero,1
.L8002abe8:
/* 0x8002abe8 */ jr	$ra
.L8002abec:
/* 0x8002abec */ addiu	$sp,$sp,64
.size FUN_8002a9dc, .-FUN_8002a9dc
