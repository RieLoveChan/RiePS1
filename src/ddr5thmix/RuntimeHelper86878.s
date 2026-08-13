.set noreorder
.set noat
.set nomacro

.section .text.FUN_80086878
.globl FUN_80086878
.type FUN_80086878, @function
FUN_80086878:
/* Runtime state, resource, and status helper. */
.L80086878:
/* 0x80086878 */ addiu	$sp,$sp,-1352
.L8008687c:
/* 0x8008687c */ sw	$s6,1336($sp)
.L80086880:
/* 0x80086880 */ addu	$s6,$a0,$zero
.L80086884:
/* 0x80086884 */ lui	$v0,0x800f
.L80086888:
/* 0x80086888 */ addiu	$a1,$v0,10504
.L8008688c:
/* 0x8008688c */ sw	$ra,1348($sp)
.L80086890:
/* 0x80086890 */ sw	$s8,1344($sp)
.L80086894:
/* 0x80086894 */ sw	$s7,1340($sp)
.L80086898:
/* 0x80086898 */ sw	$s5,1332($sp)
.L8008689c:
/* 0x8008689c */ sw	$s4,1328($sp)
.L800868a0:
/* 0x800868a0 */ sw	$s3,1324($sp)
.L800868a4:
/* 0x800868a4 */ sw	$s2,1320($sp)
.L800868a8:
/* 0x800868a8 */ sw	$s1,1316($sp)
.L800868ac:
/* 0x800868ac */ sw	$s0,1312($sp)
.L800868b0:
/* 0x800868b0 */ lb	$v0,36($a1)
.L800868b4:
/* 0x800868b4 */ addiu	$a0,$zero,2
.L800868b8:
/* 0x800868b8 */ beq	$v0,$a0,.L80086928
.L800868bc:
/* 0x800868bc */ addiu	$v1,$zero,4
.L800868c0:
/* 0x800868c0 */ beq	$v0,$v1,.L80086928
.L800868c4:
/* 0x800868c4 */ ori	$v0,$zero,0x8000
.L800868c8:
/* 0x800868c8 */ addu	$a2,$a1,$v0
.L800868cc:
/* 0x800868cc */ lb	$v0,4776($a2)
.L800868d0:
/* 0x800868d0 */ sll	$zero,$zero,0x0
.L800868d4:
/* 0x800868d4 */ beq	$v0,$a0,.L80086920
.L800868d8:
/* 0x800868d8 */ sll	$zero,$zero,0x0
.L800868dc:
/* 0x800868dc */ beq	$v0,$v1,.L80086920
.L800868e0:
/* 0x800868e0 */ addiu	$v1,$zero,7
.L800868e4:
/* 0x800868e4 */ lbu	$v0,146($a1)
.L800868e8:
/* 0x800868e8 */ sll	$zero,$zero,0x0
.L800868ec:
/* 0x800868ec */ beq	$v0,$v1,.L800868fc
.L800868f0:
/* 0x800868f0 */ sll	$zero,$zero,0x0
.L800868f4:
/* 0x800868f4 */ bne	$v0,$zero,.L8008692c
.L800868f8:
/* 0x800868f8 */ addu	$v0,$zero,$zero
.L800868fc:
/* 0x800868fc */ lbu	$v0,4886($a2)
.L80086900:
/* 0x80086900 */ sll	$zero,$zero,0x0
.L80086904:
/* 0x80086904 */ beq	$v0,$v1,.L80086914
.L80086908:
/* 0x80086908 */ sll	$zero,$zero,0x0
.L8008690c:
/* 0x8008690c */ bne	$v0,$zero,.L80086928
.L80086910:
/* 0x80086910 */ sll	$zero,$zero,0x0
.L80086914:
/* 0x80086914 */ lui	$v0,0xffff
.L80086918:
/* 0x80086918 */ j 0x8008692c
.L8008691c:
/* 0x8008691c */ ori	$v0,$v0,0x6d7c
.L80086920:
/* 0x80086920 */ j 0x8008692c
.L80086924:
/* 0x80086924 */ ori	$v0,$zero,0x9284
.L80086928:
/* 0x80086928 */ addu	$v0,$zero,$zero
.L8008692c:
/* 0x8008692c */ addu	$v0,$a1,$v0
.L80086930:
/* 0x80086930 */ lbu	$v0,146($v0)
.L80086934:
/* 0x80086934 */ addiu	$v1,$zero,2
.L80086938:
/* 0x80086938 */ beq	$v0,$v1,.L800869e0
.L8008693c:
/* 0x8008693c */ lui	$v0,0x800f
.L80086940:
/* 0x80086940 */ addiu	$a1,$v0,10504
.L80086944:
/* 0x80086944 */ lb	$v0,36($a1)
.L80086948:
/* 0x80086948 */ sll	$zero,$zero,0x0
.L8008694c:
/* 0x8008694c */ beq	$v0,$v1,.L800869bc
.L80086950:
/* 0x80086950 */ addiu	$a0,$zero,4
.L80086954:
/* 0x80086954 */ beq	$v0,$a0,.L800869bc
.L80086958:
/* 0x80086958 */ ori	$v0,$zero,0x8000
.L8008695c:
/* 0x8008695c */ addu	$a2,$a1,$v0
.L80086960:
/* 0x80086960 */ lb	$v0,4776($a2)
.L80086964:
/* 0x80086964 */ sll	$zero,$zero,0x0
.L80086968:
/* 0x80086968 */ beq	$v0,$v1,.L800869b4
.L8008696c:
/* 0x8008696c */ sll	$zero,$zero,0x0
.L80086970:
/* 0x80086970 */ beq	$v0,$a0,.L800869b4
.L80086974:
/* 0x80086974 */ addiu	$v1,$zero,7
.L80086978:
/* 0x80086978 */ lbu	$v0,146($a1)
.L8008697c:
/* 0x8008697c */ sll	$zero,$zero,0x0
.L80086980:
/* 0x80086980 */ beq	$v0,$v1,.L80086990
.L80086984:
/* 0x80086984 */ sll	$zero,$zero,0x0
.L80086988:
/* 0x80086988 */ bne	$v0,$zero,.L800869c0
.L8008698c:
/* 0x8008698c */ addu	$v0,$zero,$zero
.L80086990:
/* 0x80086990 */ lbu	$v0,4886($a2)
.L80086994:
/* 0x80086994 */ sll	$zero,$zero,0x0
.L80086998:
/* 0x80086998 */ beq	$v0,$v1,.L800869a8
.L8008699c:
/* 0x8008699c */ sll	$zero,$zero,0x0
.L800869a0:
/* 0x800869a0 */ bne	$v0,$zero,.L800869bc
.L800869a4:
/* 0x800869a4 */ sll	$zero,$zero,0x0
.L800869a8:
/* 0x800869a8 */ lui	$v0,0xffff
.L800869ac:
/* 0x800869ac */ j 0x800869c0
.L800869b0:
/* 0x800869b0 */ ori	$v0,$v0,0x6d7c
.L800869b4:
/* 0x800869b4 */ j 0x800869c0
.L800869b8:
/* 0x800869b8 */ ori	$v0,$zero,0x9284
.L800869bc:
/* 0x800869bc */ addu	$v0,$zero,$zero
.L800869c0:
/* 0x800869c0 */ addu	$v0,$a1,$v0
.L800869c4:
/* 0x800869c4 */ lbu	$v0,146($v0)
.L800869c8:
/* 0x800869c8 */ sll	$zero,$zero,0x0
.L800869cc:
/* 0x800869cc */ xori	$v0,$v0,0xa
.L800869d0:
/* 0x800869d0 */ sltiu	$v0,$v0,1
.L800869d4:
/* 0x800869d4 */ sll	$v0,$v0,0x1
.L800869d8:
/* 0x800869d8 */ j 0x800869e8
.L800869dc:
/* 0x800869dc */ sw	$v0,1296($sp)
.L800869e0:
/* 0x800869e0 */ addiu	$t0,$zero,1
.L800869e4:
/* 0x800869e4 */ sw	$t0,1296($sp)
.L800869e8:
/* 0x800869e8 */ lbu	$v0,1968($s6)
.L800869ec:
/* 0x800869ec */ addiu	$t0,$zero,1
.L800869f0:
/* 0x800869f0 */ sw	$t0,1300($sp)
.L800869f4:
/* 0x800869f4 */ beq	$v0,$zero,.L80086bec
.L800869f8:
/* 0x800869f8 */ sw	$zero,1844($s6)
.L800869fc:
/* 0x800869fc */ lui	$v0,0x800f
.L80086a00:
/* 0x80086a00 */ addiu	$v1,$v0,10504
.L80086a04:
/* 0x80086a04 */ lb	$v0,36($v1)
.L80086a08:
/* 0x80086a08 */ addiu	$a1,$zero,2
.L80086a0c:
/* 0x80086a0c */ beq	$v0,$a1,.L80086a78
.L80086a10:
/* 0x80086a10 */ addiu	$a0,$zero,4
.L80086a14:
/* 0x80086a14 */ beq	$v0,$a0,.L80086a78
.L80086a18:
/* 0x80086a18 */ ori	$v0,$zero,0x8000
.L80086a1c:
/* 0x80086a1c */ addu	$a2,$v1,$v0
.L80086a20:
/* 0x80086a20 */ lb	$v0,4776($a2)
.L80086a24:
/* 0x80086a24 */ sll	$zero,$zero,0x0
.L80086a28:
/* 0x80086a28 */ beq	$v0,$a1,.L80086a70
.L80086a2c:
/* 0x80086a2c */ sll	$zero,$zero,0x0
.L80086a30:
/* 0x80086a30 */ beq	$v0,$a0,.L80086a70
.L80086a34:
/* 0x80086a34 */ sll	$zero,$zero,0x0
.L80086a38:
/* 0x80086a38 */ lbu	$v0,146($v1)
.L80086a3c:
/* 0x80086a3c */ addiu	$v1,$zero,7
.L80086a40:
/* 0x80086a40 */ beq	$v0,$v1,.L80086a50
.L80086a44:
/* 0x80086a44 */ sll	$zero,$zero,0x0
.L80086a48:
/* 0x80086a48 */ bne	$v0,$zero,.L80086a78
.L80086a4c:
/* 0x80086a4c */ sll	$zero,$zero,0x0
.L80086a50:
/* 0x80086a50 */ lbu	$v0,4886($a2)
.L80086a54:
/* 0x80086a54 */ sll	$zero,$zero,0x0
.L80086a58:
/* 0x80086a58 */ beq	$v0,$v1,.L80086a7c
.L80086a5c:
/* 0x80086a5c */ addiu	$v1,$zero,-1
.L80086a60:
/* 0x80086a60 */ bne	$v0,$zero,.L80086a7c
.L80086a64:
/* 0x80086a64 */ addu	$v1,$zero,$zero
.L80086a68:
/* 0x80086a68 */ j 0x80086a7c
.L80086a6c:
/* 0x80086a6c */ addiu	$v1,$zero,-1
.L80086a70:
/* 0x80086a70 */ j 0x80086a7c
.L80086a74:
/* 0x80086a74 */ addiu	$v1,$zero,1
.L80086a78:
/* 0x80086a78 */ addu	$v1,$zero,$zero
.L80086a7c:
/* 0x80086a7c */ lui	$v0,0x800f
.L80086a80:
/* 0x80086a80 */ addiu	$a0,$v0,10504
.L80086a84:
/* 0x80086a84 */ addu	$s0,$zero,$zero
.L80086a88:
/* 0x80086a88 */ addu	$s1,$s0,$zero
.L80086a8c:
/* 0x80086a8c */ addiu	$a1,$zero,-1
.L80086a90:
/* 0x80086a90 */ sw	$zero,1844($s6)
.L80086a94:
/* 0x80086a94 */ addiu	$s3,$zero,1
.L80086a98:
/* 0x80086a98 */ addu	$s4,$a0,$zero
.L80086a9c:
/* 0x80086a9c */ addiu	$s2,$sp,656
.L80086aa0:
/* 0x80086aa0 */ beq	$s0,$s3,.L80086af4
.L80086aa4:
/* 0x80086aa4 */ slti	$v0,$s0,2
.L80086aa8:
/* 0x80086aa8 */ beq	$v0,$zero,.L80086ac0
.L80086aac:
/* 0x80086aac */ addiu	$v0,$zero,2
.L80086ab0:
/* 0x80086ab0 */ beq	$s0,$zero,.L80086ad8
.L80086ab4:
/* 0x80086ab4 */ addiu	$s0,$zero,4
.L80086ab8:
/* 0x80086ab8 */ j 0x80086b80
.L80086abc:
/* 0x80086abc */ sll	$zero,$zero,0x0
.L80086ac0:
/* 0x80086ac0 */ beq	$s0,$v0,.L80086b38
.L80086ac4:
/* 0x80086ac4 */ addiu	$v0,$zero,3
.L80086ac8:
/* 0x80086ac8 */ beq	$s0,$v0,.L80086b64
.L80086acc:
/* 0x80086acc */ slti	$v0,$s1,4
.L80086ad0:
/* 0x80086ad0 */ j 0x80086b80
.L80086ad4:
/* 0x80086ad4 */ addiu	$s0,$zero,4
.L80086ad8:
/* 0x80086ad8 */ addiu	$a1,$zero,-1
.L80086adc:
/* 0x80086adc */ lw	$v0,1844($s6)
.L80086ae0:
/* 0x80086ae0 */ addiu	$s0,$zero,1
.L80086ae4:
/* 0x80086ae4 */ sllv	$v0,$v0,$s0
.L80086ae8:
/* 0x80086ae8 */ addu	$v0,$s6,$v0
.L80086aec:
/* 0x80086aec */ j 0x80086b80
.L80086af0:
/* 0x80086af0 */ sh	$zero,342($v0)
.L80086af4:
/* 0x80086af4 */ lw	$v0,4($s4)
.L80086af8:
/* 0x80086af8 */ sll	$zero,$zero,0x0
.L80086afc:
/* 0x80086afc */ lhu	$a0,0($v0)
.L80086b00:
/* 0x80086b00 */ jal	0x80095ebc
.L80086b04:
/* 0x80086b04 */ sll	$zero,$zero,0x0
.L80086b08:
/* 0x80086b08 */ addu	$a1,$v0,$zero
.L80086b0c:
/* 0x80086b0c */ bltz	$a1,.L80086b2c
.L80086b10:
/* 0x80086b10 */ addiu	$v1,$a1,1
.L80086b14:
/* 0x80086b14 */ lw	$v0,1844($s6)
.L80086b18:
/* 0x80086b18 */ sll	$zero,$zero,0x0
.L80086b1c:
/* 0x80086b1c */ sll	$v0,$v0,0x1
.L80086b20:
/* 0x80086b20 */ addu	$v0,$s6,$v0
.L80086b24:
/* 0x80086b24 */ j 0x80086b80
.L80086b28:
/* 0x80086b28 */ sh	$v1,342($v0)
.L80086b2c:
/* 0x80086b2c */ addiu	$a1,$zero,-1
.L80086b30:
/* 0x80086b30 */ j 0x80086bd8
.L80086b34:
/* 0x80086b34 */ addiu	$s0,$zero,2
.L80086b38:
/* 0x80086b38 */ lw	$v0,1844($s6)
.L80086b3c:
/* 0x80086b3c */ addiu	$v1,$zero,-1
.L80086b40:
/* 0x80086b40 */ sll	$v0,$v0,0x1
.L80086b44:
/* 0x80086b44 */ addu	$v0,$s6,$v0
.L80086b48:
/* 0x80086b48 */ sh	$v1,342($v0)
.L80086b4c:
/* 0x80086b4c */ slti	$v0,$a1,9
.L80086b50:
/* 0x80086b50 */ bne	$v0,$zero,.L80086b80
.L80086b54:
/* 0x80086b54 */ addiu	$a1,$a1,1
.L80086b58:
/* 0x80086b58 */ addiu	$a1,$zero,-1
.L80086b5c:
/* 0x80086b5c */ j 0x80086b80
.L80086b60:
/* 0x80086b60 */ addiu	$s0,$zero,3
.L80086b64:
/* 0x80086b64 */ bne	$v0,$zero,.L80086b78
.L80086b68:
/* 0x80086b68 */ sll	$zero,$zero,0x0
.L80086b6c:
/* 0x80086b6c */ addiu	$a1,$zero,-1
.L80086b70:
/* 0x80086b70 */ j 0x80086bd8
.L80086b74:
/* 0x80086b74 */ addiu	$s0,$zero,4
.L80086b78:
/* 0x80086b78 */ j 0x80086bd8
.L80086b7c:
/* 0x80086b7c */ addiu	$s1,$s1,1
.L80086b80:
/* 0x80086b80 */ lw	$v0,1844($s6)
.L80086b84:
/* 0x80086b84 */ sll	$zero,$zero,0x0
.L80086b88:
/* 0x80086b88 */ sll	$v0,$v0,0x2
.L80086b8c:
/* 0x80086b8c */ addu	$v0,$s2,$v0
.L80086b90:
/* 0x80086b90 */ sw	$s3,0($v0)
.L80086b94:
/* 0x80086b94 */ lw	$v0,1844($s6)
.L80086b98:
/* 0x80086b98 */ sll	$zero,$zero,0x0
.L80086b9c:
/* 0x80086b9c */ sll	$v1,$v0,0x1
.L80086ba0:
/* 0x80086ba0 */ sll	$v0,$v0,0x2
.L80086ba4:
/* 0x80086ba4 */ addu	$v0,$s2,$v0
.L80086ba8:
/* 0x80086ba8 */ lhu	$v0,0($v0)
.L80086bac:
/* 0x80086bac */ addu	$v1,$s6,$v1
.L80086bb0:
/* 0x80086bb0 */ sh	$v0,1262($v1)
.L80086bb4:
/* 0x80086bb4 */ lw	$v0,1844($s6)
.L80086bb8:
/* 0x80086bb8 */ sll	$zero,$zero,0x0
.L80086bbc:
/* 0x80086bbc */ addiu	$v0,$v0,1
.L80086bc0:
/* 0x80086bc0 */ sw	$v0,1844($s6)
.L80086bc4:
/* 0x80086bc4 */ slti	$v0,$v0,160
.L80086bc8:
/* 0x80086bc8 */ bne	$v0,$zero,.L80086bdc
.L80086bcc:
/* 0x80086bcc */ slti	$v0,$s0,4
.L80086bd0:
/* 0x80086bd0 */ addiu	$v0,$zero,159
.L80086bd4:
/* 0x80086bd4 */ sw	$v0,1844($s6)
.L80086bd8:
/* 0x80086bd8 */ slti	$v0,$s0,4
.L80086bdc:
/* 0x80086bdc */ bne	$v0,$zero,.L80086aa0
.L80086be0:
/* 0x80086be0 */ sll	$zero,$zero,0x0
.L80086be4:
/* 0x80086be4 */ j 0x80086db4
.L80086be8:
/* 0x80086be8 */ sw	$zero,1300($sp)
.L80086bec:
/* 0x80086bec */ addu	$s3,$zero,$zero
.L80086bf0:
/* 0x80086bf0 */ addiu	$s8,$zero,1
.L80086bf4:
/* 0x80086bf4 */ addiu	$s5,$sp,656
.L80086bf8:
/* 0x80086bf8 */ sw	$s6,1304($sp)
.L80086bfc:
/* 0x80086bfc */ addiu	$s7,$sp,16
.L80086c00:
/* 0x80086c00 */ lui	$t0,0x800f
.L80086c04:
/* 0x80086c04 */ addiu	$t0,$t0,10504
.L80086c08:
/* 0x80086c08 */ addu	$v0,$s3,$t0
.L80086c0c:
/* 0x80086c0c */ lui	$v1,0x1
.L80086c10:
/* 0x80086c10 */ addu	$v0,$v0,$v1
.L80086c14:
/* 0x80086c14 */ lb	$v0,9512($v0)
.L80086c18:
/* 0x80086c18 */ sll	$zero,$zero,0x0
.L80086c1c:
/* 0x80086c1c */ bne	$v0,$s8,.L80086d8c
.L80086c20:
/* 0x80086c20 */ sll	$zero,$zero,0x0
.L80086c24:
/* 0x80086c24 */ lw	$v0,1844($s6)
.L80086c28:
/* 0x80086c28 */ addu	$a0,$s3,$zero
.L80086c2c:
/* 0x80086c2c */ sll	$v0,$v0,0x1
.L80086c30:
/* 0x80086c30 */ addu	$v0,$s6,$v0
.L80086c34:
/* 0x80086c34 */ jal	0x8007ee38
.L80086c38:
/* 0x80086c38 */ sh	$s3,342($v0)
.L80086c3c:
/* 0x80086c3c */ lui	$t0,0x800f
.L80086c40:
/* 0x80086c40 */ addiu	$t0,$t0,10504
.L80086c44:
/* 0x80086c44 */ lbu	$v1,26($t0)
.L80086c48:
/* 0x80086c48 */ addu	$s4,$v0,$zero
.L80086c4c:
/* 0x80086c4c */ addiu	$v1,$v1,-1
.L80086c50:
/* 0x80086c50 */ sll	$v1,$v1,0x18
.L80086c54:
/* 0x80086c54 */ sra	$v1,$v1,0x18
.L80086c58:
/* 0x80086c58 */ sltiu	$v0,$v1,7
.L80086c5c:
/* 0x80086c5c */ beq	$v0,$zero,.L80086d6c
.L80086c60:
/* 0x80086c60 */ lui	$v0,0x8002
.L80086c64:
/* 0x80086c64 */ addiu	$v0,$v0,-6820
.L80086c68:
/* 0x80086c68 */ sll	$v1,$v1,0x2
.L80086c6c:
/* 0x80086c6c */ addu	$v1,$v1,$v0
.L80086c70:
/* 0x80086c70 */ lw	$v0,0($v1)
.L80086c74:
/* 0x80086c74 */ sll	$zero,$zero,0x0
.L80086c78:
/* 0x80086c78 */ jr	$v0
.L80086c7c:
/* 0x80086c7c */ sll	$zero,$zero,0x0
.L80086c80:
/* 0x80086c80 */ addu	$s2,$zero,$zero
.L80086c84:
/* 0x80086c84 */ addiu	$s0,$zero,1
.L80086c88:
/* 0x80086c88 */ addiu	$s1,$zero,2
.L80086c8c:
/* 0x80086c8c */ addu	$a0,$s4,$zero
.L80086c90:
/* 0x80086c90 */ lw	$a1,1296($sp)
.L80086c94:
/* 0x80086c94 */ jal	0x8007eeb0
.L80086c98:
/* 0x80086c98 */ addu	$a2,$s1,$zero
.L80086c9c:
/* 0x80086c9c */ addiu	$t0,$zero,9
.L80086ca0:
/* 0x80086ca0 */ subu	$v0,$t0,$v0
.L80086ca4:
/* 0x80086ca4 */ mult	$v0,$s0
.L80086ca8:
/* 0x80086ca8 */ sll	$v0,$s0,0x2
.L80086cac:
/* 0x80086cac */ addu	$v0,$v0,$s0
.L80086cb0:
/* 0x80086cb0 */ sll	$s0,$v0,0x1
.L80086cb4:
/* 0x80086cb4 */ addiu	$s1,$s1,-1
.L80086cb8:
/* 0x80086cb8 */ mflo	$t0
.L80086cbc:
/* 0x80086cbc */ bgez	$s1,.L80086c8c
.L80086cc0:
/* 0x80086cc0 */ addu	$s2,$s2,$t0
.L80086cc4:
/* 0x80086cc4 */ jal	0x8007ef10
.L80086cc8:
/* 0x80086cc8 */ addu	$a0,$s4,$zero
.L80086ccc:
/* 0x80086ccc */ mult	$v0,$s0
.L80086cd0:
/* 0x80086cd0 */ mflo	$t0
.L80086cd4:
/* 0x80086cd4 */ addu	$s2,$s2,$t0
.L80086cd8:
/* 0x80086cd8 */ sw	$s2,0($s7)
.L80086cdc:
/* 0x80086cdc */ j 0x80086d6c
.L80086ce0:
/* 0x80086ce0 */ sw	$s8,0($s5)
.L80086ce4:
/* 0x80086ce4 */ addiu	$v0,$zero,160
.L80086ce8:
/* 0x80086ce8 */ j 0x80086d10
.L80086cec:
/* 0x80086cec */ subu	$v0,$v0,$s3
.L80086cf0:
/* 0x80086cf0 */ addu	$a0,$s3,$zero
.L80086cf4:
/* 0x80086cf4 */ jal	0x8007f8f8
.L80086cf8:
/* 0x80086cf8 */ addiu	$a1,$zero,4
.L80086cfc:
/* 0x80086cfc */ j 0x80086d14
.L80086d00:
/* 0x80086d00 */ sw	$v0,0($s7)
.L80086d04:
/* 0x80086d04 */ lhu	$v1,20($s4)
.L80086d08:
/* 0x80086d08 */ addiu	$v0,$zero,9999
.L80086d0c:
/* 0x80086d0c */ subu	$v0,$v0,$v1
.L80086d10:
/* 0x80086d10 */ sw	$v0,0($s7)
.L80086d14:
/* 0x80086d14 */ j 0x80086d6c
.L80086d18:
/* 0x80086d18 */ sw	$s8,0($s5)
.L80086d1c:
/* 0x80086d1c */ jal	0x8007ee38
.L80086d20:
/* 0x80086d20 */ addu	$a0,$s3,$zero
.L80086d24:
/* 0x80086d24 */ lw	$v0,24($v0)
.L80086d28:
/* 0x80086d28 */ sll	$zero,$zero,0x0
.L80086d2c:
/* 0x80086d2c */ lbu	$s2,0($v0)
.L80086d30:
/* 0x80086d30 */ sll	$zero,$zero,0x0
.L80086d34:
/* 0x80086d34 */ addiu	$v0,$s2,-65
.L80086d38:
/* 0x80086d38 */ sltiu	$v0,$v0,26
.L80086d3c:
/* 0x80086d3c */ bne	$v0,$zero,.L80086d54
.L80086d40:
/* 0x80086d40 */ addiu	$v0,$s2,-97
.L80086d44:
/* 0x80086d44 */ sltiu	$v0,$v0,26
.L80086d48:
/* 0x80086d48 */ bne	$v0,$zero,.L80086d54
.L80086d4c:
/* 0x80086d4c */ addiu	$s2,$s2,-32
.L80086d50:
/* 0x80086d50 */ addiu	$s2,$zero,35
.L80086d54:
/* 0x80086d54 */ jal	0x8007f0dc
.L80086d58:
/* 0x80086d58 */ addu	$a0,$s4,$zero
.L80086d5c:
/* 0x80086d5c */ addiu	$v1,$zero,160
.L80086d60:
/* 0x80086d60 */ subu	$v1,$v1,$v0
.L80086d64:
/* 0x80086d64 */ sw	$v1,0($s7)
.L80086d68:
/* 0x80086d68 */ sw	$s2,0($s5)
.L80086d6c:
/* 0x80086d6c */ lhu	$v0,0($s5)
.L80086d70:
/* 0x80086d70 */ lw	$t0,1304($sp)
.L80086d74:
/* 0x80086d74 */ sll	$zero,$zero,0x0
.L80086d78:
/* 0x80086d78 */ sh	$v0,1262($t0)
.L80086d7c:
/* 0x80086d7c */ lw	$v0,1844($s6)
.L80086d80:
/* 0x80086d80 */ sll	$zero,$zero,0x0
.L80086d84:
/* 0x80086d84 */ addiu	$v0,$v0,1
.L80086d88:
/* 0x80086d88 */ sw	$v0,1844($s6)
.L80086d8c:
/* 0x80086d8c */ addiu	$s5,$s5,4
.L80086d90:
/* 0x80086d90 */ addiu	$s7,$s7,4
.L80086d94:
/* 0x80086d94 */ addiu	$s3,$s3,1
.L80086d98:
/* 0x80086d98 */ lw	$t0,1304($sp)
.L80086d9c:
/* 0x80086d9c */ slti	$v0,$s3,160
.L80086da0:
/* 0x80086da0 */ addiu	$t0,$t0,2
.L80086da4:
/* 0x80086da4 */ bne	$v0,$zero,.L80086c00
.L80086da8:
/* 0x80086da8 */ sw	$t0,1304($sp)
.L80086dac:
/* 0x80086dac */ jal	0x8002a8b0
.L80086db0:
/* 0x80086db0 */ sll	$zero,$zero,0x0
.L80086db4:
/* 0x80086db4 */ lw	$t0,1300($sp)
.L80086db8:
/* 0x80086db8 */ sll	$zero,$zero,0x0
.L80086dbc:
/* 0x80086dbc */ beq	$t0,$zero,.L80086e58
.L80086dc0:
/* 0x80086dc0 */ addiu	$s0,$zero,-1
.L80086dc4:
/* 0x80086dc4 */ addiu	$s1,$sp,16
.L80086dc8:
/* 0x80086dc8 */ lw	$v0,1844($s6)
.L80086dcc:
/* 0x80086dcc */ sll	$zero,$zero,0x0
.L80086dd0:
/* 0x80086dd0 */ addu	$v0,$v0,$s0
.L80086dd4:
/* 0x80086dd4 */ blez	$v0,.L80086e48
.L80086dd8:
/* 0x80086dd8 */ addu	$s3,$zero,$zero
.L80086ddc:
/* 0x80086ddc */ sll	$v0,$s3,0x1
.L80086de0:
/* 0x80086de0 */ addu	$a3,$s6,$v0
.L80086de4:
/* 0x80086de4 */ addiu	$a0,$s3,1
.L80086de8:
/* 0x80086de8 */ sll	$v0,$a0,0x1
.L80086dec:
/* 0x80086dec */ addu	$a1,$s6,$v0
.L80086df0:
/* 0x80086df0 */ lh	$a2,342($a3)
.L80086df4:
/* 0x80086df4 */ lh	$v0,342($a1)
.L80086df8:
/* 0x80086df8 */ sll	$v1,$a2,0x2
.L80086dfc:
/* 0x80086dfc */ addu	$v1,$s1,$v1
.L80086e00:
/* 0x80086e00 */ sll	$v0,$v0,0x2
.L80086e04:
/* 0x80086e04 */ addu	$v0,$s1,$v0
.L80086e08:
/* 0x80086e08 */ lw	$v1,0($v1)
.L80086e0c:
/* 0x80086e0c */ lw	$v0,0($v0)
.L80086e10:
/* 0x80086e10 */ sll	$zero,$zero,0x0
.L80086e14:
/* 0x80086e14 */ slt	$v1,$v1,$v0
.L80086e18:
/* 0x80086e18 */ lhu	$v0,342($a1)
.L80086e1c:
/* 0x80086e1c */ beq	$v1,$zero,.L80086e30
.L80086e20:
/* 0x80086e20 */ sll	$zero,$zero,0x0
.L80086e24:
/* 0x80086e24 */ addu	$s0,$a2,$zero
.L80086e28:
/* 0x80086e28 */ sh	$v0,342($a3)
.L80086e2c:
/* 0x80086e2c */ sh	$s0,342($a1)
.L80086e30:
/* 0x80086e30 */ lw	$v0,1844($s6)
.L80086e34:
/* 0x80086e34 */ addu	$s3,$a0,$zero
.L80086e38:
/* 0x80086e38 */ addiu	$v0,$v0,-1
.L80086e3c:
/* 0x80086e3c */ slt	$v0,$s3,$v0
.L80086e40:
/* 0x80086e40 */ bne	$v0,$zero,.L80086de0
.L80086e44:
/* 0x80086e44 */ sll	$v0,$s3,0x1
.L80086e48:
/* 0x80086e48 */ jal	0x8002a8b0
.L80086e4c:
/* 0x80086e4c */ sll	$zero,$zero,0x0
.L80086e50:
/* 0x80086e50 */ bgez	$s0,.L80086dc8
.L80086e54:
/* 0x80086e54 */ addiu	$s0,$zero,-1
.L80086e58:
/* 0x80086e58 */ lbu	$v0,1968($s6)
.L80086e5c:
/* 0x80086e5c */ sll	$zero,$zero,0x0
.L80086e60:
/* 0x80086e60 */ bne	$v0,$zero,.L80086e90
.L80086e64:
/* 0x80086e64 */ lui	$v0,0x800f
.L80086e68:
/* 0x80086e68 */ lb	$v1,10530($v0)
.L80086e6c:
/* 0x80086e6c */ addiu	$v0,$zero,4
.L80086e70:
/* 0x80086e70 */ bne	$v1,$v0,.L80086e90
.L80086e74:
/* 0x80086e74 */ sll	$zero,$zero,0x0
.L80086e78:
/* 0x80086e78 */ lw	$v0,1844($s6)
.L80086e7c:
/* 0x80086e7c */ sll	$zero,$zero,0x0
.L80086e80:
/* 0x80086e80 */ slti	$v0,$v0,48
.L80086e84:
/* 0x80086e84 */ bne	$v0,$zero,.L80086e90
.L80086e88:
/* 0x80086e88 */ addiu	$v0,$zero,47
.L80086e8c:
/* 0x80086e8c */ sw	$v0,1844($s6)
.L80086e90:
/* 0x80086e90 */ sw	$zero,4($s6)
.L80086e94:
/* 0x80086e94 */ lw	$v0,656($sp)
.L80086e98:
/* 0x80086e98 */ lbu	$v1,1968($s6)
.L80086e9c:
/* 0x80086e9c */ sll	$zero,$zero,0x0
.L80086ea0:
/* 0x80086ea0 */ beq	$v1,$zero,.L80086eb0
.L80086ea4:
/* 0x80086ea4 */ addiu	$a1,$v0,1
.L80086ea8:
/* 0x80086ea8 */ j 0x80086ec4
.L80086eac:
/* 0x80086eac */ addu	$a2,$zero,$zero
.L80086eb0:
/* 0x80086eb0 */ lui	$v0,0x800f
.L80086eb4:
/* 0x80086eb4 */ lb	$v0,10530($v0)
.L80086eb8:
/* 0x80086eb8 */ sll	$zero,$zero,0x0
.L80086ebc:
/* 0x80086ebc */ xori	$v0,$v0,0x2
.L80086ec0:
/* 0x80086ec0 */ sltiu	$a2,$v0,1
.L80086ec4:
/* 0x80086ec4 */ lw	$v0,1844($s6)
.L80086ec8:
/* 0x80086ec8 */ sll	$zero,$zero,0x0
.L80086ecc:
/* 0x80086ecc */ blez	$v0,.L80086fc4
.L80086ed0:
/* 0x80086ed0 */ addu	$s3,$zero,$zero
.L80086ed4:
/* 0x80086ed4 */ addiu	$a3,$sp,656
.L80086ed8:
/* 0x80086ed8 */ addu	$a0,$s6,$zero
.L80086edc:
/* 0x80086edc */ beq	$a2,$zero,.L80086f94
.L80086ee0:
/* 0x80086ee0 */ sll	$zero,$zero,0x0
.L80086ee4:
/* 0x80086ee4 */ lh	$v0,342($a0)
.L80086ee8:
/* 0x80086ee8 */ sll	$zero,$zero,0x0
.L80086eec:
/* 0x80086eec */ sll	$v0,$v0,0x2
.L80086ef0:
/* 0x80086ef0 */ addu	$v0,$a3,$v0
.L80086ef4:
/* 0x80086ef4 */ lw	$v1,0($v0)
.L80086ef8:
/* 0x80086ef8 */ sll	$zero,$zero,0x0
.L80086efc:
/* 0x80086efc */ beq	$a1,$v1,.L80086f68
.L80086f00:
/* 0x80086f00 */ sll	$zero,$zero,0x0
.L80086f04:
/* 0x80086f04 */ lw	$v0,4($s6)
.L80086f08:
/* 0x80086f08 */ addu	$a1,$v1,$zero
.L80086f0c:
/* 0x80086f0c */ sll	$v0,$v0,0x1
.L80086f10:
/* 0x80086f10 */ addu	$v0,$s6,$v0
.L80086f14:
/* 0x80086f14 */ sh	$a1,1262($v0)
.L80086f18:
/* 0x80086f18 */ lw	$v1,4($s6)
.L80086f1c:
/* 0x80086f1c */ lhu	$v0,4($s6)
.L80086f20:
/* 0x80086f20 */ sll	$v1,$v1,0x1
.L80086f24:
/* 0x80086f24 */ addu	$v1,$s6,$v1
.L80086f28:
/* 0x80086f28 */ addiu	$v0,$v0,200
.L80086f2c:
/* 0x80086f2c */ sh	$v0,22($v1)
.L80086f30:
/* 0x80086f30 */ lw	$v0,4($s6)
.L80086f34:
/* 0x80086f34 */ sll	$zero,$zero,0x0
.L80086f38:
/* 0x80086f38 */ sll	$v0,$v0,0x1
.L80086f3c:
/* 0x80086f3c */ addu	$v0,$s6,$v0
.L80086f40:
/* 0x80086f40 */ sh	$s3,1722($v0)
.L80086f44:
/* 0x80086f44 */ lw	$v0,4($s6)
.L80086f48:
/* 0x80086f48 */ sll	$zero,$zero,0x0
.L80086f4c:
/* 0x80086f4c */ sll	$v0,$v0,0x1
.L80086f50:
/* 0x80086f50 */ addu	$v0,$s6,$v0
.L80086f54:
/* 0x80086f54 */ sh	$zero,1782($v0)
.L80086f58:
/* 0x80086f58 */ lw	$v0,4($s6)
.L80086f5c:
/* 0x80086f5c */ sll	$zero,$zero,0x0
.L80086f60:
/* 0x80086f60 */ addiu	$v0,$v0,1
.L80086f64:
/* 0x80086f64 */ sw	$v0,4($s6)
.L80086f68:
/* 0x80086f68 */ lw	$v1,4($s6)
.L80086f6c:
/* 0x80086f6c */ sll	$zero,$zero,0x0
.L80086f70:
/* 0x80086f70 */ blez	$v1,.L80086fb0
.L80086f74:
/* 0x80086f74 */ addiu	$v1,$v1,-1
.L80086f78:
/* 0x80086f78 */ sll	$v1,$v1,0x1
.L80086f7c:
/* 0x80086f7c */ addu	$v1,$s6,$v1
.L80086f80:
/* 0x80086f80 */ lhu	$v0,1782($v1)
.L80086f84:
/* 0x80086f84 */ sll	$zero,$zero,0x0
.L80086f88:
/* 0x80086f88 */ addiu	$v0,$v0,1
.L80086f8c:
/* 0x80086f8c */ j 0x80086fb0
.L80086f90:
/* 0x80086f90 */ sh	$v0,1782($v1)
.L80086f94:
/* 0x80086f94 */ lhu	$v0,342($a0)
.L80086f98:
/* 0x80086f98 */ sll	$zero,$zero,0x0
.L80086f9c:
/* 0x80086f9c */ sh	$v0,22($a0)
.L80086fa0:
/* 0x80086fa0 */ lw	$v0,4($s6)
.L80086fa4:
/* 0x80086fa4 */ sll	$zero,$zero,0x0
.L80086fa8:
/* 0x80086fa8 */ addiu	$v0,$v0,1
.L80086fac:
/* 0x80086fac */ sw	$v0,4($s6)
.L80086fb0:
/* 0x80086fb0 */ lw	$v0,1844($s6)
.L80086fb4:
/* 0x80086fb4 */ addiu	$s3,$s3,1
.L80086fb8:
/* 0x80086fb8 */ slt	$v0,$s3,$v0
.L80086fbc:
/* 0x80086fbc */ bne	$v0,$zero,.L80086edc
.L80086fc0:
/* 0x80086fc0 */ addiu	$a0,$a0,2
.L80086fc4:
/* 0x80086fc4 */ jal	0x8002a8b0
.L80086fc8:
/* 0x80086fc8 */ addu	$s3,$zero,$zero
.L80086fcc:
/* 0x80086fcc */ lui	$v0,0x800f
.L80086fd0:
/* 0x80086fd0 */ addiu	$a0,$v0,10504
.L80086fd4:
/* 0x80086fd4 */ lui	$v0,0x1
.L80086fd8:
/* 0x80086fd8 */ lw	$v1,4($s6)
.L80086fdc:
/* 0x80086fdc */ addu	$v0,$a0,$v0
.L80086fe0:
/* 0x80086fe0 */ sw	$v1,10116($v0)
.L80086fe4:
/* 0x80086fe4 */ lw	$v0,4($s6)
.L80086fe8:
/* 0x80086fe8 */ sll	$zero,$zero,0x0
.L80086fec:
/* 0x80086fec */ blez	$v0,.L80087020
.L80086ff0:
/* 0x80086ff0 */ sll	$zero,$zero,0x0
.L80086ff4:
/* 0x80086ff4 */ lui	$a2,0x1
.L80086ff8:
/* 0x80086ff8 */ addu	$a1,$s6,$zero
.L80086ffc:
/* 0x80086ffc */ lhu	$v1,342($a1)
.L80087000:
/* 0x80087000 */ addiu	$a1,$a1,2
.L80087004:
/* 0x80087004 */ addu	$v0,$a0,$a2
.L80087008:
/* 0x80087008 */ sh	$v1,10120($v0)
.L8008700c:
/* 0x8008700c */ lw	$v0,4($s6)
.L80087010:
/* 0x80087010 */ addiu	$s3,$s3,1
.L80087014:
/* 0x80087014 */ slt	$v0,$s3,$v0
.L80087018:
/* 0x80087018 */ bne	$v0,$zero,.L80086ffc
.L8008701c:
/* 0x8008701c */ addiu	$a0,$a0,2
.L80087020:
/* 0x80087020 */ lw	$ra,1348($sp)
.L80087024:
/* 0x80087024 */ lw	$s8,1344($sp)
.L80087028:
/* 0x80087028 */ lw	$s7,1340($sp)
.L8008702c:
/* 0x8008702c */ lw	$s6,1336($sp)
.L80087030:
/* 0x80087030 */ lw	$s5,1332($sp)
.L80087034:
/* 0x80087034 */ lw	$s4,1328($sp)
.L80087038:
/* 0x80087038 */ lw	$s3,1324($sp)
.L8008703c:
/* 0x8008703c */ lw	$s2,1320($sp)
.L80087040:
/* 0x80087040 */ lw	$s1,1316($sp)
.L80087044:
/* 0x80087044 */ lw	$s0,1312($sp)
.L80087048:
/* 0x80087048 */ jr	$ra
.L8008704c:
/* 0x8008704c */ addiu	$sp,$sp,1352
.size FUN_80086878, .-FUN_80086878
