.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008a8cc
.globl FUN_8008a8cc
.type FUN_8008a8cc, @function
FUN_8008a8cc:
/* Runtime timing and resource index helper. */
.L8008a8cc:
/* 0x8008a8cc */ addiu	$sp,$sp,-40
.L8008a8d0:
/* 0x8008a8d0 */ sw	$s1,20($sp)
.L8008a8d4:
/* 0x8008a8d4 */ addu	$s1,$a0,$zero
.L8008a8d8:
/* 0x8008a8d8 */ sw	$ra,32($sp)
.L8008a8dc:
/* 0x8008a8dc */ sw	$s3,28($sp)
.L8008a8e0:
/* 0x8008a8e0 */ sw	$s2,24($sp)
.L8008a8e4:
/* 0x8008a8e4 */ sw	$s0,16($sp)
.L8008a8e8:
/* 0x8008a8e8 */ lbu	$v0,1968($s1)
.L8008a8ec:
/* 0x8008a8ec */ sll	$zero,$zero,0x0
.L8008a8f0:
/* 0x8008a8f0 */ beq	$v0,$zero,.L8008a97c
.L8008a8f4:
/* 0x8008a8f4 */ lui	$s0,0x800f
.L8008a8f8:
/* 0x8008a8f8 */ addiu	$s0,$s0,10504
.L8008a8fc:
/* 0x8008a8fc */ lw	$a0,4($s0)
.L8008a900:
/* 0x8008a900 */ jal	0x80086634
.L8008a904:
/* 0x8008a904 */ addu	$s2,$zero,$zero
.L8008a908:
/* 0x8008a908 */ sll	$v0,$v0,0xc
.L8008a90c:
/* 0x8008a90c */ lw	$a0,4($s0)
.L8008a910:
/* 0x8008a910 */ lw	$a1,1868($s1)
.L8008a914:
/* 0x8008a914 */ lw	$v1,4($s1)
.L8008a918:
/* 0x8008a918 */ addu	$s1,$a1,$v0
.L8008a91c:
/* 0x8008a91c */ sll	$v1,$v1,0xc
.L8008a920:
/* 0x8008a920 */ div	$zero,$s1,$v1
.L8008a924:
/* 0x8008a924 */ mfhi	$s1
.L8008a928:
/* 0x8008a928 */ jal	0x80086634
.L8008a92c:
/* 0x8008a92c */ sll	$zero,$zero,0x0
.L8008a930:
/* 0x8008a930 */ addu	$s3,$v0,$zero
.L8008a934:
/* 0x8008a934 */ addiu	$v0,$zero,-1
.L8008a938:
/* 0x8008a938 */ lw	$s0,4($s0)
.L8008a93c:
/* 0x8008a93c */ sll	$zero,$zero,0x0
.L8008a940:
/* 0x8008a940 */ lhu	$a0,0($s0)
.L8008a944:
/* 0x8008a944 */ jal	0x80095ebc
.L8008a948:
/* 0x8008a948 */ addu	$a1,$v0,$zero
.L8008a94c:
/* 0x8008a94c */ bltz	$v0,.L8008a95c
.L8008a950:
/* 0x8008a950 */ sll	$zero,$zero,0x0
.L8008a954:
/* 0x8008a954 */ j	0x8008a93c
.L8008a958:
/* 0x8008a958 */ addiu	$s2,$s2,1
.L8008a95c:
/* 0x8008a95c */ addu	$v0,$s3,$s2
.L8008a960:
/* 0x8008a960 */ sll	$v0,$v0,0xc
.L8008a964:
/* 0x8008a964 */ addiu	$a0,$v0,1
.L8008a968:
/* 0x8008a968 */ slti	$v0,$a0,2
.L8008a96c:
/* 0x8008a96c */ beq	$v0,$zero,.L8008a98c
.L8008a970:
/* 0x8008a970 */ addiu	$v1,$zero,168
.L8008a974:
/* 0x8008a974 */ j	0x8008a9b8
.L8008a978:
/* 0x8008a978 */ sll	$zero,$zero,0x0
.L8008a97c:
/* 0x8008a97c */ lw	$v0,1868($s1)
.L8008a980:
/* 0x8008a980 */ lw	$v1,4($s1)
.L8008a984:
/* 0x8008a984 */ addiu	$s1,$v0,2048
.L8008a988:
/* 0x8008a988 */ sll	$a0,$v1,0xc
.L8008a98c:
/* 0x8008a98c */ addu	$v0,$s1,$a0
.L8008a990:
/* 0x8008a990 */ div	$zero,$v0,$a0
.L8008a994:
/* 0x8008a994 */ mfhi	$v1
.L8008a998:
/* 0x8008a998 */ sll	$zero,$zero,0x0
.L8008a99c:
/* 0x8008a99c */ sll	$v0,$v1,0x2
.L8008a9a0:
/* 0x8008a9a0 */ addu	$v0,$v0,$v1
.L8008a9a4:
/* 0x8008a9a4 */ sll	$v0,$v0,0x2
.L8008a9a8:
/* 0x8008a9a8 */ addu	$v0,$v0,$v1
.L8008a9ac:
/* 0x8008a9ac */ sll	$v0,$v0,0x4
.L8008a9b0:
/* 0x8008a9b0 */ div	$zero,$v0,$a0
.L8008a9b4:
/* 0x8008a9b4 */ mflo	$v1
.L8008a9b8:
/* 0x8008a9b8 */ lw	$ra,32($sp)
.L8008a9bc:
/* 0x8008a9bc */ lw	$s3,28($sp)
.L8008a9c0:
/* 0x8008a9c0 */ lw	$s2,24($sp)
.L8008a9c4:
/* 0x8008a9c4 */ lw	$s1,20($sp)
.L8008a9c8:
/* 0x8008a9c8 */ lw	$s0,16($sp)
.L8008a9cc:
/* 0x8008a9cc */ addu	$v0,$v1,$zero
.L8008a9d0:
/* 0x8008a9d0 */ jr	$ra
.L8008a9d4:
/* 0x8008a9d4 */ addiu	$sp,$sp,40
.size FUN_8008a8cc, .-FUN_8008a8cc
