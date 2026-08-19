.set noreorder
.set noat
.set nomacro

.section .text.FUN_80099b40
.globl FUN_80099b40
.type FUN_80099b40, @function
FUN_80099b40:
.L80099b40:
/* 0x80099b40 */ addiu	$sp,$sp,-32
.L80099b44:
/* 0x80099b44 */ sw	$s0,16($sp)
.L80099b48:
/* 0x80099b48 */ lui	$s0,0x800e
.L80099b4c:
/* 0x80099b4c */ lw	$v0,2836($s0)
.L80099b50:
/* 0x80099b50 */ sw	$s1,20($sp)
.L80099b54:
/* 0x80099b54 */ sw	$ra,24($sp)
.L80099b58:
/* 0x80099b58 */ lbu	$v1,0($v0)
.L80099b5c:
/* 0x80099b5c */ addiu	$v0,$zero,3
.L80099b60:
/* 0x80099b60 */ beq	$v1,$v0,.L80099c2c
.L80099b64:
/* 0x80099b64 */ addu	$s1,$zero,$zero
.L80099b68:
/* 0x80099b68 */ slti	$v0,$v1,4
.L80099b6c:
/* 0x80099b6c */ beq	$v0,$zero,.L80099b94
.L80099b70:
/* 0x80099b70 */ addiu	$v0,$zero,1
.L80099b74:
/* 0x80099b74 */ beq	$v1,$v0,.L80099be4
.L80099b78:
/* 0x80099b78 */ slti	$v0,$v1,2
.L80099b7c:
/* 0x80099b7c */ beq	$v0,$zero,.L80099c10
.L80099b80:
/* 0x80099b80 */ sll	$zero,$zero,0x0
.L80099b84:
/* 0x80099b84 */ beq	$v1,$zero,.L80099bbc
.L80099b88:
/* 0x80099b88 */ addu	$v0,$s1,$zero
.L80099b8c:
/* 0x80099b8c */ j	.L80099c9c
.L80099b90:
/* 0x80099b90 */ sll	$zero,$zero,0x0
.L80099b94:
/* 0x80099b94 */ addiu	$v0,$zero,5
.L80099b98:
/* 0x80099b98 */ beq	$v1,$v0,.L80099c70
.L80099b9c:
/* 0x80099b9c */ slt	$v0,$v1,$v0
.L80099ba0:
/* 0x80099ba0 */ bne	$v0,$zero,.L80099c4c
.L80099ba4:
/* 0x80099ba4 */ addiu	$a0,$zero,640
.L80099ba8:
/* 0x80099ba8 */ addiu	$v0,$zero,255
.L80099bac:
/* 0x80099bac */ beq	$v1,$v0,.L80099c94
.L80099bb0:
/* 0x80099bb0 */ addu	$v0,$s1,$zero
.L80099bb4:
/* 0x80099bb4 */ j	.L80099c9c
.L80099bb8:
/* 0x80099bb8 */ sll	$zero,$zero,0x0
.L80099bbc:
/* 0x80099bbc */ addiu	$a0,$zero,512
.L80099bc0:
/* 0x80099bc0 */ jal	0x8009f820
.L80099bc4:
/* 0x80099bc4 */ addiu	$a1,$zero,480
.L80099bc8:
/* 0x80099bc8 */ lw	$v1,2836($s0)
.L80099bcc:
/* 0x80099bcc */ sll	$zero,$zero,0x0
.L80099bd0:
/* 0x80099bd0 */ lbu	$v0,0($v1)
.L80099bd4:
/* 0x80099bd4 */ sll	$zero,$zero,0x0
.L80099bd8:
/* 0x80099bd8 */ addiu	$v0,$v0,1
.L80099bdc:
/* 0x80099bdc */ sb	$v0,0($v1)
.L80099be0:
/* 0x80099be0 */ lui	$s0,0x800e
.L80099be4:
/* 0x80099be4 */ lw	$v1,2836($s0)
.L80099be8:
/* 0x80099be8 */ sll	$zero,$zero,0x0
.L80099bec:
/* 0x80099bec */ lbu	$v0,0($v1)
.L80099bf0:
/* 0x80099bf0 */ sll	$zero,$zero,0x0
.L80099bf4:
/* 0x80099bf4 */ addiu	$v0,$v0,1
.L80099bf8:
/* 0x80099bf8 */ jal	0x80099e9c
.L80099bfc:
/* 0x80099bfc */ sb	$v0,0($v1)
.L80099c00:
/* 0x80099c00 */ bne	$v0,$zero,.L80099c9c
.L80099c04:
/* 0x80099c04 */ addu	$v0,$s1,$zero
.L80099c08:
/* 0x80099c08 */ j	.L80099c84
.L80099c0c:
/* 0x80099c0c */ sll	$zero,$zero,0x0
.L80099c10:
/* 0x80099c10 */ jal	0x8009f390
.L80099c14:
/* 0x80099c14 */ sll	$zero,$zero,0x0
.L80099c18:
/* 0x80099c18 */ andi	$v0,$v0,0xff
.L80099c1c:
/* 0x80099c1c */ blez	$v0,.L80099c9c
.L80099c20:
/* 0x80099c20 */ addu	$v0,$s1,$zero
.L80099c24:
/* 0x80099c24 */ j	.L80099c54
.L80099c28:
/* 0x80099c28 */ sll	$zero,$zero,0x0
.L80099c2c:
/* 0x80099c2c */ lui	$v0,0x800b
.L80099c30:
/* 0x80099c30 */ lw	$v0,-14100($v0)
.L80099c34:
/* 0x80099c34 */ jal	0x80099cb0
.L80099c38:
/* 0x80099c38 */ sb	$zero,0($v0)
.L80099c3c:
/* 0x80099c3c */ blez	$v0,.L80099c9c
.L80099c40:
/* 0x80099c40 */ addu	$v0,$s1,$zero
.L80099c44:
/* 0x80099c44 */ j	.L80099c54
.L80099c48:
/* 0x80099c48 */ sll	$zero,$zero,0x0
.L80099c4c:
/* 0x80099c4c */ jal	0x8009f820
.L80099c50:
/* 0x80099c50 */ addiu	$a1,$zero,480
.L80099c54:
/* 0x80099c54 */ lw	$v1,2836($s0)
.L80099c58:
/* 0x80099c58 */ sll	$zero,$zero,0x0
.L80099c5c:
/* 0x80099c5c */ lbu	$v0,0($v1)
.L80099c60:
/* 0x80099c60 */ sll	$zero,$zero,0x0
.L80099c64:
/* 0x80099c64 */ addiu	$v0,$v0,1
.L80099c68:
/* 0x80099c68 */ j	.L80099c98
.L80099c6c:
/* 0x80099c6c */ sb	$v0,0($v1)
.L80099c70:
/* 0x80099c70 */ jal	0x8009f390
.L80099c74:
/* 0x80099c74 */ sll	$zero,$zero,0x0
.L80099c78:
/* 0x80099c78 */ andi	$v0,$v0,0xff
.L80099c7c:
/* 0x80099c7c */ blez	$v0,.L80099c9c
.L80099c80:
/* 0x80099c80 */ addu	$v0,$s1,$zero
.L80099c84:
/* 0x80099c84 */ lw	$v1,2836($s0)
.L80099c88:
/* 0x80099c88 */ addiu	$v0,$zero,255
.L80099c8c:
/* 0x80099c8c */ j	.L80099c98
.L80099c90:
/* 0x80099c90 */ sb	$v0,0($v1)
.L80099c94:
/* 0x80099c94 */ addiu	$s1,$zero,1
.L80099c98:
/* 0x80099c98 */ addu	$v0,$s1,$zero
.L80099c9c:
/* 0x80099c9c */ lw	$ra,24($sp)
.L80099ca0:
/* 0x80099ca0 */ lw	$s1,20($sp)
.L80099ca4:
/* 0x80099ca4 */ lw	$s0,16($sp)
.L80099ca8:
/* 0x80099ca8 */ jr	$ra
.L80099cac:
/* 0x80099cac */ addiu	$sp,$sp,32
.size FUN_80099b40, .-FUN_80099b40
