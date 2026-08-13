.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008e7bc
.globl FUN_8008e7bc
.type FUN_8008e7bc, @function
FUN_8008e7bc:
/* Runtime resource and state helper. */
.L8008e7bc:
/* 0x8008e7bc */ addiu	$sp,$sp,-24
.L8008e7c0:
/* 0x8008e7c0 */ sw	$s0,16($sp)
.L8008e7c4:
/* 0x8008e7c4 */ sw	$ra,20($sp)
.L8008e7c8:
/* 0x8008e7c8 */ jal	0x8007f67c
.L8008e7cc:
/* 0x8008e7cc */ addu	$s0,$a0,$zero
.L8008e7d0:
/* 0x8008e7d0 */ lbu	$v0,1968($s0)
.L8008e7d4:
/* 0x8008e7d4 */ sll	$zero,$zero,0x0
.L8008e7d8:
/* 0x8008e7d8 */ beq	$v0,$zero,.L8008e858
.L8008e7dc:
/* 0x8008e7dc */ addu	$a0,$zero,$zero
.L8008e7e0:
/* 0x8008e7e0 */ lw	$a0,1864($s0)
.L8008e7e4:
/* 0x8008e7e4 */ sll	$zero,$zero,0x0
.L8008e7e8:
/* 0x8008e7e8 */ bgez	$a0,.L8008e824
.L8008e7ec:
/* 0x8008e7ec */ negu	$v0,$a0
.L8008e7f0:
/* 0x8008e7f0 */ lw	$v1,4($s0)
.L8008e7f4:
/* 0x8008e7f4 */ sll	$zero,$zero,0x0
.L8008e7f8:
/* 0x8008e7f8 */ sll	$v1,$v1,0xc
.L8008e7fc:
/* 0x8008e7fc */ div	$zero,$v0,$v1
.L8008e800:
/* 0x8008e800 */ mfhi	$a0
.L8008e804:
/* 0x8008e804 */ sll	$zero,$zero,0x0
.L8008e808:
/* 0x8008e808 */ subu	$a0,$v1,$a0
.L8008e80c:
/* 0x8008e80c */ div	$zero,$a0,$v1
.L8008e810:
/* 0x8008e810 */ mfhi	$v0
.L8008e814:
/* 0x8008e814 */ sll	$zero,$zero,0x0
.L8008e818:
/* 0x8008e818 */ sra	$v0,$v0,0xc
.L8008e81c:
/* 0x8008e81c */ j	0x8008e844
.L8008e820:
/* 0x8008e820 */ sll	$v0,$v0,0x1
.L8008e824:
/* 0x8008e824 */ lw	$v0,4($s0)
.L8008e828:
/* 0x8008e828 */ sll	$zero,$zero,0x0
.L8008e82c:
/* 0x8008e82c */ sll	$v0,$v0,0xc
.L8008e830:
/* 0x8008e830 */ div	$zero,$a0,$v0
.L8008e834:
/* 0x8008e834 */ mfhi	$v1
.L8008e838:
/* 0x8008e838 */ sll	$zero,$zero,0x0
.L8008e83c:
/* 0x8008e83c */ sra	$v1,$v1,0xc
.L8008e840:
/* 0x8008e840 */ sll	$v0,$v1,0x1
.L8008e844:
/* 0x8008e844 */ addu	$v0,$s0,$v0
.L8008e848:
/* 0x8008e848 */ lh	$v0,22($v0)
.L8008e84c:
/* 0x8008e84c */ sll	$zero,$zero,0x0
.L8008e850:
/* 0x8008e850 */ bne	$v0,$zero,.L8008e890
.L8008e854:
/* 0x8008e854 */ addu	$a0,$zero,$zero
.L8008e858:
/* 0x8008e858 */ addiu	$a1,$zero,-1
.L8008e85c:
/* 0x8008e85c */ lui	$v0,0x800f
.L8008e860:
/* 0x8008e860 */ addiu	$v1,$v0,10504
.L8008e864:
/* 0x8008e864 */ ori	$v0,$zero,0x9284
.L8008e868:
/* 0x8008e868 */ sb	$zero,148($v1)
.L8008e86c:
/* 0x8008e86c */ sb	$zero,147($v1)
.L8008e870:
/* 0x8008e870 */ sh	$a1,150($v1)
.L8008e874:
/* 0x8008e874 */ addu	$v1,$v1,$v0
.L8008e878:
/* 0x8008e878 */ addiu	$a0,$a0,1
.L8008e87c:
/* 0x8008e87c */ slti	$v0,$a0,2
.L8008e880:
/* 0x8008e880 */ bne	$v0,$zero,.L8008e868
.L8008e884:
/* 0x8008e884 */ ori	$v0,$zero,0x9284
.L8008e888:
/* 0x8008e888 */ j	0x8008ea30
.L8008e88c:
/* 0x8008e88c */ lui	$v0,0x800f
.L8008e890:
/* 0x8008e890 */ lw	$a0,1864($s0)
.L8008e894:
/* 0x8008e894 */ sll	$zero,$zero,0x0
.L8008e898:
/* 0x8008e898 */ bgez	$a0,.L8008e8d4
.L8008e89c:
/* 0x8008e89c */ negu	$v0,$a0
.L8008e8a0:
/* 0x8008e8a0 */ lw	$v1,4($s0)
.L8008e8a4:
/* 0x8008e8a4 */ sll	$zero,$zero,0x0
.L8008e8a8:
/* 0x8008e8a8 */ sll	$v1,$v1,0xc
.L8008e8ac:
/* 0x8008e8ac */ div	$zero,$v0,$v1
.L8008e8b0:
/* 0x8008e8b0 */ mfhi	$a0
.L8008e8b4:
/* 0x8008e8b4 */ sll	$zero,$zero,0x0
.L8008e8b8:
/* 0x8008e8b8 */ subu	$a0,$v1,$a0
.L8008e8bc:
/* 0x8008e8bc */ div	$zero,$a0,$v1
.L8008e8c0:
/* 0x8008e8c0 */ mfhi	$v0
.L8008e8c4:
/* 0x8008e8c4 */ sll	$zero,$zero,0x0
.L8008e8c8:
/* 0x8008e8c8 */ sra	$v0,$v0,0xc
.L8008e8cc:
/* 0x8008e8cc */ j	0x8008e8f4
.L8008e8d0:
/* 0x8008e8d0 */ sll	$v0,$v0,0x1
.L8008e8d4:
/* 0x8008e8d4 */ lw	$v0,4($s0)
.L8008e8d8:
/* 0x8008e8d8 */ sll	$zero,$zero,0x0
.L8008e8dc:
/* 0x8008e8dc */ sll	$v0,$v0,0xc
.L8008e8e0:
/* 0x8008e8e0 */ div	$zero,$a0,$v0
.L8008e8e4:
/* 0x8008e8e4 */ mfhi	$v1
.L8008e8e8:
/* 0x8008e8e8 */ sll	$zero,$zero,0x0
.L8008e8ec:
/* 0x8008e8ec */ sra	$v1,$v1,0xc
.L8008e8f0:
/* 0x8008e8f0 */ sll	$v0,$v1,0x1
.L8008e8f4:
/* 0x8008e8f4 */ addu	$v1,$s0,$v0
.L8008e8f8:
/* 0x8008e8f8 */ lui	$v0,0x800f
.L8008e8fc:
/* 0x8008e8fc */ addiu	$a2,$v0,10504
.L8008e900:
/* 0x8008e900 */ lhu	$v0,30($a2)
.L8008e904:
/* 0x8008e904 */ lh	$v1,22($v1)
.L8008e908:
/* 0x8008e908 */ addiu	$v0,$v0,1
.L8008e90c:
/* 0x8008e90c */ addiu	$a1,$v1,-1
.L8008e910:
/* 0x8008e910 */ sh	$v0,30($a2)
.L8008e914:
/* 0x8008e914 */ sltiu	$v0,$a1,30
.L8008e918:
/* 0x8008e918 */ beq	$v0,$zero,.L8008e9ec
.L8008e91c:
/* 0x8008e91c */ addu	$a0,$zero,$zero
.L8008e920:
/* 0x8008e920 */ addiu	$a3,$zero,1
.L8008e924:
/* 0x8008e924 */ addu	$v1,$a2,$zero
.L8008e928:
/* 0x8008e928 */ ori	$v0,$zero,0x9284
.L8008e92c:
/* 0x8008e92c */ sb	$a3,148($v1)
.L8008e930:
/* 0x8008e930 */ sb	$zero,147($v1)
.L8008e934:
/* 0x8008e934 */ sh	$a1,150($v1)
.L8008e938:
/* 0x8008e938 */ addu	$v1,$v1,$v0
.L8008e93c:
/* 0x8008e93c */ addiu	$a0,$a0,1
.L8008e940:
/* 0x8008e940 */ slti	$v0,$a0,2
.L8008e944:
/* 0x8008e944 */ bne	$v0,$zero,.L8008e92c
.L8008e948:
/* 0x8008e948 */ ori	$v0,$zero,0x9284
.L8008e94c:
/* 0x8008e94c */ lui	$v0,0x800f
.L8008e950:
/* 0x8008e950 */ addiu	$a1,$v0,10504
.L8008e954:
/* 0x8008e954 */ lb	$v0,36($a1)
.L8008e958:
/* 0x8008e958 */ addiu	$a0,$zero,2
.L8008e95c:
/* 0x8008e95c */ beq	$v0,$a0,.L8008e9cc
.L8008e960:
/* 0x8008e960 */ addiu	$v1,$zero,4
.L8008e964:
/* 0x8008e964 */ beq	$v0,$v1,.L8008e9cc
.L8008e968:
/* 0x8008e968 */ ori	$v0,$zero,0x8000
.L8008e96c:
/* 0x8008e96c */ addu	$a2,$a1,$v0
.L8008e970:
/* 0x8008e970 */ lb	$v0,4776($a2)
.L8008e974:
/* 0x8008e974 */ sll	$zero,$zero,0x0
.L8008e978:
/* 0x8008e978 */ beq	$v0,$a0,.L8008e9c4
.L8008e97c:
/* 0x8008e97c */ sll	$zero,$zero,0x0
.L8008e980:
/* 0x8008e980 */ beq	$v0,$v1,.L8008e9c4
.L8008e984:
/* 0x8008e984 */ addiu	$v1,$zero,7
.L8008e988:
/* 0x8008e988 */ lbu	$v0,146($a1)
.L8008e98c:
/* 0x8008e98c */ sll	$zero,$zero,0x0
.L8008e990:
/* 0x8008e990 */ beq	$v0,$v1,.L8008e9a0
.L8008e994:
/* 0x8008e994 */ sll	$zero,$zero,0x0
.L8008e998:
/* 0x8008e998 */ bne	$v0,$zero,.L8008e9d0
.L8008e99c:
/* 0x8008e99c */ addu	$v0,$zero,$zero
.L8008e9a0:
/* 0x8008e9a0 */ lbu	$v0,4886($a2)
.L8008e9a4:
/* 0x8008e9a4 */ sll	$zero,$zero,0x0
.L8008e9a8:
/* 0x8008e9a8 */ beq	$v0,$v1,.L8008e9b8
.L8008e9ac:
/* 0x8008e9ac */ sll	$zero,$zero,0x0
.L8008e9b0:
/* 0x8008e9b0 */ bne	$v0,$zero,.L8008e9cc
.L8008e9b4:
/* 0x8008e9b4 */ sll	$zero,$zero,0x0
.L8008e9b8:
/* 0x8008e9b8 */ lui	$v0,0xffff
.L8008e9bc:
/* 0x8008e9bc */ j	0x8008e9d0
.L8008e9c0:
/* 0x8008e9c0 */ ori	$v0,$v0,0x6d7c
.L8008e9c4:
/* 0x8008e9c4 */ j	0x8008e9d0
.L8008e9c8:
/* 0x8008e9c8 */ ori	$v0,$zero,0x9284
.L8008e9cc:
/* 0x8008e9cc */ addu	$v0,$zero,$zero
.L8008e9d0:
/* 0x8008e9d0 */ addu	$v0,$a1,$v0
.L8008e9d4:
/* 0x8008e9d4 */ lui	$a1,0x800f
.L8008e9d8:
/* 0x8008e9d8 */ lh	$a0,150($v0)
.L8008e9dc:
/* 0x8008e9dc */ jal	0x8002a8b0
.L8008e9e0:
/* 0x8008e9e0 */ addiu	$a1,$a1,15276
.L8008e9e4:
/* 0x8008e9e4 */ j	0x8008ea30
.L8008e9e8:
/* 0x8008e9e8 */ lui	$v0,0x800f
.L8008e9ec:
/* 0x8008e9ec */ slti	$v0,$v1,31
.L8008e9f0:
/* 0x8008e9f0 */ bne	$v0,$zero,.L8008ea30
.L8008e9f4:
/* 0x8008e9f4 */ lui	$v0,0x800f
.L8008e9f8:
/* 0x8008e9f8 */ addu	$a0,$zero,$zero
.L8008e9fc:
/* 0x8008e9fc */ addiu	$a3,$zero,1
.L8008ea00:
/* 0x8008ea00 */ addiu	$a1,$v1,-31
.L8008ea04:
/* 0x8008ea04 */ addu	$v1,$a2,$zero
.L8008ea08:
/* 0x8008ea08 */ ori	$v0,$zero,0x9284
.L8008ea0c:
/* 0x8008ea0c */ sb	$zero,148($v1)
.L8008ea10:
/* 0x8008ea10 */ sb	$a3,147($v1)
.L8008ea14:
/* 0x8008ea14 */ sh	$a1,150($v1)
.L8008ea18:
/* 0x8008ea18 */ addu	$v1,$v1,$v0
.L8008ea1c:
/* 0x8008ea1c */ addiu	$a0,$a0,1
.L8008ea20:
/* 0x8008ea20 */ slti	$v0,$a0,2
.L8008ea24:
/* 0x8008ea24 */ bne	$v0,$zero,.L8008ea0c
.L8008ea28:
/* 0x8008ea28 */ ori	$v0,$zero,0x9284
.L8008ea2c:
/* 0x8008ea2c */ lui	$v0,0x800f
.L8008ea30:
/* 0x8008ea30 */ addiu	$v1,$v0,10504
.L8008ea34:
/* 0x8008ea34 */ lb	$v0,36($v1)
.L8008ea38:
/* 0x8008ea38 */ addiu	$a1,$zero,2
.L8008ea3c:
/* 0x8008ea3c */ beq	$v0,$a1,.L8008eaa8
.L8008ea40:
/* 0x8008ea40 */ addiu	$a0,$zero,4
.L8008ea44:
/* 0x8008ea44 */ beq	$v0,$a0,.L8008eaa8
.L8008ea48:
/* 0x8008ea48 */ ori	$v0,$zero,0x8000
.L8008ea4c:
/* 0x8008ea4c */ addu	$a2,$v1,$v0
.L8008ea50:
/* 0x8008ea50 */ lb	$v0,4776($a2)
.L8008ea54:
/* 0x8008ea54 */ sll	$zero,$zero,0x0
.L8008ea58:
/* 0x8008ea58 */ beq	$v0,$a1,.L8008eaa0
.L8008ea5c:
/* 0x8008ea5c */ sll	$zero,$zero,0x0
.L8008ea60:
/* 0x8008ea60 */ beq	$v0,$a0,.L8008eaa0
.L8008ea64:
/* 0x8008ea64 */ sll	$zero,$zero,0x0
.L8008ea68:
/* 0x8008ea68 */ lbu	$v0,146($v1)
.L8008ea6c:
/* 0x8008ea6c */ addiu	$v1,$zero,7
.L8008ea70:
/* 0x8008ea70 */ beq	$v0,$v1,.L8008ea80
.L8008ea74:
/* 0x8008ea74 */ sll	$zero,$zero,0x0
.L8008ea78:
/* 0x8008ea78 */ bne	$v0,$zero,.L8008eaac
.L8008ea7c:
/* 0x8008ea7c */ addu	$a0,$zero,$zero
.L8008ea80:
/* 0x8008ea80 */ lbu	$v0,4886($a2)
.L8008ea84:
/* 0x8008ea84 */ sll	$zero,$zero,0x0
.L8008ea88:
/* 0x8008ea88 */ beq	$v0,$v1,.L8008eaac
.L8008ea8c:
/* 0x8008ea8c */ addiu	$a0,$zero,-1
.L8008ea90:
/* 0x8008ea90 */ bne	$v0,$zero,.L8008eaac
.L8008ea94:
/* 0x8008ea94 */ addu	$a0,$zero,$zero
.L8008ea98:
/* 0x8008ea98 */ j	0x8008eaac
.L8008ea9c:
/* 0x8008ea9c */ addiu	$a0,$zero,-1
.L8008eaa0:
/* 0x8008eaa0 */ j	0x8008eaac
.L8008eaa4:
/* 0x8008eaa4 */ addiu	$a0,$zero,1
.L8008eaa8:
/* 0x8008eaa8 */ addu	$a0,$zero,$zero
.L8008eaac:
/* 0x8008eaac */ lui	$v0,0x800f
.L8008eab0:
/* 0x8008eab0 */ addiu	$a2,$v0,10504
.L8008eab4:
/* 0x8008eab4 */ sll	$v0,$a0,0x3
.L8008eab8:
/* 0x8008eab8 */ addu	$v0,$v0,$a0
.L8008eabc:
/* 0x8008eabc */ sll	$v0,$v0,0x3
.L8008eac0:
/* 0x8008eac0 */ addu	$v0,$v0,$a0
.L8008eac4:
/* 0x8008eac4 */ sll	$v0,$v0,0x2
.L8008eac8:
/* 0x8008eac8 */ addu	$v0,$v0,$a0
.L8008eacc:
/* 0x8008eacc */ sll	$v0,$v0,0x5
.L8008ead0:
/* 0x8008ead0 */ addu	$v0,$v0,$a0
.L8008ead4:
/* 0x8008ead4 */ sll	$v0,$v0,0x2
.L8008ead8:
/* 0x8008ead8 */ addu	$a1,$v0,$a2
.L8008eadc:
/* 0x8008eadc */ lbu	$v1,146($a1)
.L8008eae0:
/* 0x8008eae0 */ addiu	$v0,$zero,2
.L8008eae4:
/* 0x8008eae4 */ bne	$v1,$v0,.L8008eb38
.L8008eae8:
/* 0x8008eae8 */ addiu	$v1,$zero,1
.L8008eaec:
/* 0x8008eaec */ subu	$v1,$v1,$a0
.L8008eaf0:
/* 0x8008eaf0 */ sll	$v0,$v1,0x3
.L8008eaf4:
/* 0x8008eaf4 */ addu	$v0,$v0,$v1
.L8008eaf8:
/* 0x8008eaf8 */ sll	$v0,$v0,0x3
.L8008eafc:
/* 0x8008eafc */ addu	$v0,$v0,$v1
.L8008eb00:
/* 0x8008eb00 */ sll	$v0,$v0,0x2
.L8008eb04:
/* 0x8008eb04 */ addu	$v0,$v0,$v1
.L8008eb08:
/* 0x8008eb08 */ sll	$v0,$v0,0x5
.L8008eb0c:
/* 0x8008eb0c */ addu	$v0,$v0,$v1
.L8008eb10:
/* 0x8008eb10 */ sll	$v0,$v0,0x2
.L8008eb14:
/* 0x8008eb14 */ addu	$v0,$v0,$a2
.L8008eb18:
/* 0x8008eb18 */ addiu	$v1,$zero,7
.L8008eb1c:
/* 0x8008eb1c */ lw	$t0,144($a1)
.L8008eb20:
/* 0x8008eb20 */ lw	$t1,148($a1)
.L8008eb24:
/* 0x8008eb24 */ lw	$t2,152($a1)
.L8008eb28:
/* 0x8008eb28 */ sw	$t0,144($v0)
.L8008eb2c:
/* 0x8008eb2c */ sw	$t1,148($v0)
.L8008eb30:
/* 0x8008eb30 */ sw	$t2,152($v0)
.L8008eb34:
/* 0x8008eb34 */ sb	$v1,146($v0)
.L8008eb38:
/* 0x8008eb38 */ lw	$ra,20($sp)
.L8008eb3c:
/* 0x8008eb3c */ lw	$s0,16($sp)
.L8008eb40:
/* 0x8008eb40 */ jr	$ra
.L8008eb44:
/* 0x8008eb44 */ addiu	$sp,$sp,24
.size FUN_8008e7bc, .-FUN_8008e7bc
