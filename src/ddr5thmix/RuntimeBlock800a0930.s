.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0930
.globl FUN_800a0930
.type FUN_800a0930, @function
FUN_800a0930:
.L800a0930:
/* 0x800a0930 */ addiu	$sp,$sp,-32
.L800a0934:
/* 0x800a0934 */ sw	$s2,24($sp)
.L800a0938:
/* 0x800a0938 */ lui	$s2,0x800b
.L800a093c:
/* 0x800a093c */ lw	$a1,-14100($s2)
.L800a0940:
/* 0x800a0940 */ sw	$s1,20($sp)
.L800a0944:
/* 0x800a0944 */ lui	$s1,0x800e
.L800a0948:
/* 0x800a0948 */ sw	$s0,16($sp)
.L800a094c:
/* 0x800a094c */ addiu	$s0,$zero,1
.L800a0950:
/* 0x800a0950 */ sw	$ra,28($sp)
.L800a0954:
/* 0x800a0954 */ lbu	$v0,81($a1)
.L800a0958:
/* 0x800a0958 */ lbu	$a0,5528($s1)
.L800a095c:
/* 0x800a095c */ sll	$v1,$v0,0x3
.L800a0960:
/* 0x800a0960 */ subu	$v1,$v1,$v0
.L800a0964:
/* 0x800a0964 */ sll	$v1,$v1,0x2
.L800a0968:
/* 0x800a0968 */ lui	$v0,0x800e
.L800a096c:
/* 0x800a096c */ addiu	$v0,$v0,5136
.L800a0970:
/* 0x800a0970 */ beq	$a0,$s0,.L800a09c4
.L800a0974:
/* 0x800a0974 */ addu	$v1,$v1,$v0
.L800a0978:
/* 0x800a0978 */ slti	$v0,$a0,2
.L800a097c:
/* 0x800a097c */ beq	$v0,$zero,.L800a0994
.L800a0980:
/* 0x800a0980 */ sll	$zero,$zero,0x0
.L800a0984:
/* 0x800a0984 */ beq	$a0,$zero,.L800a09a8
.L800a0988:
/* 0x800a0988 */ sll	$zero,$zero,0x0
.L800a098c:
/* 0x800a098c */ j	.L800a0a14
.L800a0990:
/* 0x800a0990 */ sll	$zero,$zero,0x0
.L800a0994:
/* 0x800a0994 */ addiu	$v0,$zero,2
.L800a0998:
/* 0x800a0998 */ beq	$a0,$v0,.L800a09e0
.L800a099c:
/* 0x800a099c */ sll	$zero,$zero,0x0
.L800a09a0:
/* 0x800a09a0 */ j	.L800a0a14
.L800a09a4:
/* 0x800a09a4 */ sll	$zero,$zero,0x0
.L800a09a8:
/* 0x800a09a8 */ sb	$zero,0($a1)
.L800a09ac:
/* 0x800a09ac */ lh	$a0,20($v1)
.L800a09b0:
/* 0x800a09b0 */ lh	$a1,22($v1)
.L800a09b4:
/* 0x800a09b4 */ jal	0x8009f820
.L800a09b8:
/* 0x800a09b8 */ sll	$zero,$zero,0x0
.L800a09bc:
/* 0x800a09bc */ j	.L800a0a14
.L800a09c0:
/* 0x800a09c0 */ sb	$s0,5528($s1)
.L800a09c4:
/* 0x800a09c4 */ jal	0x8009f390
.L800a09c8:
/* 0x800a09c8 */ sll	$zero,$zero,0x0
.L800a09cc:
/* 0x800a09cc */ andi	$v0,$v0,0xff
.L800a09d0:
/* 0x800a09d0 */ beq	$v0,$zero,.L800a0a14
.L800a09d4:
/* 0x800a09d4 */ addiu	$v0,$zero,2
.L800a09d8:
/* 0x800a09d8 */ j	.L800a0a14
.L800a09dc:
/* 0x800a09dc */ sb	$v0,5528($s1)
.L800a09e0:
/* 0x800a09e0 */ lbu	$v0,26($v1)
.L800a09e4:
/* 0x800a09e4 */ sll	$zero,$zero,0x0
.L800a09e8:
/* 0x800a09e8 */ sb	$v0,0($a1)
.L800a09ec:
/* 0x800a09ec */ lbu	$v0,24($v1)
.L800a09f0:
/* 0x800a09f0 */ sll	$zero,$zero,0x0
.L800a09f4:
/* 0x800a09f4 */ bne	$v0,$s0,.L800a0a04
.L800a09f8:
/* 0x800a09f8 */ sll	$zero,$zero,0x0
.L800a09fc:
/* 0x800a09fc */ jal	0x800a0c04
.L800a0a00:
/* 0x800a0a00 */ sll	$zero,$zero,0x0
.L800a0a04:
/* 0x800a0a04 */ lw	$v1,-14100($s2)
.L800a0a08:
/* 0x800a0a08 */ addiu	$v0,$zero,8
.L800a0a0c:
/* 0x800a0a0c */ sb	$v0,64($v1)
.L800a0a10:
/* 0x800a0a10 */ sb	$zero,5528($s1)
.L800a0a14:
/* 0x800a0a14 */ lw	$ra,28($sp)
.L800a0a18:
/* 0x800a0a18 */ lw	$s2,24($sp)
.L800a0a1c:
/* 0x800a0a1c */ lw	$s1,20($sp)
.L800a0a20:
/* 0x800a0a20 */ lw	$s0,16($sp)
.L800a0a24:
/* 0x800a0a24 */ jr	$ra
.L800a0a28:
/* 0x800a0a28 */ addiu	$sp,$sp,32
.size FUN_800a0930, .-FUN_800a0930
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0a2c
.globl FUN_800a0a2c
.type FUN_800a0a2c, @function
FUN_800a0a2c:
.L800a0a2c:
/* 0x800a0a2c */ addiu	$sp,$sp,-40
.L800a0a30:
/* 0x800a0a30 */ sw	$s0,24($sp)
.L800a0a34:
/* 0x800a0a34 */ lui	$s0,0x800e
.L800a0a38:
/* 0x800a0a38 */ lbu	$a0,5528($s0)
.L800a0a3c:
/* 0x800a0a3c */ sw	$s1,28($sp)
.L800a0a40:
/* 0x800a0a40 */ addiu	$s1,$zero,1
.L800a0a44:
/* 0x800a0a44 */ beq	$a0,$s1,.L800a0ac4
.L800a0a48:
/* 0x800a0a48 */ sw	$ra,32($sp)
.L800a0a4c:
/* 0x800a0a4c */ slti	$v0,$a0,2
.L800a0a50:
/* 0x800a0a50 */ beq	$v0,$zero,.L800a0a68
.L800a0a54:
/* 0x800a0a54 */ sll	$zero,$zero,0x0
.L800a0a58:
/* 0x800a0a58 */ beq	$a0,$zero,.L800a0a84
.L800a0a5c:
/* 0x800a0a5c */ addiu	$a0,$sp,16
.L800a0a60:
/* 0x800a0a60 */ j	.L800a0b44
.L800a0a64:
/* 0x800a0a64 */ sll	$zero,$zero,0x0
.L800a0a68:
/* 0x800a0a68 */ addiu	$v0,$zero,2
.L800a0a6c:
/* 0x800a0a6c */ beq	$a0,$v0,.L800a0b18
.L800a0a70:
/* 0x800a0a70 */ addiu	$v0,$zero,3
.L800a0a74:
/* 0x800a0a74 */ beq	$a0,$v0,.L800a0b34
.L800a0a78:
/* 0x800a0a78 */ lui	$v0,0x800b
.L800a0a7c:
/* 0x800a0a7c */ j	.L800a0b44
.L800a0a80:
/* 0x800a0a80 */ sll	$zero,$zero,0x0
.L800a0a84:
/* 0x800a0a84 */ addu	$a1,$zero,$zero
.L800a0a88:
/* 0x800a0a88 */ addiu	$v0,$zero,640
.L800a0a8c:
/* 0x800a0a8c */ sh	$v0,20($sp)
.L800a0a90:
/* 0x800a0a90 */ addiu	$v0,$zero,480
.L800a0a94:
/* 0x800a0a94 */ addu	$a2,$a1,$zero
.L800a0a98:
/* 0x800a0a98 */ addu	$a3,$a1,$zero
.L800a0a9c:
/* 0x800a0a9c */ sh	$zero,16($sp)
.L800a0aa0:
/* 0x800a0aa0 */ sh	$zero,18($sp)
.L800a0aa4:
/* 0x800a0aa4 */ jal	0x80038778
.L800a0aa8:
/* 0x800a0aa8 */ sh	$v0,22($sp)
.L800a0aac:
/* 0x800a0aac */ lui	$v0,0x800b
.L800a0ab0:
/* 0x800a0ab0 */ lw	$v0,-14100($v0)
.L800a0ab4:
/* 0x800a0ab4 */ sll	$zero,$zero,0x0
.L800a0ab8:
/* 0x800a0ab8 */ sb	$zero,0($v0)
.L800a0abc:
/* 0x800a0abc */ j	.L800a0b44
.L800a0ac0:
/* 0x800a0ac0 */ sb	$s1,5528($s0)
.L800a0ac4:
/* 0x800a0ac4 */ lui	$v0,0x800b
.L800a0ac8:
/* 0x800a0ac8 */ lw	$v1,-14100($v0)
.L800a0acc:
/* 0x800a0acc */ lui	$v0,0x800f
.L800a0ad0:
/* 0x800a0ad0 */ sb	$a0,10497($v0)
.L800a0ad4:
/* 0x800a0ad4 */ lbu	$v0,81($v1)
.L800a0ad8:
/* 0x800a0ad8 */ sll	$zero,$zero,0x0
.L800a0adc:
/* 0x800a0adc */ bne	$v0,$zero,.L800a0af0
.L800a0ae0:
/* 0x800a0ae0 */ addiu	$a0,$zero,640
.L800a0ae4:
/* 0x800a0ae4 */ addiu	$a0,$zero,320
.L800a0ae8:
/* 0x800a0ae8 */ j	.L800a0af4
.L800a0aec:
/* 0x800a0aec */ addiu	$a1,$zero,240
.L800a0af0:
/* 0x800a0af0 */ addiu	$a1,$zero,480
.L800a0af4:
/* 0x800a0af4 */ jal	0x8009f820
.L800a0af8:
/* 0x800a0af8 */ sll	$zero,$zero,0x0
.L800a0afc:
/* 0x800a0afc */ lui	$v1,0x800f
.L800a0b00:
/* 0x800a0b00 */ addiu	$v0,$zero,1
.L800a0b04:
/* 0x800a0b04 */ sb	$v0,10497($v1)
.L800a0b08:
/* 0x800a0b08 */ lui	$v1,0x800e
.L800a0b0c:
/* 0x800a0b0c */ addiu	$v0,$zero,2
.L800a0b10:
/* 0x800a0b10 */ j	.L800a0b44
.L800a0b14:
/* 0x800a0b14 */ sb	$v0,5528($v1)
.L800a0b18:
/* 0x800a0b18 */ jal	0x8009f390
.L800a0b1c:
/* 0x800a0b1c */ sll	$zero,$zero,0x0
.L800a0b20:
/* 0x800a0b20 */ andi	$v0,$v0,0xff
.L800a0b24:
/* 0x800a0b24 */ beq	$v0,$zero,.L800a0b44
.L800a0b28:
/* 0x800a0b28 */ addiu	$v0,$zero,3
.L800a0b2c:
/* 0x800a0b2c */ j	.L800a0b44
.L800a0b30:
/* 0x800a0b30 */ sb	$v0,5528($s0)
.L800a0b34:
/* 0x800a0b34 */ lw	$v1,-14100($v0)
.L800a0b38:
/* 0x800a0b38 */ addiu	$v0,$zero,11
.L800a0b3c:
/* 0x800a0b3c */ sb	$v0,64($v1)
.L800a0b40:
/* 0x800a0b40 */ sb	$zero,5528($s0)
.L800a0b44:
/* 0x800a0b44 */ lw	$ra,32($sp)
.L800a0b48:
/* 0x800a0b48 */ lw	$s1,28($sp)
.L800a0b4c:
/* 0x800a0b4c */ lw	$s0,24($sp)
.L800a0b50:
/* 0x800a0b50 */ jr	$ra
.L800a0b54:
/* 0x800a0b54 */ addiu	$sp,$sp,40
.size FUN_800a0a2c, .-FUN_800a0a2c
