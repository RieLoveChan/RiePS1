.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008f54c
.globl FUN_8008f54c
.type FUN_8008f54c, @function
FUN_8008f54c:
/* Runtime resource, timing, and state coordinator. */
.L8008f54c:
/* 0x8008f54c */ addiu	$sp,$sp,-120
.L8008f550:
/* 0x8008f550 */ sw	$s3,92($sp)
.L8008f554:
/* 0x8008f554 */ addu	$s3,$a2,$zero
.L8008f558:
/* 0x8008f558 */ sw	$a0,120($sp)
.L8008f55c:
/* 0x8008f55c */ addiu	$a0,$zero,1
.L8008f560:
/* 0x8008f560 */ sw	$ra,116($sp)
.L8008f564:
/* 0x8008f564 */ sw	$s8,112($sp)
.L8008f568:
/* 0x8008f568 */ sw	$s7,108($sp)
.L8008f56c:
/* 0x8008f56c */ sw	$s6,104($sp)
.L8008f570:
/* 0x8008f570 */ sw	$s5,100($sp)
.L8008f574:
/* 0x8008f574 */ sw	$s4,96($sp)
.L8008f578:
/* 0x8008f578 */ sw	$s2,88($sp)
.L8008f57c:
/* 0x8008f57c */ sw	$s1,84($sp)
.L8008f580:
/* 0x8008f580 */ sw	$s0,80($sp)
.L8008f584:
/* 0x8008f584 */ sw	$a1,124($sp)
.L8008f588:
/* 0x8008f588 */ jal	0x8009ff8c
.L8008f58c:
/* 0x8008f58c */ sw	$a3,132($sp)
.L8008f590:
/* 0x8008f590 */ lw	$t0,120($sp)
.L8008f594:
/* 0x8008f594 */ andi	$v0,$v0,0xff
.L8008f598:
/* 0x8008f598 */ sw	$t0,68($sp)
.L8008f59c:
/* 0x8008f59c */ lw	$t0,132($sp)
.L8008f5a0:
/* 0x8008f5a0 */ addiu	$t1,$zero,192
.L8008f5a4:
/* 0x8008f5a4 */ sw	$v0,56($sp)
.L8008f5a8:
/* 0x8008f5a8 */ sw	$zero,40($sp)
.L8008f5ac:
/* 0x8008f5ac */ sw	$zero,72($sp)
.L8008f5b0:
/* 0x8008f5b0 */ mult	$t0,$t1
.L8008f5b4:
/* 0x8008f5b4 */ mflo	$t0
.L8008f5b8:
/* 0x8008f5b8 */ sw	$t0,64($sp)
.L8008f5bc:
/* 0x8008f5bc */ lw	$t0,68($sp)
.L8008f5c0:
/* 0x8008f5c0 */ sll	$zero,$zero,0x0
.L8008f5c4:
/* 0x8008f5c4 */ lw	$s6,64($t0)
.L8008f5c8:
/* 0x8008f5c8 */ sll	$zero,$zero,0x0
.L8008f5cc:
/* 0x8008f5cc */ bgez	$s6,.L8008f5dc
.L8008f5d0:
/* 0x8008f5d0 */ sll	$v0,$s6,0x2
.L8008f5d4:
/* 0x8008f5d4 */ addu	$s6,$zero,$zero
.L8008f5d8:
/* 0x8008f5d8 */ sll	$v0,$s6,0x2
.L8008f5dc:
/* 0x8008f5dc */ addiu	$s5,$v0,64
.L8008f5e0:
/* 0x8008f5e0 */ lui	$v0,0x8002
.L8008f5e4:
/* 0x8008f5e4 */ addiu	$v0,$v0,-6400
.L8008f5e8:
/* 0x8008f5e8 */ lw	$t1,72($sp)
.L8008f5ec:
/* 0x8008f5ec */ lui	$t0,0x8011
.L8008f5f0:
/* 0x8008f5f0 */ addu	$v0,$t1,$v0
.L8008f5f4:
/* 0x8008f5f4 */ lh	$a0,0($v0)
.L8008f5f8:
/* 0x8008f5f8 */ addiu	$t1,$zero,20
.L8008f5fc:
/* 0x8008f5fc */ sw	$zero,52($sp)
.L8008f600:
/* 0x8008f600 */ lh	$v1,4($v0)
.L8008f604:
/* 0x8008f604 */ addiu	$a1,$t1,-432
.L8008f608:
/* 0x8008f608 */ sw	$v0,17312($t0)
.L8008f60c:
/* 0x8008f60c */ lh	$v0,2($v0)
.L8008f610:
/* 0x8008f610 */ addu	$v1,$v1,$a1
.L8008f614:
/* 0x8008f614 */ addiu	$v0,$v0,-320
.L8008f618:
/* 0x8008f618 */ sw	$v1,48($sp)
.L8008f61c:
/* 0x8008f61c */ jal	0x80085fcc
.L8008f620:
/* 0x8008f620 */ sw	$v0,44($sp)
.L8008f624:
/* 0x8008f624 */ lw	$t0,120($sp)
.L8008f628:
/* 0x8008f628 */ sll	$zero,$zero,0x0
.L8008f62c:
/* 0x8008f62c */ lw	$v1,56($t0)
.L8008f630:
/* 0x8008f630 */ sll	$zero,$zero,0x0
.L8008f634:
/* 0x8008f634 */ bne	$v1,$zero,.L8008f64c
.L8008f638:
/* 0x8008f638 */ addu	$s7,$v0,$zero
.L8008f63c:
/* 0x8008f63c */ lw	$t1,40($sp)
.L8008f640:
/* 0x8008f640 */ sll	$zero,$zero,0x0
.L8008f644:
/* 0x8008f644 */ beq	$t1,$zero,.L8008f680
.L8008f648:
/* 0x8008f648 */ addiu	$t0,$zero,1
.L8008f64c:
/* 0x8008f64c */ lui	$t0,0x8011
.L8008f650:
/* 0x8008f650 */ lw	$v0,17312($t0)
.L8008f654:
/* 0x8008f654 */ sll	$zero,$zero,0x0
.L8008f658:
/* 0x8008f658 */ lh	$v1,0($v0)
.L8008f65c:
/* 0x8008f65c */ addiu	$v0,$zero,1
.L8008f660:
/* 0x8008f660 */ bne	$v1,$v0,.L8008f688
.L8008f664:
/* 0x8008f664 */ addu	$s2,$zero,$zero
.L8008f668:
/* 0x8008f668 */ lw	$t1,56($sp)
.L8008f66c:
/* 0x8008f66c */ sll	$zero,$zero,0x0
.L8008f670:
/* 0x8008f670 */ sllv	$v0,$t1,$v0
.L8008f674:
/* 0x8008f674 */ bne	$s7,$v0,.L8008f68c
.L8008f678:
/* 0x8008f678 */ addu	$s1,$s2,$zero
.L8008f67c:
/* 0x8008f67c */ addiu	$t0,$zero,1
.L8008f680:
/* 0x8008f680 */ sw	$t0,52($sp)
.L8008f684:
/* 0x8008f684 */ addu	$s2,$zero,$zero
.L8008f688:
/* 0x8008f688 */ addu	$s1,$s2,$zero
.L8008f68c:
/* 0x8008f68c */ lw	$t1,68($sp)
.L8008f690:
/* 0x8008f690 */ addu	$s4,$s2,$zero
.L8008f694:
/* 0x8008f694 */ sw	$t1,60($sp)
.L8008f698:
/* 0x8008f698 */ lw	$t0,60($sp)
.L8008f69c:
/* 0x8008f69c */ sll	$zero,$zero,0x0
.L8008f6a0:
/* 0x8008f6a0 */ lw	$v0,60($t0)
.L8008f6a4:
/* 0x8008f6a4 */ beq	$s2,$zero,.L8008f6b0
.L8008f6a8:
/* 0x8008f6a8 */ subu	$a0,$v0,$s4
.L8008f6ac:
/* 0x8008f6ac */ lw	$t1,52($sp)
.L8008f6b0:
/* 0x8008f6b0 */ bne	$s2,$zero,.L8008f6bc
.L8008f6b4:
/* 0x8008f6b4 */ lui	$t1,0x8011
.L8008f6b8:
/* 0x8008f6b8 */ lw	$t0,56($sp)
.L8008f6bc:
/* 0x8008f6bc */ lw	$v1,17312($t1)
.L8008f6c0:
/* 0x8008f6c0 */ sll	$zero,$zero,0x0
.L8008f6c4:
/* 0x8008f6c4 */ addu	$a1,$v1,$s1
.L8008f6c8:
/* 0x8008f6c8 */ lbu	$v0,14($a1)
.L8008f6cc:
/* 0x8008f6cc */ sll	$zero,$zero,0x0
.L8008f6d0:
/* 0x8008f6d0 */ beq	$v0,$zero,.L8008f7cc
.L8008f6d4:
/* 0x8008f6d4 */ lui	$v0,0x6666
.L8008f6d8:
/* 0x8008f6d8 */ ori	$v0,$v0,0x6667
.L8008f6dc:
/* 0x8008f6dc */ sll	$a0,$a0,0xc
.L8008f6e0:
/* 0x8008f6e0 */ mult	$a0,$v0
.L8008f6e4:
/* 0x8008f6e4 */ sra	$a0,$a0,0x1f
.L8008f6e8:
/* 0x8008f6e8 */ lw	$t0,44($sp)
.L8008f6ec:
/* 0x8008f6ec */ mfhi	$t2
.L8008f6f0:
/* 0x8008f6f0 */ sra	$v0,$t2,0x5
.L8008f6f4:
/* 0x8008f6f4 */ subu	$a0,$v0,$a0
.L8008f6f8:
/* 0x8008f6f8 */ lh	$v0,6($v1)
.L8008f6fc:
/* 0x8008f6fc */ lh	$v1,16($a1)
.L8008f700:
/* 0x8008f700 */ addu	$v0,$t0,$v0
.L8008f704:
/* 0x8008f704 */ jal	0x8004964c
.L8008f708:
/* 0x8008f708 */ addu	$s8,$v0,$v1
.L8008f70c:
/* 0x8008f70c */ sll	$v0,$v0,0x3
.L8008f710:
/* 0x8008f710 */ addiu	$v0,$v0,2048
.L8008f714:
/* 0x8008f714 */ sra	$s0,$v0,0xc
.L8008f718:
/* 0x8008f718 */ mult	$s0,$s6
.L8008f71c:
/* 0x8008f71c */ lui	$t0,0x8011
.L8008f720:
/* 0x8008f720 */ lw	$v0,17312($t0)
.L8008f724:
/* 0x8008f724 */ lw	$t1,48($sp)
.L8008f728:
/* 0x8008f728 */ addu	$a0,$v0,$s1
.L8008f72c:
/* 0x8008f72c */ lh	$v0,8($v0)
.L8008f730:
/* 0x8008f730 */ lh	$v1,18($a0)
.L8008f734:
/* 0x8008f734 */ addu	$v0,$t1,$v0
.L8008f738:
/* 0x8008f738 */ mflo	$a1
.L8008f73c:
/* 0x8008f73c */ bgez	$a1,.L8008f748
.L8008f740:
/* 0x8008f740 */ addu	$a2,$v0,$v1
.L8008f744:
/* 0x8008f744 */ addiu	$a1,$a1,15
.L8008f748:
/* 0x8008f748 */ lbu	$v1,15($a0)
.L8008f74c:
/* 0x8008f74c */ sll	$zero,$zero,0x0
.L8008f750:
/* 0x8008f750 */ mult	$v1,$s6
.L8008f754:
/* 0x8008f754 */ sra	$v0,$a1,0x4
.L8008f758:
/* 0x8008f758 */ addiu	$v0,$v0,8
.L8008f75c:
/* 0x8008f75c */ subu	$s0,$a2,$v0
.L8008f760:
/* 0x8008f760 */ mflo	$a0
.L8008f764:
/* 0x8008f764 */ bgez	$a0,.L8008f770
.L8008f768:
/* 0x8008f768 */ addu	$v1,$s0,$v1
.L8008f76c:
/* 0x8008f76c */ addiu	$a0,$a0,15
.L8008f770:
/* 0x8008f770 */ sra	$v0,$a0,0x4
.L8008f774:
/* 0x8008f774 */ subu	$s0,$v1,$v0
.L8008f778:
/* 0x8008f778 */ jal	0x8009ff8c
.L8008f77c:
/* 0x8008f77c */ addiu	$a0,$zero,1
.L8008f780:
/* 0x8008f780 */ lui	$t1,0x8011
.L8008f784:
/* 0x8008f784 */ addu	$a2,$s3,$zero
.L8008f788:
/* 0x8008f788 */ lw	$t0,120($sp)
.L8008f78c:
/* 0x8008f78c */ lw	$a1,124($sp)
.L8008f790:
/* 0x8008f790 */ lw	$v1,17312($t1)
.L8008f794:
/* 0x8008f794 */ lw	$t1,136($sp)
.L8008f798:
/* 0x8008f798 */ addiu	$a0,$t0,84
.L8008f79c:
/* 0x8008f79c */ addu	$v1,$v1,$s1
.L8008f7a0:
/* 0x8008f7a0 */ lbu	$v1,14($v1)
.L8008f7a4:
/* 0x8008f7a4 */ lw	$t0,132($sp)
.L8008f7a8:
/* 0x8008f7a8 */ andi	$a3,$v0,0xff
.L8008f7ac:
/* 0x8008f7ac */ sw	$s8,20($sp)
.L8008f7b0:
/* 0x8008f7b0 */ sw	$s0,24($sp)
.L8008f7b4:
/* 0x8008f7b4 */ sw	$s5,28($sp)
.L8008f7b8:
/* 0x8008f7b8 */ sw	$t1,36($sp)
.L8008f7bc:
/* 0x8008f7bc */ sw	$t0,32($sp)
.L8008f7c0:
/* 0x8008f7c0 */ jal	0x8008f254
.L8008f7c4:
/* 0x8008f7c4 */ sw	$v1,16($sp)
.L8008f7c8:
/* 0x8008f7c8 */ addu	$s3,$v0,$zero
.L8008f7cc:
/* 0x8008f7cc */ addiu	$s1,$s1,6
.L8008f7d0:
/* 0x8008f7d0 */ addiu	$s2,$s2,1
.L8008f7d4:
/* 0x8008f7d4 */ slti	$v0,$s2,2
.L8008f7d8:
/* 0x8008f7d8 */ bne	$v0,$zero,.L8008f698
.L8008f7dc:
/* 0x8008f7dc */ addiu	$s4,$s4,20
.L8008f7e0:
/* 0x8008f7e0 */ lw	$t0,68($sp)
.L8008f7e4:
/* 0x8008f7e4 */ lui	$v0,0x6666
.L8008f7e8:
/* 0x8008f7e8 */ lw	$a0,60($t0)
.L8008f7ec:
/* 0x8008f7ec */ ori	$v0,$v0,0x6667
.L8008f7f0:
/* 0x8008f7f0 */ mult	$a0,$v0
.L8008f7f4:
/* 0x8008f7f4 */ addiu	$s0,$zero,2
.L8008f7f8:
/* 0x8008f7f8 */ lw	$t1,68($sp)
.L8008f7fc:
/* 0x8008f7fc */ sra	$v0,$a0,0x1f
.L8008f800:
/* 0x8008f800 */ mfhi	$t0
.L8008f804:
/* 0x8008f804 */ sra	$v1,$t0,0x5
.L8008f808:
/* 0x8008f808 */ subu	$v1,$v1,$v0
.L8008f80c:
/* 0x8008f80c */ sll	$v0,$v1,0x2
.L8008f810:
/* 0x8008f810 */ addu	$v0,$v0,$v1
.L8008f814:
/* 0x8008f814 */ sll	$v0,$v0,0x4
.L8008f818:
/* 0x8008f818 */ subu	$a0,$a0,$v0
.L8008f81c:
/* 0x8008f81c */ sw	$a0,60($t1)
.L8008f820:
/* 0x8008f820 */ lw	$t0,52($sp)
.L8008f824:
/* 0x8008f824 */ sll	$zero,$zero,0x0
.L8008f828:
/* 0x8008f828 */ beq	$t0,$zero,.L8008f834
.L8008f82c:
/* 0x8008f82c */ sra	$s7,$a0,0x1
.L8008f830:
/* 0x8008f830 */ addiu	$s7,$zero,-1
.L8008f834:
/* 0x8008f834 */ lw	$a0,40($sp)
.L8008f838:
/* 0x8008f838 */ jal	0x8007b9d4
.L8008f83c:
/* 0x8008f83c */ addu	$a1,$s7,$zero
.L8008f840:
/* 0x8008f840 */ lui	$t1,0x8011
.L8008f844:
/* 0x8008f844 */ lw	$a1,17312($t1)
.L8008f848:
/* 0x8008f848 */ sll	$zero,$zero,0x0
.L8008f84c:
/* 0x8008f84c */ lh	$v1,0($a1)
.L8008f850:
/* 0x8008f850 */ addiu	$v0,$zero,5
.L8008f854:
/* 0x8008f854 */ bne	$v1,$v0,.L8008fac4
.L8008f858:
/* 0x8008f858 */ lui	$t0,0x800f
.L8008f85c:
/* 0x8008f85c */ addu	$s0,$s3,$zero
.L8008f860:
/* 0x8008f860 */ addiu	$a0,$zero,102
.L8008f864:
/* 0x8008f864 */ lh	$v0,6($a1)
.L8008f868:
/* 0x8008f868 */ lh	$v1,8($a1)
.L8008f86c:
/* 0x8008f86c */ lw	$t0,44($sp)
.L8008f870:
/* 0x8008f870 */ lw	$t1,48($sp)
.L8008f874:
/* 0x8008f874 */ addu	$s4,$t0,$v0
.L8008f878:
/* 0x8008f878 */ jal	0x80098880
.L8008f87c:
/* 0x8008f87c */ addu	$s2,$t1,$v1
.L8008f880:
/* 0x8008f880 */ bltz	$s7,.L8008f938
.L8008f884:
/* 0x8008f884 */ addu	$s1,$v0,$zero
.L8008f888:
/* 0x8008f888 */ lw	$t0,64($sp)
.L8008f88c:
/* 0x8008f88c */ lw	$t1,136($sp)
.L8008f890:
/* 0x8008f890 */ sll	$zero,$zero,0x0
.L8008f894:
/* 0x8008f894 */ div	$zero,$t0,$t1
.L8008f898:
/* 0x8008f898 */ mflo	$s0
.L8008f89c:
/* 0x8008f89c */ addu	$a1,$s3,$zero
.L8008f8a0:
/* 0x8008f8a0 */ lw	$a0,124($sp)
.L8008f8a4:
/* 0x8008f8a4 */ lh	$a3,4($s1)
.L8008f8a8:
/* 0x8008f8a8 */ lh	$v0,2($s1)
.L8008f8ac:
/* 0x8008f8ac */ lw	$t1,40($sp)
.L8008f8b0:
/* 0x8008f8b0 */ addiu	$t0,$zero,96
.L8008f8b4:
/* 0x8008f8b4 */ sw	$t0,16($sp)
.L8008f8b8:
/* 0x8008f8b8 */ sll	$a2,$t1,0x7
.L8008f8bc:
/* 0x8008f8bc */ addu	$a2,$v0,$a2
.L8008f8c0:
/* 0x8008f8c0 */ sw	$s0,20($sp)
.L8008f8c4:
/* 0x8008f8c4 */ lh	$v1,10($s1)
.L8008f8c8:
/* 0x8008f8c8 */ addiu	$v0,$zero,-1
.L8008f8cc:
/* 0x8008f8cc */ sw	$v0,28($sp)
.L8008f8d0:
/* 0x8008f8d0 */ jal	0x80048144
.L8008f8d4:
/* 0x8008f8d4 */ sw	$v1,24($sp)
.L8008f8d8:
/* 0x8008f8d8 */ addu	$a1,$s3,$zero
.L8008f8dc:
/* 0x8008f8dc */ lw	$a0,124($sp)
.L8008f8e0:
/* 0x8008f8e0 */ lh	$a3,16($s1)
.L8008f8e4:
/* 0x8008f8e4 */ lw	$t0,40($sp)
.L8008f8e8:
/* 0x8008f8e8 */ lh	$v0,14($s1)
.L8008f8ec:
/* 0x8008f8ec */ sll	$a2,$t0,0x4
.L8008f8f0:
/* 0x8008f8f0 */ jal	0x80049208
.L8008f8f4:
/* 0x8008f8f4 */ addu	$a2,$v0,$a2
.L8008f8f8:
/* 0x8008f8f8 */ addu	$a1,$s3,$zero
.L8008f8fc:
/* 0x8008f8fc */ addu	$a2,$s4,$zero
.L8008f900:
/* 0x8008f900 */ addu	$a3,$s2,$zero
.L8008f904:
/* 0x8008f904 */ lw	$a0,124($sp)
.L8008f908:
/* 0x8008f908 */ addiu	$t1,$zero,96
.L8008f90c:
/* 0x8008f90c */ sw	$t1,16($sp)
.L8008f910:
/* 0x8008f910 */ jal	0x80049364
.L8008f914:
/* 0x8008f914 */ sw	$s0,20($sp)
.L8008f918:
/* 0x8008f918 */ addu	$a1,$s3,$zero
.L8008f91c:
/* 0x8008f91c */ addu	$a2,$zero,$zero
.L8008f920:
/* 0x8008f920 */ lw	$a0,124($sp)
.L8008f924:
/* 0x8008f924 */ addu	$a3,$s5,$zero
.L8008f928:
/* 0x8008f928 */ sw	$s5,16($sp)
.L8008f92c:
/* 0x8008f92c */ jal	0x800862bc
.L8008f930:
/* 0x8008f930 */ sw	$s5,20($sp)
.L8008f934:
/* 0x8008f934 */ addiu	$s0,$s3,1
.L8008f938:
/* 0x8008f938 */ jal	0x80098880
.L8008f93c:
/* 0x8008f93c */ addiu	$a0,$zero,100
.L8008f940:
/* 0x8008f940 */ addiu	$a1,$zero,255
.L8008f944:
/* 0x8008f944 */ addiu	$a2,$zero,128
.L8008f948:
/* 0x8008f948 */ sw	$v0,20($sp)
.L8008f94c:
/* 0x8008f94c */ addiu	$v0,$s4,320
.L8008f950:
/* 0x8008f950 */ sw	$v0,24($sp)
.L8008f954:
/* 0x8008f954 */ addiu	$v0,$s2,240
.L8008f958:
/* 0x8008f958 */ addiu	$t0,$zero,96
.L8008f95c:
/* 0x8008f95c */ sw	$t0,32($sp)
.L8008f960:
/* 0x8008f960 */ lw	$t0,120($sp)
.L8008f964:
/* 0x8008f964 */ addiu	$t1,$zero,192
.L8008f968:
/* 0x8008f968 */ sw	$s2,16($sp)
.L8008f96c:
/* 0x8008f96c */ sw	$v0,28($sp)
.L8008f970:
/* 0x8008f970 */ sw	$t1,36($sp)
.L8008f974:
/* 0x8008f974 */ lw	$a0,84($t0)
.L8008f978:
/* 0x8008f978 */ jal	0x8004dab8
.L8008f97c:
/* 0x8008f97c */ addu	$a3,$s4,$zero
.L8008f980:
/* 0x8008f980 */ addu	$s3,$s0,$zero
.L8008f984:
/* 0x8008f984 */ lui	$t0,0x8011
.L8008f988:
/* 0x8008f988 */ lw	$t1,120($sp)
.L8008f98c:
/* 0x8008f98c */ addiu	$a0,$zero,101
.L8008f990:
/* 0x8008f990 */ sw	$v0,84($t1)
.L8008f994:
/* 0x8008f994 */ lw	$v0,17312($t0)
.L8008f998:
/* 0x8008f998 */ lw	$t1,44($sp)
.L8008f99c:
/* 0x8008f99c */ lw	$t0,48($sp)
.L8008f9a0:
/* 0x8008f9a0 */ lh	$v1,10($v0)
.L8008f9a4:
/* 0x8008f9a4 */ lh	$v0,12($v0)
.L8008f9a8:
/* 0x8008f9a8 */ addu	$s4,$t1,$v1
.L8008f9ac:
/* 0x8008f9ac */ jal	0x80098880
.L8008f9b0:
/* 0x8008f9b0 */ addu	$s2,$t0,$v0
.L8008f9b4:
/* 0x8008f9b4 */ bltz	$s7,.L8008fa70
.L8008f9b8:
/* 0x8008f9b8 */ addu	$s1,$v0,$zero
.L8008f9bc:
/* 0x8008f9bc */ lw	$t0,64($sp)
.L8008f9c0:
/* 0x8008f9c0 */ lw	$t1,136($sp)
.L8008f9c4:
/* 0x8008f9c4 */ sll	$zero,$zero,0x0
.L8008f9c8:
/* 0x8008f9c8 */ div	$zero,$t0,$t1
.L8008f9cc:
/* 0x8008f9cc */ mflo	$s0
.L8008f9d0:
/* 0x8008f9d0 */ addu	$a1,$s3,$zero
.L8008f9d4:
/* 0x8008f9d4 */ lw	$a0,124($sp)
.L8008f9d8:
/* 0x8008f9d8 */ lh	$a3,4($s1)
.L8008f9dc:
/* 0x8008f9dc */ lh	$v0,2($s1)
.L8008f9e0:
/* 0x8008f9e0 */ lw	$t1,40($sp)
.L8008f9e4:
/* 0x8008f9e4 */ addiu	$t0,$zero,96
.L8008f9e8:
/* 0x8008f9e8 */ sw	$t0,16($sp)
.L8008f9ec:
/* 0x8008f9ec */ sll	$a2,$t1,0x7
.L8008f9f0:
/* 0x8008f9f0 */ addu	$a2,$v0,$a2
.L8008f9f4:
/* 0x8008f9f4 */ sw	$s0,20($sp)
.L8008f9f8:
/* 0x8008f9f8 */ lh	$v1,10($s1)
.L8008f9fc:
/* 0x8008f9fc */ addiu	$v0,$zero,-1
.L8008fa00:
/* 0x8008fa00 */ sw	$v0,28($sp)
.L8008fa04:
/* 0x8008fa04 */ jal	0x80048144
.L8008fa08:
/* 0x8008fa08 */ sw	$v1,24($sp)
.L8008fa0c:
/* 0x8008fa0c */ addu	$a1,$s3,$zero
.L8008fa10:
/* 0x8008fa10 */ lw	$a0,124($sp)
.L8008fa14:
/* 0x8008fa14 */ lw	$t0,40($sp)
.L8008fa18:
/* 0x8008fa18 */ lh	$a2,14($s1)
.L8008fa1c:
/* 0x8008fa1c */ lh	$a3,16($s1)
.L8008fa20:
/* 0x8008fa20 */ sll	$v0,$t0,0x4
.L8008fa24:
/* 0x8008fa24 */ addu	$a2,$a2,$v0
.L8008fa28:
/* 0x8008fa28 */ jal	0x80049208
.L8008fa2c:
/* 0x8008fa2c */ addiu	$a3,$a3,1
.L8008fa30:
/* 0x8008fa30 */ addu	$a1,$s3,$zero
.L8008fa34:
/* 0x8008fa34 */ addu	$a2,$s4,$zero
.L8008fa38:
/* 0x8008fa38 */ addu	$a3,$s2,$zero
.L8008fa3c:
/* 0x8008fa3c */ lw	$a0,124($sp)
.L8008fa40:
/* 0x8008fa40 */ addiu	$t1,$zero,96
.L8008fa44:
/* 0x8008fa44 */ sw	$t1,16($sp)
.L8008fa48:
/* 0x8008fa48 */ jal	0x80049364
.L8008fa4c:
/* 0x8008fa4c */ sw	$s0,20($sp)
.L8008fa50:
/* 0x8008fa50 */ addu	$a1,$s3,$zero
.L8008fa54:
/* 0x8008fa54 */ addiu	$a2,$zero,1
.L8008fa58:
/* 0x8008fa58 */ lw	$a0,124($sp)
.L8008fa5c:
/* 0x8008fa5c */ addu	$a3,$s5,$zero
.L8008fa60:
/* 0x8008fa60 */ sw	$s5,16($sp)
.L8008fa64:
/* 0x8008fa64 */ jal	0x800862bc
.L8008fa68:
/* 0x8008fa68 */ sw	$s5,20($sp)
.L8008fa6c:
/* 0x8008fa6c */ addiu	$s0,$s3,1
.L8008fa70:
/* 0x8008fa70 */ jal	0x80098880
.L8008fa74:
/* 0x8008fa74 */ addiu	$a0,$zero,100
.L8008fa78:
/* 0x8008fa78 */ addiu	$a1,$zero,255
.L8008fa7c:
/* 0x8008fa7c */ addiu	$a2,$zero,128
.L8008fa80:
/* 0x8008fa80 */ sw	$v0,20($sp)
.L8008fa84:
/* 0x8008fa84 */ addiu	$v0,$s4,320
.L8008fa88:
/* 0x8008fa88 */ sw	$v0,24($sp)
.L8008fa8c:
/* 0x8008fa8c */ addiu	$v0,$s2,240
.L8008fa90:
/* 0x8008fa90 */ addiu	$t0,$zero,96
.L8008fa94:
/* 0x8008fa94 */ sw	$t0,32($sp)
.L8008fa98:
/* 0x8008fa98 */ lw	$t0,120($sp)
.L8008fa9c:
/* 0x8008fa9c */ addiu	$t1,$zero,192
.L8008faa0:
/* 0x8008faa0 */ sw	$s2,16($sp)
.L8008faa4:
/* 0x8008faa4 */ sw	$v0,28($sp)
.L8008faa8:
/* 0x8008faa8 */ sw	$t1,36($sp)
.L8008faac:
/* 0x8008faac */ lw	$a0,84($t0)
.L8008fab0:
/* 0x8008fab0 */ jal	0x8004dab8
.L8008fab4:
/* 0x8008fab4 */ addu	$a3,$s4,$zero
.L8008fab8:
/* 0x8008fab8 */ lw	$t1,120($sp)
.L8008fabc:
/* 0x8008fabc */ j	0x8008fc90
.L8008fac0:
/* 0x8008fac0 */ addu	$s3,$s0,$zero
.L8008fac4:
/* 0x8008fac4 */ addiu	$t0,$t0,10504
.L8008fac8:
/* 0x8008fac8 */ lb	$v0,36($t0)
.L8008facc:
/* 0x8008facc */ sll	$zero,$zero,0x0
.L8008fad0:
/* 0x8008fad0 */ beq	$v0,$s0,.L8008fb48
.L8008fad4:
/* 0x8008fad4 */ addu	$a1,$s3,$zero
.L8008fad8:
/* 0x8008fad8 */ addiu	$v1,$zero,4
.L8008fadc:
/* 0x8008fadc */ beq	$v0,$v1,.L8008fb48
.L8008fae0:
/* 0x8008fae0 */ ori	$v0,$zero,0x8000
.L8008fae4:
/* 0x8008fae4 */ lui	$t1,0x800f
.L8008fae8:
/* 0x8008fae8 */ addiu	$t1,$t1,10504
.L8008faec:
/* 0x8008faec */ addu	$a0,$t1,$v0
.L8008faf0:
/* 0x8008faf0 */ lb	$v0,4776($a0)
.L8008faf4:
/* 0x8008faf4 */ sll	$zero,$zero,0x0
.L8008faf8:
/* 0x8008faf8 */ beq	$v0,$s0,.L8008fb40
.L8008fafc:
/* 0x8008fafc */ sll	$zero,$zero,0x0
.L8008fb00:
/* 0x8008fb00 */ beq	$v0,$v1,.L8008fb40
.L8008fb04:
/* 0x8008fb04 */ addiu	$v1,$zero,7
.L8008fb08:
/* 0x8008fb08 */ lbu	$v0,146($t0)
.L8008fb0c:
/* 0x8008fb0c */ sll	$zero,$zero,0x0
.L8008fb10:
/* 0x8008fb10 */ beq	$v0,$v1,.L8008fb20
.L8008fb14:
/* 0x8008fb14 */ sll	$zero,$zero,0x0
.L8008fb18:
/* 0x8008fb18 */ bne	$v0,$zero,.L8008fb4c
.L8008fb1c:
/* 0x8008fb1c */ addu	$s3,$zero,$zero
.L8008fb20:
/* 0x8008fb20 */ lbu	$v0,4886($a0)
.L8008fb24:
/* 0x8008fb24 */ sll	$zero,$zero,0x0
.L8008fb28:
/* 0x8008fb28 */ beq	$v0,$v1,.L8008fb4c
.L8008fb2c:
/* 0x8008fb2c */ addiu	$s3,$zero,-1
.L8008fb30:
/* 0x8008fb30 */ bne	$v0,$zero,.L8008fb4c
.L8008fb34:
/* 0x8008fb34 */ addu	$s3,$zero,$zero
.L8008fb38:
/* 0x8008fb38 */ j	0x8008fb4c
.L8008fb3c:
/* 0x8008fb3c */ addiu	$s3,$zero,-1
.L8008fb40:
/* 0x8008fb40 */ j	0x8008fb4c
.L8008fb44:
/* 0x8008fb44 */ addiu	$s3,$zero,1
.L8008fb48:
/* 0x8008fb48 */ addu	$s3,$zero,$zero
.L8008fb4c:
/* 0x8008fb4c */ addu	$s2,$a1,$zero
.L8008fb50:
/* 0x8008fb50 */ lui	$t0,0x8011
.L8008fb54:
/* 0x8008fb54 */ addiu	$a0,$zero,102
.L8008fb58:
/* 0x8008fb58 */ lw	$v0,17312($t0)
.L8008fb5c:
/* 0x8008fb5c */ lw	$t1,44($sp)
.L8008fb60:
/* 0x8008fb60 */ lw	$t0,48($sp)
.L8008fb64:
/* 0x8008fb64 */ lh	$v1,6($v0)
.L8008fb68:
/* 0x8008fb68 */ lh	$v0,8($v0)
.L8008fb6c:
/* 0x8008fb6c */ addu	$s6,$t1,$v1
.L8008fb70:
/* 0x8008fb70 */ beq	$s3,$zero,.L8008fb7c
.L8008fb74:
/* 0x8008fb74 */ addu	$s4,$t0,$v0
.L8008fb78:
/* 0x8008fb78 */ addiu	$a0,$zero,101
.L8008fb7c:
/* 0x8008fb7c */ jal	0x80098880
.L8008fb80:
/* 0x8008fb80 */ sll	$zero,$zero,0x0
.L8008fb84:
/* 0x8008fb84 */ bltz	$s7,.L8008fc40
.L8008fb88:
/* 0x8008fb88 */ addu	$s1,$v0,$zero
.L8008fb8c:
/* 0x8008fb8c */ lw	$t0,64($sp)
.L8008fb90:
/* 0x8008fb90 */ lw	$t1,136($sp)
.L8008fb94:
/* 0x8008fb94 */ sll	$zero,$zero,0x0
.L8008fb98:
/* 0x8008fb98 */ div	$zero,$t0,$t1
.L8008fb9c:
/* 0x8008fb9c */ mflo	$s0
.L8008fba0:
/* 0x8008fba0 */ addu	$a1,$s2,$zero
.L8008fba4:
/* 0x8008fba4 */ lw	$a0,124($sp)
.L8008fba8:
/* 0x8008fba8 */ lh	$a3,4($s1)
.L8008fbac:
/* 0x8008fbac */ lh	$v0,2($s1)
.L8008fbb0:
/* 0x8008fbb0 */ lw	$t1,40($sp)
.L8008fbb4:
/* 0x8008fbb4 */ addiu	$t0,$zero,96
.L8008fbb8:
/* 0x8008fbb8 */ sw	$t0,16($sp)
.L8008fbbc:
/* 0x8008fbbc */ sll	$a2,$t1,0x7
.L8008fbc0:
/* 0x8008fbc0 */ addu	$a2,$v0,$a2
.L8008fbc4:
/* 0x8008fbc4 */ sw	$s0,20($sp)
.L8008fbc8:
/* 0x8008fbc8 */ lh	$v1,10($s1)
.L8008fbcc:
/* 0x8008fbcc */ addiu	$v0,$zero,-1
.L8008fbd0:
/* 0x8008fbd0 */ sw	$v0,28($sp)
.L8008fbd4:
/* 0x8008fbd4 */ jal	0x80048144
.L8008fbd8:
/* 0x8008fbd8 */ sw	$v1,24($sp)
.L8008fbdc:
/* 0x8008fbdc */ addu	$a1,$s2,$zero
.L8008fbe0:
/* 0x8008fbe0 */ lw	$a0,124($sp)
.L8008fbe4:
/* 0x8008fbe4 */ lw	$t0,40($sp)
.L8008fbe8:
/* 0x8008fbe8 */ lh	$a2,14($s1)
.L8008fbec:
/* 0x8008fbec */ lh	$a3,16($s1)
.L8008fbf0:
/* 0x8008fbf0 */ sll	$v0,$t0,0x4
.L8008fbf4:
/* 0x8008fbf4 */ addu	$a2,$a2,$v0
.L8008fbf8:
/* 0x8008fbf8 */ jal	0x80049208
.L8008fbfc:
/* 0x8008fbfc */ addu	$a3,$a3,$s3
.L8008fc00:
/* 0x8008fc00 */ addu	$a1,$s2,$zero
.L8008fc04:
/* 0x8008fc04 */ addu	$a2,$s6,$zero
.L8008fc08:
/* 0x8008fc08 */ addu	$a3,$s4,$zero
.L8008fc0c:
/* 0x8008fc0c */ lw	$a0,124($sp)
.L8008fc10:
/* 0x8008fc10 */ addiu	$t1,$zero,96
.L8008fc14:
/* 0x8008fc14 */ sw	$t1,16($sp)
.L8008fc18:
/* 0x8008fc18 */ jal	0x80049364
.L8008fc1c:
/* 0x8008fc1c */ sw	$s0,20($sp)
.L8008fc20:
/* 0x8008fc20 */ addu	$a1,$s2,$zero
.L8008fc24:
/* 0x8008fc24 */ addu	$a2,$s3,$zero
.L8008fc28:
/* 0x8008fc28 */ lw	$a0,124($sp)
.L8008fc2c:
/* 0x8008fc2c */ addu	$a3,$s5,$zero
.L8008fc30:
/* 0x8008fc30 */ sw	$s5,16($sp)
.L8008fc34:
/* 0x8008fc34 */ jal	0x800862bc
.L8008fc38:
/* 0x8008fc38 */ sw	$s5,20($sp)
.L8008fc3c:
/* 0x8008fc3c */ addiu	$s2,$s2,1
.L8008fc40:
/* 0x8008fc40 */ jal	0x80098880
.L8008fc44:
/* 0x8008fc44 */ addiu	$a0,$zero,100
.L8008fc48:
/* 0x8008fc48 */ addiu	$a1,$zero,255
.L8008fc4c:
/* 0x8008fc4c */ addiu	$a2,$zero,128
.L8008fc50:
/* 0x8008fc50 */ sw	$v0,20($sp)
.L8008fc54:
/* 0x8008fc54 */ addiu	$v0,$s6,320
.L8008fc58:
/* 0x8008fc58 */ sw	$v0,24($sp)
.L8008fc5c:
/* 0x8008fc5c */ addiu	$v0,$s4,240
.L8008fc60:
/* 0x8008fc60 */ addiu	$t0,$zero,96
.L8008fc64:
/* 0x8008fc64 */ sw	$t0,32($sp)
.L8008fc68:
/* 0x8008fc68 */ lw	$t0,120($sp)
.L8008fc6c:
/* 0x8008fc6c */ addiu	$t1,$zero,192
.L8008fc70:
/* 0x8008fc70 */ sw	$s4,16($sp)
.L8008fc74:
/* 0x8008fc74 */ sw	$v0,28($sp)
.L8008fc78:
/* 0x8008fc78 */ sw	$t1,36($sp)
.L8008fc7c:
/* 0x8008fc7c */ lw	$a0,84($t0)
.L8008fc80:
/* 0x8008fc80 */ jal	0x8004dab8
.L8008fc84:
/* 0x8008fc84 */ addu	$a3,$s6,$zero
.L8008fc88:
/* 0x8008fc88 */ lw	$t1,120($sp)
.L8008fc8c:
/* 0x8008fc8c */ addu	$s3,$s2,$zero
.L8008fc90:
/* 0x8008fc90 */ sw	$v0,84($t1)
.L8008fc94:
/* 0x8008fc94 */ lw	$t0,48($sp)
.L8008fc98:
/* 0x8008fc98 */ lw	$t1,52($sp)
.L8008fc9c:
/* 0x8008fc9c */ addiu	$t0,$t0,192
.L8008fca0:
/* 0x8008fca0 */ beq	$t1,$zero,.L8008fcb4
.L8008fca4:
/* 0x8008fca4 */ sw	$t0,48($sp)
.L8008fca8:
/* 0x8008fca8 */ srl	$v0,$s5,0x1f
.L8008fcac:
/* 0x8008fcac */ addu	$v0,$s5,$v0
.L8008fcb0:
/* 0x8008fcb0 */ sra	$s5,$v0,0x1
.L8008fcb4:
/* 0x8008fcb4 */ lw	$t0,120($sp)
.L8008fcb8:
/* 0x8008fcb8 */ sll	$zero,$zero,0x0
.L8008fcbc:
/* 0x8008fcbc */ lw	$v0,56($t0)
.L8008fcc0:
/* 0x8008fcc0 */ sll	$zero,$zero,0x0
.L8008fcc4:
/* 0x8008fcc4 */ beq	$v0,$zero,.L8008fce0
.L8008fcc8:
/* 0x8008fcc8 */ sll	$zero,$zero,0x0
.L8008fccc:
/* 0x8008fccc */ lw	$t1,40($sp)
.L8008fcd0:
/* 0x8008fcd0 */ sll	$zero,$zero,0x0
.L8008fcd4:
/* 0x8008fcd4 */ blez	$t1,.L8008fce0
.L8008fcd8:
/* 0x8008fcd8 */ sll	$zero,$zero,0x0
.L8008fcdc:
/* 0x8008fcdc */ sra	$s5,$s5,0x1
.L8008fce0:
/* 0x8008fce0 */ lw	$t0,40($sp)
.L8008fce4:
/* 0x8008fce4 */ sll	$zero,$zero,0x0
.L8008fce8:
/* 0x8008fce8 */ beq	$t0,$zero,.L8008fcf4
.L8008fcec:
/* 0x8008fcec */ addiu	$s2,$zero,164
.L8008fcf0:
/* 0x8008fcf0 */ addiu	$s2,$zero,232
.L8008fcf4:
/* 0x8008fcf4 */ lw	$t1,40($sp)
.L8008fcf8:
/* 0x8008fcf8 */ sll	$zero,$zero,0x0
.L8008fcfc:
/* 0x8008fcfc */ beq	$t1,$zero,.L8008fd08
.L8008fd00:
/* 0x8008fd00 */ addiu	$s1,$zero,80
.L8008fd04:
/* 0x8008fd04 */ addiu	$s1,$zero,112
.L8008fd08:
/* 0x8008fd08 */ jal	0x80098880
.L8008fd0c:
/* 0x8008fd0c */ addiu	$a0,$zero,104
.L8008fd10:
/* 0x8008fd10 */ addu	$s0,$v0,$zero
.L8008fd14:
/* 0x8008fd14 */ lh	$a3,4($s0)
.L8008fd18:
/* 0x8008fd18 */ lw	$t0,40($sp)
.L8008fd1c:
/* 0x8008fd1c */ lh	$a2,2($s0)
.L8008fd20:
/* 0x8008fd20 */ bne	$t0,$zero,.L8008fd2c
.L8008fd24:
/* 0x8008fd24 */ addu	$s4,$s1,$zero
.L8008fd28:
/* 0x8008fd28 */ addiu	$a3,$a3,112
.L8008fd2c:
/* 0x8008fd2c */ lw	$t0,132($sp)
.L8008fd30:
/* 0x8008fd30 */ sll	$zero,$zero,0x0
.L8008fd34:
/* 0x8008fd34 */ mult	$s1,$t0
.L8008fd38:
/* 0x8008fd38 */ mflo	$v1
.L8008fd3c:
/* 0x8008fd3c */ lw	$t0,136($sp)
.L8008fd40:
/* 0x8008fd40 */ sll	$zero,$zero,0x0
.L8008fd44:
/* 0x8008fd44 */ div	$zero,$v1,$t0
.L8008fd48:
/* 0x8008fd48 */ mflo	$s1
.L8008fd4c:
/* 0x8008fd4c */ lw	$a0,124($sp)
.L8008fd50:
/* 0x8008fd50 */ addu	$a1,$s3,$zero
.L8008fd54:
/* 0x8008fd54 */ sw	$s2,16($sp)
.L8008fd58:
/* 0x8008fd58 */ sw	$s1,20($sp)
.L8008fd5c:
/* 0x8008fd5c */ lh	$v1,10($s0)
.L8008fd60:
/* 0x8008fd60 */ addiu	$v0,$zero,-1
.L8008fd64:
/* 0x8008fd64 */ sw	$v0,28($sp)
.L8008fd68:
/* 0x8008fd68 */ jal	0x80048144
.L8008fd6c:
/* 0x8008fd6c */ sw	$v1,24($sp)
.L8008fd70:
/* 0x8008fd70 */ lw	$a0,124($sp)
.L8008fd74:
/* 0x8008fd74 */ lh	$a2,14($s0)
.L8008fd78:
/* 0x8008fd78 */ lh	$a3,16($s0)
.L8008fd7c:
/* 0x8008fd7c */ jal	0x80049208
.L8008fd80:
/* 0x8008fd80 */ addu	$a1,$s3,$zero
.L8008fd84:
/* 0x8008fd84 */ lw	$a0,124($sp)
.L8008fd88:
/* 0x8008fd88 */ lw	$a2,44($sp)
.L8008fd8c:
/* 0x8008fd8c */ lw	$a3,48($sp)
.L8008fd90:
/* 0x8008fd90 */ addu	$a1,$s3,$zero
.L8008fd94:
/* 0x8008fd94 */ sw	$s2,16($sp)
.L8008fd98:
/* 0x8008fd98 */ jal	0x80049364
.L8008fd9c:
/* 0x8008fd9c */ sw	$s1,20($sp)
.L8008fda0:
/* 0x8008fda0 */ addu	$a1,$s3,$zero
.L8008fda4:
/* 0x8008fda4 */ addu	$a2,$s5,$zero
.L8008fda8:
/* 0x8008fda8 */ lw	$a0,124($sp)
.L8008fdac:
/* 0x8008fdac */ addu	$a3,$a2,$zero
.L8008fdb0:
/* 0x8008fdb0 */ jal	0x800490f8
.L8008fdb4:
/* 0x8008fdb4 */ sw	$a2,16($sp)
.L8008fdb8:
/* 0x8008fdb8 */ subu	$s0,$s4,$s1
.L8008fdbc:
/* 0x8008fdbc */ blez	$s0,.L8008fe20
.L8008fdc0:
/* 0x8008fdc0 */ addiu	$s3,$s3,1
.L8008fdc4:
/* 0x8008fdc4 */ jal	0x80098880
.L8008fdc8:
/* 0x8008fdc8 */ addiu	$a0,$zero,100
.L8008fdcc:
/* 0x8008fdcc */ lw	$t1,48($sp)
.L8008fdd0:
/* 0x8008fdd0 */ lw	$t0,44($sp)
.L8008fdd4:
/* 0x8008fdd4 */ addiu	$a1,$zero,255
.L8008fdd8:
/* 0x8008fdd8 */ sw	$v0,20($sp)
.L8008fddc:
/* 0x8008fddc */ addu	$v1,$t1,$s1
.L8008fde0:
/* 0x8008fde0 */ addiu	$v0,$t0,320
.L8008fde4:
/* 0x8008fde4 */ sw	$v0,24($sp)
.L8008fde8:
/* 0x8008fde8 */ addiu	$v0,$s1,240
.L8008fdec:
/* 0x8008fdec */ addu	$v0,$t1,$v0
.L8008fdf0:
/* 0x8008fdf0 */ lw	$t1,120($sp)
.L8008fdf4:
/* 0x8008fdf4 */ addiu	$a2,$zero,128
.L8008fdf8:
/* 0x8008fdf8 */ sw	$s2,32($sp)
.L8008fdfc:
/* 0x8008fdfc */ sw	$s0,36($sp)
.L8008fe00:
/* 0x8008fe00 */ sw	$v1,16($sp)
.L8008fe04:
/* 0x8008fe04 */ sw	$v0,28($sp)
.L8008fe08:
/* 0x8008fe08 */ lw	$a0,84($t1)
.L8008fe0c:
/* 0x8008fe0c */ jal	0x8004dab8
.L8008fe10:
/* 0x8008fe10 */ addu	$a3,$t0,$zero
.L8008fe14:
/* 0x8008fe14 */ lw	$t0,120($sp)
.L8008fe18:
/* 0x8008fe18 */ sll	$zero,$zero,0x0
.L8008fe1c:
/* 0x8008fe1c */ sw	$v0,84($t0)
.L8008fe20:
/* 0x8008fe20 */ lui	$t1,0x8011
.L8008fe24:
/* 0x8008fe24 */ lui	$t0,0x800f
.L8008fe28:
/* 0x8008fe28 */ lw	$v0,17312($t1)
.L8008fe2c:
/* 0x8008fe2c */ addiu	$t0,$t0,10504
.L8008fe30:
/* 0x8008fe30 */ lh	$v1,0($v0)
.L8008fe34:
/* 0x8008fe34 */ lb	$v0,24($t0)
.L8008fe38:
/* 0x8008fe38 */ sll	$zero,$zero,0x0
.L8008fe3c:
/* 0x8008fe3c */ bne	$v1,$v0,.L8008fe70
.L8008fe40:
/* 0x8008fe40 */ sll	$zero,$zero,0x0
.L8008fe44:
/* 0x8008fe44 */ lw	$t1,68($sp)
.L8008fe48:
/* 0x8008fe48 */ sll	$zero,$zero,0x0
.L8008fe4c:
/* 0x8008fe4c */ lw	$v0,60($t1)
.L8008fe50:
/* 0x8008fe50 */ lw	$v1,64($t1)
.L8008fe54:
/* 0x8008fe54 */ addiu	$v0,$v0,1
.L8008fe58:
/* 0x8008fe58 */ sw	$v0,60($t1)
.L8008fe5c:
/* 0x8008fe5c */ slti	$v0,$v1,16
.L8008fe60:
/* 0x8008fe60 */ beq	$v0,$zero,.L8008fea0
.L8008fe64:
/* 0x8008fe64 */ addiu	$v0,$v1,1
.L8008fe68:
/* 0x8008fe68 */ j	0x8008fea0
.L8008fe6c:
/* 0x8008fe6c */ sw	$v0,64($t1)
.L8008fe70:
/* 0x8008fe70 */ lw	$t0,68($sp)
.L8008fe74:
/* 0x8008fe74 */ sll	$zero,$zero,0x0
.L8008fe78:
/* 0x8008fe78 */ lw	$v0,64($t0)
.L8008fe7c:
/* 0x8008fe7c */ sll	$zero,$zero,0x0
.L8008fe80:
/* 0x8008fe80 */ bltz	$v0,.L8008fea0
.L8008fe84:
/* 0x8008fe84 */ sll	$zero,$zero,0x0
.L8008fe88:
/* 0x8008fe88 */ lw	$v0,60($t0)
.L8008fe8c:
/* 0x8008fe8c */ lw	$v1,64($t0)
.L8008fe90:
/* 0x8008fe90 */ addiu	$v0,$v0,1
.L8008fe94:
/* 0x8008fe94 */ addiu	$v1,$v1,-1
.L8008fe98:
/* 0x8008fe98 */ sw	$v0,60($t0)
.L8008fe9c:
/* 0x8008fe9c */ sw	$v1,64($t0)
.L8008fea0:
/* 0x8008fea0 */ lw	$t1,68($sp)
.L8008fea4:
/* 0x8008fea4 */ lw	$t0,72($sp)
.L8008fea8:
/* 0x8008fea8 */ addiu	$t1,$t1,8
.L8008feac:
/* 0x8008feac */ sw	$t1,68($sp)
.L8008feb0:
/* 0x8008feb0 */ lw	$t1,40($sp)
.L8008feb4:
/* 0x8008feb4 */ addiu	$t0,$t0,26
.L8008feb8:
/* 0x8008feb8 */ sw	$t0,72($sp)
.L8008febc:
/* 0x8008febc */ addiu	$t1,$t1,1
.L8008fec0:
/* 0x8008fec0 */ slti	$v0,$t1,3
.L8008fec4:
/* 0x8008fec4 */ bne	$v0,$zero,.L8008f5bc
.L8008fec8:
/* 0x8008fec8 */ sw	$t1,40($sp)
.L8008fecc:
/* 0x8008fecc */ addu	$v0,$s3,$zero
.L8008fed0:
/* 0x8008fed0 */ lw	$ra,116($sp)
.L8008fed4:
/* 0x8008fed4 */ lw	$s8,112($sp)
.L8008fed8:
/* 0x8008fed8 */ lw	$s7,108($sp)
.L8008fedc:
/* 0x8008fedc */ lw	$s6,104($sp)
.L8008fee0:
/* 0x8008fee0 */ lw	$s5,100($sp)
.L8008fee4:
/* 0x8008fee4 */ lw	$s4,96($sp)
.L8008fee8:
/* 0x8008fee8 */ lw	$s3,92($sp)
.L8008feec:
/* 0x8008feec */ lw	$s2,88($sp)
.L8008fef0:
/* 0x8008fef0 */ lw	$s1,84($sp)
.L8008fef4:
/* 0x8008fef4 */ lw	$s0,80($sp)
.L8008fef8:
/* 0x8008fef8 */ jr	$ra
.L8008fefc:
/* 0x8008fefc */ addiu	$sp,$sp,120
.size FUN_8008f54c, .-FUN_8008f54c
