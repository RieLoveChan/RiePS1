.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009d54c
.globl FUN_8009d54c
.type FUN_8009d54c, @function
FUN_8009d54c:
.L8009d54c:
/* 0x8009d54c */ lui	$a2,0x800e
.L8009d550:
/* 0x8009d550 */ lw	$v0,3612($a2)
.L8009d554:
/* 0x8009d554 */ addiu	$sp,$sp,-24
.L8009d558:
/* 0x8009d558 */ sw	$ra,16($sp)
.L8009d55c:
/* 0x8009d55c */ sb	$a0,0($v0)
.L8009d560:
/* 0x8009d560 */ andi	$a0,$a0,0xff
.L8009d564:
/* 0x8009d564 */ addiu	$v0,$zero,240
.L8009d568:
/* 0x8009d568 */ beq	$a0,$v0,.L8009d61c
.L8009d56c:
/* 0x8009d56c */ slti	$v0,$a0,241
.L8009d570:
/* 0x8009d570 */ beq	$v0,$zero,.L8009d5b4
.L8009d574:
/* 0x8009d574 */ addiu	$v0,$zero,2
.L8009d578:
/* 0x8009d578 */ beq	$a0,$v0,.L8009d5fc
.L8009d57c:
/* 0x8009d57c */ slti	$v0,$a0,3
.L8009d580:
/* 0x8009d580 */ beq	$v0,$zero,.L8009d598
.L8009d584:
/* 0x8009d584 */ addiu	$v0,$zero,1
.L8009d588:
/* 0x8009d588 */ beq	$a0,$v0,.L8009d5e4
.L8009d58c:
/* 0x8009d58c */ lui	$v0,0x800e
.L8009d590:
/* 0x8009d590 */ j	.L8009d6bc
.L8009d594:
/* 0x8009d594 */ sll	$zero,$zero,0x0
.L8009d598:
/* 0x8009d598 */ addiu	$v0,$zero,3
.L8009d59c:
/* 0x8009d59c */ beq	$a0,$v0,.L8009d60c
.L8009d5a0:
/* 0x8009d5a0 */ addiu	$v0,$zero,5
.L8009d5a4:
/* 0x8009d5a4 */ beq	$a0,$v0,.L8009d610
.L8009d5a8:
/* 0x8009d5a8 */ lui	$v0,0x800e
.L8009d5ac:
/* 0x8009d5ac */ j	.L8009d6bc
.L8009d5b0:
/* 0x8009d5b0 */ sll	$zero,$zero,0x0
.L8009d5b4:
/* 0x8009d5b4 */ addiu	$v0,$zero,242
.L8009d5b8:
/* 0x8009d5b8 */ beq	$a0,$v0,.L8009d654
.L8009d5bc:
/* 0x8009d5bc */ slt	$v0,$a0,$v0
.L8009d5c0:
/* 0x8009d5c0 */ bne	$v0,$zero,.L8009d628
.L8009d5c4:
/* 0x8009d5c4 */ lui	$v1,0x800e
.L8009d5c8:
/* 0x8009d5c8 */ addiu	$v0,$zero,243
.L8009d5cc:
/* 0x8009d5cc */ beq	$a0,$v0,.L8009d664
.L8009d5d0:
/* 0x8009d5d0 */ addiu	$v0,$zero,244
.L8009d5d4:
/* 0x8009d5d4 */ beq	$a0,$v0,.L8009d690
.L8009d5d8:
/* 0x8009d5d8 */ addiu	$v0,$zero,13
.L8009d5dc:
/* 0x8009d5dc */ j	.L8009d6bc
.L8009d5e0:
/* 0x8009d5e0 */ sll	$zero,$zero,0x0
.L8009d5e4:
/* 0x8009d5e4 */ lw	$v1,2844($v0)
.L8009d5e8:
/* 0x8009d5e8 */ sll	$zero,$zero,0x0
.L8009d5ec:
/* 0x8009d5ec */ sb	$a0,132($v1)
.L8009d5f0:
/* 0x8009d5f0 */ lw	$v0,2844($v0)
.L8009d5f4:
/* 0x8009d5f4 */ j	.L8009d6bc
.L8009d5f8:
/* 0x8009d5f8 */ sb	$a0,133($v0)
.L8009d5fc:
/* 0x8009d5fc */ jal	0x8009b588
.L8009d600:
/* 0x8009d600 */ addu	$a0,$zero,$zero
.L8009d604:
/* 0x8009d604 */ j	.L8009d6bc
.L8009d608:
/* 0x8009d608 */ sll	$zero,$zero,0x0
.L8009d60c:
/* 0x8009d60c */ lui	$v0,0x800e
.L8009d610:
/* 0x8009d610 */ lw	$v0,2844($v0)
.L8009d614:
/* 0x8009d614 */ j	.L8009d6bc
.L8009d618:
/* 0x8009d618 */ sw	$zero,96($v0)
.L8009d61c:
/* 0x8009d61c */ lw	$v0,3612($a2)
.L8009d620:
/* 0x8009d620 */ j	.L8009d6bc
.L8009d624:
/* 0x8009d624 */ sb	$zero,1($v0)
.L8009d628:
/* 0x8009d628 */ lw	$a0,2844($v1)
.L8009d62c:
/* 0x8009d62c */ addiu	$v0,$zero,3
.L8009d630:
/* 0x8009d630 */ sb	$v0,132($a0)
.L8009d634:
/* 0x8009d634 */ lw	$v0,2844($v1)
.L8009d638:
/* 0x8009d638 */ addiu	$a0,$zero,1
.L8009d63c:
/* 0x8009d63c */ sb	$a0,133($v0)
.L8009d640:
/* 0x8009d640 */ lw	$v0,2844($v1)
.L8009d644:
/* 0x8009d644 */ lw	$v1,3612($a2)
.L8009d648:
/* 0x8009d648 */ sw	$zero,104($v0)
.L8009d64c:
/* 0x8009d64c */ j	.L8009d6bc
.L8009d650:
/* 0x8009d650 */ sb	$a0,1($v1)
.L8009d654:
/* 0x8009d654 */ lui	$v1,0x800e
.L8009d658:
/* 0x8009d658 */ lw	$v0,2844($v1)
.L8009d65c:
/* 0x8009d65c */ j	.L8009d66c
.L8009d660:
/* 0x8009d660 */ addiu	$a1,$zero,2
.L8009d664:
/* 0x8009d664 */ lw	$v0,2844($v1)
.L8009d668:
/* 0x8009d668 */ addiu	$a1,$zero,3
.L8009d66c:
/* 0x8009d66c */ sb	$a1,132($v0)
.L8009d670:
/* 0x8009d670 */ lw	$a0,2844($v1)
.L8009d674:
/* 0x8009d674 */ addiu	$v0,$zero,1
.L8009d678:
/* 0x8009d678 */ sb	$v0,133($a0)
.L8009d67c:
/* 0x8009d67c */ lw	$v0,2844($v1)
.L8009d680:
/* 0x8009d680 */ lw	$v1,3612($a2)
.L8009d684:
/* 0x8009d684 */ sw	$zero,104($v0)
.L8009d688:
/* 0x8009d688 */ j	.L8009d6bc
.L8009d68c:
/* 0x8009d68c */ sb	$a1,1($v1)
.L8009d690:
/* 0x8009d690 */ lw	$a0,2844($v1)
.L8009d694:
/* 0x8009d694 */ sll	$zero,$zero,0x0
.L8009d698:
/* 0x8009d698 */ sb	$v0,132($a0)
.L8009d69c:
/* 0x8009d69c */ lw	$a0,2844($v1)
.L8009d6a0:
/* 0x8009d6a0 */ addiu	$v0,$zero,1
.L8009d6a4:
/* 0x8009d6a4 */ sb	$v0,133($a0)
.L8009d6a8:
/* 0x8009d6a8 */ lw	$v0,2844($v1)
.L8009d6ac:
/* 0x8009d6ac */ lw	$v1,3612($a2)
.L8009d6b0:
/* 0x8009d6b0 */ sw	$zero,104($v0)
.L8009d6b4:
/* 0x8009d6b4 */ addiu	$v0,$zero,4
.L8009d6b8:
/* 0x8009d6b8 */ sb	$v0,1($v1)
.L8009d6bc:
/* 0x8009d6bc */ lw	$ra,16($sp)
.L8009d6c0:
/* 0x8009d6c0 */ sll	$zero,$zero,0x0
.L8009d6c4:
/* 0x8009d6c4 */ jr	$ra
.L8009d6c8:
/* 0x8009d6c8 */ addiu	$sp,$sp,24
.size FUN_8009d54c, .-FUN_8009d54c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009d6cc
.globl FUN_8009d6cc
.type FUN_8009d6cc, @function
FUN_8009d6cc:
.L8009d6cc:
/* 0x8009d6cc */ addiu	$sp,$sp,-56
.L8009d6d0:
/* 0x8009d6d0 */ sw	$s2,40($sp)
.L8009d6d4:
/* 0x8009d6d4 */ lui	$s2,0x800e
.L8009d6d8:
/* 0x8009d6d8 */ sw	$s3,44($sp)
.L8009d6dc:
/* 0x8009d6dc */ lw	$v0,2844($s2)
.L8009d6e0:
/* 0x8009d6e0 */ lui	$a0,0x8012
.L8009d6e4:
/* 0x8009d6e4 */ sw	$s0,32($sp)
.L8009d6e8:
/* 0x8009d6e8 */ lui	$s0,0x800e
.L8009d6ec:
/* 0x8009d6ec */ sw	$ra,48($sp)
.L8009d6f0:
/* 0x8009d6f0 */ sw	$s1,36($sp)
.L8009d6f4:
/* 0x8009d6f4 */ lbu	$a1,12($v0)
.L8009d6f8:
/* 0x8009d6f8 */ lw	$a2,3612($s0)
.L8009d6fc:
/* 0x8009d6fc */ sll	$v0,$a1,0x2
.L8009d700:
/* 0x8009d700 */ addu	$v0,$v0,$a1
.L8009d704:
/* 0x8009d704 */ sll	$v1,$v0,0x5
.L8009d708:
/* 0x8009d708 */ subu	$v1,$v1,$v0
.L8009d70c:
/* 0x8009d70c */ lw	$v0,-30424($a0)
.L8009d710:
/* 0x8009d710 */ sll	$v1,$v1,0x4
.L8009d714:
/* 0x8009d714 */ addu	$s1,$v0,$v1
.L8009d718:
/* 0x8009d718 */ lbu	$v1,0($a2)
.L8009d71c:
/* 0x8009d71c */ addiu	$v0,$zero,4
.L8009d720:
/* 0x8009d720 */ beq	$v1,$v0,.L8009d894
.L8009d724:
/* 0x8009d724 */ addu	$s3,$zero,$zero
.L8009d728:
/* 0x8009d728 */ slti	$v0,$v1,5
.L8009d72c:
/* 0x8009d72c */ beq	$v0,$zero,.L8009d770
.L8009d730:
/* 0x8009d730 */ slti	$v0,$v1,245
.L8009d734:
/* 0x8009d734 */ addiu	$s2,$zero,1
.L8009d738:
/* 0x8009d738 */ beq	$v1,$s2,.L8009d7bc
.L8009d73c:
/* 0x8009d73c */ slti	$v0,$v1,2
.L8009d740:
/* 0x8009d740 */ beq	$v0,$zero,.L8009d758
.L8009d744:
/* 0x8009d744 */ addiu	$v0,$zero,2
.L8009d748:
/* 0x8009d748 */ beq	$v1,$zero,.L8009d7ac
.L8009d74c:
/* 0x8009d74c */ addu	$v0,$s3,$zero
.L8009d750:
/* 0x8009d750 */ j	.L8009dab0
.L8009d754:
/* 0x8009d754 */ sll	$zero,$zero,0x0
.L8009d758:
/* 0x8009d758 */ beq	$v1,$v0,.L8009d7cc
.L8009d75c:
/* 0x8009d75c */ addiu	$v0,$zero,3
.L8009d760:
/* 0x8009d760 */ beq	$v1,$v0,.L8009d840
.L8009d764:
/* 0x8009d764 */ addu	$v0,$s3,$zero
.L8009d768:
/* 0x8009d768 */ j	.L8009dab0
.L8009d76c:
/* 0x8009d76c */ sll	$zero,$zero,0x0
.L8009d770:
/* 0x8009d770 */ beq	$v0,$zero,.L8009d798
.L8009d774:
/* 0x8009d774 */ slti	$v0,$v1,241
.L8009d778:
/* 0x8009d778 */ beq	$v0,$zero,.L8009da90
.L8009d77c:
/* 0x8009d77c */ addiu	$v0,$zero,5
.L8009d780:
/* 0x8009d780 */ beq	$v1,$v0,.L8009d9e4
.L8009d784:
/* 0x8009d784 */ addiu	$v0,$zero,240
.L8009d788:
/* 0x8009d788 */ beq	$v1,$v0,.L8009daa0
.L8009d78c:
/* 0x8009d78c */ addu	$v0,$s3,$zero
.L8009d790:
/* 0x8009d790 */ j	.L8009dab0
.L8009d794:
/* 0x8009d794 */ sll	$zero,$zero,0x0
.L8009d798:
/* 0x8009d798 */ addiu	$v0,$zero,255
.L8009d79c:
/* 0x8009d79c */ beq	$v1,$v0,.L8009daa8
.L8009d7a0:
/* 0x8009d7a0 */ addu	$v0,$s3,$zero
.L8009d7a4:
/* 0x8009d7a4 */ j	.L8009dab0
.L8009d7a8:
/* 0x8009d7a8 */ sll	$zero,$zero,0x0
.L8009d7ac:
/* 0x8009d7ac */ jal	0x8009d54c
.L8009d7b0:
/* 0x8009d7b0 */ addiu	$a0,$zero,1
.L8009d7b4:
/* 0x8009d7b4 */ j	.L8009dab0
.L8009d7b8:
/* 0x8009d7b8 */ addu	$v0,$s3,$zero
.L8009d7bc:
/* 0x8009d7bc */ jal	0x8009d54c
.L8009d7c0:
/* 0x8009d7c0 */ addiu	$a0,$zero,2
.L8009d7c4:
/* 0x8009d7c4 */ j	.L8009dab0
.L8009d7c8:
/* 0x8009d7c8 */ addu	$v0,$s3,$zero
.L8009d7cc:
/* 0x8009d7cc */ jal	0x80099edc
.L8009d7d0:
/* 0x8009d7d0 */ sll	$zero,$zero,0x0
.L8009d7d4:
/* 0x8009d7d4 */ addu	$v1,$v0,$zero
.L8009d7d8:
/* 0x8009d7d8 */ sltiu	$v0,$v1,6
.L8009d7dc:
/* 0x8009d7dc */ beq	$v0,$zero,.L8009daac
.L8009d7e0:
/* 0x8009d7e0 */ lui	$v0,0x8002
.L8009d7e4:
/* 0x8009d7e4 */ addiu	$v0,$v0,-2744
.L8009d7e8:
/* 0x8009d7e8 */ sll	$v1,$v1,0x2
.L8009d7ec:
/* 0x8009d7ec */ addu	$v1,$v1,$v0
.L8009d7f0:
/* 0x8009d7f0 */ lw	$v0,0($v1)
.L8009d7f4:
/* 0x8009d7f4 */ sll	$zero,$zero,0x0
.L8009d7f8:
/* 0x8009d7f8 */ jr	$v0
.L8009d7fc:
/* 0x8009d7fc */ sll	$zero,$zero,0x0
.L8009d800:
/* 0x8009d800 */ jal	0x8009d54c
.L8009d804:
/* 0x8009d804 */ addiu	$a0,$zero,3
.L8009d808:
/* 0x8009d808 */ j	.L8009dab0
.L8009d80c:
/* 0x8009d80c */ addu	$v0,$s3,$zero
.L8009d810:
/* 0x8009d810 */ jal	0x8009d54c
.L8009d814:
/* 0x8009d814 */ addiu	$a0,$zero,242
.L8009d818:
/* 0x8009d818 */ j	.L8009dab0
.L8009d81c:
/* 0x8009d81c */ addu	$v0,$s3,$zero
.L8009d820:
/* 0x8009d820 */ jal	0x8009d54c
.L8009d824:
/* 0x8009d824 */ addiu	$a0,$zero,243
.L8009d828:
/* 0x8009d828 */ j	.L8009dab0
.L8009d82c:
/* 0x8009d82c */ addu	$v0,$s3,$zero
.L8009d830:
/* 0x8009d830 */ jal	0x8009d54c
.L8009d834:
/* 0x8009d834 */ addiu	$a0,$zero,244
.L8009d838:
/* 0x8009d838 */ j	.L8009dab0
.L8009d83c:
/* 0x8009d83c */ addu	$v0,$s3,$zero
.L8009d840:
/* 0x8009d840 */ jal	0x8009dacc
.L8009d844:
/* 0x8009d844 */ addu	$a0,$a1,$zero
.L8009d848:
/* 0x8009d848 */ lw	$v0,3612($s0)
.L8009d84c:
/* 0x8009d84c */ sll	$zero,$zero,0x0
.L8009d850:
/* 0x8009d850 */ lbu	$v0,2($v0)
.L8009d854:
/* 0x8009d854 */ sll	$zero,$zero,0x0
.L8009d858:
/* 0x8009d858 */ bne	$v0,$s2,.L8009d86c
.L8009d85c:
/* 0x8009d85c */ addiu	$a0,$zero,4
.L8009d860:
/* 0x8009d860 */ lbu	$v0,2471($s1)
.L8009d864:
/* 0x8009d864 */ j	.L8009d878
.L8009d868:
/* 0x8009d868 */ sb	$v0,2476($s1)
.L8009d86c:
/* 0x8009d86c */ lbu	$v0,2470($s1)
.L8009d870:
/* 0x8009d870 */ sll	$zero,$zero,0x0
.L8009d874:
/* 0x8009d874 */ sb	$v0,2476($s1)
.L8009d878:
/* 0x8009d878 */ sb	$zero,2477($s1)
.L8009d87c:
/* 0x8009d87c */ jal	0x8009d54c
.L8009d880:
/* 0x8009d880 */ sb	$zero,2478($s1)
.L8009d884:
/* 0x8009d884 */ j	.L8009dab0
.L8009d888:
/* 0x8009d888 */ addu	$v0,$s3,$zero
.L8009d88c:
/* 0x8009d88c */ j	.L8009d900
.L8009d890:
/* 0x8009d890 */ sb	$a0,2477($s1)
.L8009d894:
/* 0x8009d894 */ lbu	$v0,2476($s1)
.L8009d898:
/* 0x8009d898 */ sll	$zero,$zero,0x0
.L8009d89c:
/* 0x8009d89c */ beq	$v0,$zero,.L8009d9d4
.L8009d8a0:
/* 0x8009d8a0 */ sll	$zero,$zero,0x0
.L8009d8a4:
/* 0x8009d8a4 */ lbu	$a0,2477($s1)
.L8009d8a8:
/* 0x8009d8a8 */ lbu	$v1,2468($s1)
.L8009d8ac:
/* 0x8009d8ac */ sll	$zero,$zero,0x0
.L8009d8b0:
/* 0x8009d8b0 */ sltu	$v0,$a0,$v1
.L8009d8b4:
/* 0x8009d8b4 */ beq	$v0,$zero,.L8009d904
.L8009d8b8:
/* 0x8009d8b8 */ lui	$v0,0x800e
.L8009d8bc:
/* 0x8009d8bc */ lbu	$a3,2($a2)
.L8009d8c0:
/* 0x8009d8c0 */ addiu	$a1,$zero,1
.L8009d8c4:
/* 0x8009d8c4 */ addu	$a2,$v1,$zero
.L8009d8c8:
/* 0x8009d8c8 */ bne	$a3,$a1,.L8009d8dc
.L8009d8cc:
/* 0x8009d8cc */ sllv	$v0,$a1,$a0
.L8009d8d0:
/* 0x8009d8d0 */ lw	$v1,2464($s1)
.L8009d8d4:
/* 0x8009d8d4 */ j	.L8009d8e8
.L8009d8d8:
/* 0x8009d8d8 */ and	$v1,$v1,$v0
.L8009d8dc:
/* 0x8009d8dc */ lw	$v1,2460($s1)
.L8009d8e0:
/* 0x8009d8e0 */ sll	$zero,$zero,0x0
.L8009d8e4:
/* 0x8009d8e4 */ and	$v1,$v1,$v0
.L8009d8e8:
/* 0x8009d8e8 */ bne	$v1,$zero,.L8009d88c
.L8009d8ec:
/* 0x8009d8ec */ sll	$zero,$zero,0x0
.L8009d8f0:
/* 0x8009d8f0 */ addiu	$a0,$a0,1
.L8009d8f4:
/* 0x8009d8f4 */ sltu	$v0,$a0,$a2
.L8009d8f8:
/* 0x8009d8f8 */ bne	$v0,$zero,.L8009d8c8
.L8009d8fc:
/* 0x8009d8fc */ sll	$zero,$zero,0x0
.L8009d900:
/* 0x8009d900 */ lui	$v0,0x800e
.L8009d904:
/* 0x8009d904 */ lw	$a0,3612($v0)
.L8009d908:
/* 0x8009d908 */ sll	$zero,$zero,0x0
.L8009d90c:
/* 0x8009d90c */ lbu	$v1,3($a0)
.L8009d910:
/* 0x8009d910 */ addiu	$v0,$zero,1
.L8009d914:
/* 0x8009d914 */ bne	$v1,$v0,.L8009d940
.L8009d918:
/* 0x8009d918 */ addiu	$a2,$zero,4
.L8009d91c:
/* 0x8009d91c */ addu	$a2,$zero,$zero
.L8009d920:
/* 0x8009d920 */ lbu	$v0,2478($s1)
.L8009d924:
/* 0x8009d924 */ addiu	$a3,$zero,5
.L8009d928:
/* 0x8009d928 */ sll	$v1,$v0,0x2
.L8009d92c:
/* 0x8009d92c */ addu	$v1,$v1,$v0
.L8009d930:
/* 0x8009d930 */ lw	$v0,8($a0)
.L8009d934:
/* 0x8009d934 */ sll	$v1,$v1,0x7
.L8009d938:
/* 0x8009d938 */ j	.L8009d950
.L8009d93c:
/* 0x8009d93c */ addu	$v1,$v0,$v1
.L8009d940:
/* 0x8009d940 */ lbu	$v0,2478($s1)
.L8009d944:
/* 0x8009d944 */ addiu	$a3,$zero,1
.L8009d948:
/* 0x8009d948 */ sll	$v0,$v0,0x7
.L8009d94c:
/* 0x8009d94c */ addu	$v1,$s1,$v0
.L8009d950:
/* 0x8009d950 */ lbu	$v0,2477($s1)
.L8009d954:
/* 0x8009d954 */ lui	$s0,0x800e
.L8009d958:
/* 0x8009d958 */ sll	$a1,$v0,0x1
.L8009d95c:
/* 0x8009d95c */ addu	$a1,$a1,$v0
.L8009d960:
/* 0x8009d960 */ sll	$a1,$a1,0x3
.L8009d964:
/* 0x8009d964 */ lw	$v0,2844($s0)
.L8009d968:
/* 0x8009d968 */ addiu	$a1,$a1,2100
.L8009d96c:
/* 0x8009d96c */ lbu	$a0,12($v0)
.L8009d970:
/* 0x8009d970 */ addu	$a1,$s1,$a1
.L8009d974:
/* 0x8009d974 */ sw	$v1,16($sp)
.L8009d978:
/* 0x8009d978 */ sw	$zero,20($sp)
.L8009d97c:
/* 0x8009d97c */ jal	0x8009b6e0
.L8009d980:
/* 0x8009d980 */ sw	$zero,24($sp)
.L8009d984:
/* 0x8009d984 */ addiu	$a2,$zero,8
.L8009d988:
/* 0x8009d988 */ lw	$a0,2844($s0)
.L8009d98c:
/* 0x8009d98c */ lbu	$v0,2478($s1)
.L8009d990:
/* 0x8009d990 */ addiu	$a0,$a0,36
.L8009d994:
/* 0x8009d994 */ sll	$a1,$v0,0x1
.L8009d998:
/* 0x8009d998 */ addu	$a1,$a1,$v0
.L8009d99c:
/* 0x8009d99c */ sll	$a1,$a1,0x2
.L8009d9a0:
/* 0x8009d9a0 */ addiu	$a1,$a1,1920
.L8009d9a4:
/* 0x8009d9a4 */ jal	0x80095ce8
.L8009d9a8:
/* 0x8009d9a8 */ addu	$a1,$s1,$a1
.L8009d9ac:
/* 0x8009d9ac */ lbu	$v1,2478($s1)
.L8009d9b0:
/* 0x8009d9b0 */ addiu	$a0,$zero,5
.L8009d9b4:
/* 0x8009d9b4 */ sll	$v0,$v1,0x1
.L8009d9b8:
/* 0x8009d9b8 */ addu	$v0,$v0,$v1
.L8009d9bc:
/* 0x8009d9bc */ sll	$v0,$v0,0x2
.L8009d9c0:
/* 0x8009d9c0 */ addu	$v0,$s1,$v0
.L8009d9c4:
/* 0x8009d9c4 */ jal	0x8009d54c
.L8009d9c8:
/* 0x8009d9c8 */ sb	$zero,1928($v0)
.L8009d9cc:
/* 0x8009d9cc */ j	.L8009dab0
.L8009d9d0:
/* 0x8009d9d0 */ addu	$v0,$s3,$zero
.L8009d9d4:
/* 0x8009d9d4 */ jal	0x8009d54c
.L8009d9d8:
/* 0x8009d9d8 */ addiu	$a0,$zero,240
.L8009d9dc:
/* 0x8009d9dc */ j	.L8009dab0
.L8009d9e0:
/* 0x8009d9e0 */ addu	$v0,$s3,$zero
.L8009d9e4:
/* 0x8009d9e4 */ jal	0x8009a72c
.L8009d9e8:
/* 0x8009d9e8 */ sll	$zero,$zero,0x0
.L8009d9ec:
/* 0x8009d9ec */ addu	$v1,$v0,$zero
.L8009d9f0:
/* 0x8009d9f0 */ addiu	$v0,$zero,1
.L8009d9f4:
/* 0x8009d9f4 */ beq	$v1,$v0,.L8009da18
.L8009d9f8:
/* 0x8009d9f8 */ slti	$v0,$v1,2
.L8009d9fc:
/* 0x8009d9fc */ bne	$v0,$zero,.L8009dab0
.L8009da00:
/* 0x8009da00 */ addu	$v0,$s3,$zero
.L8009da04:
/* 0x8009da04 */ addiu	$v0,$zero,2
.L8009da08:
/* 0x8009da08 */ beq	$v1,$v0,.L8009da80
.L8009da0c:
/* 0x8009da0c */ addu	$v0,$s3,$zero
.L8009da10:
/* 0x8009da10 */ j	.L8009dab0
.L8009da14:
/* 0x8009da14 */ sll	$zero,$zero,0x0
.L8009da18:
/* 0x8009da18 */ lw	$v0,3612($s0)
.L8009da1c:
/* 0x8009da1c */ sll	$zero,$zero,0x0
.L8009da20:
/* 0x8009da20 */ lbu	$v0,3($v0)
.L8009da24:
/* 0x8009da24 */ sll	$zero,$zero,0x0
.L8009da28:
/* 0x8009da28 */ bne	$v0,$v1,.L8009da4c
.L8009da2c:
/* 0x8009da2c */ addiu	$a2,$zero,128
.L8009da30:
/* 0x8009da30 */ lbu	$a1,2478($s1)
.L8009da34:
/* 0x8009da34 */ lw	$v0,2844($s2)
.L8009da38:
/* 0x8009da38 */ sll	$a1,$a1,0x7
.L8009da3c:
/* 0x8009da3c */ lw	$a0,120($v0)
.L8009da40:
/* 0x8009da40 */ addu	$a1,$s1,$a1
.L8009da44:
/* 0x8009da44 */ jal	0x80095ce8
.L8009da48:
/* 0x8009da48 */ addiu	$a0,$a0,512
.L8009da4c:
/* 0x8009da4c */ addiu	$a0,$zero,4
.L8009da50:
/* 0x8009da50 */ lbu	$v0,2476($s1)
.L8009da54:
/* 0x8009da54 */ lbu	$v1,2478($s1)
.L8009da58:
/* 0x8009da58 */ addiu	$v0,$v0,-1
.L8009da5c:
/* 0x8009da5c */ sb	$v0,2476($s1)
.L8009da60:
/* 0x8009da60 */ lbu	$v0,2477($s1)
.L8009da64:
/* 0x8009da64 */ addiu	$v1,$v1,1
.L8009da68:
/* 0x8009da68 */ sb	$v1,2478($s1)
.L8009da6c:
/* 0x8009da6c */ addiu	$v0,$v0,1
.L8009da70:
/* 0x8009da70 */ jal	0x8009d54c
.L8009da74:
/* 0x8009da74 */ sb	$v0,2477($s1)
.L8009da78:
/* 0x8009da78 */ j	.L8009dab0
.L8009da7c:
/* 0x8009da7c */ addu	$v0,$s3,$zero
.L8009da80:
/* 0x8009da80 */ jal	0x8009d54c
.L8009da84:
/* 0x8009da84 */ addiu	$a0,$zero,241
.L8009da88:
/* 0x8009da88 */ j	.L8009dab0
.L8009da8c:
/* 0x8009da8c */ addu	$v0,$s3,$zero
.L8009da90:
/* 0x8009da90 */ jal	0x8009d54c
.L8009da94:
/* 0x8009da94 */ addiu	$a0,$zero,255
.L8009da98:
/* 0x8009da98 */ j	.L8009dab0
.L8009da9c:
/* 0x8009da9c */ addu	$v0,$s3,$zero
.L8009daa0:
/* 0x8009daa0 */ jal	0x8009d54c
.L8009daa4:
/* 0x8009daa4 */ addiu	$a0,$zero,255
.L8009daa8:
/* 0x8009daa8 */ addiu	$s3,$zero,1
.L8009daac:
/* 0x8009daac */ addu	$v0,$s3,$zero
.L8009dab0:
/* 0x8009dab0 */ lw	$ra,48($sp)
.L8009dab4:
/* 0x8009dab4 */ lw	$s3,44($sp)
.L8009dab8:
/* 0x8009dab8 */ lw	$s2,40($sp)
.L8009dabc:
/* 0x8009dabc */ lw	$s1,36($sp)
.L8009dac0:
/* 0x8009dac0 */ lw	$s0,32($sp)
.L8009dac4:
/* 0x8009dac4 */ jr	$ra
.L8009dac8:
/* 0x8009dac8 */ addiu	$sp,$sp,56
.size FUN_8009d6cc, .-FUN_8009d6cc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009dacc
.globl FUN_8009dacc
.type FUN_8009dacc, @function
FUN_8009dacc:
.L8009dacc:
/* 0x8009dacc */ addiu	$sp,$sp,-656
.L8009dad0:
/* 0x8009dad0 */ andi	$a3,$a0,0xff
.L8009dad4:
/* 0x8009dad4 */ sw	$s0,624($sp)
.L8009dad8:
/* 0x8009dad8 */ addiu	$s0,$sp,616
.L8009dadc:
/* 0x8009dadc */ addu	$a0,$s0,$zero
.L8009dae0:
/* 0x8009dae0 */ sw	$s2,632($sp)
.L8009dae4:
/* 0x8009dae4 */ addu	$s2,$zero,$zero
.L8009dae8:
/* 0x8009dae8 */ sw	$s3,636($sp)
.L8009daec:
/* 0x8009daec */ addu	$s3,$s2,$zero
.L8009daf0:
/* 0x8009daf0 */ sll	$v1,$a3,0x2
.L8009daf4:
/* 0x8009daf4 */ lui	$v0,0x800e
.L8009daf8:
/* 0x8009daf8 */ addiu	$v0,$v0,3616
.L8009dafc:
/* 0x8009dafc */ addu	$v0,$v1,$v0
.L8009db00:
/* 0x8009db00 */ lui	$a2,0x8012
.L8009db04:
/* 0x8009db04 */ addu	$v1,$v1,$a3
.L8009db08:
/* 0x8009db08 */ sw	$ra,648($sp)
.L8009db0c:
/* 0x8009db0c */ sw	$s5,644($sp)
.L8009db10:
/* 0x8009db10 */ sw	$s4,640($sp)
.L8009db14:
/* 0x8009db14 */ sw	$s1,628($sp)
.L8009db18:
/* 0x8009db18 */ lw	$a1,0($v0)
.L8009db1c:
/* 0x8009db1c */ sll	$v0,$v1,0x5
.L8009db20:
/* 0x8009db20 */ subu	$v0,$v0,$v1
.L8009db24:
/* 0x8009db24 */ lw	$v1,-30424($a2)
.L8009db28:
/* 0x8009db28 */ sll	$v0,$v0,0x4
.L8009db2c:
/* 0x8009db2c */ jal	0x8003baa8
.L8009db30:
/* 0x8009db30 */ addu	$s1,$v1,$v0
.L8009db34:
/* 0x8009db34 */ addu	$a0,$s0,$zero
.L8009db38:
/* 0x8009db38 */ lui	$a1,0x8002
.L8009db3c:
/* 0x8009db3c */ jal	0x8003ba98
.L8009db40:
/* 0x8009db40 */ addiu	$a1,$a1,-2704
.L8009db44:
/* 0x8009db44 */ addu	$a0,$s0,$zero
.L8009db48:
/* 0x8009db48 */ addiu	$s0,$sp,16
.L8009db4c:
/* 0x8009db4c */ jal	0x8003be18
.L8009db50:
/* 0x8009db50 */ addu	$a1,$s0,$zero
.L8009db54:
/* 0x8009db54 */ bne	$v0,$s0,.L8009db9c
.L8009db58:
/* 0x8009db58 */ sll	$zero,$zero,0x0
.L8009db5c:
/* 0x8009db5c */ addu	$s0,$v0,$zero
.L8009db60:
/* 0x8009db60 */ lw	$v0,24($s0)
.L8009db64:
/* 0x8009db64 */ sll	$zero,$zero,0x0
.L8009db68:
/* 0x8009db68 */ bgez	$v0,.L8009db74
.L8009db6c:
/* 0x8009db6c */ sll	$zero,$zero,0x0
.L8009db70:
/* 0x8009db70 */ addiu	$v0,$v0,8191
.L8009db74:
/* 0x8009db74 */ sra	$v0,$v0,0xd
.L8009db78:
/* 0x8009db78 */ addu	$s3,$s3,$v0
.L8009db7c:
/* 0x8009db7c */ addiu	$s0,$s0,40
.L8009db80:
/* 0x8009db80 */ addiu	$s2,$s2,1
.L8009db84:
/* 0x8009db84 */ jal	0x8003bc48
.L8009db88:
/* 0x8009db88 */ addu	$a0,$s0,$zero
.L8009db8c:
/* 0x8009db8c */ bne	$v0,$s0,.L8009db9c
.L8009db90:
/* 0x8009db90 */ sltiu	$v0,$s3,15
.L8009db94:
/* 0x8009db94 */ bne	$v0,$zero,.L8009db60
.L8009db98:
/* 0x8009db98 */ sll	$zero,$zero,0x0
.L8009db9c:
/* 0x8009db9c */ sb	$s2,2468($s1)
.L8009dba0:
/* 0x8009dba0 */ andi	$v0,$s2,0xff
.L8009dba4:
/* 0x8009dba4 */ addu	$s2,$zero,$zero
.L8009dba8:
/* 0x8009dba8 */ beq	$v0,$zero,.L8009dbec
.L8009dbac:
/* 0x8009dbac */ sb	$s3,2469($s1)
.L8009dbb0:
/* 0x8009dbb0 */ addu	$s4,$s1,$zero
.L8009dbb4:
/* 0x8009dbb4 */ addiu	$s3,$sp,16
.L8009dbb8:
/* 0x8009dbb8 */ addiu	$s0,$zero,2100
.L8009dbbc:
/* 0x8009dbbc */ addu	$a0,$s1,$s0
.L8009dbc0:
/* 0x8009dbc0 */ addu	$a1,$s3,$zero
.L8009dbc4:
/* 0x8009dbc4 */ jal	0x8009df58
.L8009dbc8:
/* 0x8009dbc8 */ addiu	$a2,$zero,20
.L8009dbcc:
/* 0x8009dbcc */ sb	$zero,2120($s4)
.L8009dbd0:
/* 0x8009dbd0 */ addiu	$s4,$s4,24
.L8009dbd4:
/* 0x8009dbd4 */ addiu	$s3,$s3,40
.L8009dbd8:
/* 0x8009dbd8 */ lbu	$v0,2468($s1)
.L8009dbdc:
/* 0x8009dbdc */ addiu	$s2,$s2,1
.L8009dbe0:
/* 0x8009dbe0 */ sltu	$v0,$s2,$v0
.L8009dbe4:
/* 0x8009dbe4 */ bne	$v0,$zero,.L8009dbbc
.L8009dbe8:
/* 0x8009dbe8 */ addiu	$s0,$s0,24
.L8009dbec:
/* 0x8009dbec */ sltiu	$v0,$s2,15
.L8009dbf0:
/* 0x8009dbf0 */ beq	$v0,$zero,.L8009dc20
.L8009dbf4:
/* 0x8009dbf4 */ sll	$v0,$s2,0x1
.L8009dbf8:
/* 0x8009dbf8 */ lui	$a0,0x8002
.L8009dbfc:
/* 0x8009dbfc */ addu	$v0,$v0,$s2
.L8009dc00:
/* 0x8009dc00 */ sll	$v0,$v0,0x3
.L8009dc04:
/* 0x8009dc04 */ addu	$v1,$v0,$s1
.L8009dc08:
/* 0x8009dc08 */ lbu	$v0,-2700($a0)
.L8009dc0c:
/* 0x8009dc0c */ addiu	$s2,$s2,1
.L8009dc10:
/* 0x8009dc10 */ sb	$v0,2100($v1)
.L8009dc14:
/* 0x8009dc14 */ sltiu	$v0,$s2,15
.L8009dc18:
/* 0x8009dc18 */ bne	$v0,$zero,.L8009dc08
.L8009dc1c:
/* 0x8009dc1c */ addiu	$v1,$v1,24
.L8009dc20:
/* 0x8009dc20 */ lbu	$v0,2468($s1)
.L8009dc24:
/* 0x8009dc24 */ addu	$s2,$zero,$zero
.L8009dc28:
/* 0x8009dc28 */ sw	$zero,2460($s1)
.L8009dc2c:
/* 0x8009dc2c */ sb	$zero,2470($s1)
.L8009dc30:
/* 0x8009dc30 */ sw	$zero,2464($s1)
.L8009dc34:
/* 0x8009dc34 */ beq	$v0,$zero,.L8009dd04
.L8009dc38:
/* 0x8009dc38 */ sb	$zero,2471($s1)
.L8009dc3c:
/* 0x8009dc3c */ addiu	$s5,$zero,1
.L8009dc40:
/* 0x8009dc40 */ addiu	$s3,$zero,2100
.L8009dc44:
/* 0x8009dc44 */ addu	$s4,$s1,$zero
.L8009dc48:
/* 0x8009dc48 */ addu	$a0,$s1,$s3
.L8009dc4c:
/* 0x8009dc4c */ lui	$a1,0x8002
.L8009dc50:
/* 0x8009dc50 */ addiu	$a1,$a1,-2696
.L8009dc54:
/* 0x8009dc54 */ lbu	$s0,2112($s4)
.L8009dc58:
/* 0x8009dc58 */ jal	0x80095cd8
.L8009dc5c:
/* 0x8009dc5c */ addiu	$a2,$zero,12
.L8009dc60:
/* 0x8009dc60 */ bne	$v0,$zero,.L8009dc98
.L8009dc64:
/* 0x8009dc64 */ addu	$a0,$s1,$s3
.L8009dc68:
/* 0x8009dc68 */ addiu	$v0,$s0,-97
.L8009dc6c:
/* 0x8009dc6c */ sltiu	$v0,$v0,26
.L8009dc70:
/* 0x8009dc70 */ bne	$v0,$zero,.L8009dc9c
.L8009dc74:
/* 0x8009dc74 */ lui	$a1,0x8002
.L8009dc78:
/* 0x8009dc78 */ sllv	$v0,$s5,$s2
.L8009dc7c:
/* 0x8009dc7c */ lw	$v1,2460($s1)
.L8009dc80:
/* 0x8009dc80 */ lbu	$a0,2470($s1)
.L8009dc84:
/* 0x8009dc84 */ or	$v1,$v1,$v0
.L8009dc88:
/* 0x8009dc88 */ addiu	$a0,$a0,1
.L8009dc8c:
/* 0x8009dc8c */ sw	$v1,2460($s1)
.L8009dc90:
/* 0x8009dc90 */ sb	$a0,2470($s1)
.L8009dc94:
/* 0x8009dc94 */ addu	$a0,$s1,$s3
.L8009dc98:
/* 0x8009dc98 */ lui	$a1,0x8002
.L8009dc9c:
/* 0x8009dc9c */ addiu	$a1,$a1,-2680
.L8009dca0:
/* 0x8009dca0 */ jal	0x80095cd8
.L8009dca4:
/* 0x8009dca4 */ addiu	$a2,$zero,12
.L8009dca8:
/* 0x8009dca8 */ bne	$v0,$zero,.L8009dcec
.L8009dcac:
/* 0x8009dcac */ addiu	$v0,$s0,-97
.L8009dcb0:
/* 0x8009dcb0 */ sltiu	$v0,$v0,26
.L8009dcb4:
/* 0x8009dcb4 */ bne	$v0,$zero,.L8009dcec
.L8009dcb8:
/* 0x8009dcb8 */ sllv	$a0,$s5,$s2
.L8009dcbc:
/* 0x8009dcbc */ lw	$v0,2460($s1)
.L8009dcc0:
/* 0x8009dcc0 */ lw	$v1,2464($s1)
.L8009dcc4:
/* 0x8009dcc4 */ or	$v0,$v0,$a0
.L8009dcc8:
/* 0x8009dcc8 */ sw	$v0,2460($s1)
.L8009dccc:
/* 0x8009dccc */ lbu	$v0,2470($s1)
.L8009dcd0:
/* 0x8009dcd0 */ or	$v1,$v1,$a0
.L8009dcd4:
/* 0x8009dcd4 */ sw	$v1,2464($s1)
.L8009dcd8:
/* 0x8009dcd8 */ lbu	$v1,2471($s1)
.L8009dcdc:
/* 0x8009dcdc */ addiu	$v0,$v0,1
.L8009dce0:
/* 0x8009dce0 */ addiu	$v1,$v1,1
.L8009dce4:
/* 0x8009dce4 */ sb	$v0,2470($s1)
.L8009dce8:
/* 0x8009dce8 */ sb	$v1,2471($s1)
.L8009dcec:
/* 0x8009dcec */ addiu	$s3,$s3,24
.L8009dcf0:
/* 0x8009dcf0 */ lbu	$v0,2468($s1)
.L8009dcf4:
/* 0x8009dcf4 */ addiu	$s2,$s2,1
.L8009dcf8:
/* 0x8009dcf8 */ sltu	$v0,$s2,$v0
.L8009dcfc:
/* 0x8009dcfc */ bne	$v0,$zero,.L8009dc48
.L8009dd00:
/* 0x8009dd00 */ addiu	$s4,$s4,24
.L8009dd04:
/* 0x8009dd04 */ lw	$ra,648($sp)
.L8009dd08:
/* 0x8009dd08 */ lw	$s5,644($sp)
.L8009dd0c:
/* 0x8009dd0c */ lw	$s4,640($sp)
.L8009dd10:
/* 0x8009dd10 */ lw	$s3,636($sp)
.L8009dd14:
/* 0x8009dd14 */ lw	$s2,632($sp)
.L8009dd18:
/* 0x8009dd18 */ lw	$s1,628($sp)
.L8009dd1c:
/* 0x8009dd1c */ lw	$s0,624($sp)
.L8009dd20:
/* 0x8009dd20 */ addiu	$v0,$zero,1
.L8009dd24:
/* 0x8009dd24 */ jr	$ra
.L8009dd28:
/* 0x8009dd28 */ addiu	$sp,$sp,656
.size FUN_8009dacc, .-FUN_8009dacc
