.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a86e0
.globl FUN_800a86e0
.type FUN_800a86e0, @function
FUN_800a86e0:
.L800a86e0:
/* 0x800a86e0 */ addiu	$sp,$sp,-72
.L800a86e4:
/* 0x800a86e4 */ sw	$s4,56($sp)
.L800a86e8:
/* 0x800a86e8 */ addu	$s4,$a1,$zero
.L800a86ec:
/* 0x800a86ec */ sw	$s5,60($sp)
.L800a86f0:
/* 0x800a86f0 */ addu	$s5,$a2,$zero
.L800a86f4:
/* 0x800a86f4 */ sw	$s3,52($sp)
.L800a86f8:
/* 0x800a86f8 */ addu	$s3,$a3,$zero
.L800a86fc:
/* 0x800a86fc */ lui	$v0,0x8002
.L800a8700:
/* 0x800a8700 */ sw	$s1,44($sp)
.L800a8704:
/* 0x800a8704 */ addiu	$s1,$zero,1
.L800a8708:
/* 0x800a8708 */ sw	$ra,64($sp)
.L800a870c:
/* 0x800a870c */ sw	$s2,48($sp)
.L800a8710:
/* 0x800a8710 */ sw	$s0,40($sp)
.L800a8714:
/* 0x800a8714 */ addiu	$t3,$v0,1620
.L800a8718:
/* 0x800a8718 */ lwl	$t0,3($t3)
.L800a871c:
/* 0x800a871c */ lwr	$t0,0($t3)
.L800a8720:
/* 0x800a8720 */ lb	$t1,4($t3)
.L800a8724:
/* 0x800a8724 */ lb	$t2,5($t3)
.L800a8728:
/* 0x800a8728 */ swl	$t0,35($sp)
.L800a872c:
/* 0x800a872c */ swr	$t0,32($sp)
.L800a8730:
/* 0x800a8730 */ sb	$t1,36($sp)
.L800a8734:
/* 0x800a8734 */ sb	$t2,37($sp)
.L800a8738:
/* 0x800a8738 */ lb	$t0,6($t3)
.L800a873c:
/* 0x800a873c */ sll	$zero,$zero,0x0
.L800a8740:
/* 0x800a8740 */ sb	$t0,38($sp)
.L800a8744:
/* 0x800a8744 */ lw	$v0,88($sp)
.L800a8748:
/* 0x800a8748 */ sll	$zero,$zero,0x0
.L800a874c:
/* 0x800a874c */ addu	$v0,$sp,$v0
.L800a8750:
/* 0x800a8750 */ lbu	$v0,32($v0)
.L800a8754:
/* 0x800a8754 */ bne	$a0,$zero,.L800a8768
.L800a8758:
/* 0x800a8758 */ addu	$s2,$zero,$zero
.L800a875c:
/* 0x800a875c */ lui	$v1,0x10
.L800a8760:
/* 0x800a8760 */ j	.L800a877c
.L800a8764:
/* 0x800a8764 */ ori	$v1,$v1,0xcc6
.L800a8768:
/* 0x800a8768 */ bne	$a0,$s1,.L800a8778
.L800a876c:
/* 0x800a876c */ lui	$v1,0x10
.L800a8770:
/* 0x800a8770 */ j	.L800a877c
.L800a8774:
/* 0x800a8774 */ ori	$v1,$v1,0xcc0
.L800a8778:
/* 0x800a8778 */ ori	$v1,$v1,0x1003
.L800a877c:
/* 0x800a877c */ andi	$v0,$v0,0xf
.L800a8780:
/* 0x800a8780 */ sll	$v0,$v0,0x18
.L800a8784:
/* 0x800a8784 */ or	$s0,$v0,$v1
.L800a8788:
/* 0x800a8788 */ addu	$a0,$s1,$zero
.L800a878c:
/* 0x800a878c */ jal	0x80043134
.L800a8790:
/* 0x800a8790 */ addiu	$a1,$zero,15
.L800a8794:
/* 0x800a8794 */ addu	$a0,$s1,$zero
.L800a8798:
/* 0x800a8798 */ jal	0x80048e80
.L800a879c:
/* 0x800a879c */ addiu	$a1,$zero,10
.L800a87a0:
/* 0x800a87a0 */ addu	$a0,$s1,$zero
.L800a87a4:
/* 0x800a87a4 */ addu	$a1,$s2,$zero
.L800a87a8:
/* 0x800a87a8 */ addu	$a2,$s4,$zero
.L800a87ac:
/* 0x800a87ac */ lw	$v0,92($sp)
.L800a87b0:
/* 0x800a87b0 */ addu	$a3,$s5,$zero
.L800a87b4:
/* 0x800a87b4 */ sw	$s3,16($sp)
.L800a87b8:
/* 0x800a87b8 */ sw	$s0,20($sp)
.L800a87bc:
/* 0x800a87bc */ jal	0x80041628
.L800a87c0:
/* 0x800a87c0 */ sw	$v0,24($sp)
.L800a87c4:
/* 0x800a87c4 */ addu	$a0,$s1,$zero
.L800a87c8:
/* 0x800a87c8 */ jal	0x80048aa8
.L800a87cc:
/* 0x800a87cc */ addu	$a1,$v0,$zero
.L800a87d0:
/* 0x800a87d0 */ jal	0x80043344
.L800a87d4:
/* 0x800a87d4 */ addu	$a0,$s1,$zero
.L800a87d8:
/* 0x800a87d8 */ lw	$ra,64($sp)
.L800a87dc:
/* 0x800a87dc */ lw	$s5,60($sp)
.L800a87e0:
/* 0x800a87e0 */ lw	$s4,56($sp)
.L800a87e4:
/* 0x800a87e4 */ lw	$s3,52($sp)
.L800a87e8:
/* 0x800a87e8 */ lw	$s2,48($sp)
.L800a87ec:
/* 0x800a87ec */ lw	$s1,44($sp)
.L800a87f0:
/* 0x800a87f0 */ lw	$s0,40($sp)
.L800a87f4:
/* 0x800a87f4 */ jr	$ra
.L800a87f8:
/* 0x800a87f8 */ addiu	$sp,$sp,72
.size FUN_800a86e0, .-FUN_800a86e0
