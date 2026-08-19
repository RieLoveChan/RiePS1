.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009f390
.globl FUN_8009f390
.type FUN_8009f390, @function
FUN_8009f390:
.L8009f390:
/* 0x8009f390 */ lui	$v0,0x8012
.L8009f394:
/* 0x8009f394 */ lbu	$v1,-30392($v0)
.L8009f398:
/* 0x8009f398 */ addiu	$sp,$sp,-40
.L8009f39c:
/* 0x8009f39c */ sw	$s2,32($sp)
.L8009f3a0:
/* 0x8009f3a0 */ addu	$s2,$zero,$zero
.L8009f3a4:
/* 0x8009f3a4 */ sw	$ra,36($sp)
.L8009f3a8:
/* 0x8009f3a8 */ sw	$s1,28($sp)
.L8009f3ac:
/* 0x8009f3ac */ sltiu	$v0,$v1,7
.L8009f3b0:
/* 0x8009f3b0 */ beq	$v0,$zero,SHARED_TAIL_8009f4ec
.L8009f3b4:
/* 0x8009f3b4 */ sw	$s0,24($sp)
.L8009f3b8:
/* 0x8009f3b8 */ lui	$v0,0x8002
.L8009f3bc:
/* 0x8009f3bc */ addiu	$v0,$v0,-2656
.L8009f3c0:
/* 0x8009f3c0 */ sll	$v1,$v1,0x2
.L8009f3c4:
/* 0x8009f3c4 */ addu	$v1,$v1,$v0
.L8009f3c8:
/* 0x8009f3c8 */ lw	$v0,0($v1)
.L8009f3cc:
/* 0x8009f3cc */ sll	$zero,$zero,0x0
.L8009f3d0:
/* 0x8009f3d0 */ jr	$v0
.L8009f3d4:
/* 0x8009f3d4 */ sll	$zero,$zero,0x0
.L8009f3d8:
/* 0x8009f3d8 */ lui	$v0,0x800b
.L8009f3dc:
/* 0x8009f3dc */ lw	$a1,-14100($v0)
.L8009f3e0:
/* 0x8009f3e0 */ lui	$v1,0x8012
.L8009f3e4:
/* 0x8009f3e4 */ lbu	$a0,0($a1)
.L8009f3e8:
/* 0x8009f3e8 */ addiu	$v0,$v1,-30392
.L8009f3ec:
/* 0x8009f3ec */ sb	$a0,2($v0)
.L8009f3f0:
/* 0x8009f3f0 */ j	0x8009f4a8
.size FUN_8009f390, .-FUN_8009f390
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009f820
.globl FUN_8009f820
.type FUN_8009f820, @function
FUN_8009f820:
.L8009f820:
/* 0x8009f820 */ addiu	$sp,$sp,-32
.L8009f824:
/* 0x8009f824 */ sw	$s0,16($sp)
.L8009f828:
/* 0x8009f828 */ addu	$s0,$a0,$zero
.L8009f82c:
/* 0x8009f82c */ sw	$s2,24($sp)
.L8009f830:
/* 0x8009f830 */ addu	$s2,$a1,$zero
.L8009f834:
/* 0x8009f834 */ sw	$s1,20($sp)
.L8009f838:
/* 0x8009f838 */ lui	$s1,0x8012
.L8009f83c:
/* 0x8009f83c */ addiu	$s1,$s1,-30392
.L8009f840:
/* 0x8009f840 */ addu	$a0,$s1,$zero
.L8009f844:
/* 0x8009f844 */ sw	$ra,28($sp)
.L8009f848:
/* 0x8009f848 */ jal	0x8003bac8
.L8009f84c:
/* 0x8009f84c */ addiu	$a1,$zero,8
.L8009f850:
/* 0x8009f850 */ sh	$s0,4($s1)
.L8009f854:
/* 0x8009f854 */ sh	$s2,6($s1)
.L8009f858:
/* 0x8009f858 */ lw	$ra,28($sp)
.L8009f85c:
/* 0x8009f85c */ lw	$s2,24($sp)
.L8009f860:
/* 0x8009f860 */ lw	$s1,20($sp)
.L8009f864:
/* 0x8009f864 */ lw	$s0,16($sp)
.L8009f868:
/* 0x8009f868 */ jr	$ra
.L8009f86c:
/* 0x8009f86c */ addiu	$sp,$sp,32
.size FUN_8009f820, .-FUN_8009f820
