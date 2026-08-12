.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007d454
.globl FUN_8007d454
.type FUN_8007d454, @function
FUN_8007d454:
/* Sample the selected object curve set and publish the resulting frame channels. */
/* 0x8007d454 */ addiu	$sp,$sp,-72
/* 0x8007d458 */ sw	$s7,60($sp)
/* 0x8007d45c */ addiu	$s7,$a2,1
/* 0x8007d460 */ sw	$ra,68($sp)
/* 0x8007d464 */ sw	$s8,64($sp)
/* 0x8007d468 */ sw	$s6,56($sp)
/* 0x8007d46c */ sw	$s5,52($sp)
/* 0x8007d470 */ sw	$s4,48($sp)
/* 0x8007d474 */ sw	$s3,44($sp)
/* 0x8007d478 */ sw	$s2,40($sp)
/* 0x8007d47c */ sw	$s1,36($sp)
/* 0x8007d480 */ sw	$s0,32($sp)
/* 0x8007d484 */ sw	$a0,72($sp)
/* 0x8007d488 */ lw	$v0,8($a0)
/* 0x8007d48c */ sll	$s8,$s7,0x2
/* 0x8007d490 */ addu	$v0,$s8,$v0
/* 0x8007d494 */ lw	$v1,0($v0)
/* 0x8007d498 */ nop
/* 0x8007d49c */ lw	$s3,8($v1)
/* 0x8007d4a0 */ addu $s5,$a1,$zero
/* 0x8007d4a4 */ lw	$v0,0($s3)
/* 0x8007d4a8 */ addu $s6,$zero,$zero
/* 0x8007d4ac */ lbu	$a0,0($v0)
/* 0x8007d4b0 */ nop
/* 0x8007d4b4 */ bnez	$a0,.L8007d6b0
/* 0x8007d4b8 */ addu $s4,$a3,$zero
/* 0x8007d4bc */ lbu	$v0,2($v1)
/* 0x8007d4c0 */ nop
/* 0x8007d4c4 */ beqz	$v0,.L8007d51c
/* 0x8007d4c8 */ addu $a1,$s4,$zero
/* 0x8007d4cc */ lw	$a0,12($s3)
/* 0x8007d4d0 */ jal	0x8007ce50
/* 0x8007d4d4 */ addiu	$a0,$a0,4
/* 0x8007d4d8 */ sll	$v0,$v0,0x10
/* 0x8007d4dc */ sra	$v0,$v0,0x10
/* 0x8007d4e0 */ sw	$v0,24($s5)
/* 0x8007d4e4 */ lw	$a0,16($s3)
/* 0x8007d4e8 */ addu $a1,$s4,$zero
/* 0x8007d4ec */ jal	0x8007ce50
/* 0x8007d4f0 */ addiu	$a0,$a0,4
/* 0x8007d4f4 */ sll	$v0,$v0,0x10
/* 0x8007d4f8 */ sra	$v0,$v0,0x10
/* 0x8007d4fc */ sw	$v0,28($s5)
/* 0x8007d500 */ lw	$a0,20($s3)
/* 0x8007d504 */ addu $a1,$s4,$zero
/* 0x8007d508 */ jal	0x8007ce50
/* 0x8007d50c */ addiu	$a0,$a0,4
/* 0x8007d510 */ sll	$v0,$v0,0x10
/* 0x8007d514 */ sra	$v0,$v0,0x10
/* 0x8007d518 */ sw	$v0,32($s5)
.L8007d51c:
/* 0x8007d51c */ lw	$a0,0($s3)
/* 0x8007d520 */ addu $a1,$s4,$zero
/* 0x8007d524 */ jal	0x8007ce50
/* 0x8007d528 */ addiu	$a0,$a0,4
/* 0x8007d52c */ sll	$v0,$v0,0x10
/* 0x8007d530 */ sra	$v0,$v0,0x10
/* 0x8007d534 */ sw	$v0,16($sp)
/* 0x8007d538 */ lw	$a0,8($s3)
/* 0x8007d53c */ addu $a1,$s4,$zero
/* 0x8007d540 */ jal	0x8007ce50
/* 0x8007d544 */ addiu	$a0,$a0,4
/* 0x8007d548 */ sll	$v0,$v0,0x10
/* 0x8007d54c */ lw	$a0,16($sp)
/* 0x8007d550 */ sra	$v0,$v0,0x10
/* 0x8007d554 */ jal	0x8004964c
/* 0x8007d558 */ sw	$v0,24($sp)
/* 0x8007d55c */ lw	$a0,16($sp)
/* 0x8007d560 */ jal	0x8004971c
/* 0x8007d564 */ addu $s2,$v0,$zero
/* 0x8007d568 */ lw	$a0,24($sp)
/* 0x8007d56c */ jal	0x8004964c
/* 0x8007d570 */ addu $s1,$v0,$zero
/* 0x8007d574 */ lw	$a0,24($sp)
/* 0x8007d578 */ jal	0x8004971c
/* 0x8007d57c */ addu $s0,$v0,$zero
/* 0x8007d580 */ mult	$s1,$v0
/* 0x8007d584 */ mflo	$t1
/* 0x8007d588 */ nop
/* 0x8007d58c */ nop
/* 0x8007d590 */ mult	$s2,$v0
/* 0x8007d594 */ subu $s0,$zero,$s0
/* 0x8007d598 */ sh	$s0,6($s5)
/* 0x8007d59c */ sra	$v0,$t1,0xc
/* 0x8007d5a0 */ sh	$v0,12($s5)
/* 0x8007d5a4 */ mflo	$v1
/* 0x8007d5a8 */ sra	$v0,$v1,0xc
/* 0x8007d5ac */ sh	$v0,18($s5)
/* 0x8007d5b0 */ lw	$t0,72($sp)
/* 0x8007d5b4 */ nop
/* 0x8007d5b8 */ lw	$v0,8($t0)
/* 0x8007d5bc */ nop
/* 0x8007d5c0 */ addu	$v0,$s8,$v0
/* 0x8007d5c4 */ lw	$v0,0($v0)
/* 0x8007d5c8 */ nop
/* 0x8007d5cc */ lw	$v1,4($v0)
/* 0x8007d5d0 */ addiu $v0,$zero,4
/* 0x8007d5d4 */ bne	$v1,$v0,.L8007d638
/* 0x8007d5d8 */ sra	$v0,$s4,0x8
/* 0x8007d5dc */ lw	$a0,12($s3)
/* 0x8007d5e0 */ sll	$v0,$v0,0x1
/* 0x8007d5e4 */ addu	$v0,$a0,$v0
/* 0x8007d5e8 */ lhu	$v1,6($v0)
/* 0x8007d5ec */ addiu	$a0,$a0,4
/* 0x8007d5f0 */ addu	$v1,$a0,$v1
/* 0x8007d5f4 */ lhu	$v0,4($v1)
/* 0x8007d5f8 */ nop
/* 0x8007d5fc */ slt	$v0,$v0,$s4
/* 0x8007d600 */ beqz	$v0,.L8007d624
/* 0x8007d604 */ addiu	$v1,$v1,4
/* 0x8007d608 */ addiu	$v1,$v1,4
.L8007d60c:
/* 0x8007d60c */ lhu	$v0,0($v1)
/* 0x8007d610 */ nop
/* 0x8007d614 */ slt	$v0,$v0,$s4
/* 0x8007d618 */ bnez	$v0,.L8007d60c
/* 0x8007d61c */ addiu	$v1,$v1,4
/* 0x8007d620 */ addiu	$v1,$v1,-4
.L8007d624:
/* 0x8007d624 */ lh	$v1,-2($v1)
/* 0x8007d628 */ lhu	$v0,0($a0)
/* 0x8007d62c */ nop
/* 0x8007d630 */ srav	$s6,$v1,$v0
/* 0x8007d634 */ lw	$t0,72($sp)
.L8007d638:
/* 0x8007d638 */ nop
/* 0x8007d63c */ lw	$v1,8($t0)
/* 0x8007d640 */ sll	$v0,$s7,0x2
/* 0x8007d644 */ addu	$v0,$v0,$v1
/* 0x8007d648 */ lw	$v0,0($v0)
/* 0x8007d64c */ nop
/* 0x8007d650 */ lw	$v1,4($v0)
/* 0x8007d654 */ addiu $v0,$zero,7
/* 0x8007d658 */ bne	$v1,$v0,.L8007d878
/* 0x8007d65c */ addu $v0,$s6,$zero
/* 0x8007d660 */ sra	$v0,$s4,0x8
/* 0x8007d664 */ lw	$a0,24($s3)
/* 0x8007d668 */ sll	$v0,$v0,0x1
/* 0x8007d66c */ addu	$v0,$a0,$v0
/* 0x8007d670 */ lhu	$v1,6($v0)
/* 0x8007d674 */ addiu	$a0,$a0,4
/* 0x8007d678 */ addu	$v1,$a0,$v1
/* 0x8007d67c */ lhu	$v0,4($v1)
/* 0x8007d680 */ nop
/* 0x8007d684 */ slt	$v0,$v0,$s4
/* 0x8007d688 */ beqz	$v0,.L8007d850
/* 0x8007d68c */ addiu	$v1,$v1,4
/* 0x8007d690 */ addiu	$v1,$v1,4
.L8007d694:
/* 0x8007d694 */ lhu	$v0,0($v1)
/* 0x8007d698 */ nop
/* 0x8007d69c */ slt	$v0,$v0,$s4
/* 0x8007d6a0 */ bnez	$v0,.L8007d694
/* 0x8007d6a4 */ addiu	$v1,$v1,4
/* 0x8007d6a8 */ j	0x8007d850
/* 0x8007d6ac */ addiu	$v1,$v1,-4
.L8007d6b0:
/* 0x8007d6b0 */ addiu $v0,$zero,1
/* 0x8007d6b4 */ bne	$a0,$v0,.L8007d860
/* 0x8007d6b8 */ addiu	$a1,$s5,4
/* 0x8007d6bc */ lbu	$v0,2($v1)
/* 0x8007d6c0 */ nop
/* 0x8007d6c4 */ beqz	$v0,.L8007d71c
/* 0x8007d6c8 */ addu $a1,$s4,$zero
/* 0x8007d6cc */ lw	$a0,16($s3)
/* 0x8007d6d0 */ jal	0x8007ce50
/* 0x8007d6d4 */ addiu	$a0,$a0,4
/* 0x8007d6d8 */ sll	$v0,$v0,0x10
/* 0x8007d6dc */ sra	$v0,$v0,0x10
/* 0x8007d6e0 */ sw	$v0,24($s5)
/* 0x8007d6e4 */ lw	$a0,20($s3)
/* 0x8007d6e8 */ addu $a1,$s4,$zero
/* 0x8007d6ec */ jal	0x8007ce50
/* 0x8007d6f0 */ addiu	$a0,$a0,4
/* 0x8007d6f4 */ sll	$v0,$v0,0x10
/* 0x8007d6f8 */ sra	$v0,$v0,0x10
/* 0x8007d6fc */ sw	$v0,28($s5)
/* 0x8007d700 */ lw	$a0,24($s3)
/* 0x8007d704 */ addu $a1,$s4,$zero
/* 0x8007d708 */ jal	0x8007ce50
/* 0x8007d70c */ addiu	$a0,$a0,4
/* 0x8007d710 */ sll	$v0,$v0,0x10
/* 0x8007d714 */ sra	$v0,$v0,0x10
/* 0x8007d718 */ sw	$v0,32($s5)
.L8007d71c:
/* 0x8007d71c */ lw	$a0,4($s3)
/* 0x8007d720 */ addu $a1,$s4,$zero
/* 0x8007d724 */ jal	0x8007ce50
/* 0x8007d728 */ addiu	$a0,$a0,4
/* 0x8007d72c */ sh	$v0,6($s5)
/* 0x8007d730 */ lw	$a0,8($s3)
/* 0x8007d734 */ addu $a1,$s4,$zero
/* 0x8007d738 */ jal	0x8007ce50
/* 0x8007d73c */ addiu	$a0,$a0,4
/* 0x8007d740 */ sh	$v0,12($s5)
/* 0x8007d744 */ lw	$a0,12($s3)
/* 0x8007d748 */ addu $a1,$s4,$zero
/* 0x8007d74c */ jal	0x8007ce50
/* 0x8007d750 */ addiu	$a0,$a0,4
/* 0x8007d754 */ sh	$v0,18($s5)
/* 0x8007d758 */ lw	$t0,72($sp)
/* 0x8007d75c */ nop
/* 0x8007d760 */ lw	$v0,8($t0)
/* 0x8007d764 */ nop
/* 0x8007d768 */ addu	$v0,$s8,$v0
/* 0x8007d76c */ lw	$v0,0($v0)
/* 0x8007d770 */ nop
/* 0x8007d774 */ lw	$v1,4($v0)
/* 0x8007d778 */ addiu $v0,$zero,5
/* 0x8007d77c */ bne	$v1,$v0,.L8007d7e0
/* 0x8007d780 */ sra	$v0,$s4,0x8
/* 0x8007d784 */ lw	$a0,16($s3)
/* 0x8007d788 */ sll	$v0,$v0,0x1
/* 0x8007d78c */ addu	$v0,$a0,$v0
/* 0x8007d790 */ lhu	$v1,6($v0)
/* 0x8007d794 */ addiu	$a0,$a0,4
/* 0x8007d798 */ addu	$v1,$a0,$v1
/* 0x8007d79c */ lhu	$v0,4($v1)
/* 0x8007d7a0 */ nop
/* 0x8007d7a4 */ slt	$v0,$v0,$s4
/* 0x8007d7a8 */ beqz	$v0,.L8007d7cc
/* 0x8007d7ac */ addiu	$v1,$v1,4
/* 0x8007d7b0 */ addiu	$v1,$v1,4
.L8007d7b4:
/* 0x8007d7b4 */ lhu	$v0,0($v1)
/* 0x8007d7b8 */ nop
/* 0x8007d7bc */ slt	$v0,$v0,$s4
/* 0x8007d7c0 */ bnez	$v0,.L8007d7b4
/* 0x8007d7c4 */ addiu	$v1,$v1,4
/* 0x8007d7c8 */ addiu	$v1,$v1,-4
.L8007d7cc:
/* 0x8007d7cc */ lh	$v1,-2($v1)
/* 0x8007d7d0 */ lhu	$v0,0($a0)
/* 0x8007d7d4 */ nop
/* 0x8007d7d8 */ srav	$s6,$v1,$v0
/* 0x8007d7dc */ lw	$t0,72($sp)
.L8007d7e0:
/* 0x8007d7e0 */ nop
/* 0x8007d7e4 */ lw	$v1,8($t0)
/* 0x8007d7e8 */ sll	$v0,$s7,0x2
/* 0x8007d7ec */ addu	$v0,$v0,$v1
/* 0x8007d7f0 */ lw	$v0,0($v0)
/* 0x8007d7f4 */ nop
/* 0x8007d7f8 */ lw	$v1,4($v0)
/* 0x8007d7fc */ addiu $v0,$zero,8
/* 0x8007d800 */ bne	$v1,$v0,.L8007d874
/* 0x8007d804 */ srav	$v0,$s4,$v0
/* 0x8007d808 */ lw	$a0,28($s3)
/* 0x8007d80c */ sll	$v0,$v0,0x1
/* 0x8007d810 */ addu	$v0,$a0,$v0
/* 0x8007d814 */ lhu	$v1,6($v0)
/* 0x8007d818 */ addiu	$a0,$a0,4
/* 0x8007d81c */ addu	$v1,$a0,$v1
/* 0x8007d820 */ lhu	$v0,4($v1)
/* 0x8007d824 */ nop
/* 0x8007d828 */ slt	$v0,$v0,$s4
/* 0x8007d82c */ beqz	$v0,.L8007d850
/* 0x8007d830 */ addiu	$v1,$v1,4
/* 0x8007d834 */ addiu	$v1,$v1,4
.L8007d838:
/* 0x8007d838 */ lhu	$v0,0($v1)
/* 0x8007d83c */ nop
/* 0x8007d840 */ slt	$v0,$v0,$s4
/* 0x8007d844 */ bnez	$v0,.L8007d838
/* 0x8007d848 */ addiu	$v1,$v1,4
/* 0x8007d84c */ addiu	$v1,$v1,-4
.L8007d850:
/* 0x8007d850 */ lh	$v1,-2($v1)
/* 0x8007d854 */ lhu	$v0,0($a0)
/* 0x8007d858 */ j	0x8007d874
/* 0x8007d85c */ srav	$s6,$v1,$v0
.L8007d860:
/* 0x8007d860 */ addiu	$a0,$sp,16
/* 0x8007d864 */ sh	$zero,20($sp)
/* 0x8007d868 */ sh	$zero,18($sp)
/* 0x8007d86c */ jal	0x8005391c
/* 0x8007d870 */ sh	$zero,16($sp)
.L8007d874:
/* 0x8007d874 */ addu $v0,$s6,$zero
.L8007d878:
/* 0x8007d878 */ lw	$ra,68($sp)
/* 0x8007d87c */ lw	$s8,64($sp)
/* 0x8007d880 */ lw	$s7,60($sp)
/* 0x8007d884 */ lw	$s6,56($sp)
/* 0x8007d888 */ lw	$s5,52($sp)
/* 0x8007d88c */ lw	$s4,48($sp)
/* 0x8007d890 */ lw	$s3,44($sp)
/* 0x8007d894 */ lw	$s2,40($sp)
/* 0x8007d898 */ lw	$s1,36($sp)
/* 0x8007d89c */ lw	$s0,32($sp)
/* 0x8007d8a0 */ jr	$ra
/* 0x8007d8a4 */ addiu	$sp,$sp,72
.size FUN_8007d454, .-FUN_8007d454
