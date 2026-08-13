.set noreorder
.set noat
.set nomacro

.section .text.FUN_80088888
.globl FUN_80088888
.type FUN_80088888, @function
FUN_80088888:
/* Runtime resource and record processing helper. */
.L80088888:
/* 0x80088888 */ addiu	$sp,$sp,-88
.L8008888c:
/* 0x8008888c */ sw	$s0,48($sp)
.L80088890:
/* 0x80088890 */ addu	$s0,$a0,$zero
.L80088894:
/* 0x80088894 */ sw	$s6,72($sp)
.L80088898:
/* 0x80088898 */ addu	$s6,$a2,$zero
.L8008889c:
/* 0x8008889c */ sw	$s3,60($sp)
.L800888a0:
/* 0x800888a0 */ sw	$ra,84($sp)
.L800888a4:
/* 0x800888a4 */ sw	$s8,80($sp)
.L800888a8:
/* 0x800888a8 */ sw	$s7,76($sp)
.L800888ac:
/* 0x800888ac */ sw	$s5,68($sp)
.L800888b0:
/* 0x800888b0 */ sw	$s4,64($sp)
.L800888b4:
/* 0x800888b4 */ sw	$s2,56($sp)
.L800888b8:
/* 0x800888b8 */ sw	$s1,52($sp)
.L800888bc:
/* 0x800888bc */ sw	$a1,92($sp)
.L800888c0:
/* 0x800888c0 */ lbu	$v0,1968($s0)
.L800888c4:
/* 0x800888c4 */ lw	$s4,104($sp)
.L800888c8:
/* 0x800888c8 */ beq	$v0,$zero,.L800888dc
.L800888cc:
/* 0x800888cc */ addu	$s3,$a3,$zero
.L800888d0:
/* 0x800888d0 */ addiu	$s5,$zero,72
.L800888d4:
/* 0x800888d4 */ j 0x80088b40
.L800888d8:
/* 0x800888d8 */ addiu	$s2,$zero,1
.L800888dc:
/* 0x800888dc */ lui	$v0,0x800f
.L800888e0:
/* 0x800888e0 */ lb	$v0,10527($v0)
.L800888e4:
/* 0x800888e4 */ sll	$zero,$zero,0x0
.L800888e8:
/* 0x800888e8 */ bne	$v0,$zero,.L80088cf0
.L800888ec:
/* 0x800888ec */ addu	$v0,$s6,$zero
.L800888f0:
/* 0x800888f0 */ lw	$v0,1868($s0)
.L800888f4:
/* 0x800888f4 */ sll	$zero,$zero,0x0
.L800888f8:
/* 0x800888f8 */ andi	$s1,$v0,0xfff
.L800888fc:
/* 0x800888fc */ subu	$v1,$v0,$s1
.L80088900:
/* 0x80088900 */ bgez	$v1,.L8008893c
.L80088904:
/* 0x80088904 */ subu	$v0,$s1,$v0
.L80088908:
/* 0x80088908 */ lw	$v1,4($s0)
.L8008890c:
/* 0x8008890c */ sll	$zero,$zero,0x0
.L80088910:
/* 0x80088910 */ sll	$v1,$v1,0xc
.L80088914:
/* 0x80088914 */ div	$zero,$v0,$v1
.L80088918:
/* 0x80088918 */ mfhi	$a0
.L8008891c:
/* 0x8008891c */ sll	$zero,$zero,0x0
.L80088920:
/* 0x80088920 */ subu	$a0,$v1,$a0
.L80088924:
/* 0x80088924 */ div	$zero,$a0,$v1
.L80088928:
/* 0x80088928 */ mfhi	$v0
.L8008892c:
/* 0x8008892c */ sll	$zero,$zero,0x0
.L80088930:
/* 0x80088930 */ sra	$v0,$v0,0xc
.L80088934:
/* 0x80088934 */ j 0x8008895c
.L80088938:
/* 0x80088938 */ sll	$v0,$v0,0x1
.L8008893c:
/* 0x8008893c */ lw	$v0,4($s0)
.L80088940:
/* 0x80088940 */ sll	$zero,$zero,0x0
.L80088944:
/* 0x80088944 */ sll	$v0,$v0,0xc
.L80088948:
/* 0x80088948 */ div	$zero,$v1,$v0
.L8008894c:
/* 0x8008894c */ mfhi	$v1
.L80088950:
/* 0x80088950 */ sll	$zero,$zero,0x0
.L80088954:
/* 0x80088954 */ sra	$v1,$v1,0xc
.L80088958:
/* 0x80088958 */ sll	$v0,$v1,0x1
.L8008895c:
/* 0x8008895c */ addu	$v0,$s0,$v0
.L80088960:
/* 0x80088960 */ lh	$v0,22($v0)
.L80088964:
/* 0x80088964 */ sll	$zero,$zero,0x0
.L80088968:
/* 0x80088968 */ slti	$v0,$v0,160
.L8008896c:
/* 0x8008896c */ beq	$v0,$zero,.L80088a04
.L80088970:
/* 0x80088970 */ addu	$s2,$zero,$zero
.L80088974:
/* 0x80088974 */ lw	$v0,1868($s0)
.L80088978:
/* 0x80088978 */ sll	$zero,$zero,0x0
.L8008897c:
/* 0x8008897c */ subu	$v1,$v0,$s1
.L80088980:
/* 0x80088980 */ bgez	$v1,.L800889bc
.L80088984:
/* 0x80088984 */ subu	$v0,$s1,$v0
.L80088988:
/* 0x80088988 */ lw	$v1,4($s0)
.L8008898c:
/* 0x8008898c */ sll	$zero,$zero,0x0
.L80088990:
/* 0x80088990 */ sll	$v1,$v1,0xc
.L80088994:
/* 0x80088994 */ div	$zero,$v0,$v1
.L80088998:
/* 0x80088998 */ mfhi	$a0
.L8008899c:
/* 0x8008899c */ sll	$zero,$zero,0x0
.L800889a0:
/* 0x800889a0 */ subu	$a0,$v1,$a0
.L800889a4:
/* 0x800889a4 */ div	$zero,$a0,$v1
.L800889a8:
/* 0x800889a8 */ mfhi	$v0
.L800889ac:
/* 0x800889ac */ sll	$zero,$zero,0x0
.L800889b0:
/* 0x800889b0 */ sra	$v0,$v0,0xc
.L800889b4:
/* 0x800889b4 */ j 0x800889dc
.L800889b8:
/* 0x800889b8 */ sll	$v0,$v0,0x1
.L800889bc:
/* 0x800889bc */ lw	$v0,4($s0)
.L800889c0:
/* 0x800889c0 */ sll	$zero,$zero,0x0
.L800889c4:
/* 0x800889c4 */ sll	$v0,$v0,0xc
.L800889c8:
/* 0x800889c8 */ div	$zero,$v1,$v0
.L800889cc:
/* 0x800889cc */ mfhi	$v1
.L800889d0:
/* 0x800889d0 */ sll	$zero,$zero,0x0
.L800889d4:
/* 0x800889d4 */ sra	$v1,$v1,0xc
.L800889d8:
/* 0x800889d8 */ sll	$v0,$v1,0x1
.L800889dc:
/* 0x800889dc */ addu	$v0,$s0,$v0
.L800889e0:
/* 0x800889e0 */ lh	$a0,22($v0)
.L800889e4:
/* 0x800889e4 */ jal	0x8007ee38
.L800889e8:
/* 0x800889e8 */ addiu	$s2,$zero,72
.L800889ec:
/* 0x800889ec */ lw	$v0,12($v0)
.L800889f0:
/* 0x800889f0 */ sll	$zero,$zero,0x0
.L800889f4:
/* 0x800889f4 */ andi	$v0,$v0,0x100
.L800889f8:
/* 0x800889f8 */ bne	$v0,$zero,.L80088a04
.L800889fc:
/* 0x800889fc */ sll	$zero,$zero,0x0
.L80088a00:
/* 0x80088a00 */ addu	$s2,$zero,$zero
.L80088a04:
/* 0x80088a04 */ lw	$v0,1868($s0)
.L80088a08:
/* 0x80088a08 */ sll	$zero,$zero,0x0
.L80088a0c:
/* 0x80088a0c */ subu	$v0,$v0,$s1
.L80088a10:
/* 0x80088a10 */ addiu	$a0,$v0,4096
.L80088a14:
/* 0x80088a14 */ bgez	$a0,.L80088a50
.L80088a18:
/* 0x80088a18 */ negu	$v0,$a0
.L80088a1c:
/* 0x80088a1c */ lw	$v1,4($s0)
.L80088a20:
/* 0x80088a20 */ sll	$zero,$zero,0x0
.L80088a24:
/* 0x80088a24 */ sll	$v1,$v1,0xc
.L80088a28:
/* 0x80088a28 */ div	$zero,$v0,$v1
.L80088a2c:
/* 0x80088a2c */ mfhi	$a0
.L80088a30:
/* 0x80088a30 */ sll	$zero,$zero,0x0
.L80088a34:
/* 0x80088a34 */ subu	$a0,$v1,$a0
.L80088a38:
/* 0x80088a38 */ div	$zero,$a0,$v1
.L80088a3c:
/* 0x80088a3c */ mfhi	$v0
.L80088a40:
/* 0x80088a40 */ sll	$zero,$zero,0x0
.L80088a44:
/* 0x80088a44 */ sra	$v0,$v0,0xc
.L80088a48:
/* 0x80088a48 */ j 0x80088a70
.L80088a4c:
/* 0x80088a4c */ sll	$v0,$v0,0x1
.L80088a50:
/* 0x80088a50 */ lw	$v0,4($s0)
.L80088a54:
/* 0x80088a54 */ sll	$zero,$zero,0x0
.L80088a58:
/* 0x80088a58 */ sll	$v0,$v0,0xc
.L80088a5c:
/* 0x80088a5c */ div	$zero,$a0,$v0
.L80088a60:
/* 0x80088a60 */ mfhi	$v1
.L80088a64:
/* 0x80088a64 */ sll	$zero,$zero,0x0
.L80088a68:
/* 0x80088a68 */ sra	$v1,$v1,0xc
.L80088a6c:
/* 0x80088a6c */ sll	$v0,$v1,0x1
.L80088a70:
/* 0x80088a70 */ addu	$v0,$s0,$v0
.L80088a74:
/* 0x80088a74 */ lh	$v0,22($v0)
.L80088a78:
/* 0x80088a78 */ sll	$zero,$zero,0x0
.L80088a7c:
/* 0x80088a7c */ slti	$v0,$v0,160
.L80088a80:
/* 0x80088a80 */ beq	$v0,$zero,.L80088b1c
.L80088a84:
/* 0x80088a84 */ addu	$v1,$zero,$zero
.L80088a88:
/* 0x80088a88 */ lw	$v0,1868($s0)
.L80088a8c:
/* 0x80088a8c */ sll	$zero,$zero,0x0
.L80088a90:
/* 0x80088a90 */ subu	$v0,$v0,$s1
.L80088a94:
/* 0x80088a94 */ addiu	$a0,$v0,4096
.L80088a98:
/* 0x80088a98 */ bgez	$a0,.L80088ad4
.L80088a9c:
/* 0x80088a9c */ negu	$v0,$a0
.L80088aa0:
/* 0x80088aa0 */ lw	$v1,4($s0)
.L80088aa4:
/* 0x80088aa4 */ sll	$zero,$zero,0x0
.L80088aa8:
/* 0x80088aa8 */ sll	$v1,$v1,0xc
.L80088aac:
/* 0x80088aac */ div	$zero,$v0,$v1
.L80088ab0:
/* 0x80088ab0 */ mfhi	$a0
.L80088ab4:
/* 0x80088ab4 */ sll	$zero,$zero,0x0
.L80088ab8:
/* 0x80088ab8 */ subu	$a0,$v1,$a0
.L80088abc:
/* 0x80088abc */ div	$zero,$a0,$v1
.L80088ac0:
/* 0x80088ac0 */ mfhi	$v0
.L80088ac4:
/* 0x80088ac4 */ sll	$zero,$zero,0x0
.L80088ac8:
/* 0x80088ac8 */ sra	$v0,$v0,0xc
.L80088acc:
/* 0x80088acc */ j 0x80088af4
.L80088ad0:
/* 0x80088ad0 */ sll	$v0,$v0,0x1
.L80088ad4:
/* 0x80088ad4 */ lw	$v0,4($s0)
.L80088ad8:
/* 0x80088ad8 */ sll	$zero,$zero,0x0
.L80088adc:
/* 0x80088adc */ sll	$v0,$v0,0xc
.L80088ae0:
/* 0x80088ae0 */ div	$zero,$a0,$v0
.L80088ae4:
/* 0x80088ae4 */ mfhi	$v1
.L80088ae8:
/* 0x80088ae8 */ sll	$zero,$zero,0x0
.L80088aec:
/* 0x80088aec */ sra	$v1,$v1,0xc
.L80088af0:
/* 0x80088af0 */ sll	$v0,$v1,0x1
.L80088af4:
/* 0x80088af4 */ addu	$v0,$s0,$v0
.L80088af8:
/* 0x80088af8 */ lh	$a0,22($v0)
.L80088afc:
/* 0x80088afc */ jal	0x8007ee38
.L80088b00:
/* 0x80088b00 */ sll	$zero,$zero,0x0
.L80088b04:
/* 0x80088b04 */ lw	$v0,12($v0)
.L80088b08:
/* 0x80088b08 */ sll	$zero,$zero,0x0
.L80088b0c:
/* 0x80088b0c */ andi	$v0,$v0,0x100
.L80088b10:
/* 0x80088b10 */ bne	$v0,$zero,.L80088b1c
.L80088b14:
/* 0x80088b14 */ addiu	$v1,$zero,72
.L80088b18:
/* 0x80088b18 */ addu	$v1,$zero,$zero
.L80088b1c:
/* 0x80088b1c */ subu	$v0,$v1,$s2
.L80088b20:
/* 0x80088b20 */ mult	$v0,$s1
.L80088b24:
/* 0x80088b24 */ mflo	$v0
.L80088b28:
/* 0x80088b28 */ bgez	$v0,.L80088b34
.L80088b2c:
/* 0x80088b2c */ sll	$zero,$zero,0x0
.L80088b30:
/* 0x80088b30 */ addiu	$v0,$v0,4095
.L80088b34:
/* 0x80088b34 */ sra	$v0,$v0,0xc
.L80088b38:
/* 0x80088b38 */ addu	$s5,$s2,$v0
.L80088b3c:
/* 0x80088b3c */ addu	$s2,$zero,$zero
.L80088b40:
/* 0x80088b40 */ lw	$a0,1888($s0)
.L80088b44:
/* 0x80088b44 */ addiu	$v0,$zero,-1
.L80088b48:
/* 0x80088b48 */ beq	$a0,$v0,.L80088b74
.L80088b4c:
/* 0x80088b4c */ lui	$v0,0x800f
.L80088b50:
/* 0x80088b50 */ lw	$v0,10488($v0)
.L80088b54:
/* 0x80088b54 */ sll	$zero,$zero,0x0
.L80088b58:
/* 0x80088b58 */ subu	$a0,$v0,$a0
.L80088b5c:
/* 0x80088b5c */ slti	$v0,$a0,60
.L80088b60:
/* 0x80088b60 */ beq	$v0,$zero,.L80088b70
.L80088b64:
/* 0x80088b64 */ addiu	$v0,$zero,54
.L80088b68:
/* 0x80088b68 */ j 0x80088b74
.L80088b6c:
/* 0x80088b6c */ subu	$s3,$v0,$a0
.L80088b70:
/* 0x80088b70 */ addiu	$s3,$a0,-90
.L80088b74:
/* 0x80088b74 */ slt	$v0,$s4,$s3
.L80088b78:
/* 0x80088b78 */ beq	$v0,$zero,.L80088b84
.L80088b7c:
/* 0x80088b7c */ sll	$zero,$zero,0x0
.L80088b80:
/* 0x80088b80 */ addu	$s3,$s4,$zero
.L80088b84:
/* 0x80088b84 */ bgez	$s3,.L80088b94
.L80088b88:
/* 0x80088b88 */ mult	$s5,$s3
.L80088b8c:
/* 0x80088b8c */ addu	$s3,$zero,$zero
.L80088b90:
/* 0x80088b90 */ mult	$s5,$s3
.L80088b94:
/* 0x80088b94 */ mflo	$v1
.L80088b98:
/* 0x80088b98 */ sll	$zero,$zero,0x0
.L80088b9c:
/* 0x80088b9c */ sll	$zero,$zero,0x0
.L80088ba0:
/* 0x80088ba0 */ div	$zero,$v1,$s4
.L80088ba4:
/* 0x80088ba4 */ mflo	$s5
.L80088ba8:
/* 0x80088ba8 */ lui	$v0,0x800f
.L80088bac:
/* 0x80088bac */ lw	$v0,10488($v0)
.L80088bb0:
/* 0x80088bb0 */ lui	$v1,0x8888
.L80088bb4:
/* 0x80088bb4 */ ori	$v1,$v1,0x8889
.L80088bb8:
/* 0x80088bb8 */ sll	$v0,$v0,0xc
.L80088bbc:
/* 0x80088bbc */ multu	$v0,$v1
.L80088bc0:
/* 0x80088bc0 */ mfhi	$v1
.L80088bc4:
/* 0x80088bc4 */ jal	0x8004964c
.L80088bc8:
/* 0x80088bc8 */ srl	$a0,$v1,0x6
.L80088bcc:
/* 0x80088bcc */ sll	$s3,$s2,0x4
.L80088bd0:
/* 0x80088bd0 */ addiu	$s8,$s3,138
.L80088bd4:
/* 0x80088bd4 */ sll	$v0,$v0,0x3
.L80088bd8:
/* 0x80088bd8 */ addiu	$v0,$v0,2048
.L80088bdc:
/* 0x80088bdc */ sra	$v0,$v0,0xc
.L80088be0:
/* 0x80088be0 */ addiu	$v0,$v0,-99
.L80088be4:
/* 0x80088be4 */ blez	$s5,.L80088cec
.L80088be8:
/* 0x80088be8 */ sw	$v0,32($sp)
.L80088bec:
/* 0x80088bec */ jal	0x80098880
.L80088bf0:
/* 0x80088bf0 */ addiu	$a0,$zero,120
.L80088bf4:
/* 0x80088bf4 */ addiu	$s1,$zero,68
.L80088bf8:
/* 0x80088bf8 */ beq	$s2,$zero,.L80088c04
.L80088bfc:
/* 0x80088bfc */ addu	$s0,$v0,$zero
.L80088c00:
/* 0x80088c00 */ addiu	$s1,$zero,60
.L80088c04:
/* 0x80088c04 */ addu	$s4,$zero,$zero
.L80088c08:
/* 0x80088c08 */ addu	$v0,$s3,$s2
.L80088c0c:
/* 0x80088c0c */ sll	$v0,$v0,0x3
.L80088c10:
/* 0x80088c10 */ sw	$v0,36($sp)
.L80088c14:
/* 0x80088c14 */ addiu	$v0,$s2,4
.L80088c18:
/* 0x80088c18 */ sll	$v0,$v0,0x4
.L80088c1c:
/* 0x80088c1c */ addiu	$t0,$zero,72
.L80088c20:
/* 0x80088c20 */ subu	$s7,$t0,$s5
.L80088c24:
/* 0x80088c24 */ addu	$s3,$s8,$zero
.L80088c28:
/* 0x80088c28 */ addu	$s2,$s4,$zero
.L80088c2c:
/* 0x80088c2c */ sw	$v0,40($sp)
.L80088c30:
/* 0x80088c30 */ addu	$a1,$s6,$zero
.L80088c34:
/* 0x80088c34 */ addiu	$s4,$s4,1
.L80088c38:
/* 0x80088c38 */ lw	$a0,92($sp)
.L80088c3c:
/* 0x80088c3c */ lh	$a2,2($s0)
.L80088c40:
/* 0x80088c40 */ lh	$a3,4($s0)
.L80088c44:
/* 0x80088c44 */ addiu	$t0,$zero,72
.L80088c48:
/* 0x80088c48 */ sw	$s1,16($sp)
.L80088c4c:
/* 0x80088c4c */ sw	$t0,20($sp)
.L80088c50:
/* 0x80088c50 */ lh	$v1,10($s0)
.L80088c54:
/* 0x80088c54 */ lw	$t0,36($sp)
.L80088c58:
/* 0x80088c58 */ addiu	$v0,$zero,-1
.L80088c5c:
/* 0x80088c5c */ sw	$v0,28($sp)
.L80088c60:
/* 0x80088c60 */ addu	$a2,$a2,$t0
.L80088c64:
/* 0x80088c64 */ addu	$a2,$a2,$s2
.L80088c68:
/* 0x80088c68 */ addiu	$a3,$a3,96
.L80088c6c:
/* 0x80088c6c */ jal	0x80048144
.L80088c70:
/* 0x80088c70 */ sw	$v1,24($sp)
.L80088c74:
/* 0x80088c74 */ addu	$a1,$s6,$zero
.L80088c78:
/* 0x80088c78 */ addu	$s2,$s2,$s1
.L80088c7c:
/* 0x80088c7c */ lw	$a0,92($sp)
.L80088c80:
/* 0x80088c80 */ lh	$a2,14($s0)
.L80088c84:
/* 0x80088c84 */ lw	$t0,40($sp)
.L80088c88:
/* 0x80088c88 */ lh	$a3,16($s0)
.L80088c8c:
/* 0x80088c8c */ jal	0x80049208
.L80088c90:
/* 0x80088c90 */ addu	$a2,$a2,$t0
.L80088c94:
/* 0x80088c94 */ addu	$a1,$s6,$zero
.L80088c98:
/* 0x80088c98 */ addu	$a2,$s3,$zero
.L80088c9c:
/* 0x80088c9c */ srl	$a3,$s7,0x1f
.L80088ca0:
/* 0x80088ca0 */ addu	$a3,$s7,$a3
.L80088ca4:
/* 0x80088ca4 */ lw	$a0,92($sp)
.L80088ca8:
/* 0x80088ca8 */ lw	$t0,32($sp)
.L80088cac:
/* 0x80088cac */ sra	$a3,$a3,0x1
.L80088cb0:
/* 0x80088cb0 */ sw	$s1,16($sp)
.L80088cb4:
/* 0x80088cb4 */ sw	$s5,20($sp)
.L80088cb8:
/* 0x80088cb8 */ jal	0x80049364
.L80088cbc:
/* 0x80088cbc */ addu	$a3,$t0,$a3
.L80088cc0:
/* 0x80088cc0 */ addu	$a1,$s6,$zero
.L80088cc4:
/* 0x80088cc4 */ addiu	$a2,$zero,128
.L80088cc8:
/* 0x80088cc8 */ addu	$a3,$a2,$zero
.L80088ccc:
/* 0x80088ccc */ lw	$a0,92($sp)
.L80088cd0:
/* 0x80088cd0 */ addu	$v0,$a2,$zero
.L80088cd4:
/* 0x80088cd4 */ jal	0x800490f8
.L80088cd8:
/* 0x80088cd8 */ sw	$v0,16($sp)
.L80088cdc:
/* 0x80088cdc */ addiu	$s6,$s6,1
.L80088ce0:
/* 0x80088ce0 */ slti	$v0,$s4,2
.L80088ce4:
/* 0x80088ce4 */ bne	$v0,$zero,.L80088c30
.L80088ce8:
/* 0x80088ce8 */ addu	$s3,$s3,$s1
.L80088cec:
/* 0x80088cec */ addu	$v0,$s6,$zero
.L80088cf0:
/* 0x80088cf0 */ lw	$ra,84($sp)
.L80088cf4:
/* 0x80088cf4 */ lw	$s8,80($sp)
.L80088cf8:
/* 0x80088cf8 */ lw	$s7,76($sp)
.L80088cfc:
/* 0x80088cfc */ lw	$s6,72($sp)
.L80088d00:
/* 0x80088d00 */ lw	$s5,68($sp)
.L80088d04:
/* 0x80088d04 */ lw	$s4,64($sp)
.L80088d08:
/* 0x80088d08 */ lw	$s3,60($sp)
.L80088d0c:
/* 0x80088d0c */ lw	$s2,56($sp)
.L80088d10:
/* 0x80088d10 */ lw	$s1,52($sp)
.L80088d14:
/* 0x80088d14 */ lw	$s0,48($sp)
.L80088d18:
/* 0x80088d18 */ jr	$ra
.L80088d1c:
/* 0x80088d1c */ addiu	$sp,$sp,88
.size FUN_80088888, .-FUN_80088888
