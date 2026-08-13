.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008c7b4
.globl FUN_8008c7b4
.type FUN_8008c7b4, @function
FUN_8008c7b4:
/* Runtime resource and dispatch helper. */
.L8008c7b4:
/* 0x8008c7b4 */ addiu	$sp,$sp,-32
.L8008c7b8:
/* 0x8008c7b8 */ sw	$s1,20($sp)
.L8008c7bc:
/* 0x8008c7bc */ addu	$s1,$a0,$zero
.L8008c7c0:
/* 0x8008c7c0 */ lui	$v0,0x800f
.L8008c7c4:
/* 0x8008c7c4 */ addiu	$a0,$v0,10504
.L8008c7c8:
/* 0x8008c7c8 */ sw	$ra,24($sp)
.L8008c7cc:
/* 0x8008c7cc */ sw	$s0,16($sp)
.L8008c7d0:
/* 0x8008c7d0 */ lh	$v0,28($a0)
.L8008c7d4:
/* 0x8008c7d4 */ sll	$zero,$zero,0x0
.L8008c7d8:
/* 0x8008c7d8 */ slti	$v0,$v0,160
.L8008c7dc:
/* 0x8008c7dc */ beq	$v0,$zero,.L8008c7f4
.L8008c7e0:
/* 0x8008c7e0 */ sll	$zero,$zero,0x0
.L8008c7e4:
/* 0x8008c7e4 */ lbu	$v0,1968($s1)
.L8008c7e8:
/* 0x8008c7e8 */ sll	$zero,$zero,0x0
.L8008c7ec:
/* 0x8008c7ec */ beq	$v0,$zero,.L8008c818
.L8008c7f0:
/* 0x8008c7f0 */ addiu	$v0,$zero,2
.L8008c7f4:
/* 0x8008c7f4 */ sw	$zero,1868($s1)
.L8008c7f8:
/* 0x8008c7f8 */ lw	$v0,1868($s1)
.L8008c7fc:
/* 0x8008c7fc */ sw	$zero,0($s1)
.L8008c800:
/* 0x8008c800 */ sw	$zero,1860($s1)
.L8008c804:
/* 0x8008c804 */ sw	$zero,1872($s1)
.L8008c808:
/* 0x8008c808 */ j	0x8008c950
.L8008c80c:
/* 0x8008c80c */ sw	$v0,1864($s1)
.L8008c810:
/* 0x8008c810 */ j	0x8008c868
.L8008c814:
/* 0x8008c814 */ addu	$a2,$a1,$zero
.L8008c818:
/* 0x8008c818 */ sw	$zero,0($s1)
.L8008c81c:
/* 0x8008c81c */ lb	$v1,26($a0)
.L8008c820:
/* 0x8008c820 */ sll	$zero,$zero,0x0
.L8008c824:
/* 0x8008c824 */ bne	$v1,$v0,.L8008c8ec
.L8008c828:
/* 0x8008c828 */ addiu	$a2,$zero,-1
.L8008c82c:
/* 0x8008c82c */ lw	$v0,1844($s1)
.L8008c830:
/* 0x8008c830 */ sll	$zero,$zero,0x0
.L8008c834:
/* 0x8008c834 */ blez	$v0,.L8008c86c
.L8008c838:
/* 0x8008c838 */ addu	$a1,$zero,$zero
.L8008c83c:
/* 0x8008c83c */ lh	$a3,28($a0)
.L8008c840:
/* 0x8008c840 */ addu	$a0,$v0,$zero
.L8008c844:
/* 0x8008c844 */ addu	$v1,$s1,$zero
.L8008c848:
/* 0x8008c848 */ lh	$v0,342($v1)
.L8008c84c:
/* 0x8008c84c */ sll	$zero,$zero,0x0
.L8008c850:
/* 0x8008c850 */ beq	$v0,$a3,.L8008c810
.L8008c854:
/* 0x8008c854 */ sll	$zero,$zero,0x0
.L8008c858:
/* 0x8008c858 */ addiu	$a1,$a1,1
.L8008c85c:
/* 0x8008c85c */ slt	$v0,$a1,$a0
.L8008c860:
/* 0x8008c860 */ bne	$v0,$zero,.L8008c848
.L8008c864:
/* 0x8008c864 */ addiu	$v1,$v1,2
.L8008c868:
/* 0x8008c868 */ lw	$v0,1844($s1)
.L8008c86c:
/* 0x8008c86c */ sll	$zero,$zero,0x0
.L8008c870:
/* 0x8008c870 */ bne	$a1,$v0,.L8008c87c
.L8008c874:
/* 0x8008c874 */ sll	$zero,$zero,0x0
.L8008c878:
/* 0x8008c878 */ addu	$a2,$zero,$zero
.L8008c87c:
/* 0x8008c87c */ lw	$v0,4($s1)
.L8008c880:
/* 0x8008c880 */ sll	$zero,$zero,0x0
.L8008c884:
/* 0x8008c884 */ blez	$v0,.L8008c8d0
.L8008c888:
/* 0x8008c888 */ addu	$a1,$zero,$zero
.L8008c88c:
/* 0x8008c88c */ addu	$a3,$v0,$zero
.L8008c890:
/* 0x8008c890 */ addu	$a0,$s1,$zero
.L8008c894:
/* 0x8008c894 */ lh	$v1,1722($a0)
.L8008c898:
/* 0x8008c898 */ sll	$zero,$zero,0x0
.L8008c89c:
/* 0x8008c89c */ slt	$v0,$a2,$v1
.L8008c8a0:
/* 0x8008c8a0 */ bne	$v0,$zero,.L8008c8c0
.L8008c8a4:
/* 0x8008c8a4 */ sll	$zero,$zero,0x0
.L8008c8a8:
/* 0x8008c8a8 */ lh	$v0,1782($a0)
.L8008c8ac:
/* 0x8008c8ac */ sll	$zero,$zero,0x0
.L8008c8b0:
/* 0x8008c8b0 */ addu	$v0,$v1,$v0
.L8008c8b4:
/* 0x8008c8b4 */ slt	$v0,$a2,$v0
.L8008c8b8:
/* 0x8008c8b8 */ bne	$v0,$zero,.L8008c8d0
.L8008c8bc:
/* 0x8008c8bc */ sll	$zero,$zero,0x0
.L8008c8c0:
/* 0x8008c8c0 */ addiu	$a1,$a1,1
.L8008c8c4:
/* 0x8008c8c4 */ slt	$v0,$a1,$a3
.L8008c8c8:
/* 0x8008c8c8 */ bne	$v0,$zero,.L8008c894
.L8008c8cc:
/* 0x8008c8cc */ addiu	$a0,$a0,2
.L8008c8d0:
/* 0x8008c8d0 */ lw	$v0,1848($s1)
.L8008c8d4:
/* 0x8008c8d4 */ addiu	$s0,$a1,200
.L8008c8d8:
/* 0x8008c8d8 */ beq	$v0,$s0,.L8008c8ec
.L8008c8dc:
/* 0x8008c8dc */ addu	$a0,$s1,$zero
.L8008c8e0:
/* 0x8008c8e0 */ jal	0x80087050
.L8008c8e4:
/* 0x8008c8e4 */ addu	$a1,$s0,$zero
.L8008c8e8:
/* 0x8008c8e8 */ sw	$s0,1848($s1)
.L8008c8ec:
/* 0x8008c8ec */ lw	$v1,4($s1)
.L8008c8f0:
/* 0x8008c8f0 */ sll	$zero,$zero,0x0
.L8008c8f4:
/* 0x8008c8f4 */ blez	$v1,.L8008c934
.L8008c8f8:
/* 0x8008c8f8 */ addu	$a1,$zero,$zero
.L8008c8fc:
/* 0x8008c8fc */ lui	$v0,0x800f
.L8008c900:
/* 0x8008c900 */ addiu	$a3,$v0,10504
.L8008c904:
/* 0x8008c904 */ addu	$a2,$v1,$zero
.L8008c908:
/* 0x8008c908 */ addu	$a0,$s1,$zero
.L8008c90c:
/* 0x8008c90c */ lh	$v1,22($a0)
.L8008c910:
/* 0x8008c910 */ lh	$v0,28($a3)
.L8008c914:
/* 0x8008c914 */ sll	$zero,$zero,0x0
.L8008c918:
/* 0x8008c918 */ bne	$v1,$v0,.L8008c924
.L8008c91c:
/* 0x8008c91c */ sll	$zero,$zero,0x0
.L8008c920:
/* 0x8008c920 */ sw	$a1,0($s1)
.L8008c924:
/* 0x8008c924 */ addiu	$a1,$a1,1
.L8008c928:
/* 0x8008c928 */ slt	$v0,$a1,$a2
.L8008c92c:
/* 0x8008c92c */ bne	$v0,$zero,.L8008c90c
.L8008c930:
/* 0x8008c930 */ addiu	$a0,$a0,2
.L8008c934:
/* 0x8008c934 */ lw	$v0,0($s1)
.L8008c938:
/* 0x8008c938 */ sw	$zero,1872($s1)
.L8008c93c:
/* 0x8008c93c */ sll	$v0,$v0,0xc
.L8008c940:
/* 0x8008c940 */ sw	$v0,1868($s1)
.L8008c944:
/* 0x8008c944 */ addu	$v1,$v0,$zero
.L8008c948:
/* 0x8008c948 */ sw	$v0,1860($s1)
.L8008c94c:
/* 0x8008c94c */ sw	$v1,1864($s1)
.L8008c950:
/* 0x8008c950 */ lw	$ra,24($sp)
.L8008c954:
/* 0x8008c954 */ lw	$s1,20($sp)
.L8008c958:
/* 0x8008c958 */ lw	$s0,16($sp)
.L8008c95c:
/* 0x8008c95c */ jr	$ra
.L8008c960:
/* 0x8008c960 */ addiu	$sp,$sp,32
.size FUN_8008c7b4, .-FUN_8008c7b4
