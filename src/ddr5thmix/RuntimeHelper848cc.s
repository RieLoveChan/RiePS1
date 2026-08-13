.set noreorder
.set noat
.set nomacro

.section .text.FUN_800848cc
.globl FUN_800848cc
.type FUN_800848cc, @function
FUN_800848cc:
/* Runtime gameplay/resource helper. */
.L800848cc:
/* 0x800848cc */ addiu	$sp,$sp,-32
.L800848d0:
/* 0x800848d0 */ sw	$s0,16($sp)
.L800848d4:
/* 0x800848d4 */ addu	$s0,$a0,$zero
.L800848d8:
/* 0x800848d8 */ sw	$s1,20($sp)
.L800848dc:
/* 0x800848dc */ addiu	$s1,$zero,-1
.L800848e0:
/* 0x800848e0 */ lui	$v0,0x800f
.L800848e4:
/* 0x800848e4 */ lb	$v1,10528($v0)
.L800848e8:
/* 0x800848e8 */ addiu	$v0,$zero,2
.L800848ec:
/* 0x800848ec */ beq	$v1,$v0,.L80084984
.L800848f0:
/* 0x800848f0 */ sw	$ra,24($sp)
.L800848f4:
/* 0x800848f4 */ slti	$v0,$v1,3
.L800848f8:
/* 0x800848f8 */ beq	$v0,$zero,.L80084910
.L800848fc:
/* 0x800848fc */ addiu	$v0,$zero,1
.L80084900:
/* 0x80084900 */ beq	$v1,$v0,.L8008491c
.L80084904:
/* 0x80084904 */ lui	$v0,0x800f
.L80084908:
/* 0x80084908 */ j 0x0084a24
.L8008490c:
/* 0x8008490c */ addiu	$v0,$v0,10504
.L80084910:
/* 0x80084910 */ addiu	$v0,$zero,5
.L80084914:
/* 0x80084914 */ bne	$v1,$v0,.L80084a18
.L80084918:
/* 0x80084918 */ sll	$zero,$zero,0x0
.L8008491c:
/* 0x8008491c */ addu	$a0,$s0,$zero
.L80084920:
/* 0x80084920 */ jal	0x8002a8b0
.L80084924:
/* 0x80084924 */ addu	$a1,$zero,$zero
.L80084928:
/* 0x80084928 */ beq	$v0,$zero,.L80084a20
.L8008492c:
/* 0x8008492c */ lui	$v0,0x800f
.L80084930:
/* 0x80084930 */ jal	0x8009643c
.L80084934:
/* 0x80084934 */ sll	$zero,$zero,0x0
.L80084938:
/* 0x80084938 */ beq	$v0,$zero,.L80084974
.L8008493c:
/* 0x8008493c */ addu	$v0,$zero,$zero
.L80084940:
/* 0x80084940 */ jal	0x8002a8b0
.L80084944:
/* 0x80084944 */ sll	$zero,$zero,0x0
.L80084948:
/* 0x80084948 */ beq	$s0,$zero,.L80084964
.L8008494c:
/* 0x8008494c */ sll	$zero,$zero,0x0
.L80084950:
/* 0x80084950 */ andi	$v0,$v0,0x20
.L80084954:
/* 0x80084954 */ bne	$v0,$zero,.L80084974
.L80084958:
/* 0x80084958 */ addiu	$v0,$zero,1
.L8008495c:
/* 0x8008495c */ j 0x0084974
.L80084960:
/* 0x80084960 */ addu	$v0,$zero,$zero
.L80084964:
/* 0x80084964 */ andi	$v0,$v0,0x2
.L80084968:
/* 0x80084968 */ bne	$v0,$zero,.L80084974
.L8008496c:
/* 0x8008496c */ addiu	$v0,$zero,1
.L80084970:
/* 0x80084970 */ addu	$v0,$zero,$zero
.L80084974:
/* 0x80084974 */ bne	$v0,$zero,.L80084a20
.L80084978:
/* 0x80084978 */ lui	$v0,0x800f
.L8008497c:
/* 0x8008497c */ j 0x0084a20
.L80084980:
/* 0x80084980 */ addu	$s1,$s0,$zero
.L80084984:
/* 0x80084984 */ addu	$a0,$zero,$zero
.L80084988:
/* 0x80084988 */ jal	0x8002a8b0
.L8008498c:
/* 0x8008498c */ addu	$a1,$a0,$zero
.L80084990:
/* 0x80084990 */ beq	$v0,$zero,.L800849d0
.L80084994:
/* 0x80084994 */ addiu	$a0,$zero,1
.L80084998:
/* 0x80084998 */ jal	0x8009643c
.L8008499c:
/* 0x8008499c */ sll	$zero,$zero,0x0
.L800849a0:
/* 0x800849a0 */ beq	$v0,$zero,.L800849c0
.L800849a4:
/* 0x800849a4 */ addu	$v1,$zero,$zero
.L800849a8:
/* 0x800849a8 */ jal	0x8002a8b0
.L800849ac:
/* 0x800849ac */ sll	$zero,$zero,0x0
.L800849b0:
/* 0x800849b0 */ andi	$v0,$v0,0x2
.L800849b4:
/* 0x800849b4 */ bne	$v0,$zero,.L800849c0
.L800849b8:
/* 0x800849b8 */ addiu	$v1,$zero,1
.L800849bc:
/* 0x800849bc */ addu	$v1,$zero,$zero
.L800849c0:
/* 0x800849c0 */ bne	$v1,$zero,.L800849d0
.L800849c4:
/* 0x800849c4 */ addiu	$a0,$zero,1
.L800849c8:
/* 0x800849c8 */ j 0x0084a1c
.L800849cc:
/* 0x800849cc */ addu	$s1,$zero,$zero
.L800849d0:
/* 0x800849d0 */ jal	0x8002a8b0
.L800849d4:
/* 0x800849d4 */ addu	$a1,$zero,$zero
.L800849d8:
/* 0x800849d8 */ beq	$v0,$zero,.L80084a20
.L800849dc:
/* 0x800849dc */ lui	$v0,0x800f
.L800849e0:
/* 0x800849e0 */ jal	0x8009643c
.L800849e4:
/* 0x800849e4 */ sll	$zero,$zero,0x0
.L800849e8:
/* 0x800849e8 */ beq	$v0,$zero,.L80084a08
.L800849ec:
/* 0x800849ec */ addu	$v1,$zero,$zero
.L800849f0:
/* 0x800849f0 */ jal	0x8002a8b0
.L800849f4:
/* 0x800849f4 */ sll	$zero,$zero,0x0
.L800849f8:
/* 0x800849f8 */ andi	$v0,$v0,0x20
.L800849fc:
/* 0x800849fc */ bne	$v0,$zero,.L80084a08
.L80084a00:
/* 0x80084a00 */ addiu	$v1,$zero,1
.L80084a04:
/* 0x80084a04 */ addu	$v1,$zero,$zero
.L80084a08:
/* 0x80084a08 */ bne	$v1,$zero,.L80084a20
.L80084a0c:
/* 0x80084a0c */ lui	$v0,0x800f
.L80084a10:
/* 0x80084a10 */ j 0x0084a20
.L80084a14:
/* 0x80084a14 */ addiu	$s1,$zero,1
.L80084a18:
/* 0x80084a18 */ addiu	$s1,$zero,-1
.L80084a1c:
/* 0x80084a1c */ lui	$v0,0x800f
.L80084a20:
/* 0x80084a20 */ addiu	$v0,$v0,10504
.L80084a24:
/* 0x80084a24 */ sll	$v1,$s0,0x3
.L80084a28:
/* 0x80084a28 */ addu	$v1,$v1,$s0
.L80084a2c:
/* 0x80084a2c */ sll	$v1,$v1,0x3
.L80084a30:
/* 0x80084a30 */ addu	$v1,$v1,$s0
.L80084a34:
/* 0x80084a34 */ sll	$v1,$v1,0x2
.L80084a38:
/* 0x80084a38 */ addu	$v1,$v1,$s0
.L80084a3c:
/* 0x80084a3c */ sll	$v1,$v1,0x5
.L80084a40:
/* 0x80084a40 */ addu	$v1,$v1,$s0
.L80084a44:
/* 0x80084a44 */ sll	$v1,$v1,0x2
.L80084a48:
/* 0x80084a48 */ addu	$v1,$v1,$v0
.L80084a4c:
/* 0x80084a4c */ lbu	$v1,146($v1)
.L80084a50:
/* 0x80084a50 */ addiu	$v0,$zero,7
.L80084a54:
/* 0x80084a54 */ beq	$v1,$v0,.L80084a64
.L80084a58:
/* 0x80084a58 */ sll	$zero,$zero,0x0
.L80084a5c:
/* 0x80084a5c */ bne	$v1,$zero,.L80084a6c
.L80084a60:
/* 0x80084a60 */ addu	$v0,$s1,$zero
.L80084a64:
/* 0x80084a64 */ addiu	$s1,$zero,-1
.L80084a68:
/* 0x80084a68 */ addu	$v0,$s1,$zero
.L80084a6c:
/* 0x80084a6c */ lw	$ra,24($sp)
.L80084a70:
/* 0x80084a70 */ lw	$s1,20($sp)
.L80084a74:
/* 0x80084a74 */ lw	$s0,16($sp)
.L80084a78:
/* 0x80084a78 */ jr	$ra
.L80084a7c:
/* 0x80084a7c */ addiu	$sp,$sp,32
.size FUN_800848cc, .-FUN_800848cc
