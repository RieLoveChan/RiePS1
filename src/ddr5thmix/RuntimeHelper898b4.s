.set noreorder
.set noat
.set nomacro

.section .text.FUN_800898b4
.globl FUN_800898b4
.type FUN_800898b4, @function
FUN_800898b4:
/* Runtime resource and state update helper. */
.L800898b4:
/* 0x800898b4 */ addiu	$sp,$sp,-56
.L800898b8:
/* 0x800898b8 */ sw	$s0,32($sp)
.L800898bc:
/* 0x800898bc */ addu	$s0,$a0,$zero
.L800898c0:
/* 0x800898c0 */ sw	$s4,48($sp)
.L800898c4:
/* 0x800898c4 */ addu	$s4,$a1,$zero
.L800898c8:
/* 0x800898c8 */ sw	$s2,40($sp)
.L800898cc:
/* 0x800898cc */ addu	$s2,$a2,$zero
.L800898d0:
/* 0x800898d0 */ addiu	$a0,$zero,92
.L800898d4:
/* 0x800898d4 */ sw	$ra,52($sp)
.L800898d8:
/* 0x800898d8 */ sw	$s3,44($sp)
.L800898dc:
/* 0x800898dc */ jal	0x80098880
.L800898e0:
/* 0x800898e0 */ sw	$s1,36($sp)
.L800898e4:
/* 0x800898e4 */ jal	0x80085f8c
.L800898e8:
/* 0x800898e8 */ addu	$s3,$v0,$zero
.L800898ec:
/* 0x800898ec */ lui	$v1,0x800f
.L800898f0:
/* 0x800898f0 */ addiu	$a0,$v1,10504
.L800898f4:
/* 0x800898f4 */ lui	$v1,0x1
.L800898f8:
/* 0x800898f8 */ addu	$v1,$a0,$v1
.L800898fc:
/* 0x800898fc */ lbu	$v1,10107($v1)
.L80089900:
/* 0x80089900 */ sll	$zero,$zero,0x0
.L80089904:
/* 0x80089904 */ beq	$v1,$zero,.L80089914
.L80089908:
/* 0x80089908 */ addu	$s1,$v0,$zero
.L8008990c:
/* 0x8008990c */ j 0x80089b24
.L80089910:
/* 0x80089910 */ addu	$v0,$s2,$zero
.L80089914:
/* 0x80089914 */ lbu	$v0,1968($s0)
.L80089918:
/* 0x80089918 */ sll	$zero,$zero,0x0
.L8008991c:
/* 0x8008991c */ beq	$v0,$zero,.L80089938
.L80089920:
/* 0x80089920 */ sll	$zero,$zero,0x0
.L80089924:
/* 0x80089924 */ lw	$v0,4($a0)
.L80089928:
/* 0x80089928 */ sll	$zero,$zero,0x0
.L8008992c:
/* 0x8008992c */ lw	$v0,12($v0)
.L80089930:
/* 0x80089930 */ j 0x80089a40
.L80089934:
/* 0x80089934 */ andi	$s0,$v0,0x100
.L80089938:
/* 0x80089938 */ lw	$a0,1864($s0)
.L8008993c:
/* 0x8008993c */ sll	$zero,$zero,0x0
.L80089940:
/* 0x80089940 */ bgez	$a0,.L8008997c
.L80089944:
/* 0x80089944 */ negu	$v0,$a0
.L80089948:
/* 0x80089948 */ lw	$v1,4($s0)
.L8008994c:
/* 0x8008994c */ sll	$zero,$zero,0x0
.L80089950:
/* 0x80089950 */ sll	$v1,$v1,0xc
.L80089954:
/* 0x80089954 */ div	$zero,$v0,$v1
.L80089958:
/* 0x80089958 */ mfhi	$a0
.L8008995c:
/* 0x8008995c */ sll	$zero,$zero,0x0
.L80089960:
/* 0x80089960 */ subu	$a0,$v1,$a0
.L80089964:
/* 0x80089964 */ div	$zero,$a0,$v1
.L80089968:
/* 0x80089968 */ mfhi	$v0
.L8008996c:
/* 0x8008996c */ sll	$zero,$zero,0x0
.L80089970:
/* 0x80089970 */ sra	$v0,$v0,0xc
.L80089974:
/* 0x80089974 */ j 0x8008999c
.L80089978:
/* 0x80089978 */ sll	$v0,$v0,0x1
.L8008997c:
/* 0x8008997c */ lw	$v0,4($s0)
.L80089980:
/* 0x80089980 */ sll	$zero,$zero,0x0
.L80089984:
/* 0x80089984 */ sll	$v0,$v0,0xc
.L80089988:
/* 0x80089988 */ div	$zero,$a0,$v0
.L8008998c:
/* 0x8008998c */ mfhi	$v1
.L80089990:
/* 0x80089990 */ sll	$zero,$zero,0x0
.L80089994:
/* 0x80089994 */ sra	$v1,$v1,0xc
.L80089998:
/* 0x80089998 */ sll	$v0,$v1,0x1
.L8008999c:
/* 0x8008999c */ addu	$v0,$s0,$v0
.L800899a0:
/* 0x800899a0 */ lh	$v0,22($v0)
.L800899a4:
/* 0x800899a4 */ sll	$zero,$zero,0x0
.L800899a8:
/* 0x800899a8 */ slti	$v0,$v0,160
.L800899ac:
/* 0x800899ac */ beq	$v0,$zero,.L80089a3c
.L800899b0:
/* 0x800899b0 */ sll	$zero,$zero,0x0
.L800899b4:
/* 0x800899b4 */ lw	$a0,1864($s0)
.L800899b8:
/* 0x800899b8 */ sll	$zero,$zero,0x0
.L800899bc:
/* 0x800899bc */ bgez	$a0,.L800899f8
.L800899c0:
/* 0x800899c0 */ negu	$v0,$a0
.L800899c4:
/* 0x800899c4 */ lw	$v1,4($s0)
.L800899c8:
/* 0x800899c8 */ sll	$zero,$zero,0x0
.L800899cc:
/* 0x800899cc */ sll	$v1,$v1,0xc
.L800899d0:
/* 0x800899d0 */ div	$zero,$v0,$v1
.L800899d4:
/* 0x800899d4 */ mfhi	$a0
.L800899d8:
/* 0x800899d8 */ sll	$zero,$zero,0x0
.L800899dc:
/* 0x800899dc */ subu	$a0,$v1,$a0
.L800899e0:
/* 0x800899e0 */ div	$zero,$a0,$v1
.L800899e4:
/* 0x800899e4 */ mfhi	$v0
.L800899e8:
/* 0x800899e8 */ sll	$zero,$zero,0x0
.L800899ec:
/* 0x800899ec */ sra	$v0,$v0,0xc
.L800899f0:
/* 0x800899f0 */ j 0x80089a18
.L800899f4:
/* 0x800899f4 */ sll	$v0,$v0,0x1
.L800899f8:
/* 0x800899f8 */ lw	$v0,4($s0)
.L800899fc:
/* 0x800899fc */ sll	$zero,$zero,0x0
.L80089a00:
/* 0x80089a00 */ sll	$v0,$v0,0xc
.L80089a04:
/* 0x80089a04 */ div	$zero,$a0,$v0
.L80089a08:
/* 0x80089a08 */ mfhi	$v1
.L80089a0c:
/* 0x80089a0c */ sll	$zero,$zero,0x0
.L80089a10:
/* 0x80089a10 */ sra	$v1,$v1,0xc
.L80089a14:
/* 0x80089a14 */ sll	$v0,$v1,0x1
.L80089a18:
/* 0x80089a18 */ addu	$v0,$s0,$v0
.L80089a1c:
/* 0x80089a1c */ lh	$a0,22($v0)
.L80089a20:
/* 0x80089a20 */ jal	0x8007ee38
.L80089a24:
/* 0x80089a24 */ sll	$zero,$zero,0x0
.L80089a28:
/* 0x80089a28 */ lw	$v0,12($v0)
.L80089a2c:
/* 0x80089a2c */ sll	$zero,$zero,0x0
.L80089a30:
/* 0x80089a30 */ srl	$s0,$v0,0x8
.L80089a34:
/* 0x80089a34 */ j 0x80089a40
.L80089a38:
/* 0x80089a38 */ andi	$s0,$s0,0x1
.L80089a3c:
/* 0x80089a3c */ addu	$s0,$zero,$zero
.L80089a40:
/* 0x80089a40 */ lui	$v0,0x800f
.L80089a44:
/* 0x80089a44 */ addiu	$v1,$v0,10504
.L80089a48:
/* 0x80089a48 */ lb	$v0,23($v1)
.L80089a4c:
/* 0x80089a4c */ sll	$zero,$zero,0x0
.L80089a50:
/* 0x80089a50 */ beq	$v0,$zero,.L80089a5c
.L80089a54:
/* 0x80089a54 */ sll	$zero,$zero,0x0
.L80089a58:
/* 0x80089a58 */ addu	$s0,$zero,$zero
.L80089a5c:
/* 0x80089a5c */ lb	$a0,24($v1)
.L80089a60:
/* 0x80089a60 */ jal	0x80085fcc
.L80089a64:
/* 0x80089a64 */ sll	$zero,$zero,0x0
.L80089a68:
/* 0x80089a68 */ slti	$v0,$v0,3
.L80089a6c:
/* 0x80089a6c */ beq	$v0,$zero,.L80089a80
.L80089a70:
/* 0x80089a70 */ sll	$zero,$zero,0x0
.L80089a74:
/* 0x80089a74 */ beq	$s0,$zero,.L80089a80
.L80089a78:
/* 0x80089a78 */ sll	$zero,$zero,0x0
.L80089a7c:
/* 0x80089a7c */ addiu	$s1,$zero,1
.L80089a80:
/* 0x80089a80 */ beq	$s1,$zero,.L80089a94
.L80089a84:
/* 0x80089a84 */ lui	$v0,0x800f
.L80089a88:
/* 0x80089a88 */ lh	$v0,2($s3)
.L80089a8c:
/* 0x80089a8c */ j 0x80089aa4
.L80089a90:
/* 0x80089a90 */ addiu	$a2,$v0,256
.L80089a94:
/* 0x80089a94 */ lh	$v0,10516($v0)
.L80089a98:
/* 0x80089a98 */ lh	$v1,2($s3)
.L80089a9c:
/* 0x80089a9c */ sll	$v0,$v0,0x6
.L80089aa0:
/* 0x80089aa0 */ addu	$a2,$v1,$v0
.L80089aa4:
/* 0x80089aa4 */ addu	$a0,$s4,$zero
.L80089aa8:
/* 0x80089aa8 */ addu	$a1,$s2,$zero
.L80089aac:
/* 0x80089aac */ addiu	$s1,$zero,64
.L80089ab0:
/* 0x80089ab0 */ addiu	$s0,$zero,12
.L80089ab4:
/* 0x80089ab4 */ lh	$a3,4($s3)
.L80089ab8:
/* 0x80089ab8 */ addiu	$v0,$zero,1
.L80089abc:
/* 0x80089abc */ sw	$v0,24($sp)
.L80089ac0:
/* 0x80089ac0 */ addiu	$v0,$zero,-1
.L80089ac4:
/* 0x80089ac4 */ sw	$s1,16($sp)
.L80089ac8:
/* 0x80089ac8 */ sw	$s0,20($sp)
.L80089acc:
/* 0x80089acc */ jal	0x80048144
.L80089ad0:
/* 0x80089ad0 */ sw	$v0,28($sp)
.L80089ad4:
/* 0x80089ad4 */ addu	$a0,$s4,$zero
.L80089ad8:
/* 0x80089ad8 */ lh	$a2,14($s3)
.L80089adc:
/* 0x80089adc */ lh	$a3,16($s3)
.L80089ae0:
/* 0x80089ae0 */ jal	0x80049208
.L80089ae4:
/* 0x80089ae4 */ addu	$a1,$s2,$zero
.L80089ae8:
/* 0x80089ae8 */ addu	$a0,$s4,$zero
.L80089aec:
/* 0x80089aec */ addu	$a1,$s2,$zero
.L80089af0:
/* 0x80089af0 */ addiu	$a2,$zero,-282
.L80089af4:
/* 0x80089af4 */ addiu	$a3,$zero,-155
.L80089af8:
/* 0x80089af8 */ sw	$s1,16($sp)
.L80089afc:
/* 0x80089afc */ jal	0x80049364
.L80089b00:
/* 0x80089b00 */ sw	$s0,20($sp)
.L80089b04:
/* 0x80089b04 */ addu	$a0,$s4,$zero
.L80089b08:
/* 0x80089b08 */ addu	$a1,$s2,$zero
.L80089b0c:
/* 0x80089b0c */ addiu	$a2,$zero,128
.L80089b10:
/* 0x80089b10 */ addu	$a3,$a2,$zero
.L80089b14:
/* 0x80089b14 */ addu	$v0,$a2,$zero
.L80089b18:
/* 0x80089b18 */ jal	0x800490f8
.L80089b1c:
/* 0x80089b1c */ sw	$v0,16($sp)
.L80089b20:
/* 0x80089b20 */ addiu	$v0,$s2,1
.L80089b24:
/* 0x80089b24 */ lw	$ra,52($sp)
.L80089b28:
/* 0x80089b28 */ lw	$s4,48($sp)
.L80089b2c:
/* 0x80089b2c */ lw	$s3,44($sp)
.L80089b30:
/* 0x80089b30 */ lw	$s2,40($sp)
.L80089b34:
/* 0x80089b34 */ lw	$s1,36($sp)
.L80089b38:
/* 0x80089b38 */ lw	$s0,32($sp)
.L80089b3c:
/* 0x80089b3c */ jr	$ra
.L80089b40:
/* 0x80089b40 */ addiu	$sp,$sp,56
.size FUN_800898b4, .-FUN_800898b4
