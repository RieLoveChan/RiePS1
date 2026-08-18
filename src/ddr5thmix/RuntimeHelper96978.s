.set noreorder
.set noat
.set nomacro

.section .text.FUN_80096978
.globl FUN_80096978
.type FUN_80096978, @function
FUN_80096978:
/* Indexed input/event state transition: update 20-byte record and return scaled result. */
.L80096978:
/* 0x80096978 */ addiu	$sp,$sp,-56
.L8009697c:
/* 0x8009697c */ sw	$s3,44($sp)
.L80096980:
/* 0x80096980 */ addu	$s3,$a0,$zero
.L80096984:
/* 0x80096984 */ sw	$s2,40($sp)
.L80096988:
/* 0x80096988 */ addiu	$s2,$zero,1
.L8009698c:
/* 0x8009698c */ sll	$v1,$s3,0x2
.L80096990:
/* 0x80096990 */ addu	$v1,$v1,$s3
.L80096994:
/* 0x80096994 */ sll	$v1,$v1,0x2
.L80096998:
/* 0x80096998 */ lui	$v0,0x8011
.L8009699c:
/* 0x8009699c */ addiu	$v0,$v0,24176
.L800969a0:
/* 0x800969a0 */ sw	$s1,36($sp)
.L800969a4:
/* 0x800969a4 */ addu	$s1,$v1,$v0
.L800969a8:
/* 0x800969a8 */ sw	$s0,32($sp)
.L800969ac:
/* 0x800969ac */ addu	$s0,$s1,$zero
.L800969b0:
/* 0x800969b0 */ sw	$s4,48($sp)
.L800969b4:
/* 0x800969b4 */ addiu	$s4,$s1,2
.L800969b8:
/* 0x800969b8 */ sw	$ra,52($sp)
.L800969bc:
/* 0x800969bc */ lbu	$a0,4($s0)
.L800969c0:
/* 0x800969c0 */ jal	0x800966f8
.L800969c4:
/* 0x800969c4 */ addu	$a1,$s3,$zero
.L800969c8:
/* 0x800969c8 */ bne	$v0,$zero,.L80096a0c
.L800969cc:
/* 0x800969cc */ sll	$zero,$zero,0x0
.L800969d0:
/* 0x800969d0 */ lbu	$v0,4($s0)
.L800969d4:
/* 0x800969d4 */ sll	$zero,$zero,0x0
.L800969d8:
/* 0x800969d8 */ beq	$v0,$s2,.L80096a0c
.L800969dc:
/* 0x800969dc */ sll	$zero,$zero,0x0
.L800969e0:
/* 0x800969e0 */ lbu	$v0,8($s0)
.L800969e4:
/* 0x800969e4 */ sb	$s2,6($s0)
.L800969e8:
/* 0x800969e8 */ addiu	$v0,$v0,1
.L800969ec:
/* 0x800969ec */ sb	$v0,8($s0)
.L800969f0:
/* 0x800969f0 */ andi	$v0,$v0,0xff
.L800969f4:
/* 0x800969f4 */ sltiu	$v0,$v0,16
.L800969f8:
/* 0x800969f8 */ bne	$v0,$zero,.L80096a10
.L800969fc:
/* 0x800969fc */ sll	$zero,$zero,0x0
.L80096a00:
/* 0x80096a00 */ sb	$s2,4($s0)
.L80096a04:
/* 0x80096a04 */ j 0x80096a10
.L80096a08:
/* 0x80096a08 */ sb	$zero,6($s0)
.L80096a0c:
/* 0x80096a0c */ sb	$zero,8($s0)
.L80096a10:
/* 0x80096a10 */ addiu	$s0,$s0,1
.L80096a14:
/* 0x80096a14 */ slt	$v0,$s0,$s4
.L80096a18:
/* 0x80096a18 */ bne	$v0,$zero,.L800969bc
.L80096a1c:
/* 0x80096a1c */ lui	$v0,0x800f
.L80096a20:
/* 0x80096a20 */ addiu	$v0,$v0,10504
.L80096a24:
/* 0x80096a24 */ sll	$v1,$s3,0x3
.L80096a28:
/* 0x80096a28 */ addu	$v1,$v1,$s3
.L80096a2c:
/* 0x80096a2c */ sll	$v1,$v1,0x3
.L80096a30:
/* 0x80096a30 */ addu	$v1,$v1,$s3
.L80096a34:
/* 0x80096a34 */ sll	$v1,$v1,0x2
.L80096a38:
/* 0x80096a38 */ addu	$v1,$v1,$s3
.L80096a3c:
/* 0x80096a3c */ sll	$v1,$v1,0x5
.L80096a40:
/* 0x80096a40 */ addu	$v1,$v1,$s3
.L80096a44:
/* 0x80096a44 */ sll	$v1,$v1,0x2
.L80096a48:
/* 0x80096a48 */ addu	$v1,$v1,$v0
.L80096a4c:
/* 0x80096a4c */ lbu	$v0,146($v1)
.L80096a50:
/* 0x80096a50 */ addiu	$a0,$zero,2
.L80096a54:
/* 0x80096a54 */ bne	$v0,$a0,.L80096b74
.L80096a58:
/* 0x80096a58 */ lui	$v0,0x800e
.L80096a5c:
/* 0x80096a5c */ addiu	$a1,$v0,15384
.L80096a60:
/* 0x80096a60 */ lw	$v0,8($a1)
.L80096a64:
/* 0x80096a64 */ lw	$v1,24($a1)
.L80096a68:
/* 0x80096a68 */ andi	$v0,$v0,0x1010
.L80096a6c:
/* 0x80096a6c */ sltu	$v0,$zero,$v0
.L80096a70:
/* 0x80096a70 */ andi	$v1,$v1,0x1010
.L80096a74:
/* 0x80096a74 */ sltu	$v1,$zero,$v1
.L80096a78:
/* 0x80096a78 */ or	$v0,$v0,$v1
.L80096a7c:
/* 0x80096a7c */ beq	$v0,$zero,.L80096aa4
.L80096a80:
/* 0x80096a80 */ sll	$zero,$zero,0x0
.L80096a84:
/* 0x80096a84 */ lbu	$v0,12($s1)
.L80096a88:
/* 0x80096a88 */ sll	$zero,$zero,0x0
.L80096a8c:
/* 0x80096a8c */ addu	$v0,$s1,$v0
.L80096a90:
/* 0x80096a90 */ sb	$a0,10($v0)
.L80096a94:
/* 0x80096a94 */ lbu	$v0,12($s1)
.L80096a98:
/* 0x80096a98 */ sll	$zero,$zero,0x0
.L80096a9c:
/* 0x80096a9c */ addiu	$v0,$v0,1
.L80096aa0:
/* 0x80096aa0 */ sb	$v0,12($s1)
.L80096aa4:
/* 0x80096aa4 */ lw	$v0,8($a1)
.L80096aa8:
/* 0x80096aa8 */ lw	$v1,24($a1)
.L80096aac:
/* 0x80096aac */ andi	$v0,$v0,0x4040
.L80096ab0:
/* 0x80096ab0 */ sltu	$v0,$zero,$v0
.L80096ab4:
/* 0x80096ab4 */ andi	$v1,$v1,0x4040
.L80096ab8:
/* 0x80096ab8 */ sltu	$v1,$zero,$v1
.L80096abc:
/* 0x80096abc */ or	$v0,$v0,$v1
.L80096ac0:
/* 0x80096ac0 */ beq	$v0,$zero,.L80096ae8
.L80096ac4:
/* 0x80096ac4 */ addiu	$v1,$zero,3
.L80096ac8:
/* 0x80096ac8 */ lbu	$v0,12($s1)
.L80096acc:
/* 0x80096acc */ sll	$zero,$zero,0x0
.L80096ad0:
/* 0x80096ad0 */ addu	$v0,$s1,$v0
.L80096ad4:
/* 0x80096ad4 */ sb	$v1,10($v0)
.L80096ad8:
/* 0x80096ad8 */ lbu	$v0,12($s1)
.L80096adc:
/* 0x80096adc */ sll	$zero,$zero,0x0
.L80096ae0:
/* 0x80096ae0 */ addiu	$v0,$v0,1
.L80096ae4:
/* 0x80096ae4 */ sb	$v0,12($s1)
.L80096ae8:
/* 0x80096ae8 */ lw	$v0,8($a1)
.L80096aec:
/* 0x80096aec */ lw	$v1,24($a1)
.L80096af0:
/* 0x80096af0 */ andi	$v0,$v0,0x8080
.L80096af4:
/* 0x80096af4 */ sltu	$v0,$zero,$v0
.L80096af8:
/* 0x80096af8 */ andi	$v1,$v1,0x8080
.L80096afc:
/* 0x80096afc */ sltu	$v1,$zero,$v1
.L80096b00:
/* 0x80096b00 */ or	$v0,$v0,$v1
.L80096b04:
/* 0x80096b04 */ beq	$v0,$zero,.L80096b44
.L80096b08:
/* 0x80096b08 */ lui	$v0,0x800e
.L80096b0c:
/* 0x80096b0c */ lbu	$v0,12($s1)
.L80096b10:
/* 0x80096b10 */ sll	$zero,$zero,0x0
.L80096b14:
/* 0x80096b14 */ sltiu	$v0,$v0,2
.L80096b18:
/* 0x80096b18 */ beq	$v0,$zero,.L80096b40
.L80096b1c:
/* 0x80096b1c */ addiu	$v1,$zero,4
.L80096b20:
/* 0x80096b20 */ lbu	$v0,12($s1)
.L80096b24:
/* 0x80096b24 */ sll	$zero,$zero,0x0
.L80096b28:
/* 0x80096b28 */ addu	$v0,$s1,$v0
.L80096b2c:
/* 0x80096b2c */ sb	$v1,10($v0)
.L80096b30:
/* 0x80096b30 */ lbu	$v0,12($s1)
.L80096b34:
/* 0x80096b34 */ sll	$zero,$zero,0x0
.L80096b38:
/* 0x80096b38 */ addiu	$v0,$v0,1
.L80096b3c:
/* 0x80096b3c */ sb	$v0,12($s1)
.L80096b40:
/* 0x80096b40 */ lui	$v0,0x800e
.L80096b44:
/* 0x80096b44 */ addiu	$v0,$v0,15384
.L80096b48:
/* 0x80096b48 */ lw	$v1,8($v0)
.L80096b4c:
/* 0x80096b4c */ lw	$v0,24($v0)
.L80096b50:
/* 0x80096b50 */ andi	$v1,$v1,0x2020
.L80096b54:
/* 0x80096b54 */ sltu	$v1,$zero,$v1
.L80096b58:
/* 0x80096b58 */ andi	$v0,$v0,0x2020
.L80096b5c:
/* 0x80096b5c */ sltu	$v0,$zero,$v0
.L80096b60:
/* 0x80096b60 */ or	$v1,$v1,$v0
.L80096b64:
/* 0x80096b64 */ beq	$v1,$zero,.L80096cc8
.L80096b68:
/* 0x80096b68 */ sll	$zero,$zero,0x0
.L80096b6c:
/* 0x80096b6c */ j 0x80096c94
.L80096b70:
/* 0x80096b70 */ sll	$zero,$zero,0x0
.L80096b74:
/* 0x80096b74 */ addiu	$v0,$v0,15384
.L80096b78:
/* 0x80096b78 */ sll	$v1,$s3,0x4
.L80096b7c:
/* 0x80096b7c */ addu	$v1,$v1,$v0
.L80096b80:
/* 0x80096b80 */ lw	$v1,8($v1)
.L80096b84:
/* 0x80096b84 */ sll	$zero,$zero,0x0
.L80096b88:
/* 0x80096b88 */ andi	$v0,$v1,0x10
.L80096b8c:
/* 0x80096b8c */ bne	$v0,$zero,.L80096b9c
.L80096b90:
/* 0x80096b90 */ andi	$v0,$v1,0x1000
.L80096b94:
/* 0x80096b94 */ beq	$v0,$zero,.L80096bc0
.L80096b98:
/* 0x80096b98 */ lui	$v0,0x800e
.L80096b9c:
/* 0x80096b9c */ lbu	$v0,12($s1)
.L80096ba0:
/* 0x80096ba0 */ sll	$zero,$zero,0x0
.L80096ba4:
/* 0x80096ba4 */ addu	$v0,$s1,$v0
.L80096ba8:
/* 0x80096ba8 */ sb	$a0,10($v0)
.L80096bac:
/* 0x80096bac */ lbu	$v0,12($s1)
.L80096bb0:
/* 0x80096bb0 */ sll	$zero,$zero,0x0
.L80096bb4:
/* 0x80096bb4 */ addiu	$v0,$v0,1
.L80096bb8:
/* 0x80096bb8 */ sb	$v0,12($s1)
.L80096bbc:
/* 0x80096bbc */ lui	$v0,0x800e
.L80096bc0:
/* 0x80096bc0 */ addiu	$v0,$v0,15384
.L80096bc4:
/* 0x80096bc4 */ sll	$v1,$s3,0x4
.L80096bc8:
/* 0x80096bc8 */ addu	$v1,$v1,$v0
.L80096bcc:
/* 0x80096bcc */ lw	$v1,8($v1)
.L80096bd0:
/* 0x80096bd0 */ sll	$zero,$zero,0x0
.L80096bd4:
/* 0x80096bd4 */ andi	$v0,$v1,0x40
.L80096bd8:
/* 0x80096bd8 */ bne	$v0,$zero,.L80096be8
.L80096bdc:
/* 0x80096bdc */ andi	$v0,$v1,0x4000
.L80096be0:
/* 0x80096be0 */ beq	$v0,$zero,.L80096c0c
.L80096be4:
/* 0x80096be4 */ lui	$v0,0x800e
.L80096be8:
/* 0x80096be8 */ lbu	$v0,12($s1)
.L80096bec:
/* 0x80096bec */ addiu	$v1,$zero,3
.L80096bf0:
/* 0x80096bf0 */ addu	$v0,$s1,$v0
.L80096bf4:
/* 0x80096bf4 */ sb	$v1,10($v0)
.L80096bf8:
/* 0x80096bf8 */ lbu	$v0,12($s1)
.L80096bfc:
/* 0x80096bfc */ sll	$zero,$zero,0x0
.L80096c00:
/* 0x80096c00 */ addiu	$v0,$v0,1
.L80096c04:
/* 0x80096c04 */ sb	$v0,12($s1)
.L80096c08:
/* 0x80096c08 */ lui	$v0,0x800e
.L80096c0c:
/* 0x80096c0c */ addiu	$v0,$v0,15384
.L80096c10:
/* 0x80096c10 */ sll	$v1,$s3,0x4
.L80096c14:
/* 0x80096c14 */ addu	$v1,$v1,$v0
.L80096c18:
/* 0x80096c18 */ lw	$v1,8($v1)
.L80096c1c:
/* 0x80096c1c */ sll	$zero,$zero,0x0
.L80096c20:
/* 0x80096c20 */ andi	$v0,$v1,0x80
.L80096c24:
/* 0x80096c24 */ bne	$v0,$zero,.L80096c34
.L80096c28:
/* 0x80096c28 */ andi	$v0,$v1,0x8000
.L80096c2c:
/* 0x80096c2c */ beq	$v0,$zero,.L80096c6c
.L80096c30:
/* 0x80096c30 */ lui	$v0,0x800e
.L80096c34:
/* 0x80096c34 */ lbu	$v0,12($s1)
.L80096c38:
/* 0x80096c38 */ sll	$zero,$zero,0x0
.L80096c3c:
/* 0x80096c3c */ sltiu	$v0,$v0,2
.L80096c40:
/* 0x80096c40 */ beq	$v0,$zero,.L80096c68
.L80096c44:
/* 0x80096c44 */ addiu	$v1,$zero,4
.L80096c48:
/* 0x80096c48 */ lbu	$v0,12($s1)
.L80096c4c:
/* 0x80096c4c */ sll	$zero,$zero,0x0
.L80096c50:
/* 0x80096c50 */ addu	$v0,$s1,$v0
.L80096c54:
/* 0x80096c54 */ sb	$v1,10($v0)
.L80096c58:
/* 0x80096c58 */ lbu	$v0,12($s1)
.L80096c5c:
/* 0x80096c5c */ sll	$zero,$zero,0x0
.L80096c60:
/* 0x80096c60 */ addiu	$v0,$v0,1
.L80096c64:
/* 0x80096c64 */ sb	$v0,12($s1)
.L80096c68:
/* 0x80096c68 */ lui	$v0,0x800e
.L80096c6c:
/* 0x80096c6c */ addiu	$v0,$v0,15384
.L80096c70:
/* 0x80096c70 */ sll	$v1,$s3,0x4
.L80096c74:
/* 0x80096c74 */ addu	$v1,$v1,$v0
.L80096c78:
/* 0x80096c78 */ lw	$v1,8($v1)
.L80096c7c:
/* 0x80096c7c */ sll	$zero,$zero,0x0
.L80096c80:
/* 0x80096c80 */ andi	$v0,$v1,0x20
.L80096c84:
/* 0x80096c84 */ bne	$v0,$zero,.L80096c94
.L80096c88:
/* 0x80096c88 */ andi	$v0,$v1,0x2000
.L80096c8c:
/* 0x80096c8c */ beq	$v0,$zero,.L80096cc8
.L80096c90:
/* 0x80096c90 */ sll	$zero,$zero,0x0
.L80096c94:
/* 0x80096c94 */ lbu	$v0,12($s1)
.L80096c98:
/* 0x80096c98 */ sll	$zero,$zero,0x0
.L80096c9c:
/* 0x80096c9c */ sltiu	$v0,$v0,2
.L80096ca0:
/* 0x80096ca0 */ beq	$v0,$zero,.L80096cc8
.L80096ca4:
/* 0x80096ca4 */ addiu	$v1,$zero,5
.L80096ca8:
/* 0x80096ca8 */ lbu	$v0,12($s1)
.L80096cac:
/* 0x80096cac */ sll	$zero,$zero,0x0
.L80096cb0:
/* 0x80096cb0 */ addu	$v0,$s1,$v0
.L80096cb4:
/* 0x80096cb4 */ sb	$v1,10($v0)
.L80096cb8:
/* 0x80096cb8 */ lbu	$v0,12($s1)
.L80096cbc:
/* 0x80096cbc */ sll	$zero,$zero,0x0
.L80096cc0:
/* 0x80096cc0 */ addiu	$v0,$v0,1
.L80096cc4:
/* 0x80096cc4 */ sb	$v0,12($s1)
.L80096cc8:
/* 0x80096cc8 */ lbu	$v1,12($s1)
.L80096ccc:
/* 0x80096ccc */ addiu	$v0,$zero,2
.L80096cd0:
/* 0x80096cd0 */ bne	$v1,$v0,.L80096cf4
.L80096cd4:
/* 0x80096cd4 */ sll	$zero,$zero,0x0
.L80096cd8:
/* 0x80096cd8 */ lbu	$v1,10($s1)
.L80096cdc:
/* 0x80096cdc */ lbu	$v0,11($s1)
.L80096ce0:
/* 0x80096ce0 */ sll	$zero,$zero,0x0
.L80096ce4:
/* 0x80096ce4 */ bne	$v1,$v0,.L80096cf4
.L80096ce8:
/* 0x80096ce8 */ addiu	$v0,$zero,1
.L80096cec:
/* 0x80096cec */ sb	$v0,11($s1)
.L80096cf0:
/* 0x80096cf0 */ sb	$v0,12($s1)
.L80096cf4:
/* 0x80096cf4 */ lbu	$v0,12($s1)
.L80096cf8:
/* 0x80096cf8 */ sll	$zero,$zero,0x0
.L80096cfc:
/* 0x80096cfc */ beq	$v0,$zero,.L80097098
.L80096d00:
/* 0x80096d00 */ addu	$v0,$zero,$zero
.L80096d04:
/* 0x80096d04 */ lbu	$v1,13($s1)
.L80096d08:
/* 0x80096d08 */ sll	$zero,$zero,0x0
.L80096d0c:
/* 0x80096d0c */ sltiu	$v0,$v1,2
.L80096d10:
/* 0x80096d10 */ beq	$v0,$zero,.L80096d24
.L80096d14:
/* 0x80096d14 */ addiu	$v0,$v1,1
.L80096d18:
/* 0x80096d18 */ sb	$v0,13($s1)
.L80096d1c:
/* 0x80096d1c */ j 0x80097098
.L80096d20:
/* 0x80096d20 */ addu	$v0,$zero,$zero
.L80096d24:
/* 0x80096d24 */ lbu	$v0,4($s1)
.L80096d28:
/* 0x80096d28 */ sll	$zero,$zero,0x0
.L80096d2c:
/* 0x80096d2c */ sb	$v0,16($sp)
.L80096d30:
/* 0x80096d30 */ lbu	$v0,5($s1)
.L80096d34:
/* 0x80096d34 */ sll	$zero,$zero,0x0
.L80096d38:
/* 0x80096d38 */ sb	$v0,17($sp)
.L80096d3c:
/* 0x80096d3c */ lbu	$v0,6($s1)
.L80096d40:
/* 0x80096d40 */ sll	$zero,$zero,0x0
.L80096d44:
/* 0x80096d44 */ sb	$v0,24($sp)
.L80096d48:
/* 0x80096d48 */ lbu	$v0,7($s1)
.L80096d4c:
/* 0x80096d4c */ sll	$zero,$zero,0x0
.L80096d50:
/* 0x80096d50 */ sb	$v0,25($sp)
.L80096d54:
/* 0x80096d54 */ lbu	$v0,12($s1)
.L80096d58:
/* 0x80096d58 */ addiu	$a1,$zero,1
.L80096d5c:
/* 0x80096d5c */ bne	$v0,$a1,.L80096ef4
.L80096d60:
/* 0x80096d60 */ lui	$v1,0xffff
.L80096d64:
/* 0x80096d64 */ lw	$v0,4($s1)
.L80096d68:
/* 0x80096d68 */ sll	$zero,$zero,0x0
.L80096d6c:
/* 0x80096d6c */ and	$v0,$v0,$v1
.L80096d70:
/* 0x80096d70 */ bne	$v0,$zero,.L80096dac
.L80096d74:
/* 0x80096d74 */ addu	$a0,$zero,$zero
.L80096d78:
/* 0x80096d78 */ lbu	$v0,4($s1)
.L80096d7c:
/* 0x80096d7c */ sll	$zero,$zero,0x0
.L80096d80:
/* 0x80096d80 */ beq	$v0,$a1,.L80096da0
.L80096d84:
/* 0x80096d84 */ sll	$zero,$zero,0x0
.L80096d88:
/* 0x80096d88 */ lbu	$v0,5($s1)
.L80096d8c:
/* 0x80096d8c */ sll	$zero,$zero,0x0
.L80096d90:
/* 0x80096d90 */ bne	$v0,$a1,.L80096da0
.L80096d94:
/* 0x80096d94 */ sll	$zero,$zero,0x0
.L80096d98:
/* 0x80096d98 */ j 0x80096dac
.L80096d9c:
/* 0x80096d9c */ sb	$a1,7($s1)
.L80096da0:
/* 0x80096da0 */ sb	$a1,6($s1)
.L80096da4:
/* 0x80096da4 */ addu	$a0,$zero,$zero
.L80096da8:
/* 0x80096da8 */ addiu	$a1,$zero,1
.L80096dac:
/* 0x80096dac */ addu	$v1,$s1,$a0
.L80096db0:
/* 0x80096db0 */ lbu	$v0,6($v1)
.L80096db4:
/* 0x80096db4 */ sll	$zero,$zero,0x0
.L80096db8:
/* 0x80096db8 */ beq	$v0,$zero,.L80096de8
.L80096dbc:
/* 0x80096dbc */ sll	$zero,$zero,0x0
.L80096dc0:
/* 0x80096dc0 */ lbu	$v0,10($s1)
.L80096dc4:
/* 0x80096dc4 */ sll	$zero,$zero,0x0
.L80096dc8:
/* 0x80096dc8 */ sb	$v0,4($v1)
.L80096dcc:
/* 0x80096dcc */ subu	$v0,$a1,$a0
.L80096dd0:
/* 0x80096dd0 */ addu	$v1,$s1,$v0
.L80096dd4:
/* 0x80096dd4 */ lbu	$v0,6($v1)
.L80096dd8:
/* 0x80096dd8 */ sll	$zero,$zero,0x0
.L80096ddc:
/* 0x80096ddc */ beq	$v0,$zero,.L80096de8
.L80096de0:
/* 0x80096de0 */ sll	$zero,$zero,0x0
.L80096de4:
/* 0x80096de4 */ sb	$a1,4($v1)
.L80096de8:
/* 0x80096de8 */ addiu	$a0,$a0,1
.L80096dec:
/* 0x80096dec */ slti	$v0,$a0,2
.L80096df0:
/* 0x80096df0 */ bne	$v0,$zero,.L80096db0
.L80096df4:
/* 0x80096df4 */ addu	$v1,$s1,$a0
.L80096df8:
/* 0x80096df8 */ lbu	$v0,24($sp)
.L80096dfc:
/* 0x80096dfc */ sll	$zero,$zero,0x0
.L80096e00:
/* 0x80096e00 */ beq	$v0,$zero,.L80096e18
.L80096e04:
/* 0x80096e04 */ sll	$zero,$zero,0x0
.L80096e08:
/* 0x80096e08 */ lbu	$v0,25($sp)
.L80096e0c:
/* 0x80096e0c */ sll	$zero,$zero,0x0
.L80096e10:
/* 0x80096e10 */ bne	$v0,$zero,.L80096eac
.L80096e14:
/* 0x80096e14 */ sll	$zero,$zero,0x0
.L80096e18:
/* 0x80096e18 */ lbu	$v1,16($sp)
.L80096e1c:
/* 0x80096e1c */ addiu	$v0,$zero,1
.L80096e20:
/* 0x80096e20 */ bne	$v1,$v0,.L80096e40
.L80096e24:
/* 0x80096e24 */ sll	$zero,$zero,0x0
.L80096e28:
/* 0x80096e28 */ lbu	$v0,17($sp)
.L80096e2c:
/* 0x80096e2c */ sll	$zero,$zero,0x0
.L80096e30:
/* 0x80096e30 */ bne	$v0,$v1,.L80096e40
.L80096e34:
/* 0x80096e34 */ sll	$zero,$zero,0x0
.L80096e38:
/* 0x80096e38 */ j 0x80097000
.L80096e3c:
/* 0x80096e3c */ sb	$zero,15($s1)
.L80096e40:
/* 0x80096e40 */ lbu	$a0,16($sp)
.L80096e44:
/* 0x80096e44 */ lbu	$v0,10($s1)
.L80096e48:
/* 0x80096e48 */ sll	$zero,$zero,0x0
.L80096e4c:
/* 0x80096e4c */ beq	$a0,$v0,.L80096e64
.L80096e50:
/* 0x80096e50 */ sll	$zero,$zero,0x0
.L80096e54:
/* 0x80096e54 */ lbu	$a1,17($sp)
.L80096e58:
/* 0x80096e58 */ sll	$zero,$zero,0x0
.L80096e5c:
/* 0x80096e5c */ bne	$a1,$v0,.L80096e6c
.L80096e60:
/* 0x80096e60 */ lui	$v0,0x800e
.L80096e64:
/* 0x80096e64 */ j 0x80096ffc
.L80096e68:
/* 0x80096e68 */ addiu	$v0,$zero,1
.L80096e6c:
/* 0x80096e6c */ lbu	$v1,10($s1)
.L80096e70:
/* 0x80096e70 */ addiu	$a2,$v0,-892
.L80096e74:
/* 0x80096e74 */ addu	$v1,$v1,$a2
.L80096e78:
/* 0x80096e78 */ lbu	$v0,0($v1)
.L80096e7c:
/* 0x80096e7c */ sll	$zero,$zero,0x0
.L80096e80:
/* 0x80096e80 */ beq	$a0,$v0,.L80096ffc
.L80096e84:
/* 0x80096e84 */ addiu	$v0,$zero,2
.L80096e88:
/* 0x80096e88 */ lbu	$v0,11($s1)
.L80096e8c:
/* 0x80096e8c */ sll	$zero,$zero,0x0
.L80096e90:
/* 0x80096e90 */ addu	$v0,$v0,$a2
.L80096e94:
/* 0x80096e94 */ lbu	$v0,0($v0)
.L80096e98:
/* 0x80096e98 */ sll	$zero,$zero,0x0
.L80096e9c:
/* 0x80096e9c */ bne	$a1,$v0,.L80096ffc
.L80096ea0:
/* 0x80096ea0 */ addiu	$v0,$zero,3
.L80096ea4:
/* 0x80096ea4 */ j 0x80096ffc
.L80096ea8:
/* 0x80096ea8 */ addiu	$v0,$zero,2
.L80096eac:
/* 0x80096eac */ lbu	$v0,16($sp)
.L80096eb0:
/* 0x80096eb0 */ sll	$zero,$zero,0x0
.L80096eb4:
/* 0x80096eb4 */ addiu	$v0,$v0,-4
.L80096eb8:
/* 0x80096eb8 */ sltiu	$v0,$v0,2
.L80096ebc:
/* 0x80096ebc */ beq	$v0,$zero,.L80096eec
.L80096ec0:
/* 0x80096ec0 */ lui	$v0,0x800e
.L80096ec4:
/* 0x80096ec4 */ addiu	$v0,$v0,-892
.L80096ec8:
/* 0x80096ec8 */ lbu	$v1,16($sp)
.L80096ecc:
/* 0x80096ecc */ lbu	$a0,17($sp)
.L80096ed0:
/* 0x80096ed0 */ addu	$v1,$v1,$v0
.L80096ed4:
/* 0x80096ed4 */ lbu	$v0,0($v1)
.L80096ed8:
/* 0x80096ed8 */ sll	$zero,$zero,0x0
.L80096edc:
/* 0x80096edc */ bne	$a0,$v0,.L80096ffc
.L80096ee0:
/* 0x80096ee0 */ addiu	$v0,$zero,5
.L80096ee4:
/* 0x80096ee4 */ j 0x80096ffc
.L80096ee8:
/* 0x80096ee8 */ addiu	$v0,$zero,4
.L80096eec:
/* 0x80096eec */ j 0x80096ffc
.L80096ef0:
/* 0x80096ef0 */ addiu	$v0,$zero,5
.L80096ef4:
/* 0x80096ef4 */ lbu	$v0,10($s1)
.L80096ef8:
/* 0x80096ef8 */ lbu	$a2,11($s1)
.L80096efc:
/* 0x80096efc */ sb	$v0,4($s1)
.L80096f00:
/* 0x80096f00 */ sb	$a2,5($s1)
.L80096f04:
/* 0x80096f04 */ lbu	$a0,16($sp)
.L80096f08:
/* 0x80096f08 */ sll	$zero,$zero,0x0
.L80096f0c:
/* 0x80096f0c */ beq	$a0,$a1,.L80096f24
.L80096f10:
/* 0x80096f10 */ sll	$zero,$zero,0x0
.L80096f14:
/* 0x80096f14 */ lbu	$v1,17($sp)
.L80096f18:
/* 0x80096f18 */ sll	$zero,$zero,0x0
.L80096f1c:
/* 0x80096f1c */ bne	$v1,$a1,.L80096fd0
.L80096f20:
/* 0x80096f20 */ sll	$zero,$zero,0x0
.L80096f24:
/* 0x80096f24 */ lbu	$v0,4($s1)
.L80096f28:
/* 0x80096f28 */ sll	$zero,$zero,0x0
.L80096f2c:
/* 0x80096f2c */ addiu	$v0,$v0,-4
.L80096f30:
/* 0x80096f30 */ sltiu	$v0,$v0,2
.L80096f34:
/* 0x80096f34 */ beq	$v0,$zero,.L80096f58
.L80096f38:
/* 0x80096f38 */ lui	$v0,0x800e
.L80096f3c:
/* 0x80096f3c */ lbu	$v1,4($s1)
.L80096f40:
/* 0x80096f40 */ addiu	$v0,$v0,-892
.L80096f44:
/* 0x80096f44 */ addu	$v1,$v1,$v0
.L80096f48:
/* 0x80096f48 */ lbu	$v1,0($v1)
.L80096f4c:
/* 0x80096f4c */ andi	$v0,$a2,0xff
.L80096f50:
/* 0x80096f50 */ beq	$v0,$v1,.L80096ffc
.L80096f54:
/* 0x80096f54 */ addiu	$v0,$zero,4
.L80096f58:
/* 0x80096f58 */ lbu	$v0,16($sp)
.L80096f5c:
/* 0x80096f5c */ sll	$zero,$zero,0x0
.L80096f60:
/* 0x80096f60 */ addiu	$v0,$v0,-2
.L80096f64:
/* 0x80096f64 */ sltiu	$v0,$v0,2
.L80096f68:
/* 0x80096f68 */ bne	$v0,$zero,.L80096f88
.L80096f6c:
/* 0x80096f6c */ addiu	$v0,$zero,2
.L80096f70:
/* 0x80096f70 */ lbu	$v1,17($sp)
.L80096f74:
/* 0x80096f74 */ sll	$zero,$zero,0x0
.L80096f78:
/* 0x80096f78 */ beq	$v1,$v0,.L80096f88
.L80096f7c:
/* 0x80096f7c */ addiu	$v0,$zero,3
.L80096f80:
/* 0x80096f80 */ bne	$v1,$v0,.L80096ffc
.L80096f84:
/* 0x80096f84 */ addiu	$v0,$zero,5
.L80096f88:
/* 0x80096f88 */ lbu	$v0,4($s1)
.L80096f8c:
/* 0x80096f8c */ sll	$zero,$zero,0x0
.L80096f90:
/* 0x80096f90 */ addiu	$v0,$v0,-2
.L80096f94:
/* 0x80096f94 */ sltiu	$v0,$v0,2
.L80096f98:
/* 0x80096f98 */ beq	$v0,$zero,.L80096fc8
.L80096f9c:
/* 0x80096f9c */ lui	$v0,0x800e
.L80096fa0:
/* 0x80096fa0 */ addiu	$v0,$v0,-892
.L80096fa4:
/* 0x80096fa4 */ lbu	$v1,4($s1)
.L80096fa8:
/* 0x80096fa8 */ lbu	$a0,5($s1)
.L80096fac:
/* 0x80096fac */ addu	$v1,$v1,$v0
.L80096fb0:
/* 0x80096fb0 */ lbu	$v0,0($v1)
.L80096fb4:
/* 0x80096fb4 */ sll	$zero,$zero,0x0
.L80096fb8:
/* 0x80096fb8 */ bne	$a0,$v0,.L80096ffc
.L80096fbc:
/* 0x80096fbc */ addiu	$v0,$zero,5
.L80096fc0:
/* 0x80096fc0 */ j 0x80096ffc
.L80096fc4:
/* 0x80096fc4 */ addiu	$v0,$zero,4
.L80096fc8:
/* 0x80096fc8 */ j 0x80096ffc
.L80096fcc:
/* 0x80096fcc */ addiu	$v0,$zero,5
.L80096fd0:
/* 0x80096fd0 */ lbu	$a1,4($s1)
.L80096fd4:
/* 0x80096fd4 */ sll	$zero,$zero,0x0
.L80096fd8:
/* 0x80096fd8 */ bne	$a0,$a1,.L80096fe8
.L80096fdc:
/* 0x80096fdc */ andi	$v0,$a2,0xff
.L80096fe0:
/* 0x80096fe0 */ beq	$v1,$v0,.L80096ff8
.L80096fe4:
/* 0x80096fe4 */ sll	$zero,$zero,0x0
.L80096fe8:
/* 0x80096fe8 */ bne	$a0,$v0,.L80096ffc
.L80096fec:
/* 0x80096fec */ addiu	$v0,$zero,7
.L80096ff0:
/* 0x80096ff0 */ bne	$v1,$a1,.L80096ffc
.L80096ff4:
/* 0x80096ff4 */ sll	$zero,$zero,0x0
.L80096ff8:
/* 0x80096ff8 */ addiu	$v0,$zero,6
.L80096ffc:
/* 0x80096ffc */ sb	$v0,15($s1)
.L80097000:
/* 0x80097000 */ jal	0x80099314
.L80097004:
/* 0x80097004 */ sll	$zero,$zero,0x0
.L80097008:
/* 0x80097008 */ sll	$v1,$v0,0x10
.L8009700c:
/* 0x8009700c */ lui	$v0,0x800e
.L80097010:
/* 0x80097010 */ lbu	$a1,15($s1)
.L80097014:
/* 0x80097014 */ addiu	$v0,$v0,-884
.L80097018:
/* 0x80097018 */ addu	$v0,$a1,$v0
.L8009701c:
/* 0x8009701c */ lbu	$v0,0($v0)
.L80097020:
/* 0x80097020 */ sra	$v1,$v1,0x10
.L80097024:
/* 0x80097024 */ mult	$v1,$v0
.L80097028:
/* 0x80097028 */ mflo	$v1
.L8009702c:
/* 0x8009702c */ lui	$v0,0x6666
.L80097030:
/* 0x80097030 */ ori	$v0,$v0,0x6667
.L80097034:
/* 0x80097034 */ mult	$v1,$v0
.L80097038:
/* 0x80097038 */ lw	$a0,0($s1)
.L8009703c:
/* 0x8009703c */ lui	$v0,0x800e
.L80097040:
/* 0x80097040 */ addiu	$v0,$v0,-876
.L80097044:
/* 0x80097044 */ addu	$a1,$a1,$v0
.L80097048:
/* 0x80097048 */ mfhi	$a2
.L8009704c:
/* 0x8009704c */ lbu	$v0,0($a1)
.L80097050:
/* 0x80097050 */ sll	$zero,$zero,0x0
.L80097054:
/* 0x80097054 */ mult	$v0,$a0
.L80097058:
/* 0x80097058 */ mflo	$t0
.L8009705c:
/* 0x8009705c */ lui	$v0,0x8888
.L80097060:
/* 0x80097060 */ ori	$v0,$v0,0x8889
.L80097064:
/* 0x80097064 */ multu	$t0,$v0
.L80097068:
/* 0x80097068 */ sra	$v1,$v1,0x1f
.L8009706c:
/* 0x8009706c */ sb	$zero,12($s1)
.L80097070:
/* 0x80097070 */ sb	$zero,13($s1)
.L80097074:
/* 0x80097074 */ sb	$zero,7($s1)
.L80097078:
/* 0x80097078 */ sb	$zero,6($s1)
.L8009707c:
/* 0x8009707c */ sb	$zero,9($s1)
.L80097080:
/* 0x80097080 */ sb	$zero,8($s1)
.L80097084:
/* 0x80097084 */ sra	$v0,$a2,0x3
.L80097088:
/* 0x80097088 */ subu	$v0,$v0,$v1
.L8009708c:
/* 0x8009708c */ mfhi	$t0
.L80097090:
/* 0x80097090 */ srl	$v1,$t0,0xd
.L80097094:
/* 0x80097094 */ addu	$v0,$v0,$v1
.L80097098:
/* 0x80097098 */ lw	$ra,52($sp)
.L8009709c:
/* 0x8009709c */ lw	$s4,48($sp)
.L800970a0:
/* 0x800970a0 */ lw	$s3,44($sp)
.L800970a4:
/* 0x800970a4 */ lw	$s2,40($sp)
.L800970a8:
/* 0x800970a8 */ lw	$s1,36($sp)
.L800970ac:
/* 0x800970ac */ lw	$s0,32($sp)
.L800970b0:
/* 0x800970b0 */ jr	$ra
.L800970b4:
/* 0x800970b4 */ addiu	$sp,$sp,56
.size FUN_80096978, .-FUN_80096978
