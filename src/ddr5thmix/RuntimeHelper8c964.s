.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008c964
.globl FUN_8008c964
.type FUN_8008c964, @function
FUN_8008c964:
/* Runtime resource, timing, and state helper. */
.L8008c964:
/* 0x8008c964 */ addiu	$sp,$sp,-32
.L8008c968:
/* 0x8008c968 */ sw	$s1,20($sp)
.L8008c96c:
/* 0x8008c96c */ addu	$s1,$a0,$zero
.L8008c970:
/* 0x8008c970 */ addiu	$a0,$zero,91
.L8008c974:
/* 0x8008c974 */ addiu	$a1,$zero,-1
.L8008c978:
/* 0x8008c978 */ addu	$a2,$a1,$zero
.L8008c97c:
/* 0x8008c97c */ sw	$ra,24($sp)
.L8008c980:
/* 0x8008c980 */ jal	0x8002a8b0
.L8008c984:
/* 0x8008c984 */ sw	$s0,16($sp)
.L8008c988:
/* 0x8008c988 */ addu	$a0,$s1,$zero
.L8008c98c:
/* 0x8008c98c */ addu	$a1,$zero,$zero
.L8008c990:
/* 0x8008c990 */ jal	0x8005b2a4
.L8008c994:
/* 0x8008c994 */ addiu	$a2,$zero,11580
.L8008c998:
/* 0x8008c998 */ jal	0x8007f07c
.L8008c99c:
/* 0x8008c99c */ addiu	$s0,$zero,-1
.L8008c9a0:
/* 0x8008c9a0 */ jal	0x8007ea5c
.L8008c9a4:
/* 0x8008c9a4 */ sll	$zero,$zero,0x0
.L8008c9a8:
/* 0x8008c9a8 */ jal	0x80086878
.L8008c9ac:
/* 0x8008c9ac */ addu	$a0,$s1,$zero
.L8008c9b0:
/* 0x8008c9b0 */ addu	$a0,$s1,$zero
.L8008c9b4:
/* 0x8008c9b4 */ sw	$s0,1848($s1)
.L8008c9b8:
/* 0x8008c9b8 */ jal	0x8008c7b4
.L8008c9bc:
/* 0x8008c9bc */ sw	$s0,1852($s1)
.L8008c9c0:
/* 0x8008c9c0 */ addiu	$v0,$zero,10
.L8008c9c4:
/* 0x8008c9c4 */ sh	$v0,1856($s1)
.L8008c9c8:
/* 0x8008c9c8 */ lui	$v0,0x800f
.L8008c9cc:
/* 0x8008c9cc */ addiu	$v0,$v0,10376
.L8008c9d0:
/* 0x8008c9d0 */ sw	$zero,8($s1)
.L8008c9d4:
/* 0x8008c9d4 */ sb	$zero,1968($s1)
.L8008c9d8:
/* 0x8008c9d8 */ lw	$v1,112($v0)
.L8008c9dc:
/* 0x8008c9dc */ sll	$zero,$zero,0x0
.L8008c9e0:
/* 0x8008c9e0 */ sw	$v1,1976($s1)
.L8008c9e4:
/* 0x8008c9e4 */ lw	$v1,112($v0)
.L8008c9e8:
/* 0x8008c9e8 */ lw	$v0,0($s1)
.L8008c9ec:
/* 0x8008c9ec */ sw	$s0,1880($s1)
.L8008c9f0:
/* 0x8008c9f0 */ sw	$s0,1884($s1)
.L8008c9f4:
/* 0x8008c9f4 */ sw	$s0,1888($s1)
.L8008c9f8:
/* 0x8008c9f8 */ lui	$s0,0x800f
.L8008c9fc:
/* 0x8008c9fc */ sll	$v0,$v0,0x1
.L8008ca00:
/* 0x8008ca00 */ addu	$v0,$s1,$v0
.L8008ca04:
/* 0x8008ca04 */ sw	$v1,1876($s1)
.L8008ca08:
/* 0x8008ca08 */ lhu	$v0,22($v0)
.L8008ca0c:
/* 0x8008ca0c */ addiu	$s0,$s0,10504
.L8008ca10:
/* 0x8008ca10 */ sll	$a0,$v0,0x10
.L8008ca14:
/* 0x8008ca14 */ sra	$a0,$a0,0x10
.L8008ca18:
/* 0x8008ca18 */ jal	0x8007ee38
.L8008ca1c:
/* 0x8008ca1c */ sh	$v0,28($s0)
.L8008ca20:
/* 0x8008ca20 */ addu	$a2,$zero,$zero
.L8008ca24:
/* 0x8008ca24 */ addu	$v1,$s1,$zero
.L8008ca28:
/* 0x8008ca28 */ sw	$v0,4($s0)
.L8008ca2c:
/* 0x8008ca2c */ sh	$zero,12($v1)
.L8008ca30:
/* 0x8008ca30 */ sh	$zero,16($v1)
.L8008ca34:
/* 0x8008ca34 */ sh	$zero,1896($v1)
.L8008ca38:
/* 0x8008ca38 */ addiu	$a2,$a2,1
.L8008ca3c:
/* 0x8008ca3c */ slti	$v0,$a2,2
.L8008ca40:
/* 0x8008ca40 */ bne	$v0,$zero,.L8008ca2c
.L8008ca44:
/* 0x8008ca44 */ addiu	$v1,$v1,2
.L8008ca48:
/* 0x8008ca48 */ addu	$a2,$zero,$zero
.L8008ca4c:
/* 0x8008ca4c */ lui	$v0,0x8002
.L8008ca50:
/* 0x8008ca50 */ addiu	$t0,$v0,-6836
.L8008ca54:
/* 0x8008ca54 */ lui	$v0,0x800f
.L8008ca58:
/* 0x8008ca58 */ addiu	$a1,$v0,10504
.L8008ca5c:
/* 0x8008ca5c */ addu	$a0,$zero,$zero
.L8008ca60:
/* 0x8008ca60 */ lbu	$a3,144($a1)
.L8008ca64:
/* 0x8008ca64 */ addu	$v1,$t0,$zero
.L8008ca68:
/* 0x8008ca68 */ lw	$v0,0($v1)
.L8008ca6c:
/* 0x8008ca6c */ sll	$zero,$zero,0x0
.L8008ca70:
/* 0x8008ca70 */ beq	$a3,$v0,.L8008ca8c
.L8008ca74:
/* 0x8008ca74 */ addiu	$v0,$zero,3
.L8008ca78:
/* 0x8008ca78 */ addiu	$a0,$a0,1
.L8008ca7c:
/* 0x8008ca7c */ sltiu	$v0,$a0,3
.L8008ca80:
/* 0x8008ca80 */ bne	$v0,$zero,.L8008ca68
.L8008ca84:
/* 0x8008ca84 */ addiu	$v1,$v1,4
.L8008ca88:
/* 0x8008ca88 */ addiu	$v0,$zero,3
.L8008ca8c:
/* 0x8008ca8c */ bne	$a0,$v0,.L8008caa0
.L8008ca90:
/* 0x8008ca90 */ ori	$v0,$zero,0x9284
.L8008ca94:
/* 0x8008ca94 */ addiu	$v0,$zero,1
.L8008ca98:
/* 0x8008ca98 */ sb	$v0,144($a1)
.L8008ca9c:
/* 0x8008ca9c */ ori	$v0,$zero,0x9284
.L8008caa0:
/* 0x8008caa0 */ addu	$a1,$a1,$v0
.L8008caa4:
/* 0x8008caa4 */ addiu	$a2,$a2,1
.L8008caa8:
/* 0x8008caa8 */ slti	$v0,$a2,2
.L8008caac:
/* 0x8008caac */ bne	$v0,$zero,.L8008ca60
.L8008cab0:
/* 0x8008cab0 */ addu	$a0,$zero,$zero
.L8008cab4:
/* 0x8008cab4 */ jal	0x800876a4
.L8008cab8:
/* 0x8008cab8 */ addu	$a0,$s1,$zero
.L8008cabc:
/* 0x8008cabc */ jal	0x80092f3c
.L8008cac0:
/* 0x8008cac0 */ lui	$s0,0x800f
.L8008cac4:
/* 0x8008cac4 */ jal	0x80093ab4
.L8008cac8:
/* 0x8008cac8 */ addiu	$s0,$s0,10504
.L8008cacc:
/* 0x8008cacc */ lui	$v0,0x1
.L8008cad0:
/* 0x8008cad0 */ addu	$s0,$s0,$v0
.L8008cad4:
/* 0x8008cad4 */ jal	0x80096518
.L8008cad8:
/* 0x8008cad8 */ sb	$zero,10108($s0)
.L8008cadc:
/* 0x8008cadc */ lw	$v0,10092($s0)
.L8008cae0:
/* 0x8008cae0 */ sll	$zero,$zero,0x0
.L8008cae4:
/* 0x8008cae4 */ addiu	$v0,$v0,1
.L8008cae8:
/* 0x8008cae8 */ sw	$v0,10092($s0)
.L8008caec:
/* 0x8008caec */ lw	$ra,24($sp)
.L8008caf0:
/* 0x8008caf0 */ lw	$s1,20($sp)
.L8008caf4:
/* 0x8008caf4 */ lw	$s0,16($sp)
.L8008caf8:
/* 0x8008caf8 */ jr	$ra
.L8008cafc:
/* 0x8008cafc */ addiu	$sp,$sp,32
.size FUN_8008c964, .-FUN_8008c964
