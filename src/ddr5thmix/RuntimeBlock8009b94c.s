.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009b94c
.globl FUN_8009b94c
.type FUN_8009b94c, @function
FUN_8009b94c:
.L8009b94c:
/* 0x8009b94c */ addiu	$sp,$sp,-40
.L8009b950:
/* 0x8009b950 */ lui	$a2,0x800e
.L8009b954:
/* 0x8009b954 */ lw	$v0,2932($a2)
.L8009b958:
/* 0x8009b958 */ andi	$a1,$a0,0xff
.L8009b95c:
/* 0x8009b95c */ sw	$ra,32($sp)
.L8009b960:
/* 0x8009b960 */ sw	$s1,28($sp)
.L8009b964:
/* 0x8009b964 */ sw	$s0,24($sp)
.L8009b968:
/* 0x8009b968 */ sb	$a0,0($v0)
.L8009b96c:
/* 0x8009b96c */ addiu	$v0,$zero,16
.L8009b970:
/* 0x8009b970 */ beq	$a1,$v0,.L8009be00
.L8009b974:
/* 0x8009b974 */ slti	$v0,$a1,17
.L8009b978:
/* 0x8009b978 */ beq	$v0,$zero,.L8009ba0c
.L8009b97c:
/* 0x8009b97c */ addiu	$v0,$zero,6
.L8009b980:
/* 0x8009b980 */ beq	$a1,$v0,.L8009bae8
.L8009b984:
/* 0x8009b984 */ slti	$v0,$a1,7
.L8009b988:
/* 0x8009b988 */ beq	$v0,$zero,.L8009b9cc
.L8009b98c:
/* 0x8009b98c */ addiu	$v0,$zero,2
.L8009b990:
/* 0x8009b990 */ beq	$a1,$v0,.L8009baa8
.L8009b994:
/* 0x8009b994 */ slti	$v0,$a1,3
.L8009b998:
/* 0x8009b998 */ beq	$v0,$zero,.L8009b9b0
.L8009b99c:
/* 0x8009b99c */ addiu	$v0,$zero,1
.L8009b9a0:
/* 0x8009b9a0 */ beq	$a1,$v0,.L8009ba84
.L8009b9a4:
/* 0x8009b9a4 */ lui	$a0,0x800e
.L8009b9a8:
/* 0x8009b9a8 */ j	.L8009bee8
.L8009b9ac:
/* 0x8009b9ac */ sll	$zero,$zero,0x0
.L8009b9b0:
/* 0x8009b9b0 */ addiu	$v0,$zero,3
.L8009b9b4:
/* 0x8009b9b4 */ beq	$a1,$v0,.L8009bad0
.L8009b9b8:
/* 0x8009b9b8 */ addiu	$v0,$zero,5
.L8009b9bc:
/* 0x8009b9bc */ beq	$a1,$v0,.L8009bb6c
.L8009b9c0:
/* 0x8009b9c0 */ lui	$s0,0x800e
.L8009b9c4:
/* 0x8009b9c4 */ j	.L8009bee8
.L8009b9c8:
/* 0x8009b9c8 */ sll	$zero,$zero,0x0
.L8009b9cc:
/* 0x8009b9cc */ addiu	$v0,$zero,10
.L8009b9d0:
/* 0x8009b9d0 */ beq	$a1,$v0,.L8009bbc4
.L8009b9d4:
/* 0x8009b9d4 */ slti	$v0,$a1,11
.L8009b9d8:
/* 0x8009b9d8 */ beq	$v0,$zero,.L8009b9f0
.L8009b9dc:
/* 0x8009b9dc */ addiu	$v0,$zero,9
.L8009b9e0:
/* 0x8009b9e0 */ beq	$a1,$v0,.L8009bb44
.L8009b9e4:
/* 0x8009b9e4 */ lui	$a0,0x800e
.L8009b9e8:
/* 0x8009b9e8 */ j	.L8009bee8
.L8009b9ec:
/* 0x8009b9ec */ sll	$zero,$zero,0x0
.L8009b9f0:
/* 0x8009b9f0 */ addiu	$v0,$zero,11
.L8009b9f4:
/* 0x8009b9f4 */ beq	$a1,$v0,.L8009bb5c
.L8009b9f8:
/* 0x8009b9f8 */ addiu	$v0,$zero,12
.L8009b9fc:
/* 0x8009b9fc */ beq	$a1,$v0,.L8009bb28
.L8009ba00:
/* 0x8009ba00 */ lui	$v0,0x800e
.L8009ba04:
/* 0x8009ba04 */ j	.L8009bee8
.L8009ba08:
/* 0x8009ba08 */ sll	$zero,$zero,0x0
.L8009ba0c:
/* 0x8009ba0c */ slti	$v0,$a1,244
.L8009ba10:
/* 0x8009ba10 */ beq	$v0,$zero,.L8009ba5c
.L8009ba14:
/* 0x8009ba14 */ slti	$v0,$a1,242
.L8009ba18:
/* 0x8009ba18 */ beq	$v0,$zero,.L8009bc78
.L8009ba1c:
/* 0x8009ba1c */ addiu	$v0,$zero,239
.L8009ba20:
/* 0x8009ba20 */ beq	$a1,$v0,.L8009beb0
.L8009ba24:
/* 0x8009ba24 */ slti	$v0,$a1,240
.L8009ba28:
/* 0x8009ba28 */ beq	$v0,$zero,.L8009ba40
.L8009ba2c:
/* 0x8009ba2c */ addiu	$v0,$zero,17
.L8009ba30:
/* 0x8009ba30 */ beq	$a1,$v0,.L8009bdc0
.L8009ba34:
/* 0x8009ba34 */ addu	$a0,$zero,$zero
.L8009ba38:
/* 0x8009ba38 */ j	.L8009bee8
.L8009ba3c:
/* 0x8009ba3c */ sll	$zero,$zero,0x0
.L8009ba40:
/* 0x8009ba40 */ addiu	$v0,$zero,240
.L8009ba44:
/* 0x8009ba44 */ beq	$a1,$v0,.L8009be1c
.L8009ba48:
/* 0x8009ba48 */ addiu	$v0,$zero,241
.L8009ba4c:
/* 0x8009ba4c */ beq	$a1,$v0,.L8009bc1c
.L8009ba50:
/* 0x8009ba50 */ lui	$s0,0x800e
.L8009ba54:
/* 0x8009ba54 */ j	.L8009bee8
.L8009ba58:
/* 0x8009ba58 */ sll	$zero,$zero,0x0
.L8009ba5c:
/* 0x8009ba5c */ addiu	$v0,$zero,245
.L8009ba60:
/* 0x8009ba60 */ beq	$a1,$v0,.L8009bd2c
.L8009ba64:
/* 0x8009ba64 */ slt	$v0,$a1,$v0
.L8009ba68:
/* 0x8009ba68 */ bne	$v0,$zero,.L8009bcbc
.L8009ba6c:
/* 0x8009ba6c */ lui	$s0,0x800e
.L8009ba70:
/* 0x8009ba70 */ addiu	$v0,$zero,255
.L8009ba74:
/* 0x8009ba74 */ beq	$a1,$v0,.L8009bedc
.L8009ba78:
/* 0x8009ba78 */ lui	$v0,0x800e
.L8009ba7c:
/* 0x8009ba7c */ j	.L8009bee8
.L8009ba80:
/* 0x8009ba80 */ sll	$zero,$zero,0x0
.L8009ba84:
/* 0x8009ba84 */ lw	$v1,2844($a0)
.L8009ba88:
/* 0x8009ba88 */ addiu	$v0,$zero,20
.L8009ba8c:
/* 0x8009ba8c */ sb	$v0,132($v1)
.L8009ba90:
/* 0x8009ba90 */ lw	$v0,2844($a0)
.L8009ba94:
/* 0x8009ba94 */ addiu	$a0,$zero,1
.L8009ba98:
/* 0x8009ba98 */ jal	0x8009b5b8
.L8009ba9c:
/* 0x8009ba9c */ sb	$a1,133($v0)
.L8009baa0:
/* 0x8009baa0 */ j	.L8009bee8
.L8009baa4:
/* 0x8009baa4 */ sll	$zero,$zero,0x0
.L8009baa8:
/* 0x8009baa8 */ lui	$v1,0x800e
.L8009baac:
/* 0x8009baac */ lw	$v0,2844($v1)
.L8009bab0:
/* 0x8009bab0 */ addiu	$a0,$zero,1
.L8009bab4:
/* 0x8009bab4 */ sb	$a0,132($v0)
.L8009bab8:
/* 0x8009bab8 */ lw	$v0,2844($v1)
.L8009babc:
/* 0x8009babc */ sll	$zero,$zero,0x0
.L8009bac0:
/* 0x8009bac0 */ sb	$a0,133($v0)
.L8009bac4:
/* 0x8009bac4 */ lw	$v0,2844($v1)
.L8009bac8:
/* 0x8009bac8 */ j	.L8009bee8
.L8009bacc:
/* 0x8009bacc */ sb	$zero,18($v0)
.L8009bad0:
/* 0x8009bad0 */ jal	0x8009b588
.L8009bad4:
/* 0x8009bad4 */ addiu	$a0,$zero,60
.L8009bad8:
/* 0x8009bad8 */ lui	$v0,0x800e
.L8009badc:
/* 0x8009badc */ lw	$v0,2844($v0)
.L8009bae0:
/* 0x8009bae0 */ j	.L8009bee8
.L8009bae4:
/* 0x8009bae4 */ sw	$zero,104($v0)
.L8009bae8:
/* 0x8009bae8 */ jal	0x8009b69c
.L8009baec:
/* 0x8009baec */ sll	$zero,$zero,0x0
.L8009baf0:
/* 0x8009baf0 */ lui	$v0,0x800e
.L8009baf4:
/* 0x8009baf4 */ lw	$v0,2844($v0)
.L8009baf8:
/* 0x8009baf8 */ sll	$zero,$zero,0x0
.L8009bafc:
/* 0x8009bafc */ lbu	$v1,13($v0)
.L8009bb00:
/* 0x8009bb00 */ sll	$zero,$zero,0x0
.L8009bb04:
/* 0x8009bb04 */ slti	$v0,$v1,5
.L8009bb08:
/* 0x8009bb08 */ beq	$v0,$zero,.L8009bee8
.L8009bb0c:
/* 0x8009bb0c */ slti	$v0,$v1,3
.L8009bb10:
/* 0x8009bb10 */ bne	$v0,$zero,.L8009bee8
.L8009bb14:
/* 0x8009bb14 */ sll	$zero,$zero,0x0
.L8009bb18:
/* 0x8009bb18 */ jal	0x8009b6cc
.L8009bb1c:
/* 0x8009bb1c */ sll	$zero,$zero,0x0
.L8009bb20:
/* 0x8009bb20 */ j	.L8009bee8
.L8009bb24:
/* 0x8009bb24 */ sll	$zero,$zero,0x0
.L8009bb28:
/* 0x8009bb28 */ lw	$v0,2844($v0)
.L8009bb2c:
/* 0x8009bb2c */ sll	$zero,$zero,0x0
.L8009bb30:
/* 0x8009bb30 */ lbu	$a0,12($v0)
.L8009bb34:
/* 0x8009bb34 */ jal	0x8002d60c
.L8009bb38:
/* 0x8009bb38 */ sll	$zero,$zero,0x0
.L8009bb3c:
/* 0x8009bb3c */ j	.L8009bee8
.L8009bb40:
/* 0x8009bb40 */ sll	$zero,$zero,0x0
.L8009bb44:
/* 0x8009bb44 */ lw	$v1,2844($a0)
.L8009bb48:
/* 0x8009bb48 */ addiu	$v0,$zero,28
.L8009bb4c:
/* 0x8009bb4c */ sb	$v0,132($v1)
.L8009bb50:
/* 0x8009bb50 */ lw	$v1,2844($a0)
.L8009bb54:
/* 0x8009bb54 */ j	.L8009bdb8
.L8009bb58:
/* 0x8009bb58 */ addiu	$v0,$zero,1
.L8009bb5c:
/* 0x8009bb5c */ jal	0x8009b814
.L8009bb60:
/* 0x8009bb60 */ sll	$zero,$zero,0x0
.L8009bb64:
/* 0x8009bb64 */ j	.L8009bee8
.L8009bb68:
/* 0x8009bb68 */ sll	$zero,$zero,0x0
.L8009bb6c:
/* 0x8009bb6c */ lw	$v0,2844($s0)
.L8009bb70:
/* 0x8009bb70 */ sll	$zero,$zero,0x0
.L8009bb74:
/* 0x8009bb74 */ lbu	$s1,17($v0)
.L8009bb78:
/* 0x8009bb78 */ addiu	$v0,$zero,1
.L8009bb7c:
/* 0x8009bb7c */ bne	$s1,$v0,.L8009bbb8
.L8009bb80:
/* 0x8009bb80 */ sll	$zero,$zero,0x0
.L8009bb84:
/* 0x8009bb84 */ jal	0x8009b5b8
.L8009bb88:
/* 0x8009bb88 */ addu	$a0,$zero,$zero
.L8009bb8c:
/* 0x8009bb8c */ lw	$v0,2844($s0)
.L8009bb90:
/* 0x8009bb90 */ sll	$zero,$zero,0x0
.L8009bb94:
/* 0x8009bb94 */ lbu	$a0,12($v0)
.L8009bb98:
/* 0x8009bb98 */ jal	0x8002d518
.L8009bb9c:
/* 0x8009bb9c */ sll	$zero,$zero,0x0
.L8009bba0:
/* 0x8009bba0 */ lw	$v1,2844($s0)
.L8009bba4:
/* 0x8009bba4 */ addiu	$v0,$zero,25
.L8009bba8:
/* 0x8009bba8 */ sb	$v0,132($v1)
.L8009bbac:
/* 0x8009bbac */ lw	$v0,2844($s0)
.L8009bbb0:
/* 0x8009bbb0 */ sll	$zero,$zero,0x0
.L8009bbb4:
/* 0x8009bbb4 */ sb	$s1,133($v0)
.L8009bbb8:
/* 0x8009bbb8 */ lw	$v0,2844($s0)
.L8009bbbc:
/* 0x8009bbbc */ j	.L8009bee8
.L8009bbc0:
/* 0x8009bbc0 */ sb	$zero,8($v0)
.L8009bbc4:
/* 0x8009bbc4 */ lui	$v1,0x801c
.L8009bbc8:
/* 0x8009bbc8 */ lui	$s0,0x800e
.L8009bbcc:
/* 0x8009bbcc */ ori	$v1,$v1,0xf000
.L8009bbd0:
/* 0x8009bbd0 */ lw	$v0,2844($s0)
.L8009bbd4:
/* 0x8009bbd4 */ addu	$a2,$zero,$zero
.L8009bbd8:
/* 0x8009bbd8 */ lbu	$a0,12($v0)
.L8009bbdc:
/* 0x8009bbdc */ addiu	$a1,$v0,24
.L8009bbe0:
/* 0x8009bbe0 */ sw	$v1,16($sp)
.L8009bbe4:
/* 0x8009bbe4 */ lbu	$v0,16($v0)
.L8009bbe8:
/* 0x8009bbe8 */ addiu	$a3,$zero,60
.L8009bbec:
/* 0x8009bbec */ jal	0x8009b784
.L8009bbf0:
/* 0x8009bbf0 */ sw	$v0,20($sp)
.L8009bbf4:
/* 0x8009bbf4 */ lw	$v1,2844($s0)
.L8009bbf8:
/* 0x8009bbf8 */ sll	$zero,$zero,0x0
.L8009bbfc:
/* 0x8009bbfc */ lbu	$v0,132($v1)
.L8009bc00:
/* 0x8009bc00 */ addiu	$a0,$zero,28
.L8009bc04:
/* 0x8009bc04 */ beq	$v0,$a0,.L8009bee8
.L8009bc08:
/* 0x8009bc08 */ addiu	$v0,$zero,1
.L8009bc0c:
/* 0x8009bc0c */ sb	$a0,132($v1)
.L8009bc10:
/* 0x8009bc10 */ lw	$v1,2844($s0)
.L8009bc14:
/* 0x8009bc14 */ j	.L8009bee8
.L8009bc18:
/* 0x8009bc18 */ sb	$v0,133($v1)
.L8009bc1c:
/* 0x8009bc1c */ lw	$a1,2844($s0)
.L8009bc20:
/* 0x8009bc20 */ sll	$zero,$zero,0x0
.L8009bc24:
/* 0x8009bc24 */ lbu	$v1,13($a1)
.L8009bc28:
/* 0x8009bc28 */ sll	$zero,$zero,0x0
.L8009bc2c:
/* 0x8009bc2c */ slti	$v0,$v1,5
.L8009bc30:
/* 0x8009bc30 */ beq	$v0,$zero,.L8009bc68
.L8009bc34:
/* 0x8009bc34 */ slti	$v0,$v1,3
.L8009bc38:
/* 0x8009bc38 */ bne	$v0,$zero,.L8009bc6c
.L8009bc3c:
/* 0x8009bc3c */ lui	$a0,0x800e
.L8009bc40:
/* 0x8009bc40 */ addiu	$a0,$zero,1
.L8009bc44:
/* 0x8009bc44 */ addiu	$v0,$zero,31
.L8009bc48:
/* 0x8009bc48 */ jal	0x8009b5b8
.L8009bc4c:
/* 0x8009bc4c */ sb	$v0,132($a1)
.L8009bc50:
/* 0x8009bc50 */ lw	$v1,2844($s0)
.L8009bc54:
/* 0x8009bc54 */ addiu	$v0,$zero,1
.L8009bc58:
/* 0x8009bc58 */ sb	$v0,18($v1)
.L8009bc5c:
/* 0x8009bc5c */ lw	$v0,2844($s0)
.L8009bc60:
/* 0x8009bc60 */ j	.L8009bdac
.L8009bc64:
/* 0x8009bc64 */ sb	$zero,22($v0)
.L8009bc68:
/* 0x8009bc68 */ lui	$a0,0x800e
.L8009bc6c:
/* 0x8009bc6c */ lw	$v1,2844($a0)
.L8009bc70:
/* 0x8009bc70 */ j	.L8009bd9c
.L8009bc74:
/* 0x8009bc74 */ addiu	$v0,$zero,2
.L8009bc78:
/* 0x8009bc78 */ lui	$s0,0x800e
.L8009bc7c:
/* 0x8009bc7c */ lw	$a1,2844($s0)
.L8009bc80:
/* 0x8009bc80 */ sll	$zero,$zero,0x0
.L8009bc84:
/* 0x8009bc84 */ lbu	$v1,13($a1)
.L8009bc88:
/* 0x8009bc88 */ sll	$zero,$zero,0x0
.L8009bc8c:
/* 0x8009bc8c */ slti	$v0,$v1,5
.L8009bc90:
/* 0x8009bc90 */ beq	$v0,$zero,.L8009bcac
.L8009bc94:
/* 0x8009bc94 */ slti	$v0,$v1,3
.L8009bc98:
/* 0x8009bc98 */ bne	$v0,$zero,.L8009bcb0
.L8009bc9c:
/* 0x8009bc9c */ lui	$a0,0x800e
.L8009bca0:
/* 0x8009bca0 */ addiu	$a0,$zero,1
.L8009bca4:
/* 0x8009bca4 */ j	.L8009bd5c
.L8009bca8:
/* 0x8009bca8 */ addiu	$v0,$zero,33
.L8009bcac:
/* 0x8009bcac */ lui	$a0,0x800e
.L8009bcb0:
/* 0x8009bcb0 */ lw	$v1,2844($a0)
.L8009bcb4:
/* 0x8009bcb4 */ j	.L8009bd9c
.L8009bcb8:
/* 0x8009bcb8 */ addiu	$v0,$zero,22
.L8009bcbc:
/* 0x8009bcbc */ lw	$a1,2844($s0)
.L8009bcc0:
/* 0x8009bcc0 */ sll	$zero,$zero,0x0
.L8009bcc4:
/* 0x8009bcc4 */ lbu	$v1,13($a1)
.L8009bcc8:
/* 0x8009bcc8 */ sll	$zero,$zero,0x0
.L8009bccc:
/* 0x8009bccc */ slti	$v0,$v1,5
.L8009bcd0:
/* 0x8009bcd0 */ beq	$v0,$zero,.L8009bd1c
.L8009bcd4:
/* 0x8009bcd4 */ slti	$v0,$v1,3
.L8009bcd8:
/* 0x8009bcd8 */ bne	$v0,$zero,.L8009bd20
.L8009bcdc:
/* 0x8009bcdc */ lui	$a0,0x800e
.L8009bce0:
/* 0x8009bce0 */ addiu	$a0,$zero,1
.L8009bce4:
/* 0x8009bce4 */ addiu	$v0,$zero,34
.L8009bce8:
/* 0x8009bce8 */ jal	0x8009b5b8
.L8009bcec:
/* 0x8009bcec */ sb	$v0,132($a1)
.L8009bcf0:
/* 0x8009bcf0 */ lw	$v0,2844($s0)
.L8009bcf4:
/* 0x8009bcf4 */ sll	$zero,$zero,0x0
.L8009bcf8:
/* 0x8009bcf8 */ lbu	$a0,12($v0)
.L8009bcfc:
/* 0x8009bcfc */ jal	0x8002d518
.L8009bd00:
/* 0x8009bd00 */ sll	$zero,$zero,0x0
.L8009bd04:
/* 0x8009bd04 */ lw	$v1,2844($s0)
.L8009bd08:
/* 0x8009bd08 */ addiu	$v0,$zero,1
.L8009bd0c:
/* 0x8009bd0c */ sb	$v0,18($v1)
.L8009bd10:
/* 0x8009bd10 */ lw	$v0,2844($s0)
.L8009bd14:
/* 0x8009bd14 */ j	.L8009bdac
.L8009bd18:
/* 0x8009bd18 */ sb	$zero,22($v0)
.L8009bd1c:
/* 0x8009bd1c */ lui	$a0,0x800e
.L8009bd20:
/* 0x8009bd20 */ lw	$v1,2844($a0)
.L8009bd24:
/* 0x8009bd24 */ j	.L8009bd9c
.L8009bd28:
/* 0x8009bd28 */ addiu	$v0,$zero,27
.L8009bd2c:
/* 0x8009bd2c */ lui	$s0,0x800e
.L8009bd30:
/* 0x8009bd30 */ lw	$a1,2844($s0)
.L8009bd34:
/* 0x8009bd34 */ sll	$zero,$zero,0x0
.L8009bd38:
/* 0x8009bd38 */ lbu	$v1,13($a1)
.L8009bd3c:
/* 0x8009bd3c */ sll	$zero,$zero,0x0
.L8009bd40:
/* 0x8009bd40 */ slti	$v0,$v1,5
.L8009bd44:
/* 0x8009bd44 */ beq	$v0,$zero,.L8009bd90
.L8009bd48:
/* 0x8009bd48 */ slti	$v0,$v1,3
.L8009bd4c:
/* 0x8009bd4c */ bne	$v0,$zero,.L8009bd94
.L8009bd50:
/* 0x8009bd50 */ lui	$a0,0x800e
.L8009bd54:
/* 0x8009bd54 */ addiu	$a0,$zero,1
.L8009bd58:
/* 0x8009bd58 */ addiu	$v0,$zero,32
.L8009bd5c:
/* 0x8009bd5c */ jal	0x8009b5b8
.L8009bd60:
/* 0x8009bd60 */ sb	$v0,132($a1)
.L8009bd64:
/* 0x8009bd64 */ lw	$v0,2844($s0)
.L8009bd68:
/* 0x8009bd68 */ sll	$zero,$zero,0x0
.L8009bd6c:
/* 0x8009bd6c */ lbu	$a0,12($v0)
.L8009bd70:
/* 0x8009bd70 */ jal	0x8002d518
.L8009bd74:
/* 0x8009bd74 */ sll	$zero,$zero,0x0
.L8009bd78:
/* 0x8009bd78 */ lw	$v0,2844($s0)
.L8009bd7c:
/* 0x8009bd7c */ addiu	$v1,$zero,1
.L8009bd80:
/* 0x8009bd80 */ sb	$v1,18($v0)
.L8009bd84:
/* 0x8009bd84 */ lw	$v0,2844($s0)
.L8009bd88:
/* 0x8009bd88 */ j	.L8009bdac
.L8009bd8c:
/* 0x8009bd8c */ sb	$v1,22($v0)
.L8009bd90:
/* 0x8009bd90 */ lui	$a0,0x800e
.L8009bd94:
/* 0x8009bd94 */ lw	$v1,2844($a0)
.L8009bd98:
/* 0x8009bd98 */ addiu	$v0,$zero,24
.L8009bd9c:
/* 0x8009bd9c */ sb	$v0,132($v1)
.L8009bda0:
/* 0x8009bda0 */ lw	$v0,2844($a0)
.L8009bda4:
/* 0x8009bda4 */ sll	$zero,$zero,0x0
.L8009bda8:
/* 0x8009bda8 */ sb	$zero,22($v0)
.L8009bdac:
/* 0x8009bdac */ lui	$v0,0x800e
.L8009bdb0:
/* 0x8009bdb0 */ lw	$v1,2844($v0)
.L8009bdb4:
/* 0x8009bdb4 */ addiu	$v0,$zero,1
.L8009bdb8:
/* 0x8009bdb8 */ j	.L8009bee8
.L8009bdbc:
/* 0x8009bdbc */ sb	$v0,133($v1)
.L8009bdc0:
/* 0x8009bdc0 */ lui	$s0,0x800e
.L8009bdc4:
/* 0x8009bdc4 */ lw	$v1,2844($s0)
.L8009bdc8:
/* 0x8009bdc8 */ addiu	$v0,$zero,29
.L8009bdcc:
/* 0x8009bdcc */ sb	$v0,132($v1)
.L8009bdd0:
/* 0x8009bdd0 */ lw	$v0,2844($s0)
.L8009bdd4:
/* 0x8009bdd4 */ addiu	$s1,$zero,1
.L8009bdd8:
/* 0x8009bdd8 */ jal	0x8009b5b8
.L8009bddc:
/* 0x8009bddc */ sb	$s1,133($v0)
.L8009bde0:
/* 0x8009bde0 */ lw	$v0,2844($s0)
.L8009bde4:
/* 0x8009bde4 */ sll	$zero,$zero,0x0
.L8009bde8:
/* 0x8009bde8 */ lbu	$a0,12($v0)
.L8009bdec:
/* 0x8009bdec */ jal	0x8002d518
.L8009bdf0:
/* 0x8009bdf0 */ sll	$zero,$zero,0x0
.L8009bdf4:
/* 0x8009bdf4 */ lw	$v0,2844($s0)
.L8009bdf8:
/* 0x8009bdf8 */ j	.L8009bee8
.L8009bdfc:
/* 0x8009bdfc */ sb	$s1,18($v0)
.L8009be00:
/* 0x8009be00 */ addiu	$a0,$zero,30
.L8009be04:
/* 0x8009be04 */ jal	0x8009b5f8
.L8009be08:
/* 0x8009be08 */ addiu	$a1,$zero,480
.L8009be0c:
/* 0x8009be0c */ lui	$v0,0x800e
.L8009be10:
/* 0x8009be10 */ lw	$v0,2844($v0)
.L8009be14:
/* 0x8009be14 */ j	.L8009bee8
.L8009be18:
/* 0x8009be18 */ sb	$zero,18($v0)
.L8009be1c:
/* 0x8009be1c */ lui	$a0,0x800e
.L8009be20:
/* 0x8009be20 */ lw	$v1,2844($a0)
.L8009be24:
/* 0x8009be24 */ lui	$v0,0x800e
.L8009be28:
/* 0x8009be28 */ lbu	$v1,12($v1)
.L8009be2c:
/* 0x8009be2c */ addiu	$v0,$v0,16486
.L8009be30:
/* 0x8009be30 */ addu	$v1,$v1,$v0
.L8009be34:
/* 0x8009be34 */ lui	$v0,0x800b
.L8009be38:
/* 0x8009be38 */ sb	$zero,0($v1)
.L8009be3c:
/* 0x8009be3c */ lw	$v0,-14100($v0)
.L8009be40:
/* 0x8009be40 */ sll	$zero,$zero,0x0
.L8009be44:
/* 0x8009be44 */ sb	$zero,80($v0)
.L8009be48:
/* 0x8009be48 */ lw	$v1,2844($a0)
.L8009be4c:
/* 0x8009be4c */ addiu	$v0,$zero,21
.L8009be50:
/* 0x8009be50 */ sb	$v0,132($v1)
.L8009be54:
/* 0x8009be54 */ lw	$v1,2844($a0)
.L8009be58:
/* 0x8009be58 */ addiu	$v0,$zero,1
.L8009be5c:
/* 0x8009be5c */ sb	$v0,133($v1)
.L8009be60:
/* 0x8009be60 */ lw	$v0,2844($a0)
.L8009be64:
/* 0x8009be64 */ sll	$zero,$zero,0x0
.L8009be68:
/* 0x8009be68 */ lbu	$v1,13($v0)
.L8009be6c:
/* 0x8009be6c */ addiu	$v0,$zero,3
.L8009be70:
/* 0x8009be70 */ bne	$v1,$v0,.L8009be80
.L8009be74:
/* 0x8009be74 */ addiu	$a0,$zero,30
.L8009be78:
/* 0x8009be78 */ j	.L8009be84
.L8009be7c:
/* 0x8009be7c */ addiu	$a1,$zero,60
.L8009be80:
/* 0x8009be80 */ addiu	$a1,$zero,240
.L8009be84:
/* 0x8009be84 */ jal	0x8009b5f8
.L8009be88:
/* 0x8009be88 */ sll	$zero,$zero,0x0
.L8009be8c:
/* 0x8009be8c */ lui	$v0,0x800e
.L8009be90:
/* 0x8009be90 */ lw	$v0,2844($v0)
.L8009be94:
/* 0x8009be94 */ sll	$zero,$zero,0x0
.L8009be98:
/* 0x8009be98 */ sb	$zero,18($v0)
.L8009be9c:
/* 0x8009be9c */ lui	$v0,0x800e
.L8009bea0:
/* 0x8009bea0 */ lw	$v1,2932($v0)
.L8009bea4:
/* 0x8009bea4 */ addiu	$v0,$zero,1
.L8009bea8:
/* 0x8009bea8 */ j	.L8009bee8
.L8009beac:
/* 0x8009beac */ sb	$v0,1($v1)
.L8009beb0:
/* 0x8009beb0 */ lui	$v1,0x800e
.L8009beb4:
/* 0x8009beb4 */ lw	$v0,2844($v1)
.L8009beb8:
/* 0x8009beb8 */ sll	$zero,$zero,0x0
.L8009bebc:
/* 0x8009bebc */ sb	$zero,132($v0)
.L8009bec0:
/* 0x8009bec0 */ lw	$v0,2844($v1)
.L8009bec4:
/* 0x8009bec4 */ sll	$zero,$zero,0x0
.L8009bec8:
/* 0x8009bec8 */ sb	$zero,18($v0)
.L8009becc:
/* 0x8009becc */ lw	$v1,2932($a2)
.L8009bed0:
/* 0x8009bed0 */ addiu	$v0,$zero,1
.L8009bed4:
/* 0x8009bed4 */ j	.L8009bee8
.L8009bed8:
/* 0x8009bed8 */ sb	$v0,2($v1)
.L8009bedc:
/* 0x8009bedc */ lw	$v0,2844($v0)
.L8009bee0:
/* 0x8009bee0 */ sll	$zero,$zero,0x0
.L8009bee4:
/* 0x8009bee4 */ sb	$zero,132($v0)
.L8009bee8:
/* 0x8009bee8 */ lw	$ra,32($sp)
.L8009beec:
/* 0x8009beec */ lw	$s1,28($sp)
.L8009bef0:
/* 0x8009bef0 */ lw	$s0,24($sp)
.L8009bef4:
/* 0x8009bef4 */ jr	$ra
.L8009bef8:
/* 0x8009bef8 */ addiu	$sp,$sp,40
.size FUN_8009b94c, .-FUN_8009b94c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009befc
.globl FUN_8009befc
.type FUN_8009befc, @function
FUN_8009befc:
.L8009befc:
/* 0x8009befc */ addiu	$sp,$sp,-32
.L8009bf00:
/* 0x8009bf00 */ sw	$s1,20($sp)
.L8009bf04:
/* 0x8009bf04 */ addu	$s1,$a0,$zero
.L8009bf08:
/* 0x8009bf08 */ sw	$s2,24($sp)
.L8009bf0c:
/* 0x8009bf0c */ addu	$s2,$a1,$zero
.L8009bf10:
/* 0x8009bf10 */ lui	$v0,0x800e
.L8009bf14:
/* 0x8009bf14 */ lw	$a0,2932($v0)
.L8009bf18:
/* 0x8009bf18 */ addiu	$a1,$zero,4
.L8009bf1c:
/* 0x8009bf1c */ sw	$ra,28($sp)
.L8009bf20:
/* 0x8009bf20 */ jal	0x8003bac8
.L8009bf24:
/* 0x8009bf24 */ sw	$s0,16($sp)
.L8009bf28:
/* 0x8009bf28 */ lui	$s0,0x800e
.L8009bf2c:
/* 0x8009bf2c */ lw	$a0,2844($s0)
.L8009bf30:
/* 0x8009bf30 */ jal	0x8003bac8
.L8009bf34:
/* 0x8009bf34 */ addiu	$a1,$zero,144
.L8009bf38:
/* 0x8009bf38 */ lui	$a2,0x801c
.L8009bf3c:
/* 0x8009bf3c */ ori	$a2,$a2,0xf000
.L8009bf40:
/* 0x8009bf40 */ lw	$v0,2844($s0)
.L8009bf44:
/* 0x8009bf44 */ lui	$a0,0x801c
.L8009bf48:
/* 0x8009bf48 */ sb	$s2,13($v0)
.L8009bf4c:
/* 0x8009bf4c */ lw	$v0,2844($s0)
.L8009bf50:
/* 0x8009bf50 */ ori	$a0,$a0,0xf000
.L8009bf54:
/* 0x8009bf54 */ sb	$s1,12($v0)
.L8009bf58:
/* 0x8009bf58 */ lw	$v1,2844($s0)
.L8009bf5c:
/* 0x8009bf5c */ lui	$v0,0x8002
.L8009bf60:
/* 0x8009bf60 */ addu	$a1,$v1,$zero
.L8009bf64:
/* 0x8009bf64 */ addiu	$t2,$v0,-2836
.L8009bf68:
/* 0x8009bf68 */ lw	$a3,0($t2)
.L8009bf6c:
/* 0x8009bf6c */ lw	$t0,4($t2)
.L8009bf70:
/* 0x8009bf70 */ lw	$t1,8($t2)
.L8009bf74:
/* 0x8009bf74 */ sw	$a3,24($v1)
.L8009bf78:
/* 0x8009bf78 */ sw	$t0,28($v1)
.L8009bf7c:
/* 0x8009bf7c */ sw	$t1,32($v1)
.L8009bf80:
/* 0x8009bf80 */ lw	$a3,12($t2)
.L8009bf84:
/* 0x8009bf84 */ lh	$t0,16($t2)
.L8009bf88:
/* 0x8009bf88 */ lb	$t1,18($t2)
.L8009bf8c:
/* 0x8009bf8c */ sw	$a3,36($v1)
.L8009bf90:
/* 0x8009bf90 */ sh	$t0,40($v1)
.L8009bf94:
/* 0x8009bf94 */ sb	$t1,42($v1)
.L8009bf98:
/* 0x8009bf98 */ jal	0x8009c574
.L8009bf9c:
/* 0x8009bf9c */ sw	$a2,120($a1)
.L8009bfa0:
/* 0x8009bfa0 */ addiu	$a1,$zero,1
.L8009bfa4:
/* 0x8009bfa4 */ andi	$v1,$s2,0xff
.L8009bfa8:
/* 0x8009bfa8 */ lw	$a0,2844($s0)
.L8009bfac:
/* 0x8009bfac */ addiu	$v0,$zero,3
.L8009bfb0:
/* 0x8009bfb0 */ beq	$v1,$v0,.L8009bfc0
.L8009bfb4:
/* 0x8009bfb4 */ sw	$a1,124($a0)
.L8009bfb8:
/* 0x8009bfb8 */ j	.L8009bfc8
.L8009bfbc:
/* 0x8009bfbc */ sb	$a1,17($a0)
.L8009bfc0:
/* 0x8009bfc0 */ sb	$zero,17($a0)
.L8009bfc4:
/* 0x8009bfc4 */ andi	$v1,$s2,0xff
.L8009bfc8:
/* 0x8009bfc8 */ addiu	$v0,$zero,1
.L8009bfcc:
/* 0x8009bfcc */ bne	$v1,$v0,.L8009bfe0
.L8009bfd0:
/* 0x8009bfd0 */ lui	$v0,0x800e
.L8009bfd4:
/* 0x8009bfd4 */ lw	$v0,2844($v0)
.L8009bfd8:
/* 0x8009bfd8 */ j	.L8009bfec
.L8009bfdc:
/* 0x8009bfdc */ sb	$v1,19($v0)
.L8009bfe0:
/* 0x8009bfe0 */ lw	$v0,2844($v0)
.L8009bfe4:
/* 0x8009bfe4 */ sll	$zero,$zero,0x0
.L8009bfe8:
/* 0x8009bfe8 */ sb	$zero,19($v0)
.L8009bfec:
/* 0x8009bfec */ andi	$v1,$s2,0xff
.L8009bff0:
/* 0x8009bff0 */ addiu	$v0,$zero,1
.L8009bff4:
/* 0x8009bff4 */ bne	$v1,$v0,.L8009c008
.L8009bff8:
/* 0x8009bff8 */ lui	$v0,0x800e
.L8009bffc:
/* 0x8009bffc */ lw	$v0,2844($v0)
.L8009c000:
/* 0x8009c000 */ j	.L8009c014
.L8009c004:
/* 0x8009c004 */ sb	$v1,16($v0)
.L8009c008:
/* 0x8009c008 */ lw	$v0,2844($v0)
.L8009c00c:
/* 0x8009c00c */ sll	$zero,$zero,0x0
.L8009c010:
/* 0x8009c010 */ sb	$zero,16($v0)
.L8009c014:
/* 0x8009c014 */ lw	$ra,28($sp)
.L8009c018:
/* 0x8009c018 */ lw	$s2,24($sp)
.L8009c01c:
/* 0x8009c01c */ lw	$s1,20($sp)
.L8009c020:
/* 0x8009c020 */ lw	$s0,16($sp)
.L8009c024:
/* 0x8009c024 */ jr	$ra
.L8009c028:
/* 0x8009c028 */ addiu	$sp,$sp,32
.size FUN_8009befc, .-FUN_8009befc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009c02c
.globl FUN_8009c02c
.type FUN_8009c02c, @function
FUN_8009c02c:
.L8009c02c:
/* 0x8009c02c */ lui	$v0,0x800e
.L8009c030:
/* 0x8009c030 */ lw	$v0,2932($v0)
.L8009c034:
/* 0x8009c034 */ addiu	$sp,$sp,-32
.L8009c038:
/* 0x8009c038 */ sw	$s1,20($sp)
.L8009c03c:
/* 0x8009c03c */ sw	$ra,24($sp)
.L8009c040:
/* 0x8009c040 */ sw	$s0,16($sp)
.L8009c044:
/* 0x8009c044 */ lbu	$s0,0($v0)
.L8009c048:
/* 0x8009c048 */ addiu	$v0,$zero,10
.L8009c04c:
/* 0x8009c04c */ beq	$s0,$v0,.L8009c428
.L8009c050:
/* 0x8009c050 */ addu	$s1,$zero,$zero
.L8009c054:
/* 0x8009c054 */ slti	$v0,$s0,11
.L8009c058:
/* 0x8009c058 */ beq	$v0,$zero,.L8009c0d4
.L8009c05c:
/* 0x8009c05c */ addiu	$v0,$zero,5
.L8009c060:
/* 0x8009c060 */ beq	$s0,$v0,.L8009c384
.L8009c064:
/* 0x8009c064 */ slti	$v0,$s0,6
.L8009c068:
/* 0x8009c068 */ beq	$v0,$zero,.L8009c0a8
.L8009c06c:
/* 0x8009c06c */ addiu	$v1,$zero,1
.L8009c070:
/* 0x8009c070 */ beq	$s0,$v1,.L8009c16c
.L8009c074:
/* 0x8009c074 */ slti	$v0,$s0,2
.L8009c078:
/* 0x8009c078 */ beq	$v0,$zero,.L8009c090
.L8009c07c:
/* 0x8009c07c */ addiu	$v0,$zero,2
.L8009c080:
/* 0x8009c080 */ beq	$s0,$zero,.L8009c140
.L8009c084:
/* 0x8009c084 */ addu	$v0,$s1,$zero
.L8009c088:
/* 0x8009c088 */ j	.L8009c560
.L8009c08c:
/* 0x8009c08c */ sll	$zero,$zero,0x0
.L8009c090:
/* 0x8009c090 */ beq	$s0,$v0,.L8009c19c
.L8009c094:
/* 0x8009c094 */ addiu	$v0,$zero,3
.L8009c098:
/* 0x8009c098 */ beq	$s0,$v0,.L8009c1ac
.L8009c09c:
/* 0x8009c09c */ addu	$v0,$s1,$zero
.L8009c0a0:
/* 0x8009c0a0 */ j	.L8009c560
.L8009c0a4:
/* 0x8009c0a4 */ sll	$zero,$zero,0x0
.L8009c0a8:
/* 0x8009c0a8 */ addiu	$v0,$zero,7
.L8009c0ac:
/* 0x8009c0ac */ beq	$s0,$v0,.L8009c250
.L8009c0b0:
/* 0x8009c0b0 */ slt	$v0,$s0,$v0
.L8009c0b4:
/* 0x8009c0b4 */ bne	$v0,$zero,.L8009c20c
.L8009c0b8:
/* 0x8009c0b8 */ addiu	$v0,$zero,8
.L8009c0bc:
/* 0x8009c0bc */ beq	$s0,$v0,.L8009c294
.L8009c0c0:
/* 0x8009c0c0 */ addiu	$v0,$zero,9
.L8009c0c4:
/* 0x8009c0c4 */ beq	$s0,$v0,.L8009c340
.L8009c0c8:
/* 0x8009c0c8 */ addu	$v0,$s1,$zero
.L8009c0cc:
/* 0x8009c0cc */ j	.L8009c560
.L8009c0d0:
/* 0x8009c0d0 */ sll	$zero,$zero,0x0
.L8009c0d4:
/* 0x8009c0d4 */ addiu	$v0,$zero,239
.L8009c0d8:
/* 0x8009c0d8 */ beq	$s0,$v0,.L8009c558
.L8009c0dc:
/* 0x8009c0dc */ slti	$v0,$s0,240
.L8009c0e0:
/* 0x8009c0e0 */ beq	$v0,$zero,.L8009c110
.L8009c0e4:
/* 0x8009c0e4 */ addiu	$v0,$zero,12
.L8009c0e8:
/* 0x8009c0e8 */ beq	$s0,$v0,.L8009c2ec
.L8009c0ec:
/* 0x8009c0ec */ slt	$v0,$s0,$v0
.L8009c0f0:
/* 0x8009c0f0 */ bne	$v0,$zero,.L8009c350
.L8009c0f4:
/* 0x8009c0f4 */ addiu	$v0,$zero,16
.L8009c0f8:
/* 0x8009c0f8 */ beq	$s0,$v0,.L8009c538
.L8009c0fc:
/* 0x8009c0fc */ addiu	$v0,$zero,17
.L8009c100:
/* 0x8009c100 */ beq	$s0,$v0,.L8009c4ec
.L8009c104:
/* 0x8009c104 */ addu	$v0,$s1,$zero
.L8009c108:
/* 0x8009c108 */ j	.L8009c560
.L8009c10c:
/* 0x8009c10c */ sll	$zero,$zero,0x0
.L8009c110:
/* 0x8009c110 */ slti	$v0,$s0,246
.L8009c114:
/* 0x8009c114 */ beq	$v0,$zero,.L8009c12c
.L8009c118:
/* 0x8009c118 */ slti	$v0,$s0,241
.L8009c11c:
/* 0x8009c11c */ beq	$v0,$zero,.L8009c47c
.L8009c120:
/* 0x8009c120 */ lui	$v0,0x800e
.L8009c124:
/* 0x8009c124 */ j	.L8009c538
.L8009c128:
/* 0x8009c128 */ sll	$zero,$zero,0x0
.L8009c12c:
/* 0x8009c12c */ addiu	$v0,$zero,255
.L8009c130:
/* 0x8009c130 */ beq	$s0,$v0,.L8009c558
.L8009c134:
/* 0x8009c134 */ addu	$v0,$s1,$zero
.L8009c138:
/* 0x8009c138 */ j	.L8009c560
.L8009c13c:
/* 0x8009c13c */ sll	$zero,$zero,0x0
.L8009c140:
/* 0x8009c140 */ lui	$v0,0x800e
.L8009c144:
/* 0x8009c144 */ lw	$v0,2844($v0)
.L8009c148:
/* 0x8009c148 */ sll	$zero,$zero,0x0
.L8009c14c:
/* 0x8009c14c */ lbu	$v0,19($v0)
.L8009c150:
/* 0x8009c150 */ sll	$zero,$zero,0x0
.L8009c154:
/* 0x8009c154 */ bne	$v0,$v1,.L8009c528
.L8009c158:
/* 0x8009c158 */ sll	$zero,$zero,0x0
.L8009c15c:
/* 0x8009c15c */ jal	0x8009b94c
.L8009c160:
/* 0x8009c160 */ addiu	$a0,$zero,1
.L8009c164:
/* 0x8009c164 */ j	.L8009c560
.L8009c168:
/* 0x8009c168 */ addu	$v0,$s1,$zero
.L8009c16c:
/* 0x8009c16c */ jal	0x8009a108
.L8009c170:
/* 0x8009c170 */ sll	$zero,$zero,0x0
.L8009c174:
/* 0x8009c174 */ addu	$v1,$v0,$zero
.L8009c178:
/* 0x8009c178 */ beq	$v1,$s0,.L8009c528
.L8009c17c:
/* 0x8009c17c */ slti	$v0,$v1,2
.L8009c180:
/* 0x8009c180 */ bne	$v0,$zero,.L8009c560
.L8009c184:
/* 0x8009c184 */ addu	$v0,$s1,$zero
.L8009c188:
/* 0x8009c188 */ slti	$v0,$v1,4
.L8009c18c:
/* 0x8009c18c */ beq	$v0,$zero,.L8009c560
.L8009c190:
/* 0x8009c190 */ addu	$v0,$s1,$zero
.L8009c194:
/* 0x8009c194 */ j	.L8009c504
.L8009c198:
/* 0x8009c198 */ sll	$zero,$zero,0x0
.L8009c19c:
/* 0x8009c19c */ jal	0x8009b94c
.L8009c1a0:
/* 0x8009c1a0 */ addiu	$a0,$zero,3
.L8009c1a4:
/* 0x8009c1a4 */ j	.L8009c560
.L8009c1a8:
/* 0x8009c1a8 */ addu	$v0,$s1,$zero
.L8009c1ac:
/* 0x8009c1ac */ jal	0x80099edc
.L8009c1b0:
/* 0x8009c1b0 */ sll	$zero,$zero,0x0
.L8009c1b4:
/* 0x8009c1b4 */ lui	$v1,0x800e
.L8009c1b8:
/* 0x8009c1b8 */ addu	$a0,$v0,$zero
.L8009c1bc:
/* 0x8009c1bc */ lw	$v1,2844($v1)
.L8009c1c0:
/* 0x8009c1c0 */ sltiu	$v0,$a0,6
.L8009c1c4:
/* 0x8009c1c4 */ beq	$v0,$zero,.L8009c55c
.L8009c1c8:
/* 0x8009c1c8 */ sw	$a0,128($v1)
.L8009c1cc:
/* 0x8009c1cc */ lui	$v0,0x8002
.L8009c1d0:
/* 0x8009c1d0 */ addiu	$v0,$v0,-2812
.L8009c1d4:
/* 0x8009c1d4 */ sll	$v1,$a0,0x2
.L8009c1d8:
/* 0x8009c1d8 */ addu	$v1,$v1,$v0
.L8009c1dc:
/* 0x8009c1dc */ lw	$v0,0($v1)
.L8009c1e0:
/* 0x8009c1e0 */ sll	$zero,$zero,0x0
.L8009c1e4:
/* 0x8009c1e4 */ jr	$v0
.L8009c1e8:
/* 0x8009c1e8 */ sll	$zero,$zero,0x0
.L8009c1ec:
/* 0x8009c1ec */ jal	0x8009b94c
.L8009c1f0:
/* 0x8009c1f0 */ addiu	$a0,$zero,7
.L8009c1f4:
/* 0x8009c1f4 */ j	.L8009c560
.L8009c1f8:
/* 0x8009c1f8 */ addu	$v0,$s1,$zero
.L8009c1fc:
/* 0x8009c1fc */ jal	0x8009b94c
.L8009c200:
/* 0x8009c200 */ addiu	$a0,$zero,6
.L8009c204:
/* 0x8009c204 */ j	.L8009c560
.L8009c208:
/* 0x8009c208 */ addu	$v0,$s1,$zero
.L8009c20c:
/* 0x8009c20c */ jal	0x8009a4dc
.L8009c210:
/* 0x8009c210 */ sll	$zero,$zero,0x0
.L8009c214:
/* 0x8009c214 */ addu	$v1,$v0,$zero
.L8009c218:
/* 0x8009c218 */ sltiu	$v0,$v1,5
.L8009c21c:
/* 0x8009c21c */ beq	$v0,$zero,.L8009c55c
.L8009c220:
/* 0x8009c220 */ lui	$v0,0x8002
.L8009c224:
/* 0x8009c224 */ addiu	$v0,$v0,-2788
.L8009c228:
/* 0x8009c228 */ sll	$v1,$v1,0x2
.L8009c22c:
/* 0x8009c22c */ addu	$v1,$v1,$v0
.L8009c230:
/* 0x8009c230 */ lw	$v0,0($v1)
.L8009c234:
/* 0x8009c234 */ sll	$zero,$zero,0x0
.L8009c238:
/* 0x8009c238 */ jr	$v0
.L8009c23c:
/* 0x8009c23c */ sll	$zero,$zero,0x0
.L8009c240:
/* 0x8009c240 */ jal	0x8009b94c
.L8009c244:
/* 0x8009c244 */ addiu	$a0,$zero,244
.L8009c248:
/* 0x8009c248 */ j	.L8009c560
.L8009c24c:
/* 0x8009c24c */ addu	$v0,$s1,$zero
.L8009c250:
/* 0x8009c250 */ lui	$v0,0x800e
.L8009c254:
/* 0x8009c254 */ lw	$a1,2844($v0)
.L8009c258:
/* 0x8009c258 */ sll	$zero,$zero,0x0
.L8009c25c:
/* 0x8009c25c */ lbu	$a0,12($a1)
.L8009c260:
/* 0x8009c260 */ jal	0x8002d47c
.L8009c264:
/* 0x8009c264 */ addiu	$a1,$a1,24
.L8009c268:
/* 0x8009c268 */ addiu	$v1,$zero,1
.L8009c26c:
/* 0x8009c26c */ bne	$v0,$v1,.L8009c284
.L8009c270:
/* 0x8009c270 */ sll	$zero,$zero,0x0
.L8009c274:
/* 0x8009c274 */ jal	0x8009b94c
.L8009c278:
/* 0x8009c278 */ addiu	$a0,$zero,5
.L8009c27c:
/* 0x8009c27c */ j	.L8009c560
.L8009c280:
/* 0x8009c280 */ addu	$v0,$s1,$zero
.L8009c284:
/* 0x8009c284 */ jal	0x8009b94c
.L8009c288:
/* 0x8009c288 */ addiu	$a0,$zero,8
.L8009c28c:
/* 0x8009c28c */ j	.L8009c560
.L8009c290:
/* 0x8009c290 */ addu	$v0,$s1,$zero
.L8009c294:
/* 0x8009c294 */ lui	$s0,0x800e
.L8009c298:
/* 0x8009c298 */ lw	$v0,2844($s0)
.L8009c29c:
/* 0x8009c29c */ sll	$zero,$zero,0x0
.L8009c2a0:
/* 0x8009c2a0 */ lbu	$a0,12($v0)
.L8009c2a4:
/* 0x8009c2a4 */ jal	0x8002d3d0
.L8009c2a8:
/* 0x8009c2a8 */ sll	$zero,$zero,0x0
.L8009c2ac:
/* 0x8009c2ac */ lw	$v1,2844($s0)
.L8009c2b0:
/* 0x8009c2b0 */ sll	$zero,$zero,0x0
.L8009c2b4:
/* 0x8009c2b4 */ lw	$v1,124($v1)
.L8009c2b8:
/* 0x8009c2b8 */ sll	$zero,$zero,0x0
.L8009c2bc:
/* 0x8009c2bc */ addu	$v0,$v0,$v1
.L8009c2c0:
/* 0x8009c2c0 */ slti	$v0,$v0,16
.L8009c2c4:
/* 0x8009c2c4 */ beq	$v0,$zero,.L8009c2dc
.L8009c2c8:
/* 0x8009c2c8 */ sll	$zero,$zero,0x0
.L8009c2cc:
/* 0x8009c2cc */ jal	0x8009b94c
.L8009c2d0:
/* 0x8009c2d0 */ addiu	$a0,$zero,12
.L8009c2d4:
/* 0x8009c2d4 */ j	.L8009c560
.L8009c2d8:
/* 0x8009c2d8 */ addu	$v0,$s1,$zero
.L8009c2dc:
/* 0x8009c2dc */ jal	0x8009b94c
.L8009c2e0:
/* 0x8009c2e0 */ addiu	$a0,$zero,245
.L8009c2e4:
/* 0x8009c2e4 */ j	.L8009c560
.L8009c2e8:
/* 0x8009c2e8 */ addu	$v0,$s1,$zero
.L8009c2ec:
/* 0x8009c2ec */ jal	0x8002cc60
.L8009c2f0:
/* 0x8009c2f0 */ sll	$zero,$zero,0x0
.L8009c2f4:
/* 0x8009c2f4 */ addu	$v1,$v0,$zero
.L8009c2f8:
/* 0x8009c2f8 */ sltiu	$v0,$v1,5
.L8009c2fc:
/* 0x8009c2fc */ beq	$v0,$zero,.L8009c330
.L8009c300:
/* 0x8009c300 */ lui	$v0,0x8002
.L8009c304:
/* 0x8009c304 */ addiu	$v0,$v0,-2764
.L8009c308:
/* 0x8009c308 */ sll	$v1,$v1,0x2
.L8009c30c:
/* 0x8009c30c */ addu	$v1,$v1,$v0
.L8009c310:
/* 0x8009c310 */ lw	$v0,0($v1)
.L8009c314:
/* 0x8009c314 */ sll	$zero,$zero,0x0
.L8009c318:
/* 0x8009c318 */ jr	$v0
.L8009c31c:
/* 0x8009c31c */ sll	$zero,$zero,0x0
.L8009c320:
/* 0x8009c320 */ jal	0x8009b94c
.L8009c324:
/* 0x8009c324 */ addiu	$a0,$zero,9
.L8009c328:
/* 0x8009c328 */ j	.L8009c560
.L8009c32c:
/* 0x8009c32c */ addu	$v0,$s1,$zero
.L8009c330:
/* 0x8009c330 */ jal	0x8009b94c
.L8009c334:
/* 0x8009c334 */ addiu	$a0,$zero,243
.L8009c338:
/* 0x8009c338 */ j	.L8009c560
.L8009c33c:
/* 0x8009c33c */ addu	$v0,$s1,$zero
.L8009c340:
/* 0x8009c340 */ jal	0x8009b94c
.L8009c344:
/* 0x8009c344 */ addiu	$a0,$zero,11
.L8009c348:
/* 0x8009c348 */ j	.L8009c560
.L8009c34c:
/* 0x8009c34c */ addu	$v0,$s1,$zero
.L8009c350:
/* 0x8009c350 */ jal	0x8009ae38
.L8009c354:
/* 0x8009c354 */ sll	$zero,$zero,0x0
.L8009c358:
/* 0x8009c358 */ addu	$v1,$v0,$zero
.L8009c35c:
/* 0x8009c35c */ addiu	$v0,$zero,1
.L8009c360:
/* 0x8009c360 */ beq	$v1,$v0,.L8009c3fc
.L8009c364:
/* 0x8009c364 */ slti	$v0,$v1,2
.L8009c368:
/* 0x8009c368 */ bne	$v0,$zero,.L8009c560
.L8009c36c:
/* 0x8009c36c */ addu	$v0,$s1,$zero
.L8009c370:
/* 0x8009c370 */ addiu	$v0,$zero,2
.L8009c374:
/* 0x8009c374 */ bne	$v1,$v0,.L8009c560
.L8009c378:
/* 0x8009c378 */ addu	$v0,$s1,$zero
.L8009c37c:
/* 0x8009c37c */ j	.L8009c46c
.L8009c380:
/* 0x8009c380 */ sll	$zero,$zero,0x0
.L8009c384:
/* 0x8009c384 */ lui	$v0,0x800e
.L8009c388:
/* 0x8009c388 */ lw	$v1,2844($v0)
.L8009c38c:
/* 0x8009c38c */ sll	$zero,$zero,0x0
.L8009c390:
/* 0x8009c390 */ lbu	$s0,8($v1)
.L8009c394:
/* 0x8009c394 */ sll	$zero,$zero,0x0
.L8009c398:
/* 0x8009c398 */ beq	$s0,$zero,.L8009c3b0
.L8009c39c:
/* 0x8009c39c */ addiu	$v0,$zero,1
.L8009c3a0:
/* 0x8009c3a0 */ beq	$s0,$v0,.L8009c3c8
.L8009c3a4:
/* 0x8009c3a4 */ addu	$v0,$s1,$zero
.L8009c3a8:
/* 0x8009c3a8 */ j	.L8009c560
.L8009c3ac:
/* 0x8009c3ac */ sll	$zero,$zero,0x0
.L8009c3b0:
/* 0x8009c3b0 */ lbu	$a0,17($v1)
.L8009c3b4:
/* 0x8009c3b4 */ sll	$zero,$zero,0x0
.L8009c3b8:
/* 0x8009c3b8 */ bne	$a0,$v0,.L8009c3fc
.L8009c3bc:
/* 0x8009c3bc */ sll	$zero,$zero,0x0
.L8009c3c0:
/* 0x8009c3c0 */ j	.L8009c55c
.L8009c3c4:
/* 0x8009c3c4 */ sb	$a0,8($v1)
.L8009c3c8:
/* 0x8009c3c8 */ jal	0x8002d52c
.L8009c3cc:
/* 0x8009c3cc */ sll	$zero,$zero,0x0
.L8009c3d0:
/* 0x8009c3d0 */ bne	$v0,$s0,.L8009c3e8
.L8009c3d4:
/* 0x8009c3d4 */ sll	$zero,$zero,0x0
.L8009c3d8:
/* 0x8009c3d8 */ jal	0x8009b94c
.L8009c3dc:
/* 0x8009c3dc */ addiu	$a0,$zero,241
.L8009c3e0:
/* 0x8009c3e0 */ j	.L8009c560
.L8009c3e4:
/* 0x8009c3e4 */ addu	$v0,$s1,$zero
.L8009c3e8:
/* 0x8009c3e8 */ jal	0x8009a108
.L8009c3ec:
/* 0x8009c3ec */ sll	$zero,$zero,0x0
.L8009c3f0:
/* 0x8009c3f0 */ addu	$v1,$v0,$zero
.L8009c3f4:
/* 0x8009c3f4 */ bne	$v1,$s0,.L8009c40c
.L8009c3f8:
/* 0x8009c3f8 */ slti	$v0,$v1,2
.L8009c3fc:
/* 0x8009c3fc */ jal	0x8009b94c
.L8009c400:
/* 0x8009c400 */ addiu	$a0,$zero,10
.L8009c404:
/* 0x8009c404 */ j	.L8009c560
.L8009c408:
/* 0x8009c408 */ addu	$v0,$s1,$zero
.L8009c40c:
/* 0x8009c40c */ bne	$v0,$zero,.L8009c560
.L8009c410:
/* 0x8009c410 */ addu	$v0,$s1,$zero
.L8009c414:
/* 0x8009c414 */ slti	$v0,$v1,4
.L8009c418:
/* 0x8009c418 */ beq	$v0,$zero,.L8009c560
.L8009c41c:
/* 0x8009c41c */ addu	$v0,$s1,$zero
.L8009c420:
/* 0x8009c420 */ j	.L8009c504
.L8009c424:
/* 0x8009c424 */ sll	$zero,$zero,0x0
.L8009c428:
/* 0x8009c428 */ jal	0x8009ab24
.L8009c42c:
/* 0x8009c42c */ sll	$zero,$zero,0x0
.L8009c430:
/* 0x8009c430 */ addu	$v1,$v0,$zero
.L8009c434:
/* 0x8009c434 */ addiu	$v0,$zero,1
.L8009c438:
/* 0x8009c438 */ beq	$v1,$v0,.L8009c45c
.L8009c43c:
/* 0x8009c43c */ slti	$v0,$v1,2
.L8009c440:
/* 0x8009c440 */ bne	$v0,$zero,.L8009c560
.L8009c444:
/* 0x8009c444 */ addu	$v0,$s1,$zero
.L8009c448:
/* 0x8009c448 */ addiu	$v0,$zero,2
.L8009c44c:
/* 0x8009c44c */ beq	$v1,$v0,.L8009c46c
.L8009c450:
/* 0x8009c450 */ addu	$v0,$s1,$zero
.L8009c454:
/* 0x8009c454 */ j	.L8009c560
.L8009c458:
/* 0x8009c458 */ sll	$zero,$zero,0x0
.L8009c45c:
/* 0x8009c45c */ jal	0x8009b94c
.L8009c460:
/* 0x8009c460 */ addiu	$a0,$zero,240
.L8009c464:
/* 0x8009c464 */ j	.L8009c560
.L8009c468:
/* 0x8009c468 */ addu	$v0,$s1,$zero
.L8009c46c:
/* 0x8009c46c */ jal	0x8009b94c
.L8009c470:
/* 0x8009c470 */ addiu	$a0,$zero,242
.L8009c474:
/* 0x8009c474 */ j	.L8009c560
.L8009c478:
/* 0x8009c478 */ addu	$v0,$s1,$zero
.L8009c47c:
/* 0x8009c47c */ lw	$v0,2844($v0)
.L8009c480:
/* 0x8009c480 */ sll	$zero,$zero,0x0
.L8009c484:
/* 0x8009c484 */ lbu	$v1,13($v0)
.L8009c488:
/* 0x8009c488 */ sll	$zero,$zero,0x0
.L8009c48c:
/* 0x8009c48c */ slti	$v0,$v1,5
.L8009c490:
/* 0x8009c490 */ beq	$v0,$zero,.L8009c4dc
.L8009c494:
/* 0x8009c494 */ slti	$v0,$v1,3
.L8009c498:
/* 0x8009c498 */ bne	$v0,$zero,.L8009c4dc
.L8009c49c:
/* 0x8009c49c */ sll	$zero,$zero,0x0
.L8009c4a0:
/* 0x8009c4a0 */ jal	0x8009a108
.L8009c4a4:
/* 0x8009c4a4 */ sll	$zero,$zero,0x0
.L8009c4a8:
/* 0x8009c4a8 */ addu	$v1,$v0,$zero
.L8009c4ac:
/* 0x8009c4ac */ addiu	$v0,$zero,1
.L8009c4b0:
/* 0x8009c4b0 */ beq	$v1,$v0,.L8009c528
.L8009c4b4:
/* 0x8009c4b4 */ slti	$v0,$v1,2
.L8009c4b8:
/* 0x8009c4b8 */ bne	$v0,$zero,.L8009c560
.L8009c4bc:
/* 0x8009c4bc */ addu	$v0,$s1,$zero
.L8009c4c0:
/* 0x8009c4c0 */ slti	$v0,$v1,4
.L8009c4c4:
/* 0x8009c4c4 */ beq	$v0,$zero,.L8009c560
.L8009c4c8:
/* 0x8009c4c8 */ addu	$v0,$s1,$zero
.L8009c4cc:
/* 0x8009c4cc */ jal	0x8009b94c
.L8009c4d0:
/* 0x8009c4d0 */ addiu	$a0,$zero,17
.L8009c4d4:
/* 0x8009c4d4 */ j	.L8009c560
.L8009c4d8:
/* 0x8009c4d8 */ addu	$v0,$s1,$zero
.L8009c4dc:
/* 0x8009c4dc */ jal	0x8009b94c
.L8009c4e0:
/* 0x8009c4e0 */ addiu	$a0,$zero,16
.L8009c4e4:
/* 0x8009c4e4 */ j	.L8009c560
.L8009c4e8:
/* 0x8009c4e8 */ addu	$v0,$s1,$zero
.L8009c4ec:
/* 0x8009c4ec */ jal	0x8009a108
.L8009c4f0:
/* 0x8009c4f0 */ sll	$zero,$zero,0x0
.L8009c4f4:
/* 0x8009c4f4 */ addu	$v1,$v0,$zero
.L8009c4f8:
/* 0x8009c4f8 */ addiu	$v0,$zero,1
.L8009c4fc:
/* 0x8009c4fc */ bne	$v1,$v0,.L8009c514
.L8009c500:
/* 0x8009c500 */ slti	$v0,$v1,2
.L8009c504:
/* 0x8009c504 */ jal	0x8009b94c
.L8009c508:
/* 0x8009c508 */ addiu	$a0,$zero,239
.L8009c50c:
/* 0x8009c50c */ j	.L8009c560
.L8009c510:
/* 0x8009c510 */ addu	$v0,$s1,$zero
.L8009c514:
/* 0x8009c514 */ bne	$v0,$zero,.L8009c560
.L8009c518:
/* 0x8009c518 */ addu	$v0,$s1,$zero
.L8009c51c:
/* 0x8009c51c */ slti	$v0,$v1,4
.L8009c520:
/* 0x8009c520 */ beq	$v0,$zero,.L8009c560
.L8009c524:
/* 0x8009c524 */ addu	$v0,$s1,$zero
.L8009c528:
/* 0x8009c528 */ jal	0x8009b94c
.L8009c52c:
/* 0x8009c52c */ addiu	$a0,$zero,2
.L8009c530:
/* 0x8009c530 */ j	.L8009c560
.L8009c534:
/* 0x8009c534 */ addu	$v0,$s1,$zero
.L8009c538:
/* 0x8009c538 */ jal	0x8009b614
.L8009c53c:
/* 0x8009c53c */ sll	$zero,$zero,0x0
.L8009c540:
/* 0x8009c540 */ blez	$v0,.L8009c560
.L8009c544:
/* 0x8009c544 */ addu	$v0,$s1,$zero
.L8009c548:
/* 0x8009c548 */ jal	0x8009b94c
.L8009c54c:
/* 0x8009c54c */ addiu	$a0,$zero,255
.L8009c550:
/* 0x8009c550 */ j	.L8009c560
.L8009c554:
/* 0x8009c554 */ addu	$v0,$s1,$zero
.L8009c558:
/* 0x8009c558 */ addiu	$s1,$zero,1
.L8009c55c:
/* 0x8009c55c */ addu	$v0,$s1,$zero
.L8009c560:
/* 0x8009c560 */ lw	$ra,24($sp)
.L8009c564:
/* 0x8009c564 */ lw	$s1,20($sp)
.L8009c568:
/* 0x8009c568 */ lw	$s0,16($sp)
.L8009c56c:
/* 0x8009c56c */ jr	$ra
.L8009c570:
/* 0x8009c570 */ addiu	$sp,$sp,32
.size FUN_8009c02c, .-FUN_8009c02c
