.set noreorder
.set noat
.set nomacro

.section .text.FUN_80083974
.globl FUN_80083974
.type FUN_80083974, @function
FUN_80083974:
/* Runtime gameplay/resource helper. */
.L80083974:
/* 0x80083974 */ addiu	$sp,$sp,-24
.L80083978:
/* 0x80083978 */ addiu	$t6,$zero,-1
.L8008397c:
/* 0x8008397c */ lui	$v0,0x800f
.L80083980:
/* 0x80083980 */ addiu	$t7,$v0,15276
.L80083984:
/* 0x80083984 */ addu	$t4,$t7,$zero
.L80083988:
/* 0x80083988 */ addu	$t5,$zero,$zero
.L8008398c:
/* 0x8008398c */ lh	$v0,8($t4)
.L80083990:
/* 0x80083990 */ sll	$zero,$zero,0x0
.L80083994:
/* 0x80083994 */ bgez	$v0,.L800839c0
.L80083998:
/* 0x80083998 */ addu	$a0,$zero,$zero
.L8008399c:
/* 0x8008399c */ lui	$v0,0x800f
.L800839a0:
/* 0x800839a0 */ addiu	$a1,$v0,15276
.L800839a4:
/* 0x800839a4 */ addu	$v1,$t5,$zero
.L800839a8:
/* 0x800839a8 */ addiu	$v1,$v1,16
.L800839ac:
/* 0x800839ac */ addu	$v0,$v1,$a1
.L800839b0:
/* 0x800839b0 */ lh	$v0,8($v0)
.L800839b4:
/* 0x800839b4 */ sll	$zero,$zero,0x0
.L800839b8:
/* 0x800839b8 */ bltz	$v0,.L800839a8
.L800839bc:
/* 0x800839bc */ addiu	$a0,$a0,1
.L800839c0:
/* 0x800839c0 */ addu	$t2,$zero,$zero
.L800839c4:
/* 0x800839c4 */ addu	$t3,$t4,$zero
.L800839c8:
/* 0x800839c8 */ sll	$v0,$a0,0x4
.L800839cc:
/* 0x800839cc */ addu	$t0,$t3,$v0
.L800839d0:
/* 0x800839d0 */ lh	$v1,6($t0)
.L800839d4:
/* 0x800839d4 */ sll	$zero,$zero,0x0
.L800839d8:
/* 0x800839d8 */ beq	$v1,$zero,.L80083bc0
.L800839dc:
/* 0x800839dc */ sll	$v0,$v1,0x4
.L800839e0:
/* 0x800839e0 */ addu	$a3,$t3,$v0
.L800839e4:
/* 0x800839e4 */ slt	$v0,$t2,$v1
.L800839e8:
/* 0x800839e8 */ beq	$v0,$zero,.L80083ad4
.L800839ec:
/* 0x800839ec */ sll	$v0,$t2,0x4
.L800839f0:
/* 0x800839f0 */ addu	$t1,$v0,$t3
.L800839f4:
/* 0x800839f4 */ lh	$v0,8($t1)
.L800839f8:
/* 0x800839f8 */ sll	$zero,$zero,0x0
.L800839fc:
/* 0x800839fc */ bne	$v0,$t6,.L80083ac0
.L80083a00:
/* 0x80083a00 */ sll	$zero,$zero,0x0
.L80083a04:
/* 0x80083a04 */ lw	$v1,0($t1)
.L80083a08:
/* 0x80083a08 */ lw	$a1,0($t0)
.L80083a0c:
/* 0x80083a0c */ sll	$zero,$zero,0x0
.L80083a10:
/* 0x80083a10 */ slt	$v0,$a1,$v1
.L80083a14:
/* 0x80083a14 */ beq	$v0,$zero,.L80083a6c
.L80083a18:
/* 0x80083a18 */ subu	$a2,$v1,$a1
.L80083a1c:
/* 0x80083a1c */ lh	$a0,8($a3)
.L80083a20:
/* 0x80083a20 */ lh	$v1,8($t0)
.L80083a24:
/* 0x80083a24 */ lw	$v0,0($a3)
.L80083a28:
/* 0x80083a28 */ subu	$v1,$a0,$v1
.L80083a2c:
/* 0x80083a2c */ subu	$v0,$v0,$a1
.L80083a30:
/* 0x80083a30 */ srl	$a0,$v0,0x3
.L80083a34:
/* 0x80083a34 */ bne	$a0,$zero,.L80083a44
.L80083a38:
/* 0x80083a38 */ sll	$zero,$zero,0x0
.L80083a3c:
/* 0x80083a3c */ j 0x0083a60
.L80083a40:
/* 0x80083a40 */ addu	$a0,$v1,$zero
.L80083a44:
/* 0x80083a44 */ srl	$v0,$a2,0x3
.L80083a48:
/* 0x80083a48 */ mult	$v0,$v1
.L80083a4c:
/* 0x80083a4c */ mflo	$v1
.L80083a50:
/* 0x80083a50 */ sll	$zero,$zero,0x0
.L80083a54:
/* 0x80083a54 */ sll	$zero,$zero,0x0
.L80083a58:
/* 0x80083a58 */ divu	$zero,$v1,$a0
.L80083a5c:
/* 0x80083a5c */ mflo	$a0
.L80083a60:
/* 0x80083a60 */ lhu	$v0,8($t0)
.L80083a64:
/* 0x80083a64 */ j 0x0083abc
.L80083a68:
/* 0x80083a68 */ addu	$v0,$v0,$a0
.L80083a6c:
/* 0x80083a6c */ subu	$a2,$a1,$v1
.L80083a70:
/* 0x80083a70 */ lh	$a0,8($a3)
.L80083a74:
/* 0x80083a74 */ lh	$v1,8($t0)
.L80083a78:
/* 0x80083a78 */ lw	$v0,0($a3)
.L80083a7c:
/* 0x80083a7c */ subu	$v1,$a0,$v1
.L80083a80:
/* 0x80083a80 */ subu	$v0,$v0,$a1
.L80083a84:
/* 0x80083a84 */ srl	$a0,$v0,0x3
.L80083a88:
/* 0x80083a88 */ bne	$a0,$zero,.L80083a98
.L80083a8c:
/* 0x80083a8c */ srl	$v0,$a2,0x3
.L80083a90:
/* 0x80083a90 */ j 0x0083ab0
.L80083a94:
/* 0x80083a94 */ addu	$a0,$v1,$zero
.L80083a98:
/* 0x80083a98 */ mult	$v0,$v1
.L80083a9c:
/* 0x80083a9c */ mflo	$v1
.L80083aa0:
/* 0x80083aa0 */ sll	$zero,$zero,0x0
.L80083aa4:
/* 0x80083aa4 */ sll	$zero,$zero,0x0
.L80083aa8:
/* 0x80083aa8 */ divu	$zero,$v1,$a0
.L80083aac:
/* 0x80083aac */ mflo	$a0
.L80083ab0:
/* 0x80083ab0 */ lhu	$v0,8($t0)
.L80083ab4:
/* 0x80083ab4 */ sll	$zero,$zero,0x0
.L80083ab8:
/* 0x80083ab8 */ subu	$v0,$v0,$a0
.L80083abc:
/* 0x80083abc */ sh	$v0,8($t1)
.L80083ac0:
/* 0x80083ac0 */ lh	$v0,6($t0)
.L80083ac4:
/* 0x80083ac4 */ addiu	$t2,$t2,1
.L80083ac8:
/* 0x80083ac8 */ slt	$v0,$t2,$v0
.L80083acc:
/* 0x80083acc */ bne	$v0,$zero,.L800839f4
.L80083ad0:
/* 0x80083ad0 */ addiu	$t1,$t1,16
.L80083ad4:
/* 0x80083ad4 */ lh	$v0,6($a3)
.L80083ad8:
/* 0x80083ad8 */ sll	$zero,$zero,0x0
.L80083adc:
/* 0x80083adc */ beq	$v0,$zero,.L80083bc0
.L80083ae0:
/* 0x80083ae0 */ sll	$v0,$v0,0x4
.L80083ae4:
/* 0x80083ae4 */ addu	$t1,$t3,$v0
.L80083ae8:
/* 0x80083ae8 */ lh	$v0,8($t1)
.L80083aec:
/* 0x80083aec */ sll	$zero,$zero,0x0
.L80083af0:
/* 0x80083af0 */ bne	$v0,$t6,.L80083bb8
.L80083af4:
/* 0x80083af4 */ slti	$v0,$t2,2048
.L80083af8:
/* 0x80083af8 */ lw	$v1,0($t1)
.L80083afc:
/* 0x80083afc */ lw	$a1,0($t0)
.L80083b00:
/* 0x80083b00 */ sll	$zero,$zero,0x0
.L80083b04:
/* 0x80083b04 */ slt	$v0,$a1,$v1
.L80083b08:
/* 0x80083b08 */ beq	$v0,$zero,.L80083b60
.L80083b0c:
/* 0x80083b0c */ subu	$a2,$v1,$a1
.L80083b10:
/* 0x80083b10 */ lh	$a0,8($a3)
.L80083b14:
/* 0x80083b14 */ lh	$v1,8($t0)
.L80083b18:
/* 0x80083b18 */ lw	$v0,0($a3)
.L80083b1c:
/* 0x80083b1c */ subu	$v1,$a0,$v1
.L80083b20:
/* 0x80083b20 */ subu	$v0,$v0,$a1
.L80083b24:
/* 0x80083b24 */ srl	$a0,$v0,0x3
.L80083b28:
/* 0x80083b28 */ bne	$a0,$zero,.L80083b38
.L80083b2c:
/* 0x80083b2c */ sll	$zero,$zero,0x0
.L80083b30:
/* 0x80083b30 */ j 0x0083b54
.L80083b34:
/* 0x80083b34 */ addu	$a0,$v1,$zero
.L80083b38:
/* 0x80083b38 */ srl	$v0,$a2,0x3
.L80083b3c:
/* 0x80083b3c */ mult	$v0,$v1
.L80083b40:
/* 0x80083b40 */ mflo	$v1
.L80083b44:
/* 0x80083b44 */ sll	$zero,$zero,0x0
.L80083b48:
/* 0x80083b48 */ sll	$zero,$zero,0x0
.L80083b4c:
/* 0x80083b4c */ divu	$zero,$v1,$a0
.L80083b50:
/* 0x80083b50 */ mflo	$a0
.L80083b54:
/* 0x80083b54 */ lhu	$v0,8($t0)
.L80083b58:
/* 0x80083b58 */ j 0x0083bb0
.L80083b5c:
/* 0x80083b5c */ addu	$v0,$v0,$a0
.L80083b60:
/* 0x80083b60 */ subu	$a2,$a1,$v1
.L80083b64:
/* 0x80083b64 */ lh	$a0,8($a3)
.L80083b68:
/* 0x80083b68 */ lh	$v1,8($t0)
.L80083b6c:
/* 0x80083b6c */ lw	$v0,0($a3)
.L80083b70:
/* 0x80083b70 */ subu	$v1,$a0,$v1
.L80083b74:
/* 0x80083b74 */ subu	$v0,$v0,$a1
.L80083b78:
/* 0x80083b78 */ srl	$a0,$v0,0x3
.L80083b7c:
/* 0x80083b7c */ bne	$a0,$zero,.L80083b8c
.L80083b80:
/* 0x80083b80 */ srl	$v0,$a2,0x3
.L80083b84:
/* 0x80083b84 */ j 0x0083ba4
.L80083b88:
/* 0x80083b88 */ addu	$a0,$v1,$zero
.L80083b8c:
/* 0x80083b8c */ mult	$v0,$v1
.L80083b90:
/* 0x80083b90 */ mflo	$v1
.L80083b94:
/* 0x80083b94 */ sll	$zero,$zero,0x0
.L80083b98:
/* 0x80083b98 */ sll	$zero,$zero,0x0
.L80083b9c:
/* 0x80083b9c */ divu	$zero,$v1,$a0
.L80083ba0:
/* 0x80083ba0 */ mflo	$a0
.L80083ba4:
/* 0x80083ba4 */ lhu	$v0,8($t0)
.L80083ba8:
/* 0x80083ba8 */ sll	$zero,$zero,0x0
.L80083bac:
/* 0x80083bac */ subu	$v0,$v0,$a0
.L80083bb0:
/* 0x80083bb0 */ sh	$v0,8($t1)
.L80083bb4:
/* 0x80083bb4 */ slti	$v0,$t2,2048
.L80083bb8:
/* 0x80083bb8 */ bne	$v0,$zero,.L800839c8
.L80083bbc:
/* 0x80083bbc */ addu	$a0,$t2,$zero
.L80083bc0:
/* 0x80083bc0 */ ori	$v0,$zero,0x9284
.L80083bc4:
/* 0x80083bc4 */ addu	$t4,$t4,$v0
.L80083bc8:
/* 0x80083bc8 */ addu	$t5,$t5,$v0
.L80083bcc:
/* 0x80083bcc */ lui	$v0,0x1
.L80083bd0:
/* 0x80083bd0 */ ori	$v0,$v0,0x2508
.L80083bd4:
/* 0x80083bd4 */ addu	$v0,$t7,$v0
.L80083bd8:
/* 0x80083bd8 */ slt	$v0,$t4,$v0
.L80083bdc:
/* 0x80083bdc */ bne	$v0,$zero,.L8008398c
.L80083be0:
/* 0x80083be0 */ addu	$v0,$t2,$zero
.L80083be4:
/* 0x80083be4 */ jr	$ra
.L80083be8:
/* 0x80083be8 */ addiu	$sp,$sp,24
.size FUN_80083974, .-FUN_80083974
