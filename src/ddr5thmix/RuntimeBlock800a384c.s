.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a384c
.globl FUN_800a384c
.type FUN_800a384c, @function
FUN_800a384c:
.L800a384c:
/* 0x800a384c */ lui	$v0,0x800e
.L800a3850:
/* 0x800a3850 */ lw	$v0,2840($v0)
.L800a3854:
/* 0x800a3854 */ addiu	$sp,$sp,-40
.L800a3858:
/* 0x800a3858 */ sw	$s0,16($sp)
.L800a385c:
/* 0x800a385c */ lui	$s0,0x800e
.L800a3860:
/* 0x800a3860 */ sw	$s1,20($sp)
.L800a3864:
/* 0x800a3864 */ addiu	$s1,$zero,2
.L800a3868:
/* 0x800a3868 */ sw	$ra,36($sp)
.L800a386c:
/* 0x800a386c */ sw	$s4,32($sp)
.L800a3870:
/* 0x800a3870 */ sw	$s3,28($sp)
.L800a3874:
/* 0x800a3874 */ sw	$s2,24($sp)
.L800a3878:
/* 0x800a3878 */ addiu	$s2,$v0,4880
.L800a387c:
/* 0x800a387c */ lw	$v1,8156($s0)
.L800a3880:
/* 0x800a3880 */ addiu	$v0,$zero,1
.L800a3884:
/* 0x800a3884 */ beq	$v1,$v0,.L800a38e4
.L800a3888:
/* 0x800a3888 */ slti	$v0,$v1,2
.L800a388c:
/* 0x800a388c */ beq	$v0,$zero,.L800a38a4
.L800a3890:
/* 0x800a3890 */ sll	$zero,$zero,0x0
.L800a3894:
/* 0x800a3894 */ beq	$v1,$zero,.L800a38b4
.L800a3898:
/* 0x800a3898 */ addu	$v0,$zero,$zero
.L800a389c:
/* 0x800a389c */ j	.L800a3928
.L800a38a0:
/* 0x800a38a0 */ sll	$zero,$zero,0x0
.L800a38a4:
/* 0x800a38a4 */ beq	$v1,$s1,.L800a3900
.L800a38a8:
/* 0x800a38a8 */ addu	$v0,$zero,$zero
.L800a38ac:
/* 0x800a38ac */ j	.L800a3928
.L800a38b0:
/* 0x800a38b0 */ sll	$zero,$zero,0x0
.L800a38b4:
/* 0x800a38b4 */ lui	$a0,0x800b
.L800a38b8:
/* 0x800a38b8 */ addiu	$a0,$a0,-11240
.L800a38bc:
/* 0x800a38bc */ lui	$a1,0x8017
.L800a38c0:
/* 0x800a38c0 */ jal	0x80020d24
.L800a38c4:
/* 0x800a38c4 */ ori	$a1,$a1,0x4000
.L800a38c8:
/* 0x800a38c8 */ bne	$v0,$zero,.L800a3928
.L800a38cc:
/* 0x800a38cc */ addu	$v0,$zero,$zero
.L800a38d0:
/* 0x800a38d0 */ lw	$v0,8156($s0)
.L800a38d4:
/* 0x800a38d4 */ sll	$zero,$zero,0x0
.L800a38d8:
/* 0x800a38d8 */ addiu	$v0,$v0,1
.L800a38dc:
/* 0x800a38dc */ j	.L800a3924
.L800a38e0:
/* 0x800a38e0 */ sw	$v0,8156($s0)
.L800a38e4:
/* 0x800a38e4 */ lui	$v0,0x800b
.L800a38e8:
/* 0x800a38e8 */ lw	$v0,-14196($v0)
.L800a38ec:
/* 0x800a38ec */ sll	$zero,$zero,0x0
.L800a38f0:
/* 0x800a38f0 */ bne	$v0,$zero,.L800a3928
.L800a38f4:
/* 0x800a38f4 */ addu	$v0,$zero,$zero
.L800a38f8:
/* 0x800a38f8 */ j	.L800a3928
.L800a38fc:
/* 0x800a38fc */ sw	$s1,8156($s0)
.L800a3900:
/* 0x800a3900 */ lui	$v0,0x800b
.L800a3904:
/* 0x800a3904 */ lw	$v0,-14100($v0)
.L800a3908:
/* 0x800a3908 */ lui	$a0,0x8017
.L800a390c:
/* 0x800a390c */ lw	$a1,144($v0)
.L800a3910:
/* 0x800a3910 */ jal	0x8002a9dc
.L800a3914:
/* 0x800a3914 */ ori	$a0,$a0,0x4000
.L800a3918:
/* 0x800a3918 */ addiu	$v0,$zero,1
.L800a391c:
/* 0x800a391c */ j	.L800a3928
.L800a3920:
/* 0x800a3920 */ sw	$zero,8156($s0)
.L800a3924:
/* 0x800a3924 */ addu	$v0,$zero,$zero
.L800a3928:
/* 0x800a3928 */ bne	$v0,$zero,.L800a3940
.L800a392c:
/* 0x800a392c */ sll	$zero,$zero,0x0
.L800a3930:
/* 0x800a3930 */ jal	0x800358f8
.L800a3934:
/* 0x800a3934 */ addu	$a0,$zero,$zero
.L800a3938:
/* 0x800a3938 */ j	.L800a387c
.L800a393c:
/* 0x800a393c */ sll	$zero,$zero,0x0
.L800a3940:
/* 0x800a3940 */ lui	$s1,0x8012
.L800a3944:
/* 0x800a3944 */ addiu	$s0,$s1,-30304
.L800a3948:
/* 0x800a3948 */ addu	$a0,$s0,$zero
.L800a394c:
/* 0x800a394c */ jal	0x8003bac8
.L800a3950:
/* 0x800a3950 */ addiu	$a1,$zero,16
.L800a3954:
/* 0x800a3954 */ lui	$a0,0x8012
.L800a3958:
/* 0x800a3958 */ addiu	$a0,$a0,-30288
.L800a395c:
/* 0x800a395c */ jal	0x8003bac8
.L800a3960:
/* 0x800a3960 */ addiu	$a1,$zero,16
.L800a3964:
/* 0x800a3964 */ addu	$s3,$zero,$zero
.L800a3968:
/* 0x800a3968 */ lhu	$a2,2($s2)
.L800a396c:
/* 0x800a396c */ addiu	$s4,$zero,5
.L800a3970:
/* 0x800a3970 */ andi	$a1,$a2,0xffff
.L800a3974:
/* 0x800a3974 */ srl	$a0,$a1,0x9
.L800a3978:
/* 0x800a3978 */ addiu	$a0,$a0,2000
.L800a397c:
/* 0x800a397c */ srl	$a1,$a1,0x5
.L800a3980:
/* 0x800a3980 */ andi	$a1,$a1,0xf
.L800a3984:
/* 0x800a3984 */ jal	0x800ac764
.L800a3988:
/* 0x800a3988 */ andi	$a2,$a2,0x1f
.L800a398c:
/* 0x800a398c */ lui	$v1,0x8012
.L800a3990:
/* 0x800a3990 */ addiu	$v1,$v1,-30272
.L800a3994:
/* 0x800a3994 */ addu	$a0,$v1,$zero
.L800a3998:
/* 0x800a3998 */ addu	$s2,$v1,$zero
.L800a399c:
/* 0x800a399c */ lui	$v1,0x800e
.L800a39a0:
/* 0x800a39a0 */ lw	$v1,2840($v1)
.L800a39a4:
/* 0x800a39a4 */ addiu	$a1,$zero,72
.L800a39a8:
/* 0x800a39a8 */ sw	$v0,4($s0)
.L800a39ac:
/* 0x800a39ac */ sw	$v0,8($s0)
.L800a39b0:
/* 0x800a39b0 */ lbu	$v0,163($v1)
.L800a39b4:
/* 0x800a39b4 */ addiu	$s0,$s2,12
.L800a39b8:
/* 0x800a39b8 */ jal	0x8003bac8
.L800a39bc:
/* 0x800a39bc */ sb	$v0,-30304($s1)
.L800a39c0:
/* 0x800a39c0 */ addiu	$a0,$s2,72
.L800a39c4:
/* 0x800a39c4 */ jal	0x8003bac8
.L800a39c8:
/* 0x800a39c8 */ addiu	$a1,$zero,72
.L800a39cc:
/* 0x800a39cc */ lui	$v0,0x800f
.L800a39d0:
/* 0x800a39d0 */ addiu	$s1,$v0,10376
.L800a39d4:
/* 0x800a39d4 */ addu	$a0,$zero,$zero
.L800a39d8:
/* 0x800a39d8 */ addiu	$v1,$s2,24
.L800a39dc:
/* 0x800a39dc */ sb	$s4,-9($s0)
.L800a39e0:
/* 0x800a39e0 */ sb	$s4,-10($s0)
.L800a39e4:
/* 0x800a39e4 */ sb	$s3,0($s2)
.L800a39e8:
/* 0x800a39e8 */ sh	$zero,0($s0)
.L800a39ec:
/* 0x800a39ec */ sb	$a0,1($v1)
.L800a39f0:
/* 0x800a39f0 */ addiu	$a0,$a0,1
.L800a39f4:
/* 0x800a39f4 */ sb	$s3,0($v1)
.L800a39f8:
/* 0x800a39f8 */ slti	$v0,$a0,6
.L800a39fc:
/* 0x800a39fc */ bne	$v0,$zero,.L800a39ec
.L800a3a00:
/* 0x800a3a00 */ addiu	$v1,$v1,8
.L800a3a04:
/* 0x800a3a04 */ lbu	$v1,120($s1)
.L800a3a08:
/* 0x800a3a08 */ addiu	$v0,$zero,1
.L800a3a0c:
/* 0x800a3a0c */ sllv	$v0,$v0,$s3
.L800a3a10:
/* 0x800a3a10 */ and	$v1,$v1,$v0
.L800a3a14:
/* 0x800a3a14 */ blez	$v1,.L800a3a24
.L800a3a18:
/* 0x800a3a18 */ sll	$zero,$zero,0x0
.L800a3a1c:
/* 0x800a3a1c */ jal	0x800a62c0
.L800a3a20:
/* 0x800a3a20 */ addu	$a0,$s2,$zero
.L800a3a24:
/* 0x800a3a24 */ addiu	$s3,$s3,1
.L800a3a28:
/* 0x800a3a28 */ addiu	$s0,$s0,72
.L800a3a2c:
/* 0x800a3a2c */ slti	$v0,$s3,2
.L800a3a30:
/* 0x800a3a30 */ bne	$v0,$zero,.L800a39d4
.L800a3a34:
/* 0x800a3a34 */ addiu	$s2,$s2,72
.L800a3a38:
/* 0x800a3a38 */ lui	$v0,0x8012
.L800a3a3c:
/* 0x800a3a3c */ addiu	$v0,$v0,-30288
.L800a3a40:
/* 0x800a3a40 */ sw	$zero,12($v0)
.L800a3a44:
/* 0x800a3a44 */ sw	$zero,8($v0)
.L800a3a48:
/* 0x800a3a48 */ lw	$ra,36($sp)
.L800a3a4c:
/* 0x800a3a4c */ lw	$s4,32($sp)
.L800a3a50:
/* 0x800a3a50 */ lw	$s3,28($sp)
.L800a3a54:
/* 0x800a3a54 */ lw	$s2,24($sp)
.L800a3a58:
/* 0x800a3a58 */ lw	$s1,20($sp)
.L800a3a5c:
/* 0x800a3a5c */ lw	$s0,16($sp)
.L800a3a60:
/* 0x800a3a60 */ jr	$ra
.L800a3a64:
/* 0x800a3a64 */ addiu	$sp,$sp,40
.size FUN_800a384c, .-FUN_800a384c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a3a68
.globl FUN_800a3a68
.type FUN_800a3a68, @function
FUN_800a3a68:
.L800a3a68:
/* 0x800a3a68 */ addiu	$sp,$sp,-56
.L800a3a6c:
/* 0x800a3a6c */ lui	$v0,0x8012
.L800a3a70:
/* 0x800a3a70 */ sw	$s6,48($sp)
.L800a3a74:
/* 0x800a3a74 */ addiu	$s6,$v0,-30304
.L800a3a78:
/* 0x800a3a78 */ sw	$ra,52($sp)
.L800a3a7c:
/* 0x800a3a7c */ sw	$s5,44($sp)
.L800a3a80:
/* 0x800a3a80 */ sw	$s4,40($sp)
.L800a3a84:
/* 0x800a3a84 */ sw	$s3,36($sp)
.L800a3a88:
/* 0x800a3a88 */ sw	$s2,32($sp)
.L800a3a8c:
/* 0x800a3a8c */ sw	$s1,28($sp)
.L800a3a90:
/* 0x800a3a90 */ sw	$s0,24($sp)
.L800a3a94:
/* 0x800a3a94 */ lbu	$v1,1($s6)
.L800a3a98:
/* 0x800a3a98 */ sll	$zero,$zero,0x0
.L800a3a9c:
/* 0x800a3a9c */ beq	$v1,$zero,.L800a3ab4
.L800a3aa0:
/* 0x800a3aa0 */ addiu	$v0,$zero,1
.L800a3aa4:
/* 0x800a3aa4 */ beq	$v1,$v0,.L800a3b54
.L800a3aa8:
/* 0x800a3aa8 */ addu	$s3,$zero,$zero
.L800a3aac:
/* 0x800a3aac */ j	.L800a3b7c
.L800a3ab0:
/* 0x800a3ab0 */ addiu	$a2,$zero,1
.L800a3ab4:
/* 0x800a3ab4 */ addu	$s3,$zero,$zero
.L800a3ab8:
/* 0x800a3ab8 */ addu	$s4,$s3,$zero
.L800a3abc:
/* 0x800a3abc */ lui	$v0,0x8012
.L800a3ac0:
/* 0x800a3ac0 */ addiu	$v0,$v0,-30272
.L800a3ac4:
/* 0x800a3ac4 */ addu	$s2,$v0,$zero
.L800a3ac8:
/* 0x800a3ac8 */ addiu	$s5,$s2,24
.L800a3acc:
/* 0x800a3acc */ jal	0x800a43dc
.L800a3ad0:
/* 0x800a3ad0 */ addu	$a0,$s2,$zero
.L800a3ad4:
/* 0x800a3ad4 */ addu	$s0,$zero,$zero
.L800a3ad8:
/* 0x800a3ad8 */ addu	$s1,$s5,$zero
.L800a3adc:
/* 0x800a3adc */ jal	0x800a4b98
.L800a3ae0:
/* 0x800a3ae0 */ addu	$a0,$s1,$zero
.L800a3ae4:
/* 0x800a3ae4 */ addiu	$s0,$s0,1
.L800a3ae8:
/* 0x800a3ae8 */ slti	$v0,$s0,6
.L800a3aec:
/* 0x800a3aec */ bne	$v0,$zero,.L800a3adc
.L800a3af0:
/* 0x800a3af0 */ addiu	$s1,$s1,8
.L800a3af4:
/* 0x800a3af4 */ lui	$v0,0x800f
.L800a3af8:
/* 0x800a3af8 */ lbu	$v1,10496($v0)
.L800a3afc:
/* 0x800a3afc */ addiu	$v0,$zero,1
.L800a3b00:
/* 0x800a3b00 */ sllv	$v0,$v0,$s3
.L800a3b04:
/* 0x800a3b04 */ and	$v1,$v1,$v0
.L800a3b08:
/* 0x800a3b08 */ blez	$v1,.L800a3b1c
.L800a3b0c:
/* 0x800a3b0c */ sll	$zero,$zero,0x0
.L800a3b10:
/* 0x800a3b10 */ lbu	$v0,1($s2)
.L800a3b14:
/* 0x800a3b14 */ j	.L800a3b20
.L800a3b18:
/* 0x800a3b18 */ xori	$v0,$v0,0x7
.L800a3b1c:
/* 0x800a3b1c */ lbu	$v0,1($s2)
.L800a3b20:
/* 0x800a3b20 */ sll	$zero,$zero,0x0
.L800a3b24:
/* 0x800a3b24 */ sltiu	$v0,$v0,1
.L800a3b28:
/* 0x800a3b28 */ addu	$s4,$s4,$v0
.L800a3b2c:
/* 0x800a3b2c */ addiu	$s2,$s2,72
.L800a3b30:
/* 0x800a3b30 */ addiu	$s3,$s3,1
.L800a3b34:
/* 0x800a3b34 */ slti	$v0,$s3,2
.L800a3b38:
/* 0x800a3b38 */ bne	$v0,$zero,.L800a3acc
.L800a3b3c:
/* 0x800a3b3c */ addiu	$s5,$s5,72
.L800a3b40:
/* 0x800a3b40 */ addiu	$v0,$zero,2
.L800a3b44:
/* 0x800a3b44 */ bne	$s4,$v0,.L800a3b78
.L800a3b48:
/* 0x800a3b48 */ addu	$s3,$zero,$zero
.L800a3b4c:
/* 0x800a3b4c */ j	.L800a3b6c
.L800a3b50:
/* 0x800a3b50 */ addiu	$v0,$zero,1
.L800a3b54:
/* 0x800a3b54 */ lw	$v0,12($s6)
.L800a3b58:
/* 0x800a3b58 */ sll	$zero,$zero,0x0
.L800a3b5c:
/* 0x800a3b5c */ slti	$v0,$v0,21
.L800a3b60:
/* 0x800a3b60 */ bne	$v0,$zero,.L800a3b7c
.L800a3b64:
/* 0x800a3b64 */ addiu	$a2,$zero,1
.L800a3b68:
/* 0x800a3b68 */ addiu	$v0,$zero,2
.L800a3b6c:
/* 0x800a3b6c */ sb	$v0,1($s6)
.L800a3b70:
/* 0x800a3b70 */ sw	$zero,12($s6)
.L800a3b74:
/* 0x800a3b74 */ addu	$s3,$zero,$zero
.L800a3b78:
/* 0x800a3b78 */ addiu	$a2,$zero,1
.L800a3b7c:
/* 0x800a3b7c */ lui	$v0,0x800f
.L800a3b80:
/* 0x800a3b80 */ addiu	$a3,$v0,10376
.L800a3b84:
/* 0x800a3b84 */ lui	$a0,0x8012
.L800a3b88:
/* 0x800a3b88 */ addiu	$a1,$a0,-30288
.L800a3b8c:
/* 0x800a3b8c */ lw	$v0,12($s6)
.L800a3b90:
/* 0x800a3b90 */ lw	$v1,-30288($a0)
.L800a3b94:
/* 0x800a3b94 */ addu	$v0,$v0,$a2
.L800a3b98:
/* 0x800a3b98 */ addu	$v1,$v1,$a2
.L800a3b9c:
/* 0x800a3b9c */ sw	$v0,12($s6)
.L800a3ba0:
/* 0x800a3ba0 */ sw	$v1,-30288($a0)
.L800a3ba4:
/* 0x800a3ba4 */ lbu	$v0,1($s6)
.L800a3ba8:
/* 0x800a3ba8 */ sll	$zero,$zero,0x0
.L800a3bac:
/* 0x800a3bac */ bne	$v0,$a2,.L800a3bcc
.L800a3bb0:
/* 0x800a3bb0 */ sllv	$v1,$a2,$s3
.L800a3bb4:
/* 0x800a3bb4 */ lw	$v0,8($a1)
.L800a3bb8:
/* 0x800a3bb8 */ sll	$zero,$zero,0x0
.L800a3bbc:
/* 0x800a3bbc */ blez	$v0,.L800a3bf8
.L800a3bc0:
/* 0x800a3bc0 */ addiu	$v0,$v0,-1
.L800a3bc4:
/* 0x800a3bc4 */ j	.L800a3bf8
.L800a3bc8:
/* 0x800a3bc8 */ sw	$v0,8($a1)
.L800a3bcc:
/* 0x800a3bcc */ lbu	$v0,120($a3)
.L800a3bd0:
/* 0x800a3bd0 */ sll	$zero,$zero,0x0
.L800a3bd4:
/* 0x800a3bd4 */ and	$v0,$v0,$v1
.L800a3bd8:
/* 0x800a3bd8 */ blez	$v0,.L800a3bf8
.L800a3bdc:
/* 0x800a3bdc */ sll	$zero,$zero,0x0
.L800a3be0:
/* 0x800a3be0 */ lw	$v1,8($a1)
.L800a3be4:
/* 0x800a3be4 */ sll	$zero,$zero,0x0
.L800a3be8:
/* 0x800a3be8 */ slti	$v0,$v1,32
.L800a3bec:
/* 0x800a3bec */ beq	$v0,$zero,.L800a3bf8
.L800a3bf0:
/* 0x800a3bf0 */ addiu	$v0,$v1,1
.L800a3bf4:
/* 0x800a3bf4 */ sw	$v0,8($a1)
.L800a3bf8:
/* 0x800a3bf8 */ addiu	$s3,$s3,1
.L800a3bfc:
/* 0x800a3bfc */ slti	$v0,$s3,2
.L800a3c00:
/* 0x800a3c00 */ bne	$v0,$zero,.L800a3ba4
.L800a3c04:
/* 0x800a3c04 */ addiu	$a1,$a1,4
.L800a3c08:
/* 0x800a3c08 */ lbu	$v1,1($s6)
.L800a3c0c:
/* 0x800a3c0c */ sll	$zero,$zero,0x0
.L800a3c10:
/* 0x800a3c10 */ bltz	$v1,.L800a3cac
.L800a3c14:
/* 0x800a3c14 */ addiu	$a0,$zero,2
.L800a3c18:
/* 0x800a3c18 */ slt	$v0,$v1,$a0
.L800a3c1c:
/* 0x800a3c1c */ bne	$v0,$zero,.L800a3c34
.L800a3c20:
/* 0x800a3c20 */ lui	$v0,0x8012
.L800a3c24:
/* 0x800a3c24 */ beq	$v1,$a0,.L800a3c80
.L800a3c28:
/* 0x800a3c28 */ addiu	$a0,$sp,16
.L800a3c2c:
/* 0x800a3c2c */ j	.L800a3cb0
.L800a3c30:
/* 0x800a3c30 */ lui	$a0,0x8012
.L800a3c34:
/* 0x800a3c34 */ addiu	$v0,$v0,-30272
.L800a3c38:
/* 0x800a3c38 */ addiu	$s2,$v0,24
.L800a3c3c:
/* 0x800a3c3c */ addu	$s3,$v0,$zero
.L800a3c40:
/* 0x800a3c40 */ addiu	$s4,$s3,168
.L800a3c44:
/* 0x800a3c44 */ jal	0x800a4cf4
.L800a3c48:
/* 0x800a3c48 */ addu	$a0,$s3,$zero
.L800a3c4c:
/* 0x800a3c4c */ addiu	$s0,$zero,5
.L800a3c50:
/* 0x800a3c50 */ addiu	$s1,$s2,40
.L800a3c54:
/* 0x800a3c54 */ jal	0x800a50c8
.L800a3c58:
/* 0x800a3c58 */ addu	$a0,$s1,$zero
.L800a3c5c:
/* 0x800a3c5c */ addiu	$s0,$s0,-1
.L800a3c60:
/* 0x800a3c60 */ bgez	$s0,.L800a3c54
.L800a3c64:
/* 0x800a3c64 */ addiu	$s1,$s1,-8
.L800a3c68:
/* 0x800a3c68 */ addiu	$s2,$s2,72
.L800a3c6c:
/* 0x800a3c6c */ slt	$v0,$s2,$s4
.L800a3c70:
/* 0x800a3c70 */ bne	$v0,$zero,.L800a3c44
.L800a3c74:
/* 0x800a3c74 */ addiu	$s3,$s3,72
.L800a3c78:
/* 0x800a3c78 */ j	.L800a3cb0
.L800a3c7c:
/* 0x800a3c7c */ lui	$a0,0x8012
.L800a3c80:
/* 0x800a3c80 */ addiu	$v0,$zero,640
.L800a3c84:
/* 0x800a3c84 */ sh	$v0,16($sp)
.L800a3c88:
/* 0x800a3c88 */ addiu	$v0,$zero,384
.L800a3c8c:
/* 0x800a3c8c */ sh	$v0,20($sp)
.L800a3c90:
/* 0x800a3c90 */ addiu	$v0,$zero,512
.L800a3c94:
/* 0x800a3c94 */ addu	$a1,$zero,$zero
.L800a3c98:
/* 0x800a3c98 */ addu	$a2,$a1,$zero
.L800a3c9c:
/* 0x800a3c9c */ addu	$a3,$a1,$zero
.L800a3ca0:
/* 0x800a3ca0 */ sh	$zero,18($sp)
.L800a3ca4:
/* 0x800a3ca4 */ jal	0x80038778
.L800a3ca8:
/* 0x800a3ca8 */ sh	$v0,22($sp)
.L800a3cac:
/* 0x800a3cac */ lui	$a0,0x8012
.L800a3cb0:
/* 0x800a3cb0 */ jal	0x800a3cec
.L800a3cb4:
/* 0x800a3cb4 */ addiu	$a0,$a0,-30288
.L800a3cb8:
/* 0x800a3cb8 */ lbu	$v0,1($s6)
.L800a3cbc:
/* 0x800a3cbc */ lw	$ra,52($sp)
.L800a3cc0:
/* 0x800a3cc0 */ lw	$s6,48($sp)
.L800a3cc4:
/* 0x800a3cc4 */ lw	$s5,44($sp)
.L800a3cc8:
/* 0x800a3cc8 */ lw	$s4,40($sp)
.L800a3ccc:
/* 0x800a3ccc */ lw	$s3,36($sp)
.L800a3cd0:
/* 0x800a3cd0 */ lw	$s2,32($sp)
.L800a3cd4:
/* 0x800a3cd4 */ lw	$s1,28($sp)
.L800a3cd8:
/* 0x800a3cd8 */ lw	$s0,24($sp)
.L800a3cdc:
/* 0x800a3cdc */ xori	$v0,$v0,0x2
.L800a3ce0:
/* 0x800a3ce0 */ sltiu	$v0,$v0,1
.L800a3ce4:
/* 0x800a3ce4 */ jr	$ra
.L800a3ce8:
/* 0x800a3ce8 */ addiu	$sp,$sp,56
.size FUN_800a3a68, .-FUN_800a3a68
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a3cec
.globl FUN_800a3cec
.type FUN_800a3cec, @function
FUN_800a3cec:
.L800a3cec:
/* 0x800a3cec */ addiu	$sp,$sp,-72
.L800a3cf0:
/* 0x800a3cf0 */ sw	$s8,64($sp)
.L800a3cf4:
/* 0x800a3cf4 */ addu	$s8,$a0,$zero
.L800a3cf8:
/* 0x800a3cf8 */ lui	$v0,0x8012
.L800a3cfc:
/* 0x800a3cfc */ sw	$ra,68($sp)
.L800a3d00:
/* 0x800a3d00 */ sw	$s7,60($sp)
.L800a3d04:
/* 0x800a3d04 */ sw	$s6,56($sp)
.L800a3d08:
/* 0x800a3d08 */ sw	$s5,52($sp)
.L800a3d0c:
/* 0x800a3d0c */ sw	$s4,48($sp)
.L800a3d10:
/* 0x800a3d10 */ sw	$s3,44($sp)
.L800a3d14:
/* 0x800a3d14 */ sw	$s2,40($sp)
.L800a3d18:
/* 0x800a3d18 */ sw	$s1,36($sp)
.L800a3d1c:
/* 0x800a3d1c */ sw	$s0,32($sp)
.L800a3d20:
/* 0x800a3d20 */ lw	$a0,0($s8)
.L800a3d24:
/* 0x800a3d24 */ addiu	$s7,$v0,-30304
.L800a3d28:
/* 0x800a3d28 */ slti	$v0,$a0,20
.L800a3d2c:
/* 0x800a3d2c */ beq	$v0,$zero,.L800a3d6c
.L800a3d30:
/* 0x800a3d30 */ lui	$v1,0x6666
.L800a3d34:
/* 0x800a3d34 */ ori	$v1,$v1,0x6667
.L800a3d38:
/* 0x800a3d38 */ sll	$v0,$a0,0x7
.L800a3d3c:
/* 0x800a3d3c */ mult	$v0,$v1
.L800a3d40:
/* 0x800a3d40 */ mfhi	$t1
.L800a3d44:
/* 0x800a3d44 */ sll	$a0,$a0,0xa
.L800a3d48:
/* 0x800a3d48 */ sll	$zero,$zero,0x0
.L800a3d4c:
/* 0x800a3d4c */ mult	$a0,$v1
.L800a3d50:
/* 0x800a3d50 */ sra	$v0,$v0,0x1f
.L800a3d54:
/* 0x800a3d54 */ sra	$v1,$t1,0x3
.L800a3d58:
/* 0x800a3d58 */ subu	$s3,$v1,$v0
.L800a3d5c:
/* 0x800a3d5c */ sra	$a0,$a0,0x1f
.L800a3d60:
/* 0x800a3d60 */ mfhi	$a1
.L800a3d64:
/* 0x800a3d64 */ j	.L800a3dcc
.L800a3d68:
/* 0x800a3d68 */ sra	$v0,$a1,0x3
.L800a3d6c:
/* 0x800a3d6c */ lbu	$v1,1($s7)
.L800a3d70:
/* 0x800a3d70 */ addiu	$v0,$zero,1
.L800a3d74:
/* 0x800a3d74 */ bne	$v1,$v0,.L800a3df0
.L800a3d78:
/* 0x800a3d78 */ addiu	$v0,$zero,2
.L800a3d7c:
/* 0x800a3d7c */ lui	$a2,0x6666
.L800a3d80:
/* 0x800a3d80 */ lw	$a1,12($s7)
.L800a3d84:
/* 0x800a3d84 */ ori	$a2,$a2,0x6667
.L800a3d88:
/* 0x800a3d88 */ sll	$v0,$a1,0x7
.L800a3d8c:
/* 0x800a3d8c */ mult	$v0,$a2
.L800a3d90:
/* 0x800a3d90 */ sra	$v0,$v0,0x1f
.L800a3d94:
/* 0x800a3d94 */ mfhi	$t0
.L800a3d98:
/* 0x800a3d98 */ sra	$v1,$t0,0x3
.L800a3d9c:
/* 0x800a3d9c */ subu	$v1,$v1,$v0
.L800a3da0:
/* 0x800a3da0 */ addiu	$v0,$zero,128
.L800a3da4:
/* 0x800a3da4 */ subu	$s3,$v0,$v1
.L800a3da8:
/* 0x800a3da8 */ bgez	$s3,.L800a3db4
.L800a3dac:
/* 0x800a3dac */ addiu	$a0,$zero,20
.L800a3db0:
/* 0x800a3db0 */ addu	$s3,$zero,$zero
.L800a3db4:
/* 0x800a3db4 */ subu	$a0,$a0,$a1
.L800a3db8:
/* 0x800a3db8 */ sll	$a0,$a0,0xa
.L800a3dbc:
/* 0x800a3dbc */ mult	$a0,$a2
.L800a3dc0:
/* 0x800a3dc0 */ sra	$a0,$a0,0x1f
.L800a3dc4:
/* 0x800a3dc4 */ mfhi	$t0
.L800a3dc8:
/* 0x800a3dc8 */ sra	$v0,$t0,0x3
.L800a3dcc:
/* 0x800a3dcc */ jal	0x8004964c
.L800a3dd0:
/* 0x800a3dd0 */ subu	$a0,$v0,$a0
.L800a3dd4:
/* 0x800a3dd4 */ sll	$v1,$v0,0x1
.L800a3dd8:
/* 0x800a3dd8 */ addu	$v1,$v1,$v0
.L800a3ddc:
/* 0x800a3ddc */ sll	$v1,$v1,0x4
.L800a3de0:
/* 0x800a3de0 */ sra	$v1,$v1,0xc
.L800a3de4:
/* 0x800a3de4 */ addiu	$v0,$zero,48
.L800a3de8:
/* 0x800a3de8 */ j	.L800a3e08
.L800a3dec:
/* 0x800a3dec */ subu	$s4,$v0,$v1
.L800a3df0:
/* 0x800a3df0 */ bne	$v1,$v0,.L800a3e04
.L800a3df4:
/* 0x800a3df4 */ addiu	$s3,$zero,128
.L800a3df8:
/* 0x800a3df8 */ addu	$s3,$zero,$zero
.L800a3dfc:
/* 0x800a3dfc */ j	.L800a3e08
.L800a3e00:
/* 0x800a3e00 */ addiu	$s4,$zero,48
.L800a3e04:
/* 0x800a3e04 */ addu	$s4,$zero,$zero
.L800a3e08:
/* 0x800a3e08 */ sw	$s3,4($s8)
.L800a3e0c:
/* 0x800a3e0c */ addu	$s0,$zero,$zero
.L800a3e10:
/* 0x800a3e10 */ lui	$v0,0x800e
.L800a3e14:
/* 0x800a3e14 */ addiu	$s1,$v0,7964
.L800a3e18:
/* 0x800a3e18 */ sll	$v0,$s4,0x10
.L800a3e1c:
/* 0x800a3e1c */ sra	$s5,$v0,0x10
.L800a3e20:
/* 0x800a3e20 */ slti	$v0,$s0,3
.L800a3e24:
/* 0x800a3e24 */ beq	$v0,$zero,.L800a3e30
.L800a3e28:
/* 0x800a3e28 */ addiu	$v1,$zero,1
.L800a3e2c:
/* 0x800a3e2c */ addiu	$v1,$zero,-1
.L800a3e30:
/* 0x800a3e30 */ lui	$v0,0x5555
.L800a3e34:
/* 0x800a3e34 */ ori	$v0,$v0,0x5556
.L800a3e38:
/* 0x800a3e38 */ mult	$s0,$v0
.L800a3e3c:
/* 0x800a3e3c */ addu	$a2,$s1,$zero
.L800a3e40:
/* 0x800a3e40 */ addu	$a3,$zero,$zero
.L800a3e44:
/* 0x800a3e44 */ addiu	$s1,$s1,12
.L800a3e48:
/* 0x800a3e48 */ addiu	$s2,$zero,255
.L800a3e4c:
/* 0x800a3e4c */ sra	$v0,$s0,0x1f
.L800a3e50:
/* 0x800a3e50 */ sw	$zero,16($sp)
.L800a3e54:
/* 0x800a3e54 */ sw	$zero,20($sp)
.L800a3e58:
/* 0x800a3e58 */ mfhi	$t1
.L800a3e5c:
/* 0x800a3e5c */ sw	$s3,24($sp)
.L800a3e60:
/* 0x800a3e60 */ sw	$s2,28($sp)
.L800a3e64:
/* 0x800a3e64 */ mult	$s5,$v1
.L800a3e68:
/* 0x800a3e68 */ subu	$v0,$t1,$v0
.L800a3e6c:
/* 0x800a3e6c */ sll	$a0,$v0,0x1
.L800a3e70:
/* 0x800a3e70 */ addu	$a0,$a0,$v0
.L800a3e74:
/* 0x800a3e74 */ subu	$a0,$s0,$a0
.L800a3e78:
/* 0x800a3e78 */ sll	$a0,$a0,0x8
.L800a3e7c:
/* 0x800a3e7c */ addiu	$a0,$a0,-320
.L800a3e80:
/* 0x800a3e80 */ sll	$a1,$v0,0x3
.L800a3e84:
/* 0x800a3e84 */ subu	$a1,$a1,$v0
.L800a3e88:
/* 0x800a3e88 */ sll	$a1,$a1,0x2
.L800a3e8c:
/* 0x800a3e8c */ subu	$a1,$a1,$v0
.L800a3e90:
/* 0x800a3e90 */ sll	$a1,$a1,0x4
.L800a3e94:
/* 0x800a3e94 */ mflo	$v1
.L800a3e98:
/* 0x800a3e98 */ addiu	$v0,$v1,-240
.L800a3e9c:
/* 0x800a3e9c */ jal	0x800ac2bc
.L800a3ea0:
/* 0x800a3ea0 */ addu	$a1,$a1,$v0
.L800a3ea4:
/* 0x800a3ea4 */ addiu	$s0,$s0,1
.L800a3ea8:
/* 0x800a3ea8 */ slti	$v0,$s0,6
.L800a3eac:
/* 0x800a3eac */ bne	$v0,$zero,.L800a3e24
.L800a3eb0:
/* 0x800a3eb0 */ slti	$v0,$s0,3
.L800a3eb4:
/* 0x800a3eb4 */ lui	$v0,0x800e
.L800a3eb8:
/* 0x800a3eb8 */ addiu	$s1,$v0,7880
.L800a3ebc:
/* 0x800a3ebc */ addu	$a2,$s1,$zero
.L800a3ec0:
/* 0x800a3ec0 */ addu	$a3,$zero,$zero
.L800a3ec4:
/* 0x800a3ec4 */ addu	$s0,$a3,$zero
.L800a3ec8:
/* 0x800a3ec8 */ lui	$s5,0x5555
.L800a3ecc:
/* 0x800a3ecc */ ori	$s5,$s5,0x5556
.L800a3ed0:
/* 0x800a3ed0 */ lhu	$a0,7880($v0)
.L800a3ed4:
/* 0x800a3ed4 */ lhu	$a1,2($a2)
.L800a3ed8:
/* 0x800a3ed8 */ addu	$s6,$s2,$zero
.L800a3edc:
/* 0x800a3edc */ sw	$zero,16($sp)
.L800a3ee0:
/* 0x800a3ee0 */ sw	$zero,20($sp)
.L800a3ee4:
/* 0x800a3ee4 */ sw	$s3,24($sp)
.L800a3ee8:
/* 0x800a3ee8 */ sw	$s2,28($sp)
.L800a3eec:
/* 0x800a3eec */ negu	$a0,$a0
.L800a3ef0:
/* 0x800a3ef0 */ srl	$v0,$a0,0x1f
.L800a3ef4:
/* 0x800a3ef4 */ addu	$a0,$a0,$v0
.L800a3ef8:
/* 0x800a3ef8 */ sra	$a0,$a0,0x1
.L800a3efc:
/* 0x800a3efc */ negu	$a1,$a1
.L800a3f00:
/* 0x800a3f00 */ srl	$v0,$a1,0x1f
.L800a3f04:
/* 0x800a3f04 */ addu	$a1,$a1,$v0
.L800a3f08:
/* 0x800a3f08 */ sra	$a1,$a1,0x1
.L800a3f0c:
/* 0x800a3f0c */ jal	0x800ac2bc
.L800a3f10:
/* 0x800a3f10 */ addiu	$a1,$a1,-24
.L800a3f14:
/* 0x800a3f14 */ lui	$v0,0x800e
.L800a3f18:
/* 0x800a3f18 */ addiu	$s1,$v0,7892
.L800a3f1c:
/* 0x800a3f1c */ mult	$s0,$s5
.L800a3f20:
/* 0x800a3f20 */ addu	$a2,$s1,$zero
.L800a3f24:
/* 0x800a3f24 */ addu	$a3,$zero,$zero
.L800a3f28:
/* 0x800a3f28 */ addiu	$s1,$s1,12
.L800a3f2c:
/* 0x800a3f2c */ sra	$a1,$s0,0x1f
.L800a3f30:
/* 0x800a3f30 */ sw	$zero,16($sp)
.L800a3f34:
/* 0x800a3f34 */ sw	$zero,20($sp)
.L800a3f38:
/* 0x800a3f38 */ sw	$s3,24($sp)
.L800a3f3c:
/* 0x800a3f3c */ sw	$s6,28($sp)
.L800a3f40:
/* 0x800a3f40 */ mfhi	$t0
.L800a3f44:
/* 0x800a3f44 */ subu	$a1,$t0,$a1
.L800a3f48:
/* 0x800a3f48 */ sll	$a0,$a1,0x1
.L800a3f4c:
/* 0x800a3f4c */ addu	$a0,$a0,$a1
.L800a3f50:
/* 0x800a3f50 */ subu	$a0,$s0,$a0
.L800a3f54:
/* 0x800a3f54 */ sll	$a0,$a0,0x8
.L800a3f58:
/* 0x800a3f58 */ addiu	$a0,$a0,-320
.L800a3f5c:
/* 0x800a3f5c */ sll	$a1,$a1,0x8
.L800a3f60:
/* 0x800a3f60 */ jal	0x800ac2bc
.L800a3f64:
/* 0x800a3f64 */ addiu	$a1,$a1,-240
.L800a3f68:
/* 0x800a3f68 */ addiu	$s0,$s0,1
.L800a3f6c:
/* 0x800a3f6c */ slti	$v0,$s0,6
.L800a3f70:
/* 0x800a3f70 */ bne	$v0,$zero,.L800a3f20
.L800a3f74:
/* 0x800a3f74 */ mult	$s0,$s5
.L800a3f78:
/* 0x800a3f78 */ addiu	$s2,$zero,-136
.L800a3f7c:
/* 0x800a3f7c */ addu	$s0,$zero,$zero
.L800a3f80:
/* 0x800a3f80 */ sll	$v0,$s4,0x10
.L800a3f84:
/* 0x800a3f84 */ sra	$s5,$v0,0x10
.L800a3f88:
/* 0x800a3f88 */ lui	$v0,0x800e
.L800a3f8c:
/* 0x800a3f8c */ addiu	$s1,$v0,8036
.L800a3f90:
/* 0x800a3f90 */ sll	$a0,$s2,0x10
.L800a3f94:
/* 0x800a3f94 */ sra	$a0,$a0,0x10
.L800a3f98:
/* 0x800a3f98 */ addiu	$a1,$s5,198
.L800a3f9c:
/* 0x800a3f9c */ addu	$a2,$s1,$zero
.L800a3fa0:
/* 0x800a3fa0 */ addu	$a3,$zero,$zero
.L800a3fa4:
/* 0x800a3fa4 */ addiu	$s4,$zero,254
.L800a3fa8:
/* 0x800a3fa8 */ sw	$zero,16($sp)
.L800a3fac:
/* 0x800a3fac */ sw	$zero,20($sp)
.L800a3fb0:
/* 0x800a3fb0 */ sw	$s3,24($sp)
.L800a3fb4:
/* 0x800a3fb4 */ jal	0x800ac2bc
.L800a3fb8:
/* 0x800a3fb8 */ sw	$s4,28($sp)
.L800a3fbc:
/* 0x800a3fbc */ lhu	$v0,0($s1)
.L800a3fc0:
/* 0x800a3fc0 */ addiu	$s0,$s0,1
.L800a3fc4:
/* 0x800a3fc4 */ addiu	$v0,$v0,8
.L800a3fc8:
/* 0x800a3fc8 */ addu	$s2,$s2,$v0
.L800a3fcc:
/* 0x800a3fcc */ slti	$v0,$s0,2
.L800a3fd0:
/* 0x800a3fd0 */ bne	$v0,$zero,.L800a3f90
.L800a3fd4:
/* 0x800a3fd4 */ addiu	$s1,$s1,12
.L800a3fd8:
/* 0x800a3fd8 */ addiu	$a1,$zero,164
.L800a3fdc:
/* 0x800a3fdc */ lui	$v0,0x800e
.L800a3fe0:
/* 0x800a3fe0 */ addiu	$a2,$v0,7856
.L800a3fe4:
/* 0x800a3fe4 */ lhu	$a0,7856($v0)
.L800a3fe8:
/* 0x800a3fe8 */ addu	$a3,$zero,$zero
.L800a3fec:
/* 0x800a3fec */ sw	$zero,16($sp)
.L800a3ff0:
/* 0x800a3ff0 */ sw	$zero,20($sp)
.L800a3ff4:
/* 0x800a3ff4 */ sw	$s3,24($sp)
.L800a3ff8:
/* 0x800a3ff8 */ sw	$s4,28($sp)
.L800a3ffc:
/* 0x800a3ffc */ negu	$a0,$a0
.L800a4000:
/* 0x800a4000 */ srl	$v0,$a0,0x1f
.L800a4004:
/* 0x800a4004 */ addu	$a0,$a0,$v0
.L800a4008:
/* 0x800a4008 */ jal	0x800ac2bc
.L800a400c:
/* 0x800a400c */ sra	$a0,$a0,0x1
.L800a4010:
/* 0x800a4010 */ lbu	$v0,0($s7)
.L800a4014:
/* 0x800a4014 */ sll	$zero,$zero,0x0
.L800a4018:
/* 0x800a4018 */ beq	$v0,$zero,.L800a4038
.L800a401c:
/* 0x800a401c */ addiu	$v1,$zero,64
.L800a4020:
/* 0x800a4020 */ lw	$v0,0($s8)
.L800a4024:
/* 0x800a4024 */ sll	$zero,$zero,0x0
.L800a4028:
/* 0x800a4028 */ slti	$v0,$v0,20
.L800a402c:
/* 0x800a402c */ bne	$v0,$zero,.L800a403c
.L800a4030:
/* 0x800a4030 */ mult	$v1,$s3
.L800a4034:
/* 0x800a4034 */ addiu	$v1,$zero,128
.L800a4038:
/* 0x800a4038 */ mult	$v1,$s3
.L800a403c:
/* 0x800a403c */ mflo	$v0
.L800a4040:
/* 0x800a4040 */ bgez	$v0,.L800a4050
.L800a4044:
/* 0x800a4044 */ sra	$s3,$v0,0x7
.L800a4048:
/* 0x800a4048 */ addiu	$v0,$v0,127
.L800a404c:
/* 0x800a404c */ sra	$s3,$v0,0x7
.L800a4050:
/* 0x800a4050 */ addiu	$a1,$zero,140
.L800a4054:
/* 0x800a4054 */ lui	$v0,0x800e
.L800a4058:
/* 0x800a4058 */ addiu	$a2,$v0,7868
.L800a405c:
/* 0x800a405c */ addu	$a3,$zero,$zero
.L800a4060:
/* 0x800a4060 */ lhu	$a0,7868($v0)
.L800a4064:
/* 0x800a4064 */ addiu	$v0,$zero,254
.L800a4068:
/* 0x800a4068 */ sw	$zero,16($sp)
.L800a406c:
/* 0x800a406c */ sw	$zero,20($sp)
.L800a4070:
/* 0x800a4070 */ sw	$s3,24($sp)
.L800a4074:
/* 0x800a4074 */ sw	$v0,28($sp)
.L800a4078:
/* 0x800a4078 */ negu	$a0,$a0
.L800a407c:
/* 0x800a407c */ srl	$v0,$a0,0x1f
.L800a4080:
/* 0x800a4080 */ addu	$a0,$a0,$v0
.L800a4084:
/* 0x800a4084 */ jal	0x800ac2bc
.L800a4088:
/* 0x800a4088 */ sra	$a0,$a0,0x1
.L800a408c:
/* 0x800a408c */ lw	$ra,68($sp)
.L800a4090:
/* 0x800a4090 */ lw	$s8,64($sp)
.L800a4094:
/* 0x800a4094 */ lw	$s7,60($sp)
.L800a4098:
/* 0x800a4098 */ lw	$s6,56($sp)
.L800a409c:
/* 0x800a409c */ lw	$s5,52($sp)
.L800a40a0:
/* 0x800a40a0 */ lw	$s4,48($sp)
.L800a40a4:
/* 0x800a40a4 */ lw	$s3,44($sp)
.L800a40a8:
/* 0x800a40a8 */ lw	$s2,40($sp)
.L800a40ac:
/* 0x800a40ac */ lw	$s1,36($sp)
.L800a40b0:
/* 0x800a40b0 */ lw	$s0,32($sp)
.L800a40b4:
/* 0x800a40b4 */ jr	$ra
.L800a40b8:
/* 0x800a40b8 */ addiu	$sp,$sp,72
.size FUN_800a3cec, .-FUN_800a3cec
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a40bc
.globl FUN_800a40bc
.type FUN_800a40bc, @function
FUN_800a40bc:
.L800a40bc:
/* 0x800a40bc */ addiu	$sp,$sp,-40
.L800a40c0:
/* 0x800a40c0 */ sw	$s3,28($sp)
.L800a40c4:
/* 0x800a40c4 */ addu	$s3,$a1,$zero
.L800a40c8:
/* 0x800a40c8 */ sw	$s1,20($sp)
.L800a40cc:
/* 0x800a40cc */ addu	$s1,$a2,$zero
.L800a40d0:
/* 0x800a40d0 */ sw	$s2,24($sp)
.L800a40d4:
/* 0x800a40d4 */ addu	$s2,$a3,$zero
.L800a40d8:
/* 0x800a40d8 */ lui	$v0,0x800e
.L800a40dc:
/* 0x800a40dc */ lw	$v0,2840($v0)
.L800a40e0:
/* 0x800a40e0 */ sll	$v1,$a0,0x5
.L800a40e4:
/* 0x800a40e4 */ sw	$ra,32($sp)
.L800a40e8:
/* 0x800a40e8 */ addu	$v0,$v0,$v1
.L800a40ec:
/* 0x800a40ec */ addiu	$a1,$v0,4884
.L800a40f0:
/* 0x800a40f0 */ sll	$v1,$a0,0x3
.L800a40f4:
/* 0x800a40f4 */ addu	$v1,$v1,$a0
.L800a40f8:
/* 0x800a40f8 */ sll	$v1,$v1,0x3
.L800a40fc:
/* 0x800a40fc */ lui	$v0,0x8012
.L800a4100:
/* 0x800a4100 */ addiu	$v0,$v0,-30272
.L800a4104:
/* 0x800a4104 */ addu	$a3,$v1,$v0
.L800a4108:
/* 0x800a4108 */ sltiu	$v0,$s3,5
.L800a410c:
/* 0x800a410c */ beq	$v0,$zero,.L800a4388
.L800a4110:
/* 0x800a4110 */ sw	$s0,16($sp)
.L800a4114:
/* 0x800a4114 */ lui	$v0,0x8002
.L800a4118:
/* 0x800a4118 */ addiu	$v0,$v0,1392
.L800a411c:
/* 0x800a411c */ sll	$v1,$s3,0x2
.L800a4120:
/* 0x800a4120 */ addu	$v1,$v1,$v0
.L800a4124:
/* 0x800a4124 */ lw	$v0,0($v1)
.L800a4128:
/* 0x800a4128 */ sll	$zero,$zero,0x0
.L800a412c:
/* 0x800a412c */ jr	$v0
.L800a4130:
/* 0x800a4130 */ sll	$zero,$zero,0x0
.L800a4134:
/* 0x800a4134 */ lbu	$v0,5($a3)
.L800a4138:
/* 0x800a4138 */ lhu	$a2,10($a1)
.L800a413c:
/* 0x800a413c */ beq	$v0,$zero,.L800a4148
.L800a4140:
/* 0x800a4140 */ addu	$v0,$a2,$s1
.L800a4144:
/* 0x800a4144 */ sh	$v0,10($a1)
.L800a4148:
/* 0x800a4148 */ lhu	$v1,10($a1)
.L800a414c:
/* 0x800a414c */ sll	$zero,$zero,0x0
.L800a4150:
/* 0x800a4150 */ andi	$a0,$v1,0xffff
.L800a4154:
/* 0x800a4154 */ sltiu	$v0,$a0,10
.L800a4158:
/* 0x800a4158 */ bne	$v0,$zero,.L800a4170
.L800a415c:
/* 0x800a415c */ sltiu	$v0,$a0,5001
.L800a4160:
/* 0x800a4160 */ bne	$v0,$zero,.L800a4174
.L800a4164:
/* 0x800a4164 */ sll	$zero,$zero,0x0
.L800a4168:
/* 0x800a4168 */ j	.L800a4174
.L800a416c:
/* 0x800a416c */ addiu	$v1,$zero,5000
.L800a4170:
/* 0x800a4170 */ addiu	$v1,$zero,10
.L800a4174:
/* 0x800a4174 */ sh	$v1,10($a1)
.L800a4178:
/* 0x800a4178 */ lbu	$v0,5($a3)
.L800a417c:
/* 0x800a417c */ sll	$zero,$zero,0x0
.L800a4180:
/* 0x800a4180 */ beq	$v0,$zero,.L800a4388
.L800a4184:
/* 0x800a4184 */ andi	$v0,$v1,0xffff
.L800a4188:
/* 0x800a4188 */ j	.L800a42c0
.L800a418c:
/* 0x800a418c */ sll	$zero,$zero,0x0
.L800a4190:
/* 0x800a4190 */ lb	$v0,0($a1)
.L800a4194:
/* 0x800a4194 */ beq	$s1,$zero,.L800a41b0
.L800a4198:
/* 0x800a4198 */ sll	$zero,$zero,0x0
.L800a419c:
/* 0x800a419c */ blez	$s1,.L800a41ac
.L800a41a0:
/* 0x800a41a0 */ sll	$zero,$zero,0x0
.L800a41a4:
/* 0x800a41a4 */ j	.L800a41b0
.L800a41a8:
/* 0x800a41a8 */ addiu	$v0,$v0,1
.L800a41ac:
/* 0x800a41ac */ addiu	$v0,$v0,-1
.L800a41b0:
/* 0x800a41b0 */ sb	$v0,0($a1)
.L800a41b4:
/* 0x800a41b4 */ lb	$v0,0($a1)
.L800a41b8:
/* 0x800a41b8 */ lbu	$v1,0($a1)
.L800a41bc:
/* 0x800a41bc */ bgez	$v0,.L800a41cc
.L800a41c0:
/* 0x800a41c0 */ slti	$v0,$v0,3
.L800a41c4:
/* 0x800a41c4 */ j	.L800a41d8
.L800a41c8:
/* 0x800a41c8 */ addiu	$v1,$v1,3
.L800a41cc:
/* 0x800a41cc */ bne	$v0,$zero,.L800a41d8
.L800a41d0:
/* 0x800a41d0 */ sll	$zero,$zero,0x0
.L800a41d4:
/* 0x800a41d4 */ addiu	$v1,$v1,-3
.L800a41d8:
/* 0x800a41d8 */ j	.L800a4388
.L800a41dc:
/* 0x800a41dc */ sb	$v1,0($a1)
.L800a41e0:
/* 0x800a41e0 */ lb	$v1,0($a1)
.L800a41e4:
/* 0x800a41e4 */ sll	$zero,$zero,0x0
.L800a41e8:
/* 0x800a41e8 */ sll	$v0,$v1,0x1
.L800a41ec:
/* 0x800a41ec */ addu	$v0,$a1,$v0
.L800a41f0:
/* 0x800a41f0 */ lh	$a2,4($v0)
.L800a41f4:
/* 0x800a41f4 */ addiu	$v0,$zero,1
.L800a41f8:
/* 0x800a41f8 */ bne	$v1,$v0,.L800a4258
.L800a41fc:
/* 0x800a41fc */ addiu	$v0,$zero,2
.L800a4200:
/* 0x800a4200 */ addiu	$v1,$a1,2
.L800a4204:
/* 0x800a4204 */ lh	$v0,4($v1)
.L800a4208:
/* 0x800a4208 */ beq	$s1,$zero,.L800a4224
.L800a420c:
/* 0x800a420c */ sll	$zero,$zero,0x0
.L800a4210:
/* 0x800a4210 */ blez	$s1,.L800a4220
.L800a4214:
/* 0x800a4214 */ sll	$zero,$zero,0x0
.L800a4218:
/* 0x800a4218 */ j	.L800a4224
.L800a421c:
/* 0x800a421c */ addiu	$v0,$v0,10
.L800a4220:
/* 0x800a4220 */ addiu	$v0,$v0,-10
.L800a4224:
/* 0x800a4224 */ sh	$v0,4($v1)
.L800a4228:
/* 0x800a4228 */ lh	$a0,6($a1)
.L800a422c:
/* 0x800a422c */ lhu	$v1,6($a1)
.L800a4230:
/* 0x800a4230 */ slti	$v0,$a0,10
.L800a4234:
/* 0x800a4234 */ bne	$v0,$zero,.L800a424c
.L800a4238:
/* 0x800a4238 */ slti	$v0,$a0,1001
.L800a423c:
/* 0x800a423c */ bne	$v0,$zero,.L800a4250
.L800a4240:
/* 0x800a4240 */ sll	$zero,$zero,0x0
.L800a4244:
/* 0x800a4244 */ j	.L800a4250
.L800a4248:
/* 0x800a4248 */ addiu	$v1,$zero,1000
.L800a424c:
/* 0x800a424c */ addiu	$v1,$zero,10
.L800a4250:
/* 0x800a4250 */ j	.L800a42ac
.L800a4254:
/* 0x800a4254 */ sh	$v1,6($a1)
.L800a4258:
/* 0x800a4258 */ bne	$v1,$v0,.L800a42ac
.L800a425c:
/* 0x800a425c */ addiu	$v1,$a1,4
.L800a4260:
/* 0x800a4260 */ lh	$v0,4($v1)
.L800a4264:
/* 0x800a4264 */ beq	$s1,$zero,.L800a4280
.L800a4268:
/* 0x800a4268 */ sll	$zero,$zero,0x0
.L800a426c:
/* 0x800a426c */ blez	$s1,.L800a427c
.L800a4270:
/* 0x800a4270 */ sll	$zero,$zero,0x0
.L800a4274:
/* 0x800a4274 */ j	.L800a4280
.L800a4278:
/* 0x800a4278 */ addiu	$v0,$v0,1
.L800a427c:
/* 0x800a427c */ addiu	$v0,$v0,-1
.L800a4280:
/* 0x800a4280 */ sh	$v0,4($v1)
.L800a4284:
/* 0x800a4284 */ lh	$v0,8($a1)
.L800a4288:
/* 0x800a4288 */ lhu	$v1,8($a1)
.L800a428c:
/* 0x800a428c */ blez	$v0,.L800a42a4
.L800a4290:
/* 0x800a4290 */ slti	$v0,$v0,121
.L800a4294:
/* 0x800a4294 */ bne	$v0,$zero,.L800a42a8
.L800a4298:
/* 0x800a4298 */ sll	$zero,$zero,0x0
.L800a429c:
/* 0x800a429c */ j	.L800a42a8
.L800a42a0:
/* 0x800a42a0 */ addiu	$v1,$zero,120
.L800a42a4:
/* 0x800a42a4 */ addiu	$v1,$zero,1
.L800a42a8:
/* 0x800a42a8 */ sh	$v1,8($a1)
.L800a42ac:
/* 0x800a42ac */ lb	$v0,0($a1)
.L800a42b0:
/* 0x800a42b0 */ sll	$zero,$zero,0x0
.L800a42b4:
/* 0x800a42b4 */ sll	$v0,$v0,0x1
.L800a42b8:
/* 0x800a42b8 */ addu	$v0,$a1,$v0
.L800a42bc:
/* 0x800a42bc */ lh	$v0,4($v0)
.L800a42c0:
/* 0x800a42c0 */ sll	$zero,$zero,0x0
.L800a42c4:
/* 0x800a42c4 */ bne	$a2,$v0,.L800a4388
.L800a42c8:
/* 0x800a42c8 */ sll	$zero,$zero,0x0
.L800a42cc:
/* 0x800a42cc */ j	.L800a4388
.L800a42d0:
/* 0x800a42d0 */ addu	$s2,$zero,$zero
.L800a42d4:
/* 0x800a42d4 */ lb	$v0,1($a1)
.L800a42d8:
/* 0x800a42d8 */ beq	$s1,$zero,.L800a42f4
.L800a42dc:
/* 0x800a42dc */ sll	$zero,$zero,0x0
.L800a42e0:
/* 0x800a42e0 */ blez	$s1,.L800a42f0
.L800a42e4:
/* 0x800a42e4 */ sll	$zero,$zero,0x0
.L800a42e8:
/* 0x800a42e8 */ j	.L800a42f4
.L800a42ec:
/* 0x800a42ec */ addiu	$v0,$v0,1
.L800a42f0:
/* 0x800a42f0 */ addiu	$v0,$v0,-1
.L800a42f4:
/* 0x800a42f4 */ sb	$v0,1($a1)
.L800a42f8:
/* 0x800a42f8 */ lb	$v0,1($a1)
.L800a42fc:
/* 0x800a42fc */ lbu	$v1,1($a1)
.L800a4300:
/* 0x800a4300 */ bgez	$v0,.L800a4310
.L800a4304:
/* 0x800a4304 */ slti	$v0,$v0,3
.L800a4308:
/* 0x800a4308 */ j	.L800a431c
.L800a430c:
/* 0x800a430c */ addiu	$v1,$v1,3
.L800a4310:
/* 0x800a4310 */ bne	$v0,$zero,.L800a431c
.L800a4314:
/* 0x800a4314 */ sll	$zero,$zero,0x0
.L800a4318:
/* 0x800a4318 */ addiu	$v1,$v1,-3
.L800a431c:
/* 0x800a431c */ j	.L800a4388
.L800a4320:
/* 0x800a4320 */ sb	$v1,1($a1)
.L800a4324:
/* 0x800a4324 */ lui	$v0,0x8012
.L800a4328:
/* 0x800a4328 */ addiu	$v0,$v0,-30304
.L800a432c:
/* 0x800a432c */ addu	$s0,$v0,$zero
.L800a4330:
/* 0x800a4330 */ lw	$v0,8($s0)
.L800a4334:
/* 0x800a4334 */ lw	$v1,4($s0)
.L800a4338:
/* 0x800a4338 */ addu	$v0,$v0,$s1
.L800a433c:
/* 0x800a433c */ sw	$v0,8($s0)
.L800a4340:
/* 0x800a4340 */ slt	$v0,$v0,$v1
.L800a4344:
/* 0x800a4344 */ bne	$v0,$zero,.L800a4384
.L800a4348:
/* 0x800a4348 */ addu	$v0,$v1,$zero
.L800a434c:
/* 0x800a434c */ addiu	$a0,$zero,2127
.L800a4350:
/* 0x800a4350 */ addiu	$a1,$zero,12
.L800a4354:
/* 0x800a4354 */ jal	0x800ac764
.L800a4358:
/* 0x800a4358 */ addiu	$a2,$zero,31
.L800a435c:
/* 0x800a435c */ lw	$v1,8($s0)
.L800a4360:
/* 0x800a4360 */ sll	$zero,$zero,0x0
.L800a4364:
/* 0x800a4364 */ slt	$v0,$v0,$v1
.L800a4368:
/* 0x800a4368 */ bne	$v0,$zero,.L800a4378
.L800a436c:
/* 0x800a436c */ addiu	$a0,$zero,2127
.L800a4370:
/* 0x800a4370 */ j	.L800a4384
.L800a4374:
/* 0x800a4374 */ addu	$v0,$v1,$zero
.L800a4378:
/* 0x800a4378 */ addiu	$a1,$zero,12
.L800a437c:
/* 0x800a437c */ jal	0x800ac764
.L800a4380:
/* 0x800a4380 */ addiu	$a2,$zero,31
.L800a4384:
/* 0x800a4384 */ sw	$v0,8($s0)
.L800a4388:
/* 0x800a4388 */ beq	$s1,$zero,.L800a43c0
.L800a438c:
/* 0x800a438c */ sll	$zero,$zero,0x0
.L800a4390:
/* 0x800a4390 */ beq	$s2,$zero,.L800a43c0
.L800a4394:
/* 0x800a4394 */ addiu	$v0,$zero,1
.L800a4398:
/* 0x800a4398 */ beq	$s3,$v0,.L800a43a8
.L800a439c:
/* 0x800a439c */ addiu	$v0,$zero,3
.L800a43a0:
/* 0x800a43a0 */ bne	$s3,$v0,.L800a43b0
.L800a43a4:
/* 0x800a43a4 */ addiu	$v0,$zero,5
.L800a43a8:
/* 0x800a43a8 */ j	.L800a43b8
.L800a43ac:
/* 0x800a43ac */ addiu	$a0,$zero,793
.L800a43b0:
/* 0x800a43b0 */ beq	$s3,$v0,.L800a43c0
.L800a43b4:
/* 0x800a43b4 */ addiu	$a0,$zero,797
.L800a43b8:
/* 0x800a43b8 */ jal	0x80026940
.L800a43bc:
/* 0x800a43bc */ sll	$zero,$zero,0x0
.L800a43c0:
/* 0x800a43c0 */ lw	$ra,32($sp)
.L800a43c4:
/* 0x800a43c4 */ lw	$s3,28($sp)
.L800a43c8:
/* 0x800a43c8 */ lw	$s2,24($sp)
.L800a43cc:
/* 0x800a43cc */ lw	$s1,20($sp)
.L800a43d0:
/* 0x800a43d0 */ lw	$s0,16($sp)
.L800a43d4:
/* 0x800a43d4 */ jr	$ra
.L800a43d8:
/* 0x800a43d8 */ addiu	$sp,$sp,40
.size FUN_800a40bc, .-FUN_800a40bc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a43dc
.globl FUN_800a43dc
.type FUN_800a43dc, @function
FUN_800a43dc:
.L800a43dc:
/* 0x800a43dc */ addiu	$sp,$sp,-40
.L800a43e0:
/* 0x800a43e0 */ sw	$s1,20($sp)
.L800a43e4:
/* 0x800a43e4 */ addu	$s1,$a0,$zero
.L800a43e8:
/* 0x800a43e8 */ sw	$s0,16($sp)
.L800a43ec:
/* 0x800a43ec */ addiu	$s0,$s1,14
.L800a43f0:
/* 0x800a43f0 */ lui	$v0,0x8012
.L800a43f4:
/* 0x800a43f4 */ sw	$ra,32($sp)
.L800a43f8:
/* 0x800a43f8 */ sw	$s3,28($sp)
.L800a43fc:
/* 0x800a43fc */ sw	$s2,24($sp)
.L800a4400:
/* 0x800a4400 */ lbu	$s2,0($s1)
.L800a4404:
/* 0x800a4404 */ sll	$zero,$zero,0x0
.L800a4408:
/* 0x800a4408 */ bne	$s2,$zero,.L800a4428
.L800a440c:
/* 0x800a440c */ addiu	$s3,$v0,-30304
.L800a4410:
/* 0x800a4410 */ lui	$v0,0x800b
.L800a4414:
/* 0x800a4414 */ lw	$v0,-14104($v0)
.L800a4418:
/* 0x800a4418 */ sll	$zero,$zero,0x0
.L800a441c:
/* 0x800a441c */ lhu	$v0,84($v0)
.L800a4420:
/* 0x800a4420 */ j	.L800a4440
.L800a4424:
/* 0x800a4424 */ sh	$v0,14($s1)
.L800a4428:
/* 0x800a4428 */ lui	$v0,0x800b
.L800a442c:
/* 0x800a442c */ lw	$v0,-14104($v0)
.L800a4430:
/* 0x800a4430 */ sll	$zero,$zero,0x0
.L800a4434:
/* 0x800a4434 */ lhu	$v0,100($v0)
.L800a4438:
/* 0x800a4438 */ sll	$zero,$zero,0x0
.L800a443c:
/* 0x800a443c */ sh	$v0,14($s1)
.L800a4440:
/* 0x800a4440 */ bne	$s2,$zero,.L800a445c
.L800a4444:
/* 0x800a4444 */ lui	$v0,0x800b
.L800a4448:
/* 0x800a4448 */ lw	$v0,-14104($v0)
.L800a444c:
/* 0x800a444c */ sll	$zero,$zero,0x0
.L800a4450:
/* 0x800a4450 */ lhu	$v0,80($v0)
.L800a4454:
/* 0x800a4454 */ j	.L800a4470
.L800a4458:
/* 0x800a4458 */ sh	$v0,2($s0)
.L800a445c:
/* 0x800a445c */ lw	$v0,-14104($v0)
.L800a4460:
/* 0x800a4460 */ sll	$zero,$zero,0x0
.L800a4464:
/* 0x800a4464 */ lhu	$v0,96($v0)
.L800a4468:
/* 0x800a4468 */ sll	$zero,$zero,0x0
.L800a446c:
/* 0x800a446c */ sh	$v0,2($s0)
.L800a4470:
/* 0x800a4470 */ lhu	$v0,2($s0)
.L800a4474:
/* 0x800a4474 */ sll	$zero,$zero,0x0
.L800a4478:
/* 0x800a4478 */ andi	$v0,$v0,0x5000
.L800a447c:
/* 0x800a447c */ beq	$v0,$zero,.L800a4498
.L800a4480:
/* 0x800a4480 */ sll	$zero,$zero,0x0
.L800a4484:
/* 0x800a4484 */ lhu	$v0,4($s0)
.L800a4488:
/* 0x800a4488 */ sll	$zero,$zero,0x0
.L800a448c:
/* 0x800a448c */ addiu	$v0,$v0,1
.L800a4490:
/* 0x800a4490 */ j	.L800a449c
.L800a4494:
/* 0x800a4494 */ sh	$v0,4($s0)
.L800a4498:
/* 0x800a4498 */ sh	$zero,4($s0)
.L800a449c:
/* 0x800a449c */ lhu	$v0,2($s0)
.L800a44a0:
/* 0x800a44a0 */ sll	$zero,$zero,0x0
.L800a44a4:
/* 0x800a44a4 */ andi	$v0,$v0,0xa000
.L800a44a8:
/* 0x800a44a8 */ beq	$v0,$zero,.L800a44c4
.L800a44ac:
/* 0x800a44ac */ sll	$zero,$zero,0x0
.L800a44b0:
/* 0x800a44b0 */ lhu	$v0,6($s0)
.L800a44b4:
/* 0x800a44b4 */ sll	$zero,$zero,0x0
.L800a44b8:
/* 0x800a44b8 */ addiu	$v0,$v0,1
.L800a44bc:
/* 0x800a44bc */ j	.L800a44c8
.L800a44c0:
/* 0x800a44c0 */ sh	$v0,6($s0)
.L800a44c4:
/* 0x800a44c4 */ sh	$zero,6($s0)
.L800a44c8:
/* 0x800a44c8 */ lw	$v0,8($s1)
.L800a44cc:
/* 0x800a44cc */ lbu	$v1,1($s1)
.L800a44d0:
/* 0x800a44d0 */ addiu	$v0,$v0,1
.L800a44d4:
/* 0x800a44d4 */ sw	$v0,8($s1)
.L800a44d8:
/* 0x800a44d8 */ sltiu	$v0,$v1,9
.L800a44dc:
/* 0x800a44dc */ beq	$v0,$zero,.L800a4b7c
.L800a44e0:
/* 0x800a44e0 */ lui	$v0,0x8002
.L800a44e4:
/* 0x800a44e4 */ addiu	$v0,$v0,1416
.L800a44e8:
/* 0x800a44e8 */ sll	$v1,$v1,0x2
.L800a44ec:
/* 0x800a44ec */ addu	$v1,$v1,$v0
.L800a44f0:
/* 0x800a44f0 */ lw	$v0,0($v1)
.L800a44f4:
/* 0x800a44f4 */ sll	$zero,$zero,0x0
.L800a44f8:
/* 0x800a44f8 */ jr	$v0
.L800a44fc:
/* 0x800a44fc */ sll	$zero,$zero,0x0
.L800a4500:
/* 0x800a4500 */ lui	$v0,0x800f
.L800a4504:
/* 0x800a4504 */ lbu	$v0,10496($v0)
.L800a4508:
/* 0x800a4508 */ addiu	$s0,$zero,1
.L800a450c:
/* 0x800a450c */ sllv	$v1,$s0,$s2
.L800a4510:
/* 0x800a4510 */ and	$v0,$v0,$v1
.L800a4514:
/* 0x800a4514 */ blez	$v0,.L800a4b7c
.L800a4518:
/* 0x800a4518 */ sll	$zero,$zero,0x0
.L800a451c:
/* 0x800a451c */ jal	0x80026940
.L800a4520:
/* 0x800a4520 */ addiu	$a0,$zero,781
.L800a4524:
/* 0x800a4524 */ addiu	$a2,$s1,24
.L800a4528:
/* 0x800a4528 */ addu	$a1,$zero,$zero
.L800a452c:
/* 0x800a452c */ addiu	$t3,$zero,4
.L800a4530:
/* 0x800a4530 */ addu	$t2,$s0,$zero
.L800a4534:
/* 0x800a4534 */ lui	$v0,0x8012
.L800a4538:
/* 0x800a4538 */ addiu	$t1,$v0,-30248
.L800a453c:
/* 0x800a453c */ addiu	$a0,$s1,28
.L800a4540:
/* 0x800a4540 */ addu	$t0,$a1,$zero
.L800a4544:
/* 0x800a4544 */ sb	$s0,1($s1)
.L800a4548:
/* 0x800a4548 */ sw	$zero,8($s1)
.L800a454c:
/* 0x800a454c */ sb	$zero,4($s1)
.L800a4550:
/* 0x800a4550 */ lb	$v0,3($s1)
.L800a4554:
/* 0x800a4554 */ sll	$zero,$zero,0x0
.L800a4558:
/* 0x800a4558 */ bne	$a1,$v0,.L800a4578
.L800a455c:
/* 0x800a455c */ addiu	$a3,$zero,4
.L800a4560:
/* 0x800a4560 */ lbu	$v0,-3($a0)
.L800a4564:
/* 0x800a4564 */ sll	$zero,$zero,0x0
.L800a4568:
/* 0x800a4568 */ bne	$v0,$t3,.L800a45b4
.L800a456c:
/* 0x800a456c */ addiu	$a3,$zero,5
.L800a4570:
/* 0x800a4570 */ j	.L800a4588
.L800a4574:
/* 0x800a4574 */ sll	$zero,$zero,0x0
.L800a4578:
/* 0x800a4578 */ lbu	$v0,-3($a0)
.L800a457c:
/* 0x800a457c */ sll	$zero,$zero,0x0
.L800a4580:
/* 0x800a4580 */ bne	$v0,$a3,.L800a45b4
.L800a4584:
/* 0x800a4584 */ sll	$zero,$zero,0x0
.L800a4588:
/* 0x800a4588 */ lbu	$v0,0($a2)
.L800a458c:
/* 0x800a458c */ sll	$zero,$zero,0x0
.L800a4590:
/* 0x800a4590 */ subu	$v0,$t2,$v0
.L800a4594:
/* 0x800a4594 */ sll	$v1,$v0,0x3
.L800a4598:
/* 0x800a4598 */ addu	$v1,$v1,$v0
.L800a459c:
/* 0x800a459c */ sll	$v1,$v1,0x3
.L800a45a0:
/* 0x800a45a0 */ addu	$v1,$v1,$t1
.L800a45a4:
/* 0x800a45a4 */ lbu	$v0,34($v1)
.L800a45a8:
/* 0x800a45a8 */ sll	$zero,$zero,0x0
.L800a45ac:
/* 0x800a45ac */ bne	$v0,$zero,.L800a45bc
.L800a45b0:
/* 0x800a45b0 */ sll	$zero,$zero,0x0
.L800a45b4:
/* 0x800a45b4 */ sb	$a3,-2($a0)
.L800a45b8:
/* 0x800a45b8 */ sw	$zero,0($a0)
.L800a45bc:
/* 0x800a45bc */ sw	$t0,0($a0)
.L800a45c0:
/* 0x800a45c0 */ addiu	$t0,$t0,-2
.L800a45c4:
/* 0x800a45c4 */ addiu	$a1,$a1,1
.L800a45c8:
/* 0x800a45c8 */ addiu	$a0,$a0,8
.L800a45cc:
/* 0x800a45cc */ slti	$v0,$a1,6
.L800a45d0:
/* 0x800a45d0 */ bne	$v0,$zero,.L800a4550
.L800a45d4:
/* 0x800a45d4 */ addiu	$a2,$a2,8
.L800a45d8:
/* 0x800a45d8 */ j	.L800a4b7c
.L800a45dc:
/* 0x800a45dc */ sll	$zero,$zero,0x0
.L800a45e0:
/* 0x800a45e0 */ lw	$v1,8($s1)
.L800a45e4:
/* 0x800a45e4 */ addiu	$v0,$zero,1
.L800a45e8:
/* 0x800a45e8 */ bne	$v1,$v0,.L800a45f8
.L800a45ec:
/* 0x800a45ec */ sll	$zero,$zero,0x0
.L800a45f0:
/* 0x800a45f0 */ jal	0x80028358
.L800a45f4:
/* 0x800a45f4 */ addiu	$a0,$zero,788
.L800a45f8:
/* 0x800a45f8 */ lw	$v0,8($s1)
.L800a45fc:
/* 0x800a45fc */ sll	$zero,$zero,0x0
.L800a4600:
/* 0x800a4600 */ slti	$v0,$v0,23
.L800a4604:
/* 0x800a4604 */ bne	$v0,$zero,.L800a4b7c
.L800a4608:
/* 0x800a4608 */ addiu	$v0,$zero,2
.L800a460c:
/* 0x800a460c */ j	.L800a4ae8
.L800a4610:
/* 0x800a4610 */ sb	$v0,1($s1)
.L800a4614:
/* 0x800a4614 */ lhu	$v0,0($s0)
.L800a4618:
/* 0x800a4618 */ sll	$zero,$zero,0x0
.L800a461c:
/* 0x800a461c */ andi	$v0,$v0,0x100
.L800a4620:
/* 0x800a4620 */ beq	$v0,$zero,.L800a4644
.L800a4624:
/* 0x800a4624 */ sll	$zero,$zero,0x0
.L800a4628:
/* 0x800a4628 */ jal	0x80026940
.L800a462c:
/* 0x800a462c */ addiu	$a0,$zero,793
.L800a4630:
/* 0x800a4630 */ lbu	$v0,0($s3)
.L800a4634:
/* 0x800a4634 */ sll	$zero,$zero,0x0
.L800a4638:
/* 0x800a4638 */ xori	$v0,$v0,0x1
.L800a463c:
/* 0x800a463c */ sltu	$v0,$zero,$v0
.L800a4640:
/* 0x800a4640 */ sb	$v0,0($s3)
.L800a4644:
/* 0x800a4644 */ lhu	$v1,0($s0)
.L800a4648:
/* 0x800a4648 */ sll	$zero,$zero,0x0
.L800a464c:
/* 0x800a464c */ andi	$v0,$v1,0x8000
.L800a4650:
/* 0x800a4650 */ bne	$v0,$zero,.L800a4664
.L800a4654:
/* 0x800a4654 */ addiu	$v0,$zero,-1
.L800a4658:
/* 0x800a4658 */ andi	$v0,$v1,0x2000
.L800a465c:
/* 0x800a465c */ beq	$v0,$zero,.L800a4668
.L800a4660:
/* 0x800a4660 */ addiu	$v0,$zero,1
.L800a4664:
/* 0x800a4664 */ sb	$v0,4($s1)
.L800a4668:
/* 0x800a4668 */ lhu	$v0,6($s0)
.L800a466c:
/* 0x800a466c */ sll	$zero,$zero,0x0
.L800a4670:
/* 0x800a4670 */ beq	$v0,$zero,.L800a47f0
.L800a4674:
/* 0x800a4674 */ addiu	$a0,$zero,1
.L800a4678:
/* 0x800a4678 */ lb	$v1,3($s1)
.L800a467c:
/* 0x800a467c */ sll	$zero,$zero,0x0
.L800a4680:
/* 0x800a4680 */ beq	$v1,$a0,.L800a4690
.L800a4684:
/* 0x800a4684 */ addiu	$v0,$zero,3
.L800a4688:
/* 0x800a4688 */ bne	$v1,$v0,.L800a46a8
.L800a468c:
/* 0x800a468c */ sll	$zero,$zero,0x0
.L800a4690:
/* 0x800a4690 */ lhu	$v0,6($s0)
.L800a4694:
/* 0x800a4694 */ sll	$zero,$zero,0x0
.L800a4698:
/* 0x800a4698 */ beq	$v0,$a0,.L800a46b4
.L800a469c:
/* 0x800a469c */ addu	$a3,$zero,$zero
.L800a46a0:
/* 0x800a46a0 */ j	.L800a46b4
.L800a46a4:
/* 0x800a46a4 */ addiu	$a3,$zero,-1
.L800a46a8:
/* 0x800a46a8 */ lhu	$v0,6($s0)
.L800a46ac:
/* 0x800a46ac */ sll	$zero,$zero,0x0
.L800a46b0:
/* 0x800a46b0 */ addiu	$a3,$v0,-1
.L800a46b4:
/* 0x800a46b4 */ slti	$v0,$a3,321
.L800a46b8:
/* 0x800a46b8 */ bne	$v0,$zero,.L800a46ec
.L800a46bc:
/* 0x800a46bc */ lui	$v0,0x2aaa
.L800a46c0:
/* 0x800a46c0 */ ori	$v0,$v0,0xaaab
.L800a46c4:
/* 0x800a46c4 */ sll	$a0,$a3,0x1
.L800a46c8:
/* 0x800a46c8 */ mult	$a0,$v0
.L800a46cc:
/* 0x800a46cc */ addiu	$a1,$zero,4
.L800a46d0:
/* 0x800a46d0 */ sra	$v1,$a0,0x1f
.L800a46d4:
/* 0x800a46d4 */ mfhi	$t4
.L800a46d8:
/* 0x800a46d8 */ subu	$v1,$t4,$v1
.L800a46dc:
/* 0x800a46dc */ sll	$v0,$v1,0x1
.L800a46e0:
/* 0x800a46e0 */ addu	$v0,$v0,$v1
.L800a46e4:
/* 0x800a46e4 */ j	.L800a475c
.L800a46e8:
/* 0x800a46e8 */ sll	$v0,$v0,0x1
.L800a46ec:
/* 0x800a46ec */ slti	$v0,$a3,121
.L800a46f0:
/* 0x800a46f0 */ bne	$v0,$zero,.L800a4724
.L800a46f4:
/* 0x800a46f4 */ lui	$v0,0x2aaa
.L800a46f8:
/* 0x800a46f8 */ ori	$v0,$v0,0xaaab
.L800a46fc:
/* 0x800a46fc */ sll	$a0,$a3,0x1
.L800a4700:
/* 0x800a4700 */ mult	$a0,$v0
.L800a4704:
/* 0x800a4704 */ addiu	$a1,$zero,2
.L800a4708:
/* 0x800a4708 */ sra	$v1,$a0,0x1f
.L800a470c:
/* 0x800a470c */ mfhi	$t4
.L800a4710:
/* 0x800a4710 */ subu	$v1,$t4,$v1
.L800a4714:
/* 0x800a4714 */ sll	$v0,$v1,0x1
.L800a4718:
/* 0x800a4718 */ addu	$v0,$v0,$v1
.L800a471c:
/* 0x800a471c */ j	.L800a475c
.L800a4720:
/* 0x800a4720 */ sll	$v0,$v0,0x1
.L800a4724:
/* 0x800a4724 */ slti	$v0,$a3,81
.L800a4728:
/* 0x800a4728 */ bne	$v0,$zero,.L800a4768
.L800a472c:
/* 0x800a472c */ slti	$v0,$a3,41
.L800a4730:
/* 0x800a4730 */ lui	$v0,0x2aaa
.L800a4734:
/* 0x800a4734 */ ori	$v0,$v0,0xaaab
.L800a4738:
/* 0x800a4738 */ sll	$a0,$a3,0x1
.L800a473c:
/* 0x800a473c */ mult	$a0,$v0
.L800a4740:
/* 0x800a4740 */ addiu	$a1,$zero,1
.L800a4744:
/* 0x800a4744 */ sra	$v1,$a0,0x1f
.L800a4748:
/* 0x800a4748 */ mfhi	$t4
.L800a474c:
/* 0x800a474c */ subu	$v1,$t4,$v1
.L800a4750:
/* 0x800a4750 */ sllv	$v0,$v1,$a1
.L800a4754:
/* 0x800a4754 */ addu	$v0,$v0,$v1
.L800a4758:
/* 0x800a4758 */ sllv	$v0,$v0,$a1
.L800a475c:
/* 0x800a475c */ subu	$a0,$a0,$v0
.L800a4760:
/* 0x800a4760 */ j	.L800a47b4
.L800a4764:
/* 0x800a4764 */ sw	$a0,8($s1)
.L800a4768:
/* 0x800a4768 */ bne	$v0,$zero,.L800a47a4
.L800a476c:
/* 0x800a476c */ lui	$v0,0x2aaa
.L800a4770:
/* 0x800a4770 */ ori	$v0,$v0,0xaaab
.L800a4774:
/* 0x800a4774 */ mult	$a3,$v0
.L800a4778:
/* 0x800a4778 */ andi	$v0,$a3,0x3
.L800a477c:
/* 0x800a477c */ sltiu	$a1,$v0,1
.L800a4780:
/* 0x800a4780 */ sra	$v1,$a3,0x1f
.L800a4784:
/* 0x800a4784 */ mfhi	$t4
.L800a4788:
/* 0x800a4788 */ subu	$v1,$t4,$v1
.L800a478c:
/* 0x800a478c */ sll	$v0,$v1,0x1
.L800a4790:
/* 0x800a4790 */ addu	$v0,$v0,$v1
.L800a4794:
/* 0x800a4794 */ sll	$v0,$v0,0x1
.L800a4798:
/* 0x800a4798 */ subu	$v0,$a3,$v0
.L800a479c:
/* 0x800a479c */ j	.L800a47b4
.L800a47a0:
/* 0x800a47a0 */ sw	$v0,8($s1)
.L800a47a4:
/* 0x800a47a4 */ bne	$a3,$zero,.L800a47b4
.L800a47a8:
/* 0x800a47a8 */ addu	$a1,$zero,$zero
.L800a47ac:
/* 0x800a47ac */ addiu	$a1,$zero,1
.L800a47b0:
/* 0x800a47b0 */ sw	$zero,8($s1)
.L800a47b4:
/* 0x800a47b4 */ lb	$a2,4($s1)
.L800a47b8:
/* 0x800a47b8 */ sll	$zero,$zero,0x0
.L800a47bc:
/* 0x800a47bc */ mult	$a2,$a1
.L800a47c0:
/* 0x800a47c0 */ addu	$a0,$s2,$zero
.L800a47c4:
/* 0x800a47c4 */ andi	$a3,$a3,0x1
.L800a47c8:
/* 0x800a47c8 */ lb	$a1,3($s1)
.L800a47cc:
/* 0x800a47cc */ mflo	$a2
.L800a47d0:
/* 0x800a47d0 */ jal	0x800a40bc
.L800a47d4:
/* 0x800a47d4 */ xori	$a3,$a3,0x1
.L800a47d8:
/* 0x800a47d8 */ lb	$v0,3($s1)
.L800a47dc:
/* 0x800a47dc */ sll	$zero,$zero,0x0
.L800a47e0:
/* 0x800a47e0 */ bne	$v0,$zero,.L800a4b7c
.L800a47e4:
/* 0x800a47e4 */ addiu	$v0,$zero,1
.L800a47e8:
/* 0x800a47e8 */ j	.L800a4b7c
.L800a47ec:
/* 0x800a47ec */ sb	$v0,5($s1)
.L800a47f0:
/* 0x800a47f0 */ lhu	$v1,0($s0)
.L800a47f4:
/* 0x800a47f4 */ sll	$zero,$zero,0x0
.L800a47f8:
/* 0x800a47f8 */ andi	$v0,$v1,0x1000
.L800a47fc:
/* 0x800a47fc */ bne	$v0,$zero,.L800a480c
.L800a4800:
/* 0x800a4800 */ addiu	$a2,$zero,-1
.L800a4804:
/* 0x800a4804 */ andi	$v0,$v1,0x4000
.L800a4808:
/* 0x800a4808 */ sltu	$a2,$zero,$v0
.L800a480c:
/* 0x800a480c */ beq	$a2,$zero,.L800a49b4
.L800a4810:
/* 0x800a4810 */ lui	$t2,0x800e
.L800a4814:
/* 0x800a4814 */ sll	$v0,$s2,0x5
.L800a4818:
/* 0x800a4818 */ addiu	$a3,$v0,4
.L800a481c:
/* 0x800a481c */ addiu	$t1,$zero,2
.L800a4820:
/* 0x800a4820 */ addiu	$t0,$zero,4
.L800a4824:
/* 0x800a4824 */ lui	$a0,0x8012
.L800a4828:
/* 0x800a4828 */ addiu	$a0,$a0,-30272
.L800a482c:
/* 0x800a482c */ addiu	$v0,$zero,1
.L800a4830:
/* 0x800a4830 */ subu	$v0,$v0,$s2
.L800a4834:
/* 0x800a4834 */ sll	$v1,$v0,0x3
.L800a4838:
/* 0x800a4838 */ addu	$v1,$v1,$v0
.L800a483c:
/* 0x800a483c */ sll	$v1,$v1,0x3
.L800a4840:
/* 0x800a4840 */ lbu	$a1,3($s1)
.L800a4844:
/* 0x800a4844 */ addu	$v1,$v1,$a0
.L800a4848:
/* 0x800a4848 */ addu	$v0,$a1,$zero
.L800a484c:
/* 0x800a484c */ addu	$v0,$v0,$a2
.L800a4850:
/* 0x800a4850 */ sb	$a1,2($s1)
.L800a4854:
/* 0x800a4854 */ sb	$v0,3($s1)
.L800a4858:
/* 0x800a4858 */ lw	$v0,2840($t2)
.L800a485c:
/* 0x800a485c */ lb	$a1,3($s1)
.L800a4860:
/* 0x800a4860 */ addiu	$v0,$v0,4880
.L800a4864:
/* 0x800a4864 */ bne	$a1,$t1,.L800a487c
.L800a4868:
/* 0x800a4868 */ addu	$v0,$v0,$a3
.L800a486c:
/* 0x800a486c */ lb	$v0,0($v0)
.L800a4870:
/* 0x800a4870 */ sll	$zero,$zero,0x0
.L800a4874:
/* 0x800a4874 */ beq	$v0,$zero,.L800a4890
.L800a4878:
/* 0x800a4878 */ addiu	$a0,$zero,1
.L800a487c:
/* 0x800a487c */ bne	$a1,$t0,.L800a4890
.L800a4880:
/* 0x800a4880 */ addu	$a0,$zero,$zero
.L800a4884:
/* 0x800a4884 */ lbu	$v0,58($v1)
.L800a4888:
/* 0x800a4888 */ sll	$zero,$zero,0x0
.L800a488c:
/* 0x800a488c */ sltu	$a0,$a0,$v0
.L800a4890:
/* 0x800a4890 */ beq	$a0,$zero,.L800a48a4
.L800a4894:
/* 0x800a4894 */ sll	$zero,$zero,0x0
.L800a4898:
/* 0x800a4898 */ lbu	$v0,3($s1)
.L800a489c:
/* 0x800a489c */ j	.L800a4854
.L800a48a0:
/* 0x800a48a0 */ addu	$v0,$v0,$a2
.L800a48a4:
/* 0x800a48a4 */ lb	$v0,3($s1)
.L800a48a8:
/* 0x800a48a8 */ lbu	$v1,3($s1)
.L800a48ac:
/* 0x800a48ac */ bgez	$v0,.L800a48bc
.L800a48b0:
/* 0x800a48b0 */ slti	$v0,$v0,6
.L800a48b4:
/* 0x800a48b4 */ j	.L800a48c8
.L800a48b8:
/* 0x800a48b8 */ addiu	$v1,$v1,6
.L800a48bc:
/* 0x800a48bc */ bne	$v0,$zero,.L800a48c8
.L800a48c0:
/* 0x800a48c0 */ sll	$zero,$zero,0x0
.L800a48c4:
/* 0x800a48c4 */ addiu	$v1,$v1,-6
.L800a48c8:
/* 0x800a48c8 */ sb	$v1,3($s1)
.L800a48cc:
/* 0x800a48cc */ blez	$a2,.L800a48d8
.L800a48d0:
/* 0x800a48d0 */ addiu	$v0,$zero,5
.L800a48d4:
/* 0x800a48d4 */ addiu	$v0,$zero,4
.L800a48d8:
/* 0x800a48d8 */ sb	$v0,1($s1)
.L800a48dc:
/* 0x800a48dc */ sw	$zero,8($s1)
.L800a48e0:
/* 0x800a48e0 */ sb	$zero,4($s1)
.L800a48e4:
/* 0x800a48e4 */ lb	$v0,2($s1)
.L800a48e8:
/* 0x800a48e8 */ sll	$zero,$zero,0x0
.L800a48ec:
/* 0x800a48ec */ sll	$v0,$v0,0x3
.L800a48f0:
/* 0x800a48f0 */ addu	$a0,$v0,$s1
.L800a48f4:
/* 0x800a48f4 */ addiu	$a0,$a0,24
.L800a48f8:
/* 0x800a48f8 */ lbu	$v1,1($a0)
.L800a48fc:
/* 0x800a48fc */ addiu	$v0,$zero,4
.L800a4900:
/* 0x800a4900 */ bne	$v1,$v0,.L800a493c
.L800a4904:
/* 0x800a4904 */ addiu	$v0,$zero,7
.L800a4908:
/* 0x800a4908 */ lbu	$v0,0($a0)
.L800a490c:
/* 0x800a490c */ addiu	$v1,$zero,1
.L800a4910:
/* 0x800a4910 */ subu	$v1,$v1,$v0
.L800a4914:
/* 0x800a4914 */ sll	$v0,$v1,0x3
.L800a4918:
/* 0x800a4918 */ addu	$v0,$v0,$v1
.L800a491c:
/* 0x800a491c */ sll	$v0,$v0,0x3
.L800a4920:
/* 0x800a4920 */ lui	$v1,0x8012
.L800a4924:
/* 0x800a4924 */ addiu	$v1,$v1,-30248
.L800a4928:
/* 0x800a4928 */ addu	$v0,$v0,$v1
.L800a492c:
/* 0x800a492c */ lbu	$v0,34($v0)
.L800a4930:
/* 0x800a4930 */ sll	$zero,$zero,0x0
.L800a4934:
/* 0x800a4934 */ bne	$v0,$zero,.L800a4944
.L800a4938:
/* 0x800a4938 */ addiu	$v0,$zero,7
.L800a493c:
/* 0x800a493c */ sb	$v0,2($a0)
.L800a4940:
/* 0x800a4940 */ sw	$zero,4($a0)
.L800a4944:
/* 0x800a4944 */ lb	$v0,3($s1)
.L800a4948:
/* 0x800a4948 */ sll	$zero,$zero,0x0
.L800a494c:
/* 0x800a494c */ sll	$v0,$v0,0x3
.L800a4950:
/* 0x800a4950 */ addu	$a0,$v0,$s1
.L800a4954:
/* 0x800a4954 */ addiu	$a0,$a0,24
.L800a4958:
/* 0x800a4958 */ lbu	$v1,1($a0)
.L800a495c:
/* 0x800a495c */ addiu	$v0,$zero,4
.L800a4960:
/* 0x800a4960 */ bne	$v1,$v0,.L800a499c
.L800a4964:
/* 0x800a4964 */ addiu	$v0,$zero,6
.L800a4968:
/* 0x800a4968 */ lbu	$v0,0($a0)
.L800a496c:
/* 0x800a496c */ addiu	$v1,$zero,1
.L800a4970:
/* 0x800a4970 */ subu	$v1,$v1,$v0
.L800a4974:
/* 0x800a4974 */ sll	$v0,$v1,0x3
.L800a4978:
/* 0x800a4978 */ addu	$v0,$v0,$v1
.L800a497c:
/* 0x800a497c */ sll	$v0,$v0,0x3
.L800a4980:
/* 0x800a4980 */ lui	$v1,0x8012
.L800a4984:
/* 0x800a4984 */ addiu	$v1,$v1,-30248
.L800a4988:
/* 0x800a4988 */ addu	$v0,$v0,$v1
.L800a498c:
/* 0x800a498c */ lbu	$v0,34($v0)
.L800a4990:
/* 0x800a4990 */ sll	$zero,$zero,0x0
.L800a4994:
/* 0x800a4994 */ bne	$v0,$zero,.L800a49a4
.L800a4998:
/* 0x800a4998 */ addiu	$v0,$zero,6
.L800a499c:
/* 0x800a499c */ sb	$v0,2($a0)
.L800a49a0:
/* 0x800a49a0 */ sw	$zero,4($a0)
.L800a49a4:
/* 0x800a49a4 */ jal	0x80026940
.L800a49a8:
/* 0x800a49a8 */ addiu	$a0,$zero,777
.L800a49ac:
/* 0x800a49ac */ j	.L800a4b7c
.L800a49b0:
/* 0x800a49b0 */ sll	$zero,$zero,0x0
.L800a49b4:
/* 0x800a49b4 */ lhu	$v1,0($s0)
.L800a49b8:
/* 0x800a49b8 */ sll	$zero,$zero,0x0
.L800a49bc:
/* 0x800a49bc */ andi	$v0,$v1,0x800
.L800a49c0:
/* 0x800a49c0 */ bne	$v0,$zero,.L800a49e0
.L800a49c4:
/* 0x800a49c4 */ andi	$v0,$v1,0x20
.L800a49c8:
/* 0x800a49c8 */ beq	$v0,$zero,.L800a4b7c
.L800a49cc:
/* 0x800a49cc */ addiu	$v0,$zero,5
.L800a49d0:
/* 0x800a49d0 */ lb	$v1,3($s1)
.L800a49d4:
/* 0x800a49d4 */ sll	$zero,$zero,0x0
.L800a49d8:
/* 0x800a49d8 */ bne	$v1,$v0,.L800a4a5c
.L800a49dc:
/* 0x800a49dc */ sll	$zero,$zero,0x0
.L800a49e0:
/* 0x800a49e0 */ lb	$v1,3($s1)
.L800a49e4:
/* 0x800a49e4 */ addiu	$v0,$zero,6
.L800a49e8:
/* 0x800a49e8 */ sb	$v0,1($s1)
.L800a49ec:
/* 0x800a49ec */ sw	$zero,8($s1)
.L800a49f0:
/* 0x800a49f0 */ sb	$zero,4($s1)
.L800a49f4:
/* 0x800a49f4 */ sll	$v1,$v1,0x3
.L800a49f8:
/* 0x800a49f8 */ addu	$a0,$v1,$s1
.L800a49fc:
/* 0x800a49fc */ addiu	$a0,$a0,24
.L800a4a00:
/* 0x800a4a00 */ lbu	$v1,1($a0)
.L800a4a04:
/* 0x800a4a04 */ addiu	$v0,$zero,4
.L800a4a08:
/* 0x800a4a08 */ bne	$v1,$v0,.L800a4a44
.L800a4a0c:
/* 0x800a4a0c */ addiu	$v0,$zero,7
.L800a4a10:
/* 0x800a4a10 */ lbu	$v0,0($a0)
.L800a4a14:
/* 0x800a4a14 */ addiu	$v1,$zero,1
.L800a4a18:
/* 0x800a4a18 */ subu	$v1,$v1,$v0
.L800a4a1c:
/* 0x800a4a1c */ sll	$v0,$v1,0x3
.L800a4a20:
/* 0x800a4a20 */ addu	$v0,$v0,$v1
.L800a4a24:
/* 0x800a4a24 */ sll	$v0,$v0,0x3
.L800a4a28:
/* 0x800a4a28 */ lui	$v1,0x8012
.L800a4a2c:
/* 0x800a4a2c */ addiu	$v1,$v1,-30248
.L800a4a30:
/* 0x800a4a30 */ addu	$v0,$v0,$v1
.L800a4a34:
/* 0x800a4a34 */ lbu	$v0,34($v0)
.L800a4a38:
/* 0x800a4a38 */ sll	$zero,$zero,0x0
.L800a4a3c:
/* 0x800a4a3c */ bne	$v0,$zero,.L800a4a4c
.L800a4a40:
/* 0x800a4a40 */ addiu	$v0,$zero,7
.L800a4a44:
/* 0x800a4a44 */ sb	$v0,2($a0)
.L800a4a48:
/* 0x800a4a48 */ sw	$zero,4($a0)
.L800a4a4c:
/* 0x800a4a4c */ jal	0x80026940
.L800a4a50:
/* 0x800a4a50 */ addiu	$a0,$zero,780
.L800a4a54:
/* 0x800a4a54 */ j	.L800a4b7c
.L800a4a58:
/* 0x800a4a58 */ sll	$zero,$zero,0x0
.L800a4a5c:
/* 0x800a4a5c */ bne	$v1,$zero,.L800a4b7c
.L800a4a60:
/* 0x800a4a60 */ addiu	$a0,$zero,796
.L800a4a64:
/* 0x800a4a64 */ lbu	$v1,5($s1)
.L800a4a68:
/* 0x800a4a68 */ addiu	$v0,$zero,1
.L800a4a6c:
/* 0x800a4a6c */ subu	$v0,$v0,$v1
.L800a4a70:
/* 0x800a4a70 */ jal	0x80026940
.L800a4a74:
/* 0x800a4a74 */ sb	$v0,5($s1)
.L800a4a78:
/* 0x800a4a78 */ j	.L800a4b7c
.L800a4a7c:
/* 0x800a4a7c */ sll	$zero,$zero,0x0
.L800a4a80:
/* 0x800a4a80 */ lw	$v0,8($s1)
.L800a4a84:
/* 0x800a4a84 */ sll	$zero,$zero,0x0
.L800a4a88:
/* 0x800a4a88 */ slti	$v0,$v0,6
.L800a4a8c:
/* 0x800a4a8c */ bne	$v0,$zero,.L800a4ab4
.L800a4a90:
/* 0x800a4a90 */ sll	$zero,$zero,0x0
.L800a4a94:
/* 0x800a4a94 */ lh	$v0,12($s1)
.L800a4a98:
/* 0x800a4a98 */ sll	$zero,$zero,0x0
.L800a4a9c:
/* 0x800a4a9c */ bne	$v0,$zero,.L800a4ab8
.L800a4aa0:
/* 0x800a4aa0 */ sll	$zero,$zero,0x0
.L800a4aa4:
/* 0x800a4aa4 */ addiu	$v0,$zero,2
.L800a4aa8:
/* 0x800a4aa8 */ sb	$v0,1($s1)
.L800a4aac:
/* 0x800a4aac */ sw	$zero,8($s1)
.L800a4ab0:
/* 0x800a4ab0 */ sb	$zero,4($s1)
.L800a4ab4:
/* 0x800a4ab4 */ lh	$v0,12($s1)
.L800a4ab8:
/* 0x800a4ab8 */ lhu	$v1,12($s1)
.L800a4abc:
/* 0x800a4abc */ blez	$v0,.L800a4b7c
.L800a4ac0:
/* 0x800a4ac0 */ addiu	$v0,$v1,-1
.L800a4ac4:
/* 0x800a4ac4 */ j	.L800a4b7c
.L800a4ac8:
/* 0x800a4ac8 */ sh	$v0,12($s1)
.L800a4acc:
/* 0x800a4acc */ lh	$v0,12($s1)
.L800a4ad0:
/* 0x800a4ad0 */ lhu	$v1,12($s1)
.L800a4ad4:
/* 0x800a4ad4 */ slti	$v0,$v0,17
.L800a4ad8:
/* 0x800a4ad8 */ bne	$v0,$zero,.L800a4af4
.L800a4adc:
/* 0x800a4adc */ sb	$zero,5($s1)
.L800a4ae0:
/* 0x800a4ae0 */ addiu	$v0,$zero,7
.L800a4ae4:
/* 0x800a4ae4 */ sb	$v0,1($s1)
.L800a4ae8:
/* 0x800a4ae8 */ sw	$zero,8($s1)
.L800a4aec:
/* 0x800a4aec */ j	.L800a4b7c
.L800a4af0:
/* 0x800a4af0 */ sb	$zero,4($s1)
.L800a4af4:
/* 0x800a4af4 */ addiu	$v0,$v1,1
.L800a4af8:
/* 0x800a4af8 */ j	.L800a4b7c
.L800a4afc:
/* 0x800a4afc */ sh	$v0,12($s1)
.L800a4b00:
/* 0x800a4b00 */ lhu	$v0,0($s0)
.L800a4b04:
/* 0x800a4b04 */ sll	$zero,$zero,0x0
.L800a4b08:
/* 0x800a4b08 */ andi	$v0,$v0,0x40
.L800a4b0c:
/* 0x800a4b0c */ beq	$v0,$zero,.L800a4b7c
.L800a4b10:
/* 0x800a4b10 */ addiu	$v0,$zero,8
.L800a4b14:
/* 0x800a4b14 */ lb	$v1,3($s1)
.L800a4b18:
/* 0x800a4b18 */ sb	$v0,1($s1)
.L800a4b1c:
/* 0x800a4b1c */ sw	$zero,8($s1)
.L800a4b20:
/* 0x800a4b20 */ sb	$zero,4($s1)
.L800a4b24:
/* 0x800a4b24 */ sll	$v1,$v1,0x3
.L800a4b28:
/* 0x800a4b28 */ addu	$a0,$v1,$s1
.L800a4b2c:
/* 0x800a4b2c */ addiu	$a0,$a0,24
.L800a4b30:
/* 0x800a4b30 */ lbu	$v1,1($a0)
.L800a4b34:
/* 0x800a4b34 */ addiu	$v0,$zero,4
.L800a4b38:
/* 0x800a4b38 */ bne	$v1,$v0,.L800a4b74
.L800a4b3c:
/* 0x800a4b3c */ addiu	$v0,$zero,6
.L800a4b40:
/* 0x800a4b40 */ lbu	$v0,0($a0)
.L800a4b44:
/* 0x800a4b44 */ addiu	$v1,$zero,1
.L800a4b48:
/* 0x800a4b48 */ subu	$v1,$v1,$v0
.L800a4b4c:
/* 0x800a4b4c */ sll	$v0,$v1,0x3
.L800a4b50:
/* 0x800a4b50 */ addu	$v0,$v0,$v1
.L800a4b54:
/* 0x800a4b54 */ sll	$v0,$v0,0x3
.L800a4b58:
/* 0x800a4b58 */ lui	$v1,0x8012
.L800a4b5c:
/* 0x800a4b5c */ addiu	$v1,$v1,-30248
.L800a4b60:
/* 0x800a4b60 */ addu	$v0,$v0,$v1
.L800a4b64:
/* 0x800a4b64 */ lbu	$v0,34($v0)
.L800a4b68:
/* 0x800a4b68 */ sll	$zero,$zero,0x0
.L800a4b6c:
/* 0x800a4b6c */ bne	$v0,$zero,.L800a4b7c
.L800a4b70:
/* 0x800a4b70 */ addiu	$v0,$zero,6
.L800a4b74:
/* 0x800a4b74 */ sb	$v0,2($a0)
.L800a4b78:
/* 0x800a4b78 */ sw	$zero,4($a0)
.L800a4b7c:
/* 0x800a4b7c */ lw	$ra,32($sp)
.L800a4b80:
/* 0x800a4b80 */ lw	$s3,28($sp)
.L800a4b84:
/* 0x800a4b84 */ lw	$s2,24($sp)
.L800a4b88:
/* 0x800a4b88 */ lw	$s1,20($sp)
.L800a4b8c:
/* 0x800a4b8c */ lw	$s0,16($sp)
.L800a4b90:
/* 0x800a4b90 */ jr	$ra
.L800a4b94:
/* 0x800a4b94 */ addiu	$sp,$sp,40
.size FUN_800a43dc, .-FUN_800a43dc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a4b98
.globl FUN_800a4b98
.type FUN_800a4b98, @function
FUN_800a4b98:
.L800a4b98:
/* 0x800a4b98 */ lw	$v0,4($a0)
.L800a4b9c:
/* 0x800a4b9c */ lbu	$v1,2($a0)
.L800a4ba0:
/* 0x800a4ba0 */ addiu	$a1,$v0,1
.L800a4ba4:
/* 0x800a4ba4 */ slti	$v0,$v1,4
.L800a4ba8:
/* 0x800a4ba8 */ bne	$v0,$zero,.L800a4cec
.L800a4bac:
/* 0x800a4bac */ sw	$a1,4($a0)
.L800a4bb0:
/* 0x800a4bb0 */ slti	$v0,$v1,6
.L800a4bb4:
/* 0x800a4bb4 */ bne	$v0,$zero,.L800a4bd0
.L800a4bb8:
/* 0x800a4bb8 */ slti	$v0,$a1,11
.L800a4bbc:
/* 0x800a4bbc */ slti	$v0,$v1,8
.L800a4bc0:
/* 0x800a4bc0 */ beq	$v0,$zero,.L800a4cec
.L800a4bc4:
/* 0x800a4bc4 */ sll	$zero,$zero,0x0
.L800a4bc8:
/* 0x800a4bc8 */ j	.L800a4c2c
.L800a4bcc:
/* 0x800a4bcc */ sll	$zero,$zero,0x0
.L800a4bd0:
/* 0x800a4bd0 */ bne	$v0,$zero,.L800a4cec
.L800a4bd4:
/* 0x800a4bd4 */ addiu	$v0,$zero,5
.L800a4bd8:
/* 0x800a4bd8 */ bne	$v1,$v0,.L800a4ca0
.L800a4bdc:
/* 0x800a4bdc */ addiu	$v0,$zero,4
.L800a4be0:
/* 0x800a4be0 */ lbu	$v1,1($a0)
.L800a4be4:
/* 0x800a4be4 */ sll	$zero,$zero,0x0
.L800a4be8:
/* 0x800a4be8 */ bne	$v1,$v0,.L800a4ce4
.L800a4bec:
/* 0x800a4bec */ addiu	$v0,$zero,6
.L800a4bf0:
/* 0x800a4bf0 */ lbu	$v0,0($a0)
.L800a4bf4:
/* 0x800a4bf4 */ addiu	$v1,$zero,1
.L800a4bf8:
/* 0x800a4bf8 */ subu	$v1,$v1,$v0
.L800a4bfc:
/* 0x800a4bfc */ sll	$v0,$v1,0x3
.L800a4c00:
/* 0x800a4c00 */ addu	$v0,$v0,$v1
.L800a4c04:
/* 0x800a4c04 */ sll	$v0,$v0,0x3
.L800a4c08:
/* 0x800a4c08 */ lui	$v1,0x8012
.L800a4c0c:
/* 0x800a4c0c */ addiu	$v1,$v1,-30248
.L800a4c10:
/* 0x800a4c10 */ addu	$v0,$v0,$v1
.L800a4c14:
/* 0x800a4c14 */ lbu	$v0,34($v0)
.L800a4c18:
/* 0x800a4c18 */ sll	$zero,$zero,0x0
.L800a4c1c:
/* 0x800a4c1c */ bne	$v0,$zero,.L800a4cec
.L800a4c20:
/* 0x800a4c20 */ addiu	$v0,$zero,6
.L800a4c24:
/* 0x800a4c24 */ j	.L800a4ce8
.L800a4c28:
/* 0x800a4c28 */ sb	$v0,2($a0)
.L800a4c2c:
/* 0x800a4c2c */ lw	$v0,4($a0)
.L800a4c30:
/* 0x800a4c30 */ sll	$zero,$zero,0x0
.L800a4c34:
/* 0x800a4c34 */ slti	$v0,$v0,6
.L800a4c38:
/* 0x800a4c38 */ bne	$v0,$zero,.L800a4cec
.L800a4c3c:
/* 0x800a4c3c */ addiu	$v0,$zero,6
.L800a4c40:
/* 0x800a4c40 */ lbu	$v1,2($a0)
.L800a4c44:
/* 0x800a4c44 */ sll	$zero,$zero,0x0
.L800a4c48:
/* 0x800a4c48 */ bne	$v1,$v0,.L800a4ca0
.L800a4c4c:
/* 0x800a4c4c */ addiu	$v0,$zero,4
.L800a4c50:
/* 0x800a4c50 */ lbu	$v1,1($a0)
.L800a4c54:
/* 0x800a4c54 */ sll	$zero,$zero,0x0
.L800a4c58:
/* 0x800a4c58 */ bne	$v1,$v0,.L800a4c94
.L800a4c5c:
/* 0x800a4c5c */ addiu	$a1,$zero,1
.L800a4c60:
/* 0x800a4c60 */ lbu	$v1,0($a0)
.L800a4c64:
/* 0x800a4c64 */ sll	$zero,$zero,0x0
.L800a4c68:
/* 0x800a4c68 */ subu	$v1,$a1,$v1
.L800a4c6c:
/* 0x800a4c6c */ sll	$v0,$v1,0x3
.L800a4c70:
/* 0x800a4c70 */ addu	$v0,$v0,$v1
.L800a4c74:
/* 0x800a4c74 */ sll	$v0,$v0,0x3
.L800a4c78:
/* 0x800a4c78 */ lui	$v1,0x8012
.L800a4c7c:
/* 0x800a4c7c */ addiu	$v1,$v1,-30248
.L800a4c80:
/* 0x800a4c80 */ addu	$v0,$v0,$v1
.L800a4c84:
/* 0x800a4c84 */ lbu	$v0,34($v0)
.L800a4c88:
/* 0x800a4c88 */ sll	$zero,$zero,0x0
.L800a4c8c:
/* 0x800a4c8c */ bne	$v0,$zero,.L800a4cec
.L800a4c90:
/* 0x800a4c90 */ sll	$zero,$zero,0x0
.L800a4c94:
/* 0x800a4c94 */ sb	$a1,2($a0)
.L800a4c98:
/* 0x800a4c98 */ jr	$ra
.L800a4c9c:
/* 0x800a4c9c */ sw	$zero,4($a0)
.L800a4ca0:
/* 0x800a4ca0 */ lbu	$v1,1($a0)
.L800a4ca4:
/* 0x800a4ca4 */ addiu	$v0,$zero,4
.L800a4ca8:
/* 0x800a4ca8 */ bne	$v1,$v0,.L800a4ce4
.L800a4cac:
/* 0x800a4cac */ addiu	$v0,$zero,2
.L800a4cb0:
/* 0x800a4cb0 */ lbu	$v0,0($a0)
.L800a4cb4:
/* 0x800a4cb4 */ addiu	$v1,$zero,1
.L800a4cb8:
/* 0x800a4cb8 */ subu	$v1,$v1,$v0
.L800a4cbc:
/* 0x800a4cbc */ sll	$v0,$v1,0x3
.L800a4cc0:
/* 0x800a4cc0 */ addu	$v0,$v0,$v1
.L800a4cc4:
/* 0x800a4cc4 */ sll	$v0,$v0,0x3
.L800a4cc8:
/* 0x800a4cc8 */ lui	$v1,0x8012
.L800a4ccc:
/* 0x800a4ccc */ addiu	$v1,$v1,-30248
.L800a4cd0:
/* 0x800a4cd0 */ addu	$v0,$v0,$v1
.L800a4cd4:
/* 0x800a4cd4 */ lbu	$v0,34($v0)
.L800a4cd8:
/* 0x800a4cd8 */ sll	$zero,$zero,0x0
.L800a4cdc:
/* 0x800a4cdc */ bne	$v0,$zero,.L800a4cec
.L800a4ce0:
/* 0x800a4ce0 */ addiu	$v0,$zero,2
.L800a4ce4:
/* 0x800a4ce4 */ sb	$v0,2($a0)
.L800a4ce8:
/* 0x800a4ce8 */ sw	$zero,4($a0)
.L800a4cec:
/* 0x800a4cec */ jr	$ra
.L800a4cf0:
/* 0x800a4cf0 */ sll	$zero,$zero,0x0
.size FUN_800a4b98, .-FUN_800a4b98
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a4cf4
.globl FUN_800a4cf4
.type FUN_800a4cf4, @function
FUN_800a4cf4:
.L800a4cf4:
/* 0x800a4cf4 */ addiu	$sp,$sp,-64
.L800a4cf8:
/* 0x800a4cf8 */ sw	$s2,40($sp)
.L800a4cfc:
/* 0x800a4cfc */ addu	$s2,$a0,$zero
.L800a4d00:
/* 0x800a4d00 */ sw	$s1,36($sp)
.L800a4d04:
/* 0x800a4d04 */ sw	$ra,56($sp)
.L800a4d08:
/* 0x800a4d08 */ sw	$s5,52($sp)
.L800a4d0c:
/* 0x800a4d0c */ sw	$s4,48($sp)
.L800a4d10:
/* 0x800a4d10 */ sw	$s3,44($sp)
.L800a4d14:
/* 0x800a4d14 */ sw	$s0,32($sp)
.L800a4d18:
/* 0x800a4d18 */ lb	$v0,3($s2)
.L800a4d1c:
/* 0x800a4d1c */ lbu	$a0,1($s2)
.L800a4d20:
/* 0x800a4d20 */ lbu	$s4,0($s2)
.L800a4d24:
/* 0x800a4d24 */ sll	$v1,$v0,0x3
.L800a4d28:
/* 0x800a4d28 */ addu	$v1,$v1,$v0
.L800a4d2c:
/* 0x800a4d2c */ sll	$v1,$v1,0x1
.L800a4d30:
/* 0x800a4d30 */ lui	$v0,0x800e
.L800a4d34:
/* 0x800a4d34 */ addiu	$v0,$v0,8160
.L800a4d38:
/* 0x800a4d38 */ addu	$s5,$v1,$v0
.L800a4d3c:
/* 0x800a4d3c */ sltiu	$v0,$a0,7
.L800a4d40:
/* 0x800a4d40 */ beq	$v0,$zero,.L800a4e08
.L800a4d44:
/* 0x800a4d44 */ addu	$s1,$zero,$zero
.L800a4d48:
/* 0x800a4d48 */ lui	$v0,0x8002
.L800a4d4c:
/* 0x800a4d4c */ addiu	$v0,$v0,1456
.L800a4d50:
/* 0x800a4d50 */ sll	$v1,$a0,0x2
.L800a4d54:
/* 0x800a4d54 */ addu	$v1,$v1,$v0
.L800a4d58:
/* 0x800a4d58 */ lw	$v0,0($v1)
.L800a4d5c:
/* 0x800a4d5c */ sll	$zero,$zero,0x0
.L800a4d60:
/* 0x800a4d60 */ jr	$v0
.L800a4d64:
/* 0x800a4d64 */ sll	$zero,$zero,0x0
.L800a4d68:
/* 0x800a4d68 */ lui	$v0,0x800e
.L800a4d6c:
/* 0x800a4d6c */ beq	$s4,$zero,.L800a4d84
.L800a4d70:
/* 0x800a4d70 */ addiu	$s0,$v0,7688
.L800a4d74:
/* 0x800a4d74 */ lhu	$v1,7688($v0)
.L800a4d78:
/* 0x800a4d78 */ addiu	$v0,$zero,272
.L800a4d7c:
/* 0x800a4d7c */ j	.L800a4d88
.L800a4d80:
/* 0x800a4d80 */ subu	$s3,$v0,$v1
.L800a4d84:
/* 0x800a4d84 */ addiu	$s3,$zero,-264
.L800a4d88:
/* 0x800a4d88 */ lui	$v1,0x800b
.L800a4d8c:
/* 0x800a4d8c */ lhu	$v0,2($s0)
.L800a4d90:
/* 0x800a4d90 */ lw	$v1,-14104($v1)
.L800a4d94:
/* 0x800a4d94 */ lui	$a0,0x8012
.L800a4d98:
/* 0x800a4d98 */ sw	$zero,16($sp)
.L800a4d9c:
/* 0x800a4d9c */ sw	$zero,20($sp)
.L800a4da0:
/* 0x800a4da0 */ lbu	$a1,144($v1)
.L800a4da4:
/* 0x800a4da4 */ lw	$v1,-30284($a0)
.L800a4da8:
/* 0x800a4da8 */ sll	$zero,$zero,0x0
.L800a4dac:
/* 0x800a4dac */ mult	$a1,$v1
.L800a4db0:
/* 0x800a4db0 */ negu	$v0,$v0
.L800a4db4:
/* 0x800a4db4 */ srl	$v1,$v0,0x1f
.L800a4db8:
/* 0x800a4db8 */ addu	$v0,$v0,$v1
.L800a4dbc:
/* 0x800a4dbc */ sra	$v0,$v0,0x1
.L800a4dc0:
/* 0x800a4dc0 */ mflo	$t0
.L800a4dc4:
/* 0x800a4dc4 */ bgez	$t0,.L800a4dd0
.L800a4dc8:
/* 0x800a4dc8 */ addiu	$a1,$v0,-24
.L800a4dcc:
/* 0x800a4dcc */ addiu	$t0,$t0,127
.L800a4dd0:
/* 0x800a4dd0 */ addu	$a0,$s3,$zero
.L800a4dd4:
/* 0x800a4dd4 */ addu	$a2,$s0,$zero
.L800a4dd8:
/* 0x800a4dd8 */ addu	$a3,$zero,$zero
.L800a4ddc:
/* 0x800a4ddc */ sra	$v0,$t0,0x7
.L800a4de0:
/* 0x800a4de0 */ sw	$v0,24($sp)
.L800a4de4:
/* 0x800a4de4 */ addiu	$v0,$zero,251
.L800a4de8:
/* 0x800a4de8 */ jal	0x800ac2bc
.L800a4dec:
/* 0x800a4dec */ sw	$v0,28($sp)
.L800a4df0:
/* 0x800a4df0 */ j	.L800a4e08
.L800a4df4:
/* 0x800a4df4 */ sll	$zero,$zero,0x0
.L800a4df8:
/* 0x800a4df8 */ lui	$v0,0x800e
.L800a4dfc:
/* 0x800a4dfc */ j	.L800a4e08
.L800a4e00:
/* 0x800a4e00 */ addiu	$s5,$v0,8250
.L800a4e04:
/* 0x800a4e04 */ addiu	$s1,$zero,1
.L800a4e08:
/* 0x800a4e08 */ beq	$s1,$zero,.L800a4ef4
.L800a4e0c:
/* 0x800a4e0c */ sll	$zero,$zero,0x0
.L800a4e10:
/* 0x800a4e10 */ lb	$a0,3($s2)
.L800a4e14:
/* 0x800a4e14 */ sll	$zero,$zero,0x0
.L800a4e18:
/* 0x800a4e18 */ slti	$v0,$a0,4
.L800a4e1c:
/* 0x800a4e1c */ beq	$v0,$zero,.L800a4ef4
.L800a4e20:
/* 0x800a4e20 */ sll	$v0,$a0,0x1
.L800a4e24:
/* 0x800a4e24 */ addu	$v0,$v0,$a0
.L800a4e28:
/* 0x800a4e28 */ sll	$v0,$v0,0x2
.L800a4e2c:
/* 0x800a4e2c */ lui	$s2,0x800e
.L800a4e30:
/* 0x800a4e30 */ addiu	$s2,$s2,7700
.L800a4e34:
/* 0x800a4e34 */ addu	$s0,$v0,$s2
.L800a4e38:
/* 0x800a4e38 */ lui	$v1,0x800b
.L800a4e3c:
/* 0x800a4e3c */ lhu	$v0,0($s0)
.L800a4e40:
/* 0x800a4e40 */ lw	$v1,-14104($v1)
.L800a4e44:
/* 0x800a4e44 */ negu	$v0,$v0
.L800a4e48:
/* 0x800a4e48 */ srl	$a0,$v0,0x1f
.L800a4e4c:
/* 0x800a4e4c */ addu	$v0,$v0,$a0
.L800a4e50:
/* 0x800a4e50 */ lhu	$a0,32($v1)
.L800a4e54:
/* 0x800a4e54 */ sra	$s3,$v0,0x1
.L800a4e58:
/* 0x800a4e58 */ jal	0x8004964c
.L800a4e5c:
/* 0x800a4e5c */ sll	$a0,$a0,0x5
.L800a4e60:
/* 0x800a4e60 */ addu	$a0,$s3,$zero
.L800a4e64:
/* 0x800a4e64 */ addu	$a2,$s0,$zero
.L800a4e68:
/* 0x800a4e68 */ addu	$a3,$zero,$zero
.L800a4e6c:
/* 0x800a4e6c */ lh	$s1,2($s5)
.L800a4e70:
/* 0x800a4e70 */ addiu	$v1,$zero,250
.L800a4e74:
/* 0x800a4e74 */ sw	$v1,28($sp)
.L800a4e78:
/* 0x800a4e78 */ sll	$v1,$v0,0x1
.L800a4e7c:
/* 0x800a4e7c */ addu	$v1,$v1,$v0
.L800a4e80:
/* 0x800a4e80 */ sll	$v1,$v1,0x1
.L800a4e84:
/* 0x800a4e84 */ sra	$v1,$v1,0xc
.L800a4e88:
/* 0x800a4e88 */ addiu	$v1,$v1,-8
.L800a4e8c:
/* 0x800a4e8c */ lui	$s0,0x8012
.L800a4e90:
/* 0x800a4e90 */ addiu	$s0,$s0,-30288
.L800a4e94:
/* 0x800a4e94 */ sw	$zero,16($sp)
.L800a4e98:
/* 0x800a4e98 */ sw	$zero,20($sp)
.L800a4e9c:
/* 0x800a4e9c */ lw	$v0,4($s0)
.L800a4ea0:
/* 0x800a4ea0 */ addu	$s1,$s1,$v1
.L800a4ea4:
/* 0x800a4ea4 */ addu	$a1,$s1,$zero
.L800a4ea8:
/* 0x800a4ea8 */ jal	0x800ac2bc
.L800a4eac:
/* 0x800a4eac */ sw	$v0,24($sp)
.L800a4eb0:
/* 0x800a4eb0 */ sll	$a0,$s4,0x4
.L800a4eb4:
/* 0x800a4eb4 */ addu	$a0,$a0,$s4
.L800a4eb8:
/* 0x800a4eb8 */ sll	$a0,$a0,0x2
.L800a4ebc:
/* 0x800a4ebc */ addu	$a0,$a0,$s4
.L800a4ec0:
/* 0x800a4ec0 */ sll	$a0,$a0,0x1
.L800a4ec4:
/* 0x800a4ec4 */ addiu	$a0,$a0,-18
.L800a4ec8:
/* 0x800a4ec8 */ addu	$a0,$s3,$a0
.L800a4ecc:
/* 0x800a4ecc */ addu	$a1,$s1,$zero
.L800a4ed0:
/* 0x800a4ed0 */ addiu	$a2,$s2,48
.L800a4ed4:
/* 0x800a4ed4 */ addu	$a3,$s4,$zero
.L800a4ed8:
/* 0x800a4ed8 */ sw	$zero,16($sp)
.L800a4edc:
/* 0x800a4edc */ sw	$zero,20($sp)
.L800a4ee0:
/* 0x800a4ee0 */ lw	$v1,4($s0)
.L800a4ee4:
/* 0x800a4ee4 */ addiu	$v0,$zero,249
.L800a4ee8:
/* 0x800a4ee8 */ sw	$v0,28($sp)
.L800a4eec:
/* 0x800a4eec */ jal	0x800ac2bc
.L800a4ef0:
/* 0x800a4ef0 */ sw	$v1,24($sp)
.L800a4ef4:
/* 0x800a4ef4 */ lw	$ra,56($sp)
.L800a4ef8:
/* 0x800a4ef8 */ lw	$s5,52($sp)
.L800a4efc:
/* 0x800a4efc */ lw	$s4,48($sp)
.L800a4f00:
/* 0x800a4f00 */ lw	$s3,44($sp)
.L800a4f04:
/* 0x800a4f04 */ lw	$s2,40($sp)
.L800a4f08:
/* 0x800a4f08 */ lw	$s1,36($sp)
.L800a4f0c:
/* 0x800a4f0c */ lw	$s0,32($sp)
.L800a4f10:
/* 0x800a4f10 */ jr	$ra
.L800a4f14:
/* 0x800a4f14 */ addiu	$sp,$sp,64
.size FUN_800a4cf4, .-FUN_800a4cf4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a4f18
.globl FUN_800a4f18
.type FUN_800a4f18, @function
FUN_800a4f18:
.L800a4f18:
/* 0x800a4f18 */ addiu	$sp,$sp,-72
.L800a4f1c:
/* 0x800a4f1c */ lw	$v0,88($sp)
.L800a4f20:
/* 0x800a4f20 */ sw	$s2,40($sp)
.L800a4f24:
/* 0x800a4f24 */ addu	$s2,$a0,$zero
.L800a4f28:
/* 0x800a4f28 */ sw	$s3,44($sp)
.L800a4f2c:
/* 0x800a4f2c */ addu	$s3,$a2,$zero
.L800a4f30:
/* 0x800a4f30 */ sw	$s5,52($sp)
.L800a4f34:
/* 0x800a4f34 */ addu	$s5,$zero,$zero
.L800a4f38:
/* 0x800a4f38 */ sw	$s1,36($sp)
.L800a4f3c:
/* 0x800a4f3c */ addiu	$s1,$zero,1
.L800a4f40:
/* 0x800a4f40 */ sw	$s0,32($sp)
.L800a4f44:
/* 0x800a4f44 */ addu	$s0,$s5,$zero
.L800a4f48:
/* 0x800a4f48 */ sw	$ra,68($sp)
.L800a4f4c:
/* 0x800a4f4c */ sw	$s8,64($sp)
.L800a4f50:
/* 0x800a4f50 */ sw	$s7,60($sp)
.L800a4f54:
/* 0x800a4f54 */ sw	$s6,56($sp)
.L800a4f58:
/* 0x800a4f58 */ sw	$s4,48($sp)
.L800a4f5c:
/* 0x800a4f5c */ sw	$a1,76($sp)
.L800a4f60:
/* 0x800a4f60 */ sw	$a3,84($sp)
.L800a4f64:
/* 0x800a4f64 */ addu	$s4,$a3,$v0
.L800a4f68:
/* 0x800a4f68 */ addiu	$v1,$s4,-1
.L800a4f6c:
/* 0x800a4f6c */ blez	$v1,.L800a4f90
.L800a4f70:
/* 0x800a4f70 */ sltu	$s7,$s5,$v0
.L800a4f74:
/* 0x800a4f74 */ sll	$v0,$s1,0x2
.L800a4f78:
/* 0x800a4f78 */ addu	$v0,$v0,$s1
.L800a4f7c:
/* 0x800a4f7c */ sll	$s1,$v0,0x1
.L800a4f80:
/* 0x800a4f80 */ addiu	$s0,$s0,1
.L800a4f84:
/* 0x800a4f84 */ slt	$v0,$s0,$v1
.L800a4f88:
/* 0x800a4f88 */ bne	$v0,$zero,.L800a4f78
.L800a4f8c:
/* 0x800a4f8c */ sll	$v0,$s1,0x2
.L800a4f90:
/* 0x800a4f90 */ addu	$v0,$s4,$s7
.L800a4f94:
/* 0x800a4f94 */ blez	$v0,.L800a5098
.L800a4f98:
/* 0x800a4f98 */ addu	$s0,$zero,$zero
.L800a4f9c:
/* 0x800a4f9c */ lui	$s8,0x800e
.L800a4fa0:
/* 0x800a4fa0 */ lui	$v0,0x800e
.L800a4fa4:
/* 0x800a4fa4 */ addiu	$s6,$v0,8268
.L800a4fa8:
/* 0x800a4fa8 */ lw	$t1,84($sp)
.L800a4fac:
/* 0x800a4fac */ sll	$zero,$zero,0x0
.L800a4fb0:
/* 0x800a4fb0 */ bne	$s0,$t1,.L800a4ffc
.L800a4fb4:
/* 0x800a4fb4 */ lui	$v0,0x6666
.L800a4fb8:
/* 0x800a4fb8 */ lw	$a1,76($sp)
.L800a4fbc:
/* 0x800a4fbc */ lw	$t1,96($sp)
.L800a4fc0:
/* 0x800a4fc0 */ addu	$a0,$s2,$zero
.L800a4fc4:
/* 0x800a4fc4 */ sw	$t1,20($sp)
.L800a4fc8:
/* 0x800a4fc8 */ lw	$t1,92($sp)
.L800a4fcc:
/* 0x800a4fcc */ addiu	$v0,$zero,251
.L800a4fd0:
/* 0x800a4fd0 */ sw	$v0,28($sp)
.L800a4fd4:
/* 0x800a4fd4 */ sw	$t1,24($sp)
.L800a4fd8:
/* 0x800a4fd8 */ lui	$t1,0x800e
.L800a4fdc:
/* 0x800a4fdc */ addiu	$t1,$t1,8380
.L800a4fe0:
/* 0x800a4fe0 */ lh	$a3,112($s6)
.L800a4fe4:
/* 0x800a4fe4 */ lh	$v0,2($t1)
.L800a4fe8:
/* 0x800a4fe8 */ addiu	$a2,$s8,7820
.L800a4fec:
/* 0x800a4fec */ jal	0x800ac2bc
.L800a4ff0:
/* 0x800a4ff0 */ sw	$v0,16($sp)
.L800a4ff4:
/* 0x800a4ff4 */ j	.L800a5084
.L800a4ff8:
/* 0x800a4ff8 */ addiu	$s2,$s2,-8
.L800a4ffc:
/* 0x800a4ffc */ div	$zero,$s3,$s1
.L800a5000:
/* 0x800a5000 */ mflo	$a2
.L800a5004:
/* 0x800a5004 */ mfhi	$a0
.L800a5008:
/* 0x800a5008 */ ori	$v0,$v0,0x6667
.L800a500c:
/* 0x800a500c */ sll	$zero,$zero,0x0
.L800a5010:
/* 0x800a5010 */ mult	$s1,$v0
.L800a5014:
/* 0x800a5014 */ mfhi	$v0
.L800a5018:
/* 0x800a5018 */ sra	$v1,$v0,0x2
.L800a501c:
/* 0x800a501c */ sra	$v0,$s1,0x1f
.L800a5020:
/* 0x800a5020 */ subu	$s1,$v1,$v0
.L800a5024:
/* 0x800a5024 */ addiu	$v0,$a2,48
.L800a5028:
/* 0x800a5028 */ blez	$v0,.L800a5034
.L800a502c:
/* 0x800a502c */ addu	$s3,$a0,$zero
.L800a5030:
/* 0x800a5030 */ addiu	$s5,$zero,1
.L800a5034:
/* 0x800a5034 */ lw	$t0,92($sp)
.L800a5038:
/* 0x800a5038 */ bne	$s5,$zero,.L800a504c
.L800a503c:
/* 0x800a503c */ addu	$a0,$s2,$zero
.L800a5040:
/* 0x800a5040 */ srl	$v0,$t0,0x1f
.L800a5044:
/* 0x800a5044 */ addu	$v0,$t0,$v0
.L800a5048:
/* 0x800a5048 */ sra	$t0,$v0,0x1
.L800a504c:
/* 0x800a504c */ addiu	$v0,$a2,16
.L800a5050:
/* 0x800a5050 */ sll	$v0,$v0,0x3
.L800a5054:
/* 0x800a5054 */ addu	$v0,$v0,$s6
.L800a5058:
/* 0x800a5058 */ addiu	$a2,$s8,7820
.L800a505c:
/* 0x800a505c */ lw	$a1,76($sp)
.L800a5060:
/* 0x800a5060 */ lh	$a3,0($v0)
.L800a5064:
/* 0x800a5064 */ lh	$v1,2($v0)
.L800a5068:
/* 0x800a5068 */ lw	$t1,96($sp)
.L800a506c:
/* 0x800a506c */ addiu	$v0,$zero,251
.L800a5070:
/* 0x800a5070 */ sw	$t0,24($sp)
.L800a5074:
/* 0x800a5074 */ sw	$v0,28($sp)
.L800a5078:
/* 0x800a5078 */ sw	$t1,20($sp)
.L800a507c:
/* 0x800a507c */ jal	0x800ac2bc
.L800a5080:
/* 0x800a5080 */ sw	$v1,16($sp)
.L800a5084:
/* 0x800a5084 */ addiu	$s0,$s0,1
.L800a5088:
/* 0x800a5088 */ addu	$v0,$s4,$s7
.L800a508c:
/* 0x800a508c */ slt	$v0,$s0,$v0
.L800a5090:
/* 0x800a5090 */ bne	$v0,$zero,.L800a4fa8
.L800a5094:
/* 0x800a5094 */ addiu	$s2,$s2,16
.L800a5098:
/* 0x800a5098 */ lw	$ra,68($sp)
.L800a509c:
/* 0x800a509c */ lw	$s8,64($sp)
.L800a50a0:
/* 0x800a50a0 */ lw	$s7,60($sp)
.L800a50a4:
/* 0x800a50a4 */ lw	$s6,56($sp)
.L800a50a8:
/* 0x800a50a8 */ lw	$s5,52($sp)
.L800a50ac:
/* 0x800a50ac */ lw	$s4,48($sp)
.L800a50b0:
/* 0x800a50b0 */ lw	$s3,44($sp)
.L800a50b4:
/* 0x800a50b4 */ lw	$s2,40($sp)
.L800a50b8:
/* 0x800a50b8 */ lw	$s1,36($sp)
.L800a50bc:
/* 0x800a50bc */ lw	$s0,32($sp)
.L800a50c0:
/* 0x800a50c0 */ jr	$ra
.L800a50c4:
/* 0x800a50c4 */ addiu	$sp,$sp,72
.size FUN_800a4f18, .-FUN_800a4f18
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a50c8
.globl FUN_800a50c8
.type FUN_800a50c8, @function
FUN_800a50c8:
.L800a50c8:
/* 0x800a50c8 */ addiu	$sp,$sp,-104
.L800a50cc:
/* 0x800a50cc */ addiu	$t1,$zero,64
.L800a50d0:
/* 0x800a50d0 */ lui	$v0,0x800e
.L800a50d4:
/* 0x800a50d4 */ sw	$ra,100($sp)
.L800a50d8:
/* 0x800a50d8 */ sw	$s8,96($sp)
.L800a50dc:
/* 0x800a50dc */ sw	$s7,92($sp)
.L800a50e0:
/* 0x800a50e0 */ sw	$s6,88($sp)
.L800a50e4:
/* 0x800a50e4 */ sw	$s5,84($sp)
.L800a50e8:
/* 0x800a50e8 */ sw	$s4,80($sp)
.L800a50ec:
/* 0x800a50ec */ sw	$s3,76($sp)
.L800a50f0:
/* 0x800a50f0 */ sw	$s2,72($sp)
.L800a50f4:
/* 0x800a50f4 */ sw	$s1,68($sp)
.L800a50f8:
/* 0x800a50f8 */ sw	$s0,64($sp)
.L800a50fc:
/* 0x800a50fc */ sw	$a0,104($sp)
.L800a5100:
/* 0x800a5100 */ lbu	$s8,1($a0)
.L800a5104:
/* 0x800a5104 */ addiu	$v0,$v0,8160
.L800a5108:
/* 0x800a5108 */ sw	$t1,52($sp)
.L800a510c:
/* 0x800a510c */ lbu	$t1,0($a0)
.L800a5110:
/* 0x800a5110 */ sll	$v1,$s8,0x3
.L800a5114:
/* 0x800a5114 */ addu	$v1,$v1,$s8
.L800a5118:
/* 0x800a5118 */ sll	$v1,$v1,0x1
.L800a511c:
/* 0x800a511c */ addu	$v1,$v1,$v0
.L800a5120:
/* 0x800a5120 */ sw	$v1,44($sp)
.L800a5124:
/* 0x800a5124 */ sll	$v1,$t1,0x3
.L800a5128:
/* 0x800a5128 */ addu	$v1,$v1,$t1
.L800a512c:
/* 0x800a512c */ sll	$v1,$v1,0x3
.L800a5130:
/* 0x800a5130 */ lui	$v0,0x8012
.L800a5134:
/* 0x800a5134 */ addiu	$v0,$v0,-30272
.L800a5138:
/* 0x800a5138 */ addu	$v1,$v1,$v0
.L800a513c:
/* 0x800a513c */ lui	$v0,0x800e
.L800a5140:
/* 0x800a5140 */ lw	$v0,2840($v0)
.L800a5144:
/* 0x800a5144 */ addu	$s1,$zero,$zero
.L800a5148:
/* 0x800a5148 */ sw	$v1,48($sp)
.L800a514c:
/* 0x800a514c */ sll	$v1,$t1,0x5
.L800a5150:
/* 0x800a5150 */ addu	$v0,$v0,$v1
.L800a5154:
/* 0x800a5154 */ addiu	$s5,$v0,4884
.L800a5158:
/* 0x800a5158 */ addiu	$v0,$zero,4
.L800a515c:
/* 0x800a515c */ beq	$s8,$v0,.L800a51a0
.L800a5160:
/* 0x800a5160 */ sw	$t1,40($sp)
.L800a5164:
/* 0x800a5164 */ slti	$v0,$s8,5
.L800a5168:
/* 0x800a5168 */ beq	$v0,$zero,.L800a5180
.L800a516c:
/* 0x800a516c */ addiu	$v0,$zero,3
.L800a5170:
/* 0x800a5170 */ beq	$s8,$v0,.L800a5194
.L800a5174:
/* 0x800a5174 */ lui	$v0,0x800e
.L800a5178:
/* 0x800a5178 */ j	.L800a51b4
.L800a517c:
/* 0x800a517c */ addiu	$s3,$v0,7760
.L800a5180:
/* 0x800a5180 */ addiu	$v0,$zero,5
.L800a5184:
/* 0x800a5184 */ beq	$s8,$v0,.L800a51ac
.L800a5188:
/* 0x800a5188 */ lui	$v0,0x800e
.L800a518c:
/* 0x800a518c */ j	.L800a51b4
.L800a5190:
/* 0x800a5190 */ addiu	$s3,$v0,7760
.L800a5194:
/* 0x800a5194 */ lui	$v0,0x800e
.L800a5198:
/* 0x800a5198 */ j	.L800a51b4
.L800a519c:
/* 0x800a519c */ addiu	$s3,$v0,7772
.L800a51a0:
/* 0x800a51a0 */ lui	$v0,0x800e
.L800a51a4:
/* 0x800a51a4 */ j	.L800a51b4
.L800a51a8:
/* 0x800a51a8 */ addiu	$s3,$v0,7784
.L800a51ac:
/* 0x800a51ac */ lui	$v0,0x800e
.L800a51b0:
/* 0x800a51b0 */ addiu	$s3,$v0,7844
.L800a51b4:
/* 0x800a51b4 */ lw	$t1,40($sp)
.L800a51b8:
/* 0x800a51b8 */ sll	$zero,$zero,0x0
.L800a51bc:
/* 0x800a51bc */ bne	$t1,$zero,.L800a51c8
.L800a51c0:
/* 0x800a51c0 */ addiu	$s0,$zero,1
.L800a51c4:
/* 0x800a51c4 */ addiu	$s0,$zero,-1
.L800a51c8:
/* 0x800a51c8 */ addiu	$v0,$zero,4
.L800a51cc:
/* 0x800a51cc */ bne	$s8,$v0,.L800a51dc
.L800a51d0:
/* 0x800a51d0 */ addiu	$v0,$zero,5
.L800a51d4:
/* 0x800a51d4 */ j	.L800a526c
.L800a51d8:
/* 0x800a51d8 */ sw	$zero,56($sp)
.L800a51dc:
/* 0x800a51dc */ bne	$s8,$v0,.L800a5200
.L800a51e0:
/* 0x800a51e0 */ lui	$v0,0x8012
.L800a51e4:
/* 0x800a51e4 */ lw	$t1,40($sp)
.L800a51e8:
/* 0x800a51e8 */ addiu	$v0,$v0,-30288
.L800a51ec:
/* 0x800a51ec */ sll	$v1,$t1,0x2
.L800a51f0:
/* 0x800a51f0 */ addu	$v1,$v1,$v0
.L800a51f4:
/* 0x800a51f4 */ lw	$v0,8($v1)
.L800a51f8:
/* 0x800a51f8 */ j	.L800a5220
.L800a51fc:
/* 0x800a51fc */ addiu	$a0,$v0,-20
.L800a5200:
/* 0x800a5200 */ lw	$t1,40($sp)
.L800a5204:
/* 0x800a5204 */ addiu	$v0,$v0,-30288
.L800a5208:
/* 0x800a5208 */ sll	$v1,$t1,0x2
.L800a520c:
/* 0x800a520c */ addu	$v1,$v1,$v0
.L800a5210:
/* 0x800a5210 */ addiu	$v0,$s8,1
.L800a5214:
/* 0x800a5214 */ lw	$v1,8($v1)
.L800a5218:
/* 0x800a5218 */ sll	$v0,$v0,0x2
.L800a521c:
/* 0x800a521c */ subu	$a0,$v1,$v0
.L800a5220:
/* 0x800a5220 */ bgez	$a0,.L800a5230
.L800a5224:
/* 0x800a5224 */ slti	$v0,$a0,9
.L800a5228:
/* 0x800a5228 */ j	.L800a523c
.L800a522c:
/* 0x800a522c */ addu	$a0,$zero,$zero
.L800a5230:
/* 0x800a5230 */ bne	$v0,$zero,.L800a523c
.L800a5234:
/* 0x800a5234 */ sll	$zero,$zero,0x0
.L800a5238:
/* 0x800a5238 */ addiu	$a0,$zero,8
.L800a523c:
/* 0x800a523c */ jal	0x8004964c
.L800a5240:
/* 0x800a5240 */ sll	$a0,$a0,0x7
.L800a5244:
/* 0x800a5244 */ sll	$v1,$v0,0x4
.L800a5248:
/* 0x800a5248 */ subu	$v1,$v1,$v0
.L800a524c:
/* 0x800a524c */ sll	$v1,$v1,0x4
.L800a5250:
/* 0x800a5250 */ sra	$v1,$v1,0xc
.L800a5254:
/* 0x800a5254 */ addiu	$v0,$zero,240
.L800a5258:
/* 0x800a5258 */ subu	$v0,$v0,$v1
.L800a525c:
/* 0x800a525c */ sw	$v0,56($sp)
.L800a5260:
/* 0x800a5260 */ mult	$v0,$s0
.L800a5264:
/* 0x800a5264 */ mflo	$t1
.L800a5268:
/* 0x800a5268 */ sw	$t1,56($sp)
.L800a526c:
/* 0x800a526c */ lw	$t1,104($sp)
.L800a5270:
/* 0x800a5270 */ sll	$zero,$zero,0x0
.L800a5274:
/* 0x800a5274 */ lbu	$v0,2($t1)
.L800a5278:
/* 0x800a5278 */ sll	$zero,$zero,0x0
.L800a527c:
/* 0x800a527c */ addiu	$v1,$v0,-1
.L800a5280:
/* 0x800a5280 */ sltiu	$v0,$v1,7
.L800a5284:
/* 0x800a5284 */ beq	$v0,$zero,.L800a5408
.L800a5288:
/* 0x800a5288 */ lui	$v0,0x8002
.L800a528c:
/* 0x800a528c */ addiu	$v0,$v0,1512
.L800a5290:
/* 0x800a5290 */ sll	$v1,$v1,0x2
.L800a5294:
/* 0x800a5294 */ addu	$v1,$v1,$v0
.L800a5298:
/* 0x800a5298 */ lw	$v0,0($v1)
.L800a529c:
/* 0x800a529c */ sll	$zero,$zero,0x0
.L800a52a0:
/* 0x800a52a0 */ jr	$v0
.L800a52a4:
/* 0x800a52a4 */ sll	$zero,$zero,0x0
.L800a52a8:
/* 0x800a52a8 */ lw	$t1,48($sp)
.L800a52ac:
/* 0x800a52ac */ sll	$zero,$zero,0x0
.L800a52b0:
/* 0x800a52b0 */ lb	$v0,3($t1)
.L800a52b4:
/* 0x800a52b4 */ sll	$zero,$zero,0x0
.L800a52b8:
/* 0x800a52b8 */ bne	$v0,$s8,.L800a52f8
.L800a52bc:
/* 0x800a52bc */ addiu	$t1,$zero,128
.L800a52c0:
/* 0x800a52c0 */ lw	$t1,104($sp)
.L800a52c4:
/* 0x800a52c4 */ sll	$zero,$zero,0x0
.L800a52c8:
/* 0x800a52c8 */ lw	$v0,4($t1)
.L800a52cc:
/* 0x800a52cc */ sll	$zero,$zero,0x0
.L800a52d0:
/* 0x800a52d0 */ sll	$a0,$v0,0x1
.L800a52d4:
/* 0x800a52d4 */ addu	$a0,$a0,$v0
.L800a52d8:
/* 0x800a52d8 */ jal	0x8004964c
.L800a52dc:
/* 0x800a52dc */ sll	$a0,$a0,0x5
.L800a52e0:
/* 0x800a52e0 */ bgez	$v0,.L800a52ec
.L800a52e4:
/* 0x800a52e4 */ sll	$zero,$zero,0x0
.L800a52e8:
/* 0x800a52e8 */ addiu	$v0,$v0,127
.L800a52ec:
/* 0x800a52ec */ sra	$v0,$v0,0x7
.L800a52f0:
/* 0x800a52f0 */ j	.L800a5404
.L800a52f4:
/* 0x800a52f4 */ addiu	$v0,$v0,128
.L800a52f8:
/* 0x800a52f8 */ j	.L800a5408
.L800a52fc:
/* 0x800a52fc */ sw	$t1,52($sp)
.L800a5300:
/* 0x800a5300 */ addiu	$v0,$s8,-4
.L800a5304:
/* 0x800a5304 */ sltiu	$v0,$v0,2
.L800a5308:
/* 0x800a5308 */ bne	$v0,$zero,.L800a5350
.L800a530c:
/* 0x800a530c */ negu	$v1,$s0
.L800a5310:
/* 0x800a5310 */ lw	$t1,104($sp)
.L800a5314:
/* 0x800a5314 */ sll	$zero,$zero,0x0
.L800a5318:
/* 0x800a5318 */ lw	$a0,4($t1)
.L800a531c:
/* 0x800a531c */ sll	$zero,$zero,0x0
.L800a5320:
/* 0x800a5320 */ sll	$v0,$a0,0x1
.L800a5324:
/* 0x800a5324 */ addu	$v0,$v0,$a0
.L800a5328:
/* 0x800a5328 */ sll	$v0,$v0,0x3
.L800a532c:
/* 0x800a532c */ mult	$v1,$v0
.L800a5330:
/* 0x800a5330 */ mflo	$v1
.L800a5334:
/* 0x800a5334 */ lui	$v0,0x6666
.L800a5338:
/* 0x800a5338 */ ori	$v0,$v0,0x6667
.L800a533c:
/* 0x800a533c */ mult	$v1,$v0
.L800a5340:
/* 0x800a5340 */ sra	$v1,$v1,0x1f
.L800a5344:
/* 0x800a5344 */ mfhi	$t0
.L800a5348:
/* 0x800a5348 */ sra	$v0,$t0,0x1
.L800a534c:
/* 0x800a534c */ subu	$s1,$v0,$v1
.L800a5350:
/* 0x800a5350 */ lw	$t1,104($sp)
.L800a5354:
/* 0x800a5354 */ lui	$v0,0x6666
.L800a5358:
/* 0x800a5358 */ lw	$v1,4($t1)
.L800a535c:
/* 0x800a535c */ ori	$v0,$v0,0x6667
.L800a5360:
/* 0x800a5360 */ sll	$v1,$v1,0x6
.L800a5364:
/* 0x800a5364 */ mult	$v1,$v0
.L800a5368:
/* 0x800a5368 */ sra	$v1,$v1,0x1f
.L800a536c:
/* 0x800a536c */ mfhi	$t1
.L800a5370:
/* 0x800a5370 */ sra	$v0,$t1,0x1
.L800a5374:
/* 0x800a5374 */ subu	$v0,$v0,$v1
.L800a5378:
/* 0x800a5378 */ j	.L800a5404
.L800a537c:
/* 0x800a537c */ addiu	$v0,$v0,64
.L800a5380:
/* 0x800a5380 */ addiu	$v0,$s8,-4
.L800a5384:
/* 0x800a5384 */ sltiu	$v0,$v0,2
.L800a5388:
/* 0x800a5388 */ bne	$v0,$zero,.L800a53d4
.L800a538c:
/* 0x800a538c */ negu	$v1,$s0
.L800a5390:
/* 0x800a5390 */ lw	$t1,104($sp)
.L800a5394:
/* 0x800a5394 */ sll	$zero,$zero,0x0
.L800a5398:
/* 0x800a5398 */ lw	$a0,4($t1)
.L800a539c:
/* 0x800a539c */ addiu	$v0,$zero,5
.L800a53a0:
/* 0x800a53a0 */ subu	$v0,$v0,$a0
.L800a53a4:
/* 0x800a53a4 */ mult	$v1,$v0
.L800a53a8:
/* 0x800a53a8 */ lui	$a0,0x6666
.L800a53ac:
/* 0x800a53ac */ ori	$a0,$a0,0x6667
.L800a53b0:
/* 0x800a53b0 */ mflo	$v1
.L800a53b4:
/* 0x800a53b4 */ sll	$v0,$v1,0x1
.L800a53b8:
/* 0x800a53b8 */ addu	$v0,$v0,$v1
.L800a53bc:
/* 0x800a53bc */ sll	$v0,$v0,0x3
.L800a53c0:
/* 0x800a53c0 */ mult	$v0,$a0
.L800a53c4:
/* 0x800a53c4 */ sra	$v0,$v0,0x1f
.L800a53c8:
/* 0x800a53c8 */ mfhi	$v1
.L800a53cc:
/* 0x800a53cc */ sra	$v1,$v1,0x1
.L800a53d0:
/* 0x800a53d0 */ subu	$s1,$v1,$v0
.L800a53d4:
/* 0x800a53d4 */ lw	$t1,104($sp)
.L800a53d8:
/* 0x800a53d8 */ lui	$v1,0x6666
.L800a53dc:
/* 0x800a53dc */ lw	$v0,4($t1)
.L800a53e0:
/* 0x800a53e0 */ ori	$v1,$v1,0x6667
.L800a53e4:
/* 0x800a53e4 */ sll	$v0,$v0,0x6
.L800a53e8:
/* 0x800a53e8 */ mult	$v0,$v1
.L800a53ec:
/* 0x800a53ec */ sra	$v0,$v0,0x1f
.L800a53f0:
/* 0x800a53f0 */ mfhi	$t1
.L800a53f4:
/* 0x800a53f4 */ sra	$v1,$t1,0x1
.L800a53f8:
/* 0x800a53f8 */ subu	$v1,$v1,$v0
.L800a53fc:
/* 0x800a53fc */ addiu	$v0,$zero,128
.L800a5400:
/* 0x800a5400 */ subu	$v0,$v0,$v1
.L800a5404:
/* 0x800a5404 */ sw	$v0,52($sp)
.L800a5408:
/* 0x800a5408 */ lui	$v0,0x8012
.L800a540c:
/* 0x800a540c */ lw	$v0,-30284($v0)
.L800a5410:
/* 0x800a5410 */ lw	$t1,52($sp)
.L800a5414:
/* 0x800a5414 */ sll	$zero,$zero,0x0
.L800a5418:
/* 0x800a5418 */ mult	$t1,$v0
.L800a541c:
/* 0x800a541c */ mflo	$v1
.L800a5420:
/* 0x800a5420 */ bgez	$v1,.L800a542c
.L800a5424:
/* 0x800a5424 */ sll	$zero,$zero,0x0
.L800a5428:
/* 0x800a5428 */ addiu	$v1,$v1,127
.L800a542c:
/* 0x800a542c */ lw	$t1,104($sp)
.L800a5430:
/* 0x800a5430 */ sll	$zero,$zero,0x0
.L800a5434:
/* 0x800a5434 */ lbu	$v0,2($t1)
.L800a5438:
/* 0x800a5438 */ sra	$v1,$v1,0x7
.L800a543c:
/* 0x800a543c */ beq	$v0,$zero,.L800a61e0
.L800a5440:
/* 0x800a5440 */ sw	$v1,52($sp)
.L800a5444:
/* 0x800a5444 */ lw	$t1,44($sp)
.L800a5448:
/* 0x800a5448 */ sll	$zero,$zero,0x0
.L800a544c:
/* 0x800a544c */ lh	$s7,2($t1)
.L800a5450:
/* 0x800a5450 */ lw	$t1,40($sp)
.L800a5454:
/* 0x800a5454 */ sll	$zero,$zero,0x0
.L800a5458:
/* 0x800a5458 */ sll	$v0,$t1,0x1
.L800a545c:
/* 0x800a545c */ lw	$t1,44($sp)
.L800a5460:
/* 0x800a5460 */ sll	$zero,$zero,0x0
.L800a5464:
/* 0x800a5464 */ addu	$v0,$t1,$v0
.L800a5468:
/* 0x800a5468 */ lw	$t1,56($sp)
.L800a546c:
/* 0x800a546c */ lh	$v1,4($v0)
.L800a5470:
/* 0x800a5470 */ addiu	$v0,$t1,-320
.L800a5474:
/* 0x800a5474 */ addu	$s2,$v1,$v0
.L800a5478:
/* 0x800a5478 */ addiu	$v0,$zero,5
.L800a547c:
/* 0x800a547c */ bne	$s8,$v0,.L800a5544
.L800a5480:
/* 0x800a5480 */ addu	$a0,$s2,$zero
.L800a5484:
/* 0x800a5484 */ lw	$t1,48($sp)
.L800a5488:
/* 0x800a5488 */ sll	$zero,$zero,0x0
.L800a548c:
/* 0x800a548c */ lh	$a0,12($t1)
.L800a5490:
/* 0x800a5490 */ sll	$zero,$zero,0x0
.L800a5494:
/* 0x800a5494 */ slti	$v0,$a0,9
.L800a5498:
/* 0x800a5498 */ beq	$v0,$zero,.L800a54bc
.L800a549c:
/* 0x800a549c */ sll	$zero,$zero,0x0
.L800a54a0:
/* 0x800a54a0 */ jal	0x8004971c
.L800a54a4:
/* 0x800a54a4 */ sll	$a0,$a0,0x7
.L800a54a8:
/* 0x800a54a8 */ lhu	$v1,2($s3)
.L800a54ac:
/* 0x800a54ac */ sll	$zero,$zero,0x0
.L800a54b0:
/* 0x800a54b0 */ mult	$v1,$v0
.L800a54b4:
/* 0x800a54b4 */ j	.L800a54d8
.L800a54b8:
/* 0x800a54b8 */ addu	$s0,$zero,$zero
.L800a54bc:
/* 0x800a54bc */ sll	$a0,$a0,0x7
.L800a54c0:
/* 0x800a54c0 */ jal	0x8004971c
.L800a54c4:
/* 0x800a54c4 */ addiu	$a0,$a0,2048
.L800a54c8:
/* 0x800a54c8 */ lhu	$v1,2($s3)
.L800a54cc:
/* 0x800a54cc */ sll	$zero,$zero,0x0
.L800a54d0:
/* 0x800a54d0 */ mult	$v1,$v0
.L800a54d4:
/* 0x800a54d4 */ addiu	$s0,$zero,1
.L800a54d8:
/* 0x800a54d8 */ mflo	$t1
.L800a54dc:
/* 0x800a54dc */ sra	$v0,$t1,0xc
.L800a54e0:
/* 0x800a54e0 */ sh	$v0,38($sp)
.L800a54e4:
/* 0x800a54e4 */ addiu	$a0,$sp,32
.L800a54e8:
/* 0x800a54e8 */ addu	$a1,$s3,$zero
.L800a54ec:
/* 0x800a54ec */ addu	$a2,$zero,$zero
.L800a54f0:
/* 0x800a54f0 */ sh	$s2,32($sp)
.L800a54f4:
/* 0x800a54f4 */ lhu	$v0,2($a1)
.L800a54f8:
/* 0x800a54f8 */ lh	$v1,38($sp)
.L800a54fc:
/* 0x800a54fc */ lw	$t1,52($sp)
.L800a5500:
/* 0x800a5500 */ subu	$v0,$v0,$v1
.L800a5504:
/* 0x800a5504 */ srl	$v1,$v0,0x1f
.L800a5508:
/* 0x800a5508 */ addu	$v0,$v0,$v1
.L800a550c:
/* 0x800a550c */ sra	$v0,$v0,0x1
.L800a5510:
/* 0x800a5510 */ addu	$v0,$s7,$v0
.L800a5514:
/* 0x800a5514 */ sh	$v0,34($sp)
.L800a5518:
/* 0x800a5518 */ lhu	$v0,0($a1)
.L800a551c:
/* 0x800a551c */ addu	$a3,$s0,$zero
.L800a5520:
/* 0x800a5520 */ sh	$v0,36($sp)
.L800a5524:
/* 0x800a5524 */ addiu	$v0,$zero,253
.L800a5528:
/* 0x800a5528 */ sw	$zero,16($sp)
.L800a552c:
/* 0x800a552c */ sw	$t1,20($sp)
.L800a5530:
/* 0x800a5530 */ sw	$v0,24($sp)
.L800a5534:
/* 0x800a5534 */ jal	0x800ac52c
.L800a5538:
/* 0x800a5538 */ sw	$zero,28($sp)
.L800a553c:
/* 0x800a553c */ j	.L800a55ac
.L800a5540:
/* 0x800a5540 */ sltiu	$v0,$s8,5
.L800a5544:
/* 0x800a5544 */ addu	$a1,$s7,$zero
.L800a5548:
/* 0x800a5548 */ addu	$a2,$s3,$zero
.L800a554c:
/* 0x800a554c */ addu	$a3,$zero,$zero
.L800a5550:
/* 0x800a5550 */ lw	$t1,52($sp)
.L800a5554:
/* 0x800a5554 */ addiu	$s0,$zero,253
.L800a5558:
/* 0x800a5558 */ sw	$zero,16($sp)
.L800a555c:
/* 0x800a555c */ sw	$zero,20($sp)
.L800a5560:
/* 0x800a5560 */ sw	$s0,28($sp)
.L800a5564:
/* 0x800a5564 */ jal	0x800ac2bc
.L800a5568:
/* 0x800a5568 */ sw	$t1,24($sp)
.L800a556c:
/* 0x800a556c */ addiu	$v0,$zero,4
.L800a5570:
/* 0x800a5570 */ bne	$s8,$v0,.L800a55ac
.L800a5574:
/* 0x800a5574 */ sltiu	$v0,$s8,5
.L800a5578:
/* 0x800a5578 */ addu	$a1,$s7,$zero
.L800a557c:
/* 0x800a557c */ addiu	$a2,$s3,12
.L800a5580:
/* 0x800a5580 */ lhu	$v0,0($s3)
.L800a5584:
/* 0x800a5584 */ lw	$t1,52($sp)
.L800a5588:
/* 0x800a5588 */ addu	$a3,$zero,$zero
.L800a558c:
/* 0x800a558c */ sw	$zero,16($sp)
.L800a5590:
/* 0x800a5590 */ sw	$zero,20($sp)
.L800a5594:
/* 0x800a5594 */ sw	$s0,28($sp)
.L800a5598:
/* 0x800a5598 */ addu	$s2,$s2,$v0
.L800a559c:
/* 0x800a559c */ addu	$a0,$s2,$zero
.L800a55a0:
/* 0x800a55a0 */ jal	0x800ac2bc
.L800a55a4:
/* 0x800a55a4 */ sw	$t1,24($sp)
.L800a55a8:
/* 0x800a55a8 */ sltiu	$v0,$s8,5
.L800a55ac:
/* 0x800a55ac */ beq	$v0,$zero,.L800a5edc
.L800a55b0:
/* 0x800a55b0 */ lui	$v0,0x8002
.L800a55b4:
/* 0x800a55b4 */ addiu	$v0,$v0,1544
.L800a55b8:
/* 0x800a55b8 */ sll	$v1,$s8,0x2
.L800a55bc:
/* 0x800a55bc */ addu	$v1,$v1,$v0
.L800a55c0:
/* 0x800a55c0 */ lw	$v0,0($v1)
.L800a55c4:
/* 0x800a55c4 */ sll	$zero,$zero,0x0
.L800a55c8:
/* 0x800a55c8 */ jr	$v0
.L800a55cc:
/* 0x800a55cc */ sll	$zero,$zero,0x0
.L800a55d0:
/* 0x800a55d0 */ addiu	$v1,$s2,50
.L800a55d4:
/* 0x800a55d4 */ lw	$t1,40($sp)
.L800a55d8:
/* 0x800a55d8 */ addiu	$s7,$s7,12
.L800a55dc:
/* 0x800a55dc */ addiu	$s4,$zero,4
.L800a55e0:
/* 0x800a55e0 */ sll	$v0,$t1,0x2
.L800a55e4:
/* 0x800a55e4 */ bne	$t1,$zero,.L800a55f0
.L800a55e8:
/* 0x800a55e8 */ addu	$s2,$v1,$v0
.L800a55ec:
/* 0x800a55ec */ addiu	$s4,$zero,1
.L800a55f0:
/* 0x800a55f0 */ lw	$t1,48($sp)
.L800a55f4:
/* 0x800a55f4 */ sll	$zero,$zero,0x0
.L800a55f8:
/* 0x800a55f8 */ lbu	$v0,5($t1)
.L800a55fc:
/* 0x800a55fc */ sll	$zero,$zero,0x0
.L800a5600:
/* 0x800a5600 */ beq	$v0,$zero,.L800a56c8
.L800a5604:
/* 0x800a5604 */ lui	$v0,0x800e
.L800a5608:
/* 0x800a5608 */ lw	$t1,40($sp)
.L800a560c:
/* 0x800a560c */ lw	$v0,2840($v0)
.L800a5610:
/* 0x800a5610 */ sll	$v1,$t1,0x5
.L800a5614:
/* 0x800a5614 */ addu	$v0,$v0,$v1
.L800a5618:
/* 0x800a5618 */ bne	$s8,$zero,.L800a562c
.L800a561c:
/* 0x800a561c */ addiu	$a2,$v0,4884
.L800a5620:
/* 0x800a5620 */ lhu	$a2,10($a2)
.L800a5624:
/* 0x800a5624 */ j	.L800a569c
.L800a5628:
/* 0x800a5628 */ addu	$a0,$s2,$zero
.L800a562c:
/* 0x800a562c */ addiu	$v0,$zero,1
.L800a5630:
/* 0x800a5630 */ bne	$s8,$v0,.L800a5644
.L800a5634:
/* 0x800a5634 */ addiu	$v0,$zero,2
.L800a5638:
/* 0x800a5638 */ lb	$a2,0($a2)
.L800a563c:
/* 0x800a563c */ j	.L800a569c
.L800a5640:
/* 0x800a5640 */ addu	$a0,$s2,$zero
.L800a5644:
/* 0x800a5644 */ bne	$s8,$v0,.L800a5668
.L800a5648:
/* 0x800a5648 */ addiu	$v0,$zero,3
.L800a564c:
/* 0x800a564c */ lb	$v0,0($a2)
.L800a5650:
/* 0x800a5650 */ sll	$zero,$zero,0x0
.L800a5654:
/* 0x800a5654 */ sll	$v0,$v0,0x1
.L800a5658:
/* 0x800a5658 */ addu	$v0,$a2,$v0
.L800a565c:
/* 0x800a565c */ lh	$a2,4($v0)
.L800a5660:
/* 0x800a5660 */ j	.L800a569c
.L800a5664:
/* 0x800a5664 */ addu	$a0,$s2,$zero
.L800a5668:
/* 0x800a5668 */ bne	$s8,$v0,.L800a567c
.L800a566c:
/* 0x800a566c */ addiu	$v0,$zero,4
.L800a5670:
/* 0x800a5670 */ lb	$a2,1($a2)
.L800a5674:
/* 0x800a5674 */ j	.L800a569c
.L800a5678:
/* 0x800a5678 */ addu	$a0,$s2,$zero
.L800a567c:
/* 0x800a567c */ bne	$s8,$v0,.L800a5698
.L800a5680:
/* 0x800a5680 */ addu	$a2,$zero,$zero
.L800a5684:
/* 0x800a5684 */ lui	$v0,0x8012
.L800a5688:
/* 0x800a5688 */ lw	$a0,-30296($v0)
.L800a568c:
/* 0x800a568c */ jal	0x800ac0b4
.L800a5690:
/* 0x800a5690 */ sll	$zero,$zero,0x0
.L800a5694:
/* 0x800a5694 */ andi	$a2,$v0,0xffff
.L800a5698:
/* 0x800a5698 */ addu	$a0,$s2,$zero
.L800a569c:
/* 0x800a569c */ addu	$a1,$s7,$zero
.L800a56a0:
/* 0x800a56a0 */ addiu	$a3,$zero,3
.L800a56a4:
/* 0x800a56a4 */ lui	$v0,0x8012
.L800a56a8:
/* 0x800a56a8 */ lw	$v1,-30284($v0)
.L800a56ac:
/* 0x800a56ac */ addiu	$v0,$zero,1
.L800a56b0:
/* 0x800a56b0 */ sw	$v0,16($sp)
.L800a56b4:
/* 0x800a56b4 */ sw	$s4,24($sp)
.L800a56b8:
/* 0x800a56b8 */ jal	0x800a4f18
.L800a56bc:
/* 0x800a56bc */ sw	$v1,20($sp)
.L800a56c0:
/* 0x800a56c0 */ j	.L800a5760
.L800a56c4:
/* 0x800a56c4 */ lui	$v0,0x8002
.L800a56c8:
/* 0x800a56c8 */ addu	$s1,$zero,$zero
.L800a56cc:
/* 0x800a56cc */ lui	$v0,0x8012
.L800a56d0:
/* 0x800a56d0 */ addiu	$s3,$v0,-30288
.L800a56d4:
/* 0x800a56d4 */ lui	$v0,0x800e
.L800a56d8:
/* 0x800a56d8 */ addiu	$s5,$v0,8268
.L800a56dc:
/* 0x800a56dc */ addiu	$s6,$s5,112
.L800a56e0:
/* 0x800a56e0 */ addiu	$s0,$zero,251
.L800a56e4:
/* 0x800a56e4 */ addiu	$v0,$zero,3
.L800a56e8:
/* 0x800a56e8 */ bne	$s1,$v0,.L800a5720
.L800a56ec:
/* 0x800a56ec */ addu	$a0,$s2,$zero
.L800a56f0:
/* 0x800a56f0 */ addu	$a1,$s7,$zero
.L800a56f4:
/* 0x800a56f4 */ lui	$a2,0x800e
.L800a56f8:
/* 0x800a56f8 */ addiu	$a2,$a2,7820
.L800a56fc:
/* 0x800a56fc */ sw	$s4,20($sp)
.L800a5700:
/* 0x800a5700 */ sw	$s0,28($sp)
.L800a5704:
/* 0x800a5704 */ lw	$v1,4($s3)
.L800a5708:
/* 0x800a5708 */ lh	$a3,112($s5)
.L800a570c:
/* 0x800a570c */ lh	$v0,2($s6)
.L800a5710:
/* 0x800a5710 */ addiu	$s2,$s2,-8
.L800a5714:
/* 0x800a5714 */ sw	$v0,16($sp)
.L800a5718:
/* 0x800a5718 */ j	.L800a5748
.L800a571c:
/* 0x800a571c */ sw	$v1,24($sp)
.L800a5720:
/* 0x800a5720 */ addu	$a1,$s7,$zero
.L800a5724:
/* 0x800a5724 */ lui	$a2,0x800e
.L800a5728:
/* 0x800a5728 */ addiu	$a2,$a2,7808
.L800a572c:
/* 0x800a572c */ lw	$v0,4($s3)
.L800a5730:
/* 0x800a5730 */ lw	$t1,40($sp)
.L800a5734:
/* 0x800a5734 */ addu	$a3,$zero,$zero
.L800a5738:
/* 0x800a5738 */ sw	$zero,16($sp)
.L800a573c:
/* 0x800a573c */ sw	$s0,28($sp)
.L800a5740:
/* 0x800a5740 */ sw	$t1,20($sp)
.L800a5744:
/* 0x800a5744 */ sw	$v0,24($sp)
.L800a5748:
/* 0x800a5748 */ jal	0x800ac2bc
.L800a574c:
/* 0x800a574c */ addiu	$s1,$s1,1
.L800a5750:
/* 0x800a5750 */ slti	$v0,$s1,5
.L800a5754:
/* 0x800a5754 */ bne	$v0,$zero,.L800a56e4
.L800a5758:
/* 0x800a5758 */ addiu	$s2,$s2,16
.L800a575c:
/* 0x800a575c */ lui	$v0,0x8002
.L800a5760:
/* 0x800a5760 */ addiu	$s6,$v0,1484
.L800a5764:
/* 0x800a5764 */ lui	$v0,0x800e
.L800a5768:
/* 0x800a5768 */ addiu	$s5,$v0,8268
.L800a576c:
/* 0x800a576c */ lui	$v0,0x8012
.L800a5770:
/* 0x800a5770 */ lw	$t1,40($sp)
.L800a5774:
/* 0x800a5774 */ lw	$s3,-30284($v0)
.L800a5778:
/* 0x800a5778 */ sll	$v0,$t1,0x1
.L800a577c:
/* 0x800a577c */ lw	$t1,44($sp)
.L800a5780:
/* 0x800a5780 */ addu	$s1,$zero,$zero
.L800a5784:
/* 0x800a5784 */ addu	$v0,$t1,$v0
.L800a5788:
/* 0x800a5788 */ lw	$t1,56($sp)
.L800a578c:
/* 0x800a578c */ lh	$v1,4($v0)
.L800a5790:
/* 0x800a5790 */ addiu	$v0,$t1,-192
.L800a5794:
/* 0x800a5794 */ addu	$s2,$v1,$v0
.L800a5798:
/* 0x800a5798 */ addu	$v1,$s6,$s1
.L800a579c:
/* 0x800a579c */ lbu	$v0,0($v1)
.L800a57a0:
/* 0x800a57a0 */ sll	$zero,$zero,0x0
.L800a57a4:
/* 0x800a57a4 */ beq	$v0,$zero,.L800a5edc
.L800a57a8:
/* 0x800a57a8 */ sll	$a0,$s2,0x10
.L800a57ac:
/* 0x800a57ac */ sra	$a0,$a0,0x10
.L800a57b0:
/* 0x800a57b0 */ addu	$a1,$s7,$zero
.L800a57b4:
/* 0x800a57b4 */ addu	$s0,$v0,$zero
.L800a57b8:
/* 0x800a57b8 */ lui	$a2,0x800e
.L800a57bc:
/* 0x800a57bc */ addiu	$s0,$s0,-32
.L800a57c0:
/* 0x800a57c0 */ sll	$s0,$s0,0x3
.L800a57c4:
/* 0x800a57c4 */ addu	$s0,$s0,$s5
.L800a57c8:
/* 0x800a57c8 */ addiu	$a2,$a2,7820
.L800a57cc:
/* 0x800a57cc */ lh	$a3,0($s0)
.L800a57d0:
/* 0x800a57d0 */ lh	$v1,2($s0)
.L800a57d4:
/* 0x800a57d4 */ addiu	$v0,$zero,251
.L800a57d8:
/* 0x800a57d8 */ sw	$s4,20($sp)
.L800a57dc:
/* 0x800a57dc */ sw	$s3,24($sp)
.L800a57e0:
/* 0x800a57e0 */ sw	$v0,28($sp)
.L800a57e4:
/* 0x800a57e4 */ jal	0x800ac2bc
.L800a57e8:
/* 0x800a57e8 */ sw	$v1,16($sp)
.L800a57ec:
/* 0x800a57ec */ lw	$v0,4($s0)
.L800a57f0:
/* 0x800a57f0 */ addiu	$s1,$s1,1
.L800a57f4:
/* 0x800a57f4 */ addu	$s2,$s2,$v0
.L800a57f8:
/* 0x800a57f8 */ slti	$v0,$s1,32
.L800a57fc:
/* 0x800a57fc */ bne	$v0,$zero,.L800a579c
.L800a5800:
/* 0x800a5800 */ addu	$v1,$s6,$s1
.L800a5804:
/* 0x800a5804 */ j	.L800a5ee0
.L800a5808:
/* 0x800a5808 */ addiu	$v0,$zero,5
.L800a580c:
/* 0x800a580c */ lui	$v0,0x800e
.L800a5810:
/* 0x800a5810 */ lw	$t1,40($sp)
.L800a5814:
/* 0x800a5814 */ lw	$v0,2840($v0)
.L800a5818:
/* 0x800a5818 */ sll	$v1,$t1,0x5
.L800a581c:
/* 0x800a581c */ addu	$v0,$v0,$v1
.L800a5820:
/* 0x800a5820 */ bne	$s8,$zero,.L800a5834
.L800a5824:
/* 0x800a5824 */ addiu	$v1,$v0,4884
.L800a5828:
/* 0x800a5828 */ lhu	$v1,10($v1)
.L800a582c:
/* 0x800a582c */ j	.L800a58a4
.L800a5830:
/* 0x800a5830 */ addiu	$v0,$s2,32
.L800a5834:
/* 0x800a5834 */ addiu	$v0,$zero,1
.L800a5838:
/* 0x800a5838 */ bne	$s8,$v0,.L800a584c
.L800a583c:
/* 0x800a583c */ addiu	$v0,$zero,2
.L800a5840:
/* 0x800a5840 */ lb	$v1,0($v1)
.L800a5844:
/* 0x800a5844 */ j	.L800a58a4
.L800a5848:
/* 0x800a5848 */ addiu	$v0,$s2,32
.L800a584c:
/* 0x800a584c */ bne	$s8,$v0,.L800a5870
.L800a5850:
/* 0x800a5850 */ addiu	$v0,$zero,3
.L800a5854:
/* 0x800a5854 */ lb	$v0,0($v1)
.L800a5858:
/* 0x800a5858 */ sll	$zero,$zero,0x0
.L800a585c:
/* 0x800a585c */ sll	$v0,$v0,0x1
.L800a5860:
/* 0x800a5860 */ addu	$v0,$v1,$v0
.L800a5864:
/* 0x800a5864 */ lh	$v1,4($v0)
.L800a5868:
/* 0x800a5868 */ j	.L800a58a4
.L800a586c:
/* 0x800a586c */ addiu	$v0,$s2,32
.L800a5870:
/* 0x800a5870 */ bne	$s8,$v0,.L800a5884
.L800a5874:
/* 0x800a5874 */ addiu	$v0,$zero,4
.L800a5878:
/* 0x800a5878 */ lb	$v1,1($v1)
.L800a587c:
/* 0x800a587c */ j	.L800a58a4
.L800a5880:
/* 0x800a5880 */ addiu	$v0,$s2,32
.L800a5884:
/* 0x800a5884 */ bne	$s8,$v0,.L800a58a0
.L800a5888:
/* 0x800a5888 */ addu	$v1,$zero,$zero
.L800a588c:
/* 0x800a588c */ lui	$v0,0x8012
.L800a5890:
/* 0x800a5890 */ lw	$a0,-30296($v0)
.L800a5894:
/* 0x800a5894 */ jal	0x800ac0b4
.L800a5898:
/* 0x800a5898 */ sll	$zero,$zero,0x0
.L800a589c:
/* 0x800a589c */ andi	$v1,$v0,0xffff
.L800a58a0:
/* 0x800a58a0 */ addiu	$v0,$s2,32
.L800a58a4:
/* 0x800a58a4 */ addiu	$a1,$s7,10
.L800a58a8:
/* 0x800a58a8 */ lui	$a2,0x800e
.L800a58ac:
/* 0x800a58ac */ addiu	$a2,$a2,8096
.L800a58b0:
/* 0x800a58b0 */ lw	$t1,40($sp)
.L800a58b4:
/* 0x800a58b4 */ addu	$a3,$zero,$zero
.L800a58b8:
/* 0x800a58b8 */ sw	$zero,16($sp)
.L800a58bc:
/* 0x800a58bc */ sll	$a0,$t1,0x2
.L800a58c0:
/* 0x800a58c0 */ addu	$a0,$v0,$a0
.L800a58c4:
/* 0x800a58c4 */ sll	$v0,$v1,0x1
.L800a58c8:
/* 0x800a58c8 */ addu	$v0,$v0,$v1
.L800a58cc:
/* 0x800a58cc */ sll	$v0,$v0,0x2
.L800a58d0:
/* 0x800a58d0 */ addu	$a2,$v0,$a2
.L800a58d4:
/* 0x800a58d4 */ lui	$v0,0x8012
.L800a58d8:
/* 0x800a58d8 */ lw	$v1,-30284($v0)
.L800a58dc:
/* 0x800a58dc */ addiu	$v0,$zero,251
.L800a58e0:
/* 0x800a58e0 */ sw	$t1,20($sp)
.L800a58e4:
/* 0x800a58e4 */ sw	$v0,28($sp)
.L800a58e8:
/* 0x800a58e8 */ jal	0x800ac2bc
.L800a58ec:
/* 0x800a58ec */ sw	$v1,24($sp)
.L800a58f0:
/* 0x800a58f0 */ j	.L800a5ee0
.L800a58f4:
/* 0x800a58f4 */ addiu	$v0,$zero,5
.L800a58f8:
/* 0x800a58f8 */ lui	$v0,0x800e
.L800a58fc:
/* 0x800a58fc */ lw	$t1,40($sp)
.L800a5900:
/* 0x800a5900 */ lw	$v0,2840($v0)
.L800a5904:
/* 0x800a5904 */ sll	$v1,$t1,0x5
.L800a5908:
/* 0x800a5908 */ addu	$v0,$v0,$v1
.L800a590c:
/* 0x800a590c */ bne	$s8,$zero,.L800a5920
.L800a5910:
/* 0x800a5910 */ addiu	$v1,$v0,4884
.L800a5914:
/* 0x800a5914 */ lhu	$s0,10($v1)
.L800a5918:
/* 0x800a5918 */ j	.L800a5994
.L800a591c:
/* 0x800a591c */ addiu	$s4,$zero,4
.L800a5920:
/* 0x800a5920 */ addiu	$v0,$zero,1
.L800a5924:
/* 0x800a5924 */ bne	$s8,$v0,.L800a5938
.L800a5928:
/* 0x800a5928 */ addiu	$v0,$zero,2
.L800a592c:
/* 0x800a592c */ lb	$s0,0($v1)
.L800a5930:
/* 0x800a5930 */ j	.L800a598c
.L800a5934:
/* 0x800a5934 */ sll	$zero,$zero,0x0
.L800a5938:
/* 0x800a5938 */ bne	$s8,$v0,.L800a595c
.L800a593c:
/* 0x800a593c */ addiu	$v0,$zero,3
.L800a5940:
/* 0x800a5940 */ lb	$v0,0($v1)
.L800a5944:
/* 0x800a5944 */ sll	$zero,$zero,0x0
.L800a5948:
/* 0x800a5948 */ sll	$v0,$v0,0x1
.L800a594c:
/* 0x800a594c */ addu	$v0,$v1,$v0
.L800a5950:
/* 0x800a5950 */ lh	$s0,4($v0)
.L800a5954:
/* 0x800a5954 */ j	.L800a598c
.L800a5958:
/* 0x800a5958 */ sll	$zero,$zero,0x0
.L800a595c:
/* 0x800a595c */ bne	$s8,$v0,.L800a5970
.L800a5960:
/* 0x800a5960 */ addiu	$v0,$zero,4
.L800a5964:
/* 0x800a5964 */ lb	$s0,1($v1)
.L800a5968:
/* 0x800a5968 */ j	.L800a598c
.L800a596c:
/* 0x800a596c */ sll	$zero,$zero,0x0
.L800a5970:
/* 0x800a5970 */ bne	$s8,$v0,.L800a598c
.L800a5974:
/* 0x800a5974 */ addu	$s0,$zero,$zero
.L800a5978:
/* 0x800a5978 */ lui	$v0,0x8012
.L800a597c:
/* 0x800a597c */ lw	$a0,-30296($v0)
.L800a5980:
/* 0x800a5980 */ jal	0x800ac0b4
.L800a5984:
/* 0x800a5984 */ sll	$zero,$zero,0x0
.L800a5988:
/* 0x800a5988 */ andi	$s0,$v0,0xffff
.L800a598c:
/* 0x800a598c */ lw	$t1,40($sp)
.L800a5990:
/* 0x800a5990 */ addiu	$s4,$zero,4
.L800a5994:
/* 0x800a5994 */ bne	$t1,$zero,.L800a59a0
.L800a5998:
/* 0x800a5998 */ sll	$zero,$zero,0x0
.L800a599c:
/* 0x800a599c */ addiu	$s4,$zero,1
.L800a59a0:
/* 0x800a59a0 */ addiu	$s2,$s2,58
.L800a59a4:
/* 0x800a59a4 */ lb	$v1,0($s5)
.L800a59a8:
/* 0x800a59a8 */ addiu	$v0,$zero,1
.L800a59ac:
/* 0x800a59ac */ bne	$v1,$v0,.L800a5a74
.L800a59b0:
/* 0x800a59b0 */ addiu	$s7,$s7,12
.L800a59b4:
/* 0x800a59b4 */ addiu	$s2,$s2,-8
.L800a59b8:
/* 0x800a59b8 */ addu	$a0,$s2,$zero
.L800a59bc:
/* 0x800a59bc */ addu	$a1,$s7,$zero
.L800a59c0:
/* 0x800a59c0 */ addu	$a2,$s0,$zero
.L800a59c4:
/* 0x800a59c4 */ addiu	$a3,$zero,4
.L800a59c8:
/* 0x800a59c8 */ addiu	$s2,$a0,72
.L800a59cc:
/* 0x800a59cc */ lui	$s0,0x8012
.L800a59d0:
/* 0x800a59d0 */ addiu	$s0,$s0,-30288
.L800a59d4:
/* 0x800a59d4 */ lw	$v0,4($s0)
.L800a59d8:
/* 0x800a59d8 */ addu	$s1,$zero,$zero
.L800a59dc:
/* 0x800a59dc */ sw	$zero,16($sp)
.L800a59e0:
/* 0x800a59e0 */ sw	$s4,24($sp)
.L800a59e4:
/* 0x800a59e4 */ jal	0x800a4f18
.L800a59e8:
/* 0x800a59e8 */ sw	$v0,20($sp)
.L800a59ec:
/* 0x800a59ec */ lui	$v0,0x8002
.L800a59f0:
/* 0x800a59f0 */ addiu	$s6,$v0,1488
.L800a59f4:
/* 0x800a59f4 */ lui	$v0,0x800e
.L800a59f8:
/* 0x800a59f8 */ addiu	$s5,$v0,8268
.L800a59fc:
/* 0x800a59fc */ lw	$s3,4($s0)
.L800a5a00:
/* 0x800a5a00 */ addu	$v1,$s6,$s1
.L800a5a04:
/* 0x800a5a04 */ lbu	$v0,0($v1)
.L800a5a08:
/* 0x800a5a08 */ sll	$zero,$zero,0x0
.L800a5a0c:
/* 0x800a5a0c */ beq	$v0,$zero,.L800a5edc
.L800a5a10:
/* 0x800a5a10 */ sll	$a0,$s2,0x10
.L800a5a14:
/* 0x800a5a14 */ sra	$a0,$a0,0x10
.L800a5a18:
/* 0x800a5a18 */ addu	$a1,$s7,$zero
.L800a5a1c:
/* 0x800a5a1c */ addu	$s0,$v0,$zero
.L800a5a20:
/* 0x800a5a20 */ lui	$a2,0x800e
.L800a5a24:
/* 0x800a5a24 */ addiu	$s0,$s0,-32
.L800a5a28:
/* 0x800a5a28 */ sll	$s0,$s0,0x3
.L800a5a2c:
/* 0x800a5a2c */ addu	$s0,$s0,$s5
.L800a5a30:
/* 0x800a5a30 */ addiu	$a2,$a2,7820
.L800a5a34:
/* 0x800a5a34 */ lh	$a3,0($s0)
.L800a5a38:
/* 0x800a5a38 */ lh	$v1,2($s0)
.L800a5a3c:
/* 0x800a5a3c */ addiu	$v0,$zero,251
.L800a5a40:
/* 0x800a5a40 */ sw	$s4,20($sp)
.L800a5a44:
/* 0x800a5a44 */ sw	$s3,24($sp)
.L800a5a48:
/* 0x800a5a48 */ sw	$v0,28($sp)
.L800a5a4c:
/* 0x800a5a4c */ jal	0x800ac2bc
.L800a5a50:
/* 0x800a5a50 */ sw	$v1,16($sp)
.L800a5a54:
/* 0x800a5a54 */ lw	$v0,4($s0)
.L800a5a58:
/* 0x800a5a58 */ addiu	$s1,$s1,1
.L800a5a5c:
/* 0x800a5a5c */ addu	$s2,$s2,$v0
.L800a5a60:
/* 0x800a5a60 */ slti	$v0,$s1,32
.L800a5a64:
/* 0x800a5a64 */ bne	$v0,$zero,.L800a5a04
.L800a5a68:
/* 0x800a5a68 */ addu	$v1,$s6,$s1
.L800a5a6c:
/* 0x800a5a6c */ j	.L800a5ee0
.L800a5a70:
/* 0x800a5a70 */ addiu	$v0,$zero,5
.L800a5a74:
/* 0x800a5a74 */ addiu	$v0,$zero,2
.L800a5a78:
/* 0x800a5a78 */ bne	$v1,$v0,.L800a5b40
.L800a5a7c:
/* 0x800a5a7c */ lui	$v0,0x8002
.L800a5a80:
/* 0x800a5a80 */ addiu	$s2,$s2,8
.L800a5a84:
/* 0x800a5a84 */ addu	$a0,$s2,$zero
.L800a5a88:
/* 0x800a5a88 */ addu	$a1,$s7,$zero
.L800a5a8c:
/* 0x800a5a8c */ addu	$a2,$s0,$zero
.L800a5a90:
/* 0x800a5a90 */ addiu	$a3,$zero,3
.L800a5a94:
/* 0x800a5a94 */ addiu	$s2,$a0,64
.L800a5a98:
/* 0x800a5a98 */ lui	$s0,0x8012
.L800a5a9c:
/* 0x800a5a9c */ addiu	$s0,$s0,-30288
.L800a5aa0:
/* 0x800a5aa0 */ lw	$v0,4($s0)
.L800a5aa4:
/* 0x800a5aa4 */ addu	$s1,$zero,$zero
.L800a5aa8:
/* 0x800a5aa8 */ sw	$zero,16($sp)
.L800a5aac:
/* 0x800a5aac */ sw	$s4,24($sp)
.L800a5ab0:
/* 0x800a5ab0 */ jal	0x800a4f18
.L800a5ab4:
/* 0x800a5ab4 */ sw	$v0,20($sp)
.L800a5ab8:
/* 0x800a5ab8 */ lui	$v0,0x8002
.L800a5abc:
/* 0x800a5abc */ addiu	$s6,$v0,1496
.L800a5ac0:
/* 0x800a5ac0 */ lui	$v0,0x800e
.L800a5ac4:
/* 0x800a5ac4 */ addiu	$s5,$v0,8268
.L800a5ac8:
/* 0x800a5ac8 */ lw	$s3,4($s0)
.L800a5acc:
/* 0x800a5acc */ addu	$v1,$s6,$s1
.L800a5ad0:
/* 0x800a5ad0 */ lbu	$v0,0($v1)
.L800a5ad4:
/* 0x800a5ad4 */ sll	$zero,$zero,0x0
.L800a5ad8:
/* 0x800a5ad8 */ beq	$v0,$zero,.L800a5edc
.L800a5adc:
/* 0x800a5adc */ sll	$a0,$s2,0x10
.L800a5ae0:
/* 0x800a5ae0 */ sra	$a0,$a0,0x10
.L800a5ae4:
/* 0x800a5ae4 */ addu	$a1,$s7,$zero
.L800a5ae8:
/* 0x800a5ae8 */ addu	$s0,$v0,$zero
.L800a5aec:
/* 0x800a5aec */ lui	$a2,0x800e
.L800a5af0:
/* 0x800a5af0 */ addiu	$s0,$s0,-32
.L800a5af4:
/* 0x800a5af4 */ sll	$s0,$s0,0x3
.L800a5af8:
/* 0x800a5af8 */ addu	$s0,$s0,$s5
.L800a5afc:
/* 0x800a5afc */ addiu	$a2,$a2,7820
.L800a5b00:
/* 0x800a5b00 */ lh	$a3,0($s0)
.L800a5b04:
/* 0x800a5b04 */ lh	$v1,2($s0)
.L800a5b08:
/* 0x800a5b08 */ addiu	$v0,$zero,251
.L800a5b0c:
/* 0x800a5b0c */ sw	$s4,20($sp)
.L800a5b10:
/* 0x800a5b10 */ sw	$s3,24($sp)
.L800a5b14:
/* 0x800a5b14 */ sw	$v0,28($sp)
.L800a5b18:
/* 0x800a5b18 */ jal	0x800ac2bc
.L800a5b1c:
/* 0x800a5b1c */ sw	$v1,16($sp)
.L800a5b20:
/* 0x800a5b20 */ lw	$v0,4($s0)
.L800a5b24:
/* 0x800a5b24 */ addiu	$s1,$s1,1
.L800a5b28:
/* 0x800a5b28 */ addu	$s2,$s2,$v0
.L800a5b2c:
/* 0x800a5b2c */ slti	$v0,$s1,32
.L800a5b30:
/* 0x800a5b30 */ bne	$v0,$zero,.L800a5ad0
.L800a5b34:
/* 0x800a5b34 */ addu	$v1,$s6,$s1
.L800a5b38:
/* 0x800a5b38 */ j	.L800a5ee0
.L800a5b3c:
/* 0x800a5b3c */ addiu	$v0,$zero,5
.L800a5b40:
/* 0x800a5b40 */ addiu	$s6,$v0,1500
.L800a5b44:
/* 0x800a5b44 */ lui	$v0,0x8012
.L800a5b48:
/* 0x800a5b48 */ lw	$s3,-30284($v0)
.L800a5b4c:
/* 0x800a5b4c */ addiu	$s2,$s2,16
.L800a5b50:
/* 0x800a5b50 */ addu	$s1,$zero,$zero
.L800a5b54:
/* 0x800a5b54 */ lui	$v0,0x800e
.L800a5b58:
/* 0x800a5b58 */ addiu	$s5,$v0,8268
.L800a5b5c:
/* 0x800a5b5c */ addu	$v1,$s6,$s1
.L800a5b60:
/* 0x800a5b60 */ lbu	$v0,0($v1)
.L800a5b64:
/* 0x800a5b64 */ sll	$zero,$zero,0x0
.L800a5b68:
/* 0x800a5b68 */ beq	$v0,$zero,.L800a5edc
.L800a5b6c:
/* 0x800a5b6c */ sll	$a0,$s2,0x10
.L800a5b70:
/* 0x800a5b70 */ sra	$a0,$a0,0x10
.L800a5b74:
/* 0x800a5b74 */ addu	$a1,$s7,$zero
.L800a5b78:
/* 0x800a5b78 */ addu	$s0,$v0,$zero
.L800a5b7c:
/* 0x800a5b7c */ lui	$a2,0x800e
.L800a5b80:
/* 0x800a5b80 */ addiu	$s0,$s0,-32
.L800a5b84:
/* 0x800a5b84 */ sll	$s0,$s0,0x3
.L800a5b88:
/* 0x800a5b88 */ addu	$s0,$s0,$s5
.L800a5b8c:
/* 0x800a5b8c */ addiu	$a2,$a2,7820
.L800a5b90:
/* 0x800a5b90 */ lh	$a3,0($s0)
.L800a5b94:
/* 0x800a5b94 */ lh	$v1,2($s0)
.L800a5b98:
/* 0x800a5b98 */ addiu	$v0,$zero,251
.L800a5b9c:
/* 0x800a5b9c */ sw	$s4,20($sp)
.L800a5ba0:
/* 0x800a5ba0 */ sw	$s3,24($sp)
.L800a5ba4:
/* 0x800a5ba4 */ sw	$v0,28($sp)
.L800a5ba8:
/* 0x800a5ba8 */ jal	0x800ac2bc
.L800a5bac:
/* 0x800a5bac */ sw	$v1,16($sp)
.L800a5bb0:
/* 0x800a5bb0 */ lw	$v0,4($s0)
.L800a5bb4:
/* 0x800a5bb4 */ addiu	$s1,$s1,1
.L800a5bb8:
/* 0x800a5bb8 */ addu	$s2,$s2,$v0
.L800a5bbc:
/* 0x800a5bbc */ slti	$v0,$s1,32
.L800a5bc0:
/* 0x800a5bc0 */ bne	$v0,$zero,.L800a5b60
.L800a5bc4:
/* 0x800a5bc4 */ addu	$v1,$s6,$s1
.L800a5bc8:
/* 0x800a5bc8 */ j	.L800a5ee0
.L800a5bcc:
/* 0x800a5bcc */ addiu	$v0,$zero,5
.L800a5bd0:
/* 0x800a5bd0 */ lui	$v0,0x800e
.L800a5bd4:
/* 0x800a5bd4 */ lw	$t1,40($sp)
.L800a5bd8:
/* 0x800a5bd8 */ lw	$v0,2840($v0)
.L800a5bdc:
/* 0x800a5bdc */ sll	$v1,$t1,0x5
.L800a5be0:
/* 0x800a5be0 */ addu	$v0,$v0,$v1
.L800a5be4:
/* 0x800a5be4 */ bne	$s8,$zero,.L800a5bf8
.L800a5be8:
/* 0x800a5be8 */ addiu	$v1,$v0,4884
.L800a5bec:
/* 0x800a5bec */ lhu	$s0,10($v1)
.L800a5bf0:
/* 0x800a5bf0 */ j	.L800a5c68
.L800a5bf4:
/* 0x800a5bf4 */ sll	$v1,$s0,0x1
.L800a5bf8:
/* 0x800a5bf8 */ addiu	$v0,$zero,1
.L800a5bfc:
/* 0x800a5bfc */ bne	$s8,$v0,.L800a5c10
.L800a5c00:
/* 0x800a5c00 */ addiu	$v0,$zero,2
.L800a5c04:
/* 0x800a5c04 */ lb	$s0,0($v1)
.L800a5c08:
/* 0x800a5c08 */ j	.L800a5c68
.L800a5c0c:
/* 0x800a5c0c */ sll	$v1,$s0,0x1
.L800a5c10:
/* 0x800a5c10 */ bne	$s8,$v0,.L800a5c34
.L800a5c14:
/* 0x800a5c14 */ addiu	$v0,$zero,3
.L800a5c18:
/* 0x800a5c18 */ lb	$v0,0($v1)
.L800a5c1c:
/* 0x800a5c1c */ sll	$zero,$zero,0x0
.L800a5c20:
/* 0x800a5c20 */ sll	$v0,$v0,0x1
.L800a5c24:
/* 0x800a5c24 */ addu	$v0,$v1,$v0
.L800a5c28:
/* 0x800a5c28 */ lh	$s0,4($v0)
.L800a5c2c:
/* 0x800a5c2c */ j	.L800a5c68
.L800a5c30:
/* 0x800a5c30 */ sll	$v1,$s0,0x1
.L800a5c34:
/* 0x800a5c34 */ bne	$s8,$v0,.L800a5c48
.L800a5c38:
/* 0x800a5c38 */ addiu	$v0,$zero,4
.L800a5c3c:
/* 0x800a5c3c */ lb	$s0,1($v1)
.L800a5c40:
/* 0x800a5c40 */ j	.L800a5c68
.L800a5c44:
/* 0x800a5c44 */ sll	$v1,$s0,0x1
.L800a5c48:
/* 0x800a5c48 */ bne	$s8,$v0,.L800a5c64
.L800a5c4c:
/* 0x800a5c4c */ addu	$s0,$zero,$zero
.L800a5c50:
/* 0x800a5c50 */ lui	$v0,0x8012
.L800a5c54:
/* 0x800a5c54 */ lw	$a0,-30296($v0)
.L800a5c58:
/* 0x800a5c58 */ jal	0x800ac0b4
.L800a5c5c:
/* 0x800a5c5c */ sll	$zero,$zero,0x0
.L800a5c60:
/* 0x800a5c60 */ andi	$s0,$v0,0xffff
.L800a5c64:
/* 0x800a5c64 */ sll	$v1,$s0,0x1
.L800a5c68:
/* 0x800a5c68 */ addu	$v1,$v1,$s0
.L800a5c6c:
/* 0x800a5c6c */ sll	$v1,$v1,0x2
.L800a5c70:
/* 0x800a5c70 */ lui	$v0,0x800e
.L800a5c74:
/* 0x800a5c74 */ addiu	$v0,$v0,8060
.L800a5c78:
/* 0x800a5c78 */ addu	$s3,$v1,$v0
.L800a5c7c:
/* 0x800a5c7c */ addiu	$v1,$s2,24
.L800a5c80:
/* 0x800a5c80 */ addiu	$s7,$s7,10
.L800a5c84:
/* 0x800a5c84 */ addu	$a1,$s7,$zero
.L800a5c88:
/* 0x800a5c88 */ addu	$a2,$s3,$zero
.L800a5c8c:
/* 0x800a5c8c */ addu	$a3,$zero,$zero
.L800a5c90:
/* 0x800a5c90 */ lw	$t1,40($sp)
.L800a5c94:
/* 0x800a5c94 */ addu	$s1,$a3,$zero
.L800a5c98:
/* 0x800a5c98 */ sw	$zero,16($sp)
.L800a5c9c:
/* 0x800a5c9c */ sll	$v0,$t1,0x2
.L800a5ca0:
/* 0x800a5ca0 */ addu	$s2,$v1,$v0
.L800a5ca4:
/* 0x800a5ca4 */ addu	$a0,$s2,$zero
.L800a5ca8:
/* 0x800a5ca8 */ lui	$v0,0x8012
.L800a5cac:
/* 0x800a5cac */ addiu	$s4,$v0,-30288
.L800a5cb0:
/* 0x800a5cb0 */ sw	$t1,20($sp)
.L800a5cb4:
/* 0x800a5cb4 */ lw	$v1,4($s4)
.L800a5cb8:
/* 0x800a5cb8 */ addiu	$v0,$zero,251
.L800a5cbc:
/* 0x800a5cbc */ sw	$v0,28($sp)
.L800a5cc0:
/* 0x800a5cc0 */ jal	0x800ac2bc
.L800a5cc4:
/* 0x800a5cc4 */ sw	$v1,24($sp)
.L800a5cc8:
/* 0x800a5cc8 */ lui	$v0,0x800e
.L800a5ccc:
/* 0x800a5ccc */ lhu	$v1,0($s3)
.L800a5cd0:
/* 0x800a5cd0 */ lhu	$a0,2($s3)
.L800a5cd4:
/* 0x800a5cd4 */ addiu	$s3,$v0,7808
.L800a5cd8:
/* 0x800a5cd8 */ addiu	$v0,$s2,-58
.L800a5cdc:
/* 0x800a5cdc */ addu	$s2,$v0,$v1
.L800a5ce0:
/* 0x800a5ce0 */ addiu	$v0,$s7,4
.L800a5ce4:
/* 0x800a5ce4 */ addu	$s7,$v0,$a0
.L800a5ce8:
/* 0x800a5ce8 */ addiu	$v0,$s0,1
.L800a5cec:
/* 0x800a5cec */ blez	$v0,.L800a5edc
.L800a5cf0:
/* 0x800a5cf0 */ addu	$s5,$s4,$zero
.L800a5cf4:
/* 0x800a5cf4 */ addiu	$s4,$zero,251
.L800a5cf8:
/* 0x800a5cf8 */ addu	$s0,$v0,$zero
.L800a5cfc:
/* 0x800a5cfc */ addu	$a0,$s2,$zero
.L800a5d00:
/* 0x800a5d00 */ addu	$a1,$s7,$zero
.L800a5d04:
/* 0x800a5d04 */ addu	$a2,$s3,$zero
.L800a5d08:
/* 0x800a5d08 */ lw	$v0,4($s5)
.L800a5d0c:
/* 0x800a5d0c */ lw	$t1,40($sp)
.L800a5d10:
/* 0x800a5d10 */ addu	$a3,$zero,$zero
.L800a5d14:
/* 0x800a5d14 */ sw	$zero,16($sp)
.L800a5d18:
/* 0x800a5d18 */ sw	$s4,28($sp)
.L800a5d1c:
/* 0x800a5d1c */ sw	$t1,20($sp)
.L800a5d20:
/* 0x800a5d20 */ jal	0x800ac2bc
.L800a5d24:
/* 0x800a5d24 */ sw	$v0,24($sp)
.L800a5d28:
/* 0x800a5d28 */ lhu	$v0,0($s3)
.L800a5d2c:
/* 0x800a5d2c */ addiu	$s1,$s1,1
.L800a5d30:
/* 0x800a5d30 */ subu	$s2,$s2,$v0
.L800a5d34:
/* 0x800a5d34 */ slt	$v0,$s1,$s0
.L800a5d38:
/* 0x800a5d38 */ bne	$v0,$zero,.L800a5d00
.L800a5d3c:
/* 0x800a5d3c */ addu	$a0,$s2,$zero
.L800a5d40:
/* 0x800a5d40 */ j	.L800a5ee0
.L800a5d44:
/* 0x800a5d44 */ addiu	$v0,$zero,5
.L800a5d48:
/* 0x800a5d48 */ lui	$v0,0x800e
.L800a5d4c:
/* 0x800a5d4c */ lw	$t1,40($sp)
.L800a5d50:
/* 0x800a5d50 */ lw	$v0,2840($v0)
.L800a5d54:
/* 0x800a5d54 */ sll	$v1,$t1,0x5
.L800a5d58:
/* 0x800a5d58 */ addu	$v0,$v0,$v1
.L800a5d5c:
/* 0x800a5d5c */ bne	$s8,$zero,.L800a5d70
.L800a5d60:
/* 0x800a5d60 */ addiu	$a2,$v0,4884
.L800a5d64:
/* 0x800a5d64 */ lhu	$s6,10($a2)
.L800a5d68:
/* 0x800a5d68 */ j	.L800a5de4
.L800a5d6c:
/* 0x800a5d6c */ addiu	$s7,$s7,24
.L800a5d70:
/* 0x800a5d70 */ addiu	$v0,$zero,1
.L800a5d74:
/* 0x800a5d74 */ bne	$s8,$v0,.L800a5d88
.L800a5d78:
/* 0x800a5d78 */ addiu	$v0,$zero,2
.L800a5d7c:
/* 0x800a5d7c */ lb	$s6,0($a2)
.L800a5d80:
/* 0x800a5d80 */ j	.L800a5de4
.L800a5d84:
/* 0x800a5d84 */ addiu	$s7,$s7,24
.L800a5d88:
/* 0x800a5d88 */ bne	$s8,$v0,.L800a5dac
.L800a5d8c:
/* 0x800a5d8c */ addiu	$v0,$zero,3
.L800a5d90:
/* 0x800a5d90 */ lb	$v0,0($a2)
.L800a5d94:
/* 0x800a5d94 */ sll	$zero,$zero,0x0
.L800a5d98:
/* 0x800a5d98 */ sll	$v0,$v0,0x1
.L800a5d9c:
/* 0x800a5d9c */ addu	$v0,$a2,$v0
.L800a5da0:
/* 0x800a5da0 */ lh	$s6,4($v0)
.L800a5da4:
/* 0x800a5da4 */ j	.L800a5de4
.L800a5da8:
/* 0x800a5da8 */ addiu	$s7,$s7,24
.L800a5dac:
/* 0x800a5dac */ bne	$s8,$v0,.L800a5dc0
.L800a5db0:
/* 0x800a5db0 */ addiu	$v0,$zero,4
.L800a5db4:
/* 0x800a5db4 */ lb	$s6,1($a2)
.L800a5db8:
/* 0x800a5db8 */ j	.L800a5de4
.L800a5dbc:
/* 0x800a5dbc */ addiu	$s7,$s7,24
.L800a5dc0:
/* 0x800a5dc0 */ bne	$s8,$v0,.L800a5de0
.L800a5dc4:
/* 0x800a5dc4 */ addu	$s6,$zero,$zero
.L800a5dc8:
/* 0x800a5dc8 */ lui	$v0,0x8012
.L800a5dcc:
/* 0x800a5dcc */ lw	$a0,-30296($v0)
.L800a5dd0:
/* 0x800a5dd0 */ jal	0x800ac0b4
.L800a5dd4:
/* 0x800a5dd4 */ addiu	$s7,$s7,24
.L800a5dd8:
/* 0x800a5dd8 */ j	.L800a5de4
.L800a5ddc:
/* 0x800a5ddc */ andi	$s6,$v0,0xffff
.L800a5de0:
/* 0x800a5de0 */ addiu	$s7,$s7,24
.L800a5de4:
/* 0x800a5de4 */ addiu	$a0,$zero,-80
.L800a5de8:
/* 0x800a5de8 */ addu	$a1,$s7,$zero
.L800a5dec:
/* 0x800a5dec */ sra	$a2,$s6,0x9
.L800a5df0:
/* 0x800a5df0 */ andi	$a2,$a2,0x7f
.L800a5df4:
/* 0x800a5df4 */ addiu	$a2,$a2,2000
.L800a5df8:
/* 0x800a5df8 */ lui	$s1,0x8012
.L800a5dfc:
/* 0x800a5dfc */ addiu	$s1,$s1,-30288
.L800a5e00:
/* 0x800a5e00 */ addiu	$a3,$zero,4
.L800a5e04:
/* 0x800a5e04 */ sra	$s3,$s6,0x5
.L800a5e08:
/* 0x800a5e08 */ andi	$s3,$s3,0xf
.L800a5e0c:
/* 0x800a5e0c */ lw	$v0,4($s1)
.L800a5e10:
/* 0x800a5e10 */ andi	$s6,$s6,0x1f
.L800a5e14:
/* 0x800a5e14 */ sw	$zero,16($sp)
.L800a5e18:
/* 0x800a5e18 */ sw	$zero,24($sp)
.L800a5e1c:
/* 0x800a5e1c */ jal	0x800a4f18
.L800a5e20:
/* 0x800a5e20 */ sw	$v0,20($sp)
.L800a5e24:
/* 0x800a5e24 */ addiu	$a0,$zero,-16
.L800a5e28:
/* 0x800a5e28 */ addu	$a1,$s7,$zero
.L800a5e2c:
/* 0x800a5e2c */ lui	$s2,0x800e
.L800a5e30:
/* 0x800a5e30 */ addiu	$s2,$s2,7820
.L800a5e34:
/* 0x800a5e34 */ addiu	$s5,$zero,251
.L800a5e38:
/* 0x800a5e38 */ lui	$s0,0x800e
.L800a5e3c:
/* 0x800a5e3c */ addiu	$s0,$s0,8268
.L800a5e40:
/* 0x800a5e40 */ addiu	$s4,$s0,120
.L800a5e44:
/* 0x800a5e44 */ sw	$zero,20($sp)
.L800a5e48:
/* 0x800a5e48 */ sw	$s5,28($sp)
.L800a5e4c:
/* 0x800a5e4c */ lw	$v1,4($s1)
.L800a5e50:
/* 0x800a5e50 */ lh	$a3,120($s0)
.L800a5e54:
/* 0x800a5e54 */ lh	$v0,2($s4)
.L800a5e58:
/* 0x800a5e58 */ addu	$a2,$s2,$zero
.L800a5e5c:
/* 0x800a5e5c */ sw	$v0,16($sp)
.L800a5e60:
/* 0x800a5e60 */ jal	0x800ac2bc
.L800a5e64:
/* 0x800a5e64 */ sw	$v1,24($sp)
.L800a5e68:
/* 0x800a5e68 */ addu	$a0,$zero,$zero
.L800a5e6c:
/* 0x800a5e6c */ addu	$a1,$s7,$zero
.L800a5e70:
/* 0x800a5e70 */ addu	$a2,$s3,$zero
.L800a5e74:
/* 0x800a5e74 */ lw	$v0,4($s1)
.L800a5e78:
/* 0x800a5e78 */ addiu	$a3,$zero,2
.L800a5e7c:
/* 0x800a5e7c */ sw	$zero,16($sp)
.L800a5e80:
/* 0x800a5e80 */ sw	$zero,24($sp)
.L800a5e84:
/* 0x800a5e84 */ jal	0x800a4f18
.L800a5e88:
/* 0x800a5e88 */ sw	$v0,20($sp)
.L800a5e8c:
/* 0x800a5e8c */ addiu	$a0,$zero,32
.L800a5e90:
/* 0x800a5e90 */ addu	$a1,$s7,$zero
.L800a5e94:
/* 0x800a5e94 */ sw	$zero,20($sp)
.L800a5e98:
/* 0x800a5e98 */ sw	$s5,28($sp)
.L800a5e9c:
/* 0x800a5e9c */ lw	$v1,4($s1)
.L800a5ea0:
/* 0x800a5ea0 */ lh	$a3,120($s0)
.L800a5ea4:
/* 0x800a5ea4 */ lh	$v0,2($s4)
.L800a5ea8:
/* 0x800a5ea8 */ addu	$a2,$s2,$zero
.L800a5eac:
/* 0x800a5eac */ sw	$v0,16($sp)
.L800a5eb0:
/* 0x800a5eb0 */ jal	0x800ac2bc
.L800a5eb4:
/* 0x800a5eb4 */ sw	$v1,24($sp)
.L800a5eb8:
/* 0x800a5eb8 */ addiu	$a0,$zero,48
.L800a5ebc:
/* 0x800a5ebc */ addu	$a1,$s7,$zero
.L800a5ec0:
/* 0x800a5ec0 */ addu	$a2,$s6,$zero
.L800a5ec4:
/* 0x800a5ec4 */ lw	$v0,4($s1)
.L800a5ec8:
/* 0x800a5ec8 */ addiu	$a3,$zero,2
.L800a5ecc:
/* 0x800a5ecc */ sw	$zero,16($sp)
.L800a5ed0:
/* 0x800a5ed0 */ sw	$zero,24($sp)
.L800a5ed4:
/* 0x800a5ed4 */ jal	0x800a4f18
.L800a5ed8:
/* 0x800a5ed8 */ sw	$v0,20($sp)
.L800a5edc:
/* 0x800a5edc */ addiu	$v0,$zero,5
.L800a5ee0:
/* 0x800a5ee0 */ beq	$s8,$v0,.L800a618c
.L800a5ee4:
/* 0x800a5ee4 */ sll	$v0,$s8,0x1
.L800a5ee8:
/* 0x800a5ee8 */ lw	$t1,48($sp)
.L800a5eec:
/* 0x800a5eec */ sll	$zero,$zero,0x0
.L800a5ef0:
/* 0x800a5ef0 */ lh	$v1,12($t1)
.L800a5ef4:
/* 0x800a5ef4 */ addu	$v0,$v0,$s8
.L800a5ef8:
/* 0x800a5ef8 */ subu	$a0,$v1,$v0
.L800a5efc:
/* 0x800a5efc */ bgez	$a0,.L800a5f0c
.L800a5f00:
/* 0x800a5f00 */ slti	$v0,$a0,9
.L800a5f04:
/* 0x800a5f04 */ j	.L800a5f18
.L800a5f08:
/* 0x800a5f08 */ addu	$a0,$zero,$zero
.L800a5f0c:
/* 0x800a5f0c */ bne	$v0,$zero,.L800a5f1c
.L800a5f10:
/* 0x800a5f10 */ addiu	$v0,$zero,4
.L800a5f14:
/* 0x800a5f14 */ addiu	$a0,$zero,8
.L800a5f18:
/* 0x800a5f18 */ addiu	$v0,$zero,4
.L800a5f1c:
/* 0x800a5f1c */ bne	$s8,$v0,.L800a5f2c
.L800a5f20:
/* 0x800a5f20 */ slti	$v0,$a0,5
.L800a5f24:
/* 0x800a5f24 */ addu	$a0,$zero,$zero
.L800a5f28:
/* 0x800a5f28 */ slti	$v0,$a0,5
.L800a5f2c:
/* 0x800a5f2c */ beq	$v0,$zero,.L800a6070
.L800a5f30:
/* 0x800a5f30 */ addiu	$v0,$zero,1
.L800a5f34:
/* 0x800a5f34 */ lw	$t1,104($sp)
.L800a5f38:
/* 0x800a5f38 */ sll	$zero,$zero,0x0
.L800a5f3c:
/* 0x800a5f3c */ lbu	$v1,2($t1)
.L800a5f40:
/* 0x800a5f40 */ sll	$zero,$zero,0x0
.L800a5f44:
/* 0x800a5f44 */ bne	$v1,$v0,.L800a5f68
.L800a5f48:
/* 0x800a5f48 */ addiu	$s4,$zero,4
.L800a5f4c:
/* 0x800a5f4c */ lui	$v0,0x800b
.L800a5f50:
/* 0x800a5f50 */ lw	$v0,-14104($v0)
.L800a5f54:
/* 0x800a5f54 */ sll	$zero,$zero,0x0
.L800a5f58:
/* 0x800a5f58 */ lhu	$v0,32($v0)
.L800a5f5c:
/* 0x800a5f5c */ sll	$zero,$zero,0x0
.L800a5f60:
/* 0x800a5f60 */ srl	$v0,$v0,0x4
.L800a5f64:
/* 0x800a5f64 */ andi	$s4,$v0,0x3
.L800a5f68:
/* 0x800a5f68 */ lui	$v0,0x800e
.L800a5f6c:
/* 0x800a5f6c */ lw	$t1,40($sp)
.L800a5f70:
/* 0x800a5f70 */ addiu	$v0,$v0,8132
.L800a5f74:
/* 0x800a5f74 */ sll	$t0,$t1,0x1
.L800a5f78:
/* 0x800a5f78 */ addu	$v1,$t0,$t1
.L800a5f7c:
/* 0x800a5f7c */ sll	$v1,$v1,0x2
.L800a5f80:
/* 0x800a5f80 */ addu	$s3,$v1,$v0
.L800a5f84:
/* 0x800a5f84 */ addiu	$v0,$zero,4
.L800a5f88:
/* 0x800a5f88 */ lhu	$v1,0($s3)
.L800a5f8c:
/* 0x800a5f8c */ subu	$v0,$v0,$a0
.L800a5f90:
/* 0x800a5f90 */ mult	$v1,$v0
.L800a5f94:
/* 0x800a5f94 */ mflo	$v1
.L800a5f98:
/* 0x800a5f98 */ bgez	$v1,.L800a5fa4
.L800a5f9c:
/* 0x800a5f9c */ addiu	$a0,$sp,32
.L800a5fa0:
/* 0x800a5fa0 */ addiu	$v1,$v1,3
.L800a5fa4:
/* 0x800a5fa4 */ addu	$a1,$s3,$zero
.L800a5fa8:
/* 0x800a5fa8 */ addu	$a2,$zero,$zero
.L800a5fac:
/* 0x800a5fac */ sra	$v1,$v1,0x2
.L800a5fb0:
/* 0x800a5fb0 */ addu	$a3,$a2,$zero
.L800a5fb4:
/* 0x800a5fb4 */ sh	$v1,36($sp)
.L800a5fb8:
/* 0x800a5fb8 */ sll	$v1,$v1,0x10
.L800a5fbc:
/* 0x800a5fbc */ sra	$v1,$v1,0x10
.L800a5fc0:
/* 0x800a5fc0 */ lui	$s0,0x8012
.L800a5fc4:
/* 0x800a5fc4 */ addiu	$s0,$s0,-30288
.L800a5fc8:
/* 0x800a5fc8 */ lw	$t1,44($sp)
.L800a5fcc:
/* 0x800a5fcc */ lhu	$v0,2($s3)
.L800a5fd0:
/* 0x800a5fd0 */ addu	$t0,$t1,$t0
.L800a5fd4:
/* 0x800a5fd4 */ sh	$v0,38($sp)
.L800a5fd8:
/* 0x800a5fd8 */ lhu	$v0,0($s3)
.L800a5fdc:
/* 0x800a5fdc */ lw	$t1,56($sp)
.L800a5fe0:
/* 0x800a5fe0 */ subu	$v0,$v0,$v1
.L800a5fe4:
/* 0x800a5fe4 */ srl	$v1,$v0,0x1f
.L800a5fe8:
/* 0x800a5fe8 */ addu	$v0,$v0,$v1
.L800a5fec:
/* 0x800a5fec */ sra	$v0,$v0,0x1
.L800a5ff0:
/* 0x800a5ff0 */ lhu	$v1,4($t0)
.L800a5ff4:
/* 0x800a5ff4 */ addiu	$v0,$v0,-314
.L800a5ff8:
/* 0x800a5ff8 */ addu	$v1,$v1,$v0
.L800a5ffc:
/* 0x800a5ffc */ addu	$v1,$v1,$t1
.L800a6000:
/* 0x800a6000 */ lw	$t1,44($sp)
.L800a6004:
/* 0x800a6004 */ addiu	$s1,$zero,251
.L800a6008:
/* 0x800a6008 */ sh	$v1,32($sp)
.L800a600c:
/* 0x800a600c */ lhu	$v0,2($t1)
.L800a6010:
/* 0x800a6010 */ lhu	$v1,14($t1)
.L800a6014:
/* 0x800a6014 */ lw	$t0,4($s0)
.L800a6018:
/* 0x800a6018 */ addu	$v0,$v0,$v1
.L800a601c:
/* 0x800a601c */ sh	$v0,34($sp)
.L800a6020:
/* 0x800a6020 */ sw	$s4,16($sp)
.L800a6024:
/* 0x800a6024 */ sw	$t0,20($sp)
.L800a6028:
/* 0x800a6028 */ sw	$s1,24($sp)
.L800a602c:
/* 0x800a602c */ jal	0x800ac52c
.L800a6030:
/* 0x800a6030 */ sw	$zero,28($sp)
.L800a6034:
/* 0x800a6034 */ addiu	$a0,$sp,32
.L800a6038:
/* 0x800a6038 */ addu	$a1,$s3,$zero
.L800a603c:
/* 0x800a603c */ addiu	$a2,$zero,1
.L800a6040:
/* 0x800a6040 */ addu	$a3,$zero,$zero
.L800a6044:
/* 0x800a6044 */ lw	$t1,44($sp)
.L800a6048:
/* 0x800a6048 */ lhu	$v0,32($sp)
.L800a604c:
/* 0x800a604c */ lhu	$v1,8($t1)
.L800a6050:
/* 0x800a6050 */ lw	$t0,4($s0)
.L800a6054:
/* 0x800a6054 */ addu	$v0,$v0,$v1
.L800a6058:
/* 0x800a6058 */ sh	$v0,32($sp)
.L800a605c:
/* 0x800a605c */ sw	$s4,16($sp)
.L800a6060:
/* 0x800a6060 */ sw	$t0,20($sp)
.L800a6064:
/* 0x800a6064 */ sw	$s1,24($sp)
.L800a6068:
/* 0x800a6068 */ j	.L800a61d8
.L800a606c:
/* 0x800a606c */ sw	$zero,28($sp)
.L800a6070:
/* 0x800a6070 */ lui	$v1,0x800e
.L800a6074:
/* 0x800a6074 */ lhu	$t0,7808($v1)
.L800a6078:
/* 0x800a6078 */ addiu	$v0,$a0,-4
.L800a607c:
/* 0x800a607c */ mult	$t0,$v0
.L800a6080:
/* 0x800a6080 */ mflo	$v0
.L800a6084:
/* 0x800a6084 */ bgez	$v0,.L800a6090
.L800a6088:
/* 0x800a6088 */ addiu	$s3,$v1,7808
.L800a608c:
/* 0x800a608c */ addiu	$v0,$v0,3
.L800a6090:
/* 0x800a6090 */ addiu	$a0,$sp,32
.L800a6094:
/* 0x800a6094 */ addu	$a1,$s3,$zero
.L800a6098:
/* 0x800a6098 */ sra	$v0,$v0,0x2
.L800a609c:
/* 0x800a609c */ addu	$a2,$zero,$zero
.L800a60a0:
/* 0x800a60a0 */ sh	$v0,36($sp)
.L800a60a4:
/* 0x800a60a4 */ sll	$v0,$v0,0x10
.L800a60a8:
/* 0x800a60a8 */ sra	$v0,$v0,0x10
.L800a60ac:
/* 0x800a60ac */ subu	$v0,$t0,$v0
.L800a60b0:
/* 0x800a60b0 */ lui	$s0,0x8012
.L800a60b4:
/* 0x800a60b4 */ addiu	$s0,$s0,-30288
.L800a60b8:
/* 0x800a60b8 */ addiu	$s1,$zero,251
.L800a60bc:
/* 0x800a60bc */ lw	$t1,40($sp)
.L800a60c0:
/* 0x800a60c0 */ lhu	$v1,2($s3)
.L800a60c4:
/* 0x800a60c4 */ sll	$a3,$t1,0x1
.L800a60c8:
/* 0x800a60c8 */ sh	$v1,38($sp)
.L800a60cc:
/* 0x800a60cc */ srl	$v1,$v0,0x1f
.L800a60d0:
/* 0x800a60d0 */ addu	$v0,$v0,$v1
.L800a60d4:
/* 0x800a60d4 */ sra	$v0,$v0,0x1
.L800a60d8:
/* 0x800a60d8 */ lw	$t1,44($sp)
.L800a60dc:
/* 0x800a60dc */ addiu	$v0,$v0,-316
.L800a60e0:
/* 0x800a60e0 */ addu	$a3,$t1,$a3
.L800a60e4:
/* 0x800a60e4 */ lhu	$v1,4($a3)
.L800a60e8:
/* 0x800a60e8 */ lw	$t1,56($sp)
.L800a60ec:
/* 0x800a60ec */ addu	$v1,$v1,$v0
.L800a60f0:
/* 0x800a60f0 */ addu	$v1,$v1,$t1
.L800a60f4:
/* 0x800a60f4 */ lw	$t1,44($sp)
.L800a60f8:
/* 0x800a60f8 */ addu	$a3,$a2,$zero
.L800a60fc:
/* 0x800a60fc */ sh	$v1,32($sp)
.L800a6100:
/* 0x800a6100 */ lhu	$v1,2($t1)
.L800a6104:
/* 0x800a6104 */ lhu	$v0,14($t1)
.L800a6108:
/* 0x800a6108 */ lw	$t1,40($sp)
.L800a610c:
/* 0x800a610c */ addu	$v1,$v1,$v0
.L800a6110:
/* 0x800a6110 */ lw	$v0,4($s0)
.L800a6114:
/* 0x800a6114 */ addiu	$v1,$v1,-2
.L800a6118:
/* 0x800a6118 */ sh	$v1,34($sp)
.L800a611c:
/* 0x800a611c */ sw	$t1,16($sp)
.L800a6120:
/* 0x800a6120 */ sw	$s1,24($sp)
.L800a6124:
/* 0x800a6124 */ sw	$zero,28($sp)
.L800a6128:
/* 0x800a6128 */ srl	$v1,$v0,0x1f
.L800a612c:
/* 0x800a612c */ addu	$v0,$v0,$v1
.L800a6130:
/* 0x800a6130 */ sra	$v0,$v0,0x1
.L800a6134:
/* 0x800a6134 */ jal	0x800ac52c
.L800a6138:
/* 0x800a6138 */ sw	$v0,20($sp)
.L800a613c:
/* 0x800a613c */ addiu	$a0,$sp,32
.L800a6140:
/* 0x800a6140 */ addu	$a1,$s3,$zero
.L800a6144:
/* 0x800a6144 */ addu	$a2,$zero,$zero
.L800a6148:
/* 0x800a6148 */ addu	$a3,$a2,$zero
.L800a614c:
/* 0x800a614c */ lhu	$t0,32($sp)
.L800a6150:
/* 0x800a6150 */ lw	$t1,44($sp)
.L800a6154:
/* 0x800a6154 */ lw	$v1,4($s0)
.L800a6158:
/* 0x800a6158 */ addiu	$t0,$t0,-2
.L800a615c:
/* 0x800a615c */ lhu	$v0,8($t1)
.L800a6160:
/* 0x800a6160 */ lw	$t1,40($sp)
.L800a6164:
/* 0x800a6164 */ addu	$v0,$v0,$t0
.L800a6168:
/* 0x800a6168 */ sh	$v0,32($sp)
.L800a616c:
/* 0x800a616c */ srl	$v0,$v1,0x1f
.L800a6170:
/* 0x800a6170 */ addu	$v1,$v1,$v0
.L800a6174:
/* 0x800a6174 */ sra	$v1,$v1,0x1
.L800a6178:
/* 0x800a6178 */ sw	$t1,16($sp)
.L800a617c:
/* 0x800a617c */ sw	$v1,20($sp)
.L800a6180:
/* 0x800a6180 */ sw	$s1,24($sp)
.L800a6184:
/* 0x800a6184 */ j	.L800a61d8
.L800a6188:
/* 0x800a6188 */ sw	$zero,28($sp)
.L800a618c:
/* 0x800a618c */ lw	$t1,104($sp)
.L800a6190:
/* 0x800a6190 */ sll	$zero,$zero,0x0
.L800a6194:
/* 0x800a6194 */ lbu	$v1,2($t1)
.L800a6198:
/* 0x800a6198 */ addiu	$v0,$zero,1
.L800a619c:
/* 0x800a619c */ bne	$v1,$v0,.L800a61e0
.L800a61a0:
/* 0x800a61a0 */ addiu	$a0,$sp,32
.L800a61a4:
/* 0x800a61a4 */ lui	$a1,0x800e
.L800a61a8:
/* 0x800a61a8 */ addiu	$a1,$a1,7832
.L800a61ac:
/* 0x800a61ac */ addu	$a2,$zero,$zero
.L800a61b0:
/* 0x800a61b0 */ lw	$t1,52($sp)
.L800a61b4:
/* 0x800a61b4 */ addu	$a3,$a2,$zero
.L800a61b8:
/* 0x800a61b8 */ sw	$zero,16($sp)
.L800a61bc:
/* 0x800a61bc */ sw	$v1,28($sp)
.L800a61c0:
/* 0x800a61c0 */ srl	$v0,$t1,0x1f
.L800a61c4:
/* 0x800a61c4 */ addu	$v0,$t1,$v0
.L800a61c8:
/* 0x800a61c8 */ sra	$v0,$v0,0x1
.L800a61cc:
/* 0x800a61cc */ sw	$v0,20($sp)
.L800a61d0:
/* 0x800a61d0 */ addiu	$v0,$zero,251
.L800a61d4:
/* 0x800a61d4 */ sw	$v0,24($sp)
.L800a61d8:
/* 0x800a61d8 */ jal	0x800ac52c
.L800a61dc:
/* 0x800a61dc */ sll	$zero,$zero,0x0
.L800a61e0:
/* 0x800a61e0 */ lw	$ra,100($sp)
.L800a61e4:
/* 0x800a61e4 */ lw	$s8,96($sp)
.L800a61e8:
/* 0x800a61e8 */ lw	$s7,92($sp)
.L800a61ec:
/* 0x800a61ec */ lw	$s6,88($sp)
.L800a61f0:
/* 0x800a61f0 */ lw	$s5,84($sp)
.L800a61f4:
/* 0x800a61f4 */ lw	$s4,80($sp)
.L800a61f8:
/* 0x800a61f8 */ lw	$s3,76($sp)
.L800a61fc:
/* 0x800a61fc */ lw	$s2,72($sp)
.L800a6200:
/* 0x800a6200 */ lw	$s1,68($sp)
.L800a6204:
/* 0x800a6204 */ lw	$s0,64($sp)
.L800a6208:
/* 0x800a6208 */ jr	$ra
.L800a620c:
/* 0x800a620c */ addiu	$sp,$sp,104
.size FUN_800a50c8, .-FUN_800a50c8
