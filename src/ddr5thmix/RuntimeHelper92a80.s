.set noreorder
.set noat
.set nomacro

.section .text.FUN_80092a80
.globl FUN_80092a80
.type FUN_80092a80, @function
FUN_80092a80:
/* Runtime resource and state helper. */
.L80092a80:
/* 0x80092a80 */ addiu	$sp,$sp,-56
.L80092a84:
/* 0x80092a84 */ sw	$s8,44($sp)
.L80092a88:
/* 0x80092a88 */ addu	$s8,$sp,$zero
.L80092a8c:
/* 0x80092a8c */ sw	$s4,32($sp)
.L80092a90:
/* 0x80092a90 */ addu	$s4,$a1,$zero
.L80092a94:
/* 0x80092a94 */ sw	$s6,40($sp)
.L80092a98:
/* 0x80092a98 */ addu	$s6,$a2,$zero
.L80092a9c:
/* 0x80092a9c */ sll	$v1,$s4,0x5
.L80092aa0:
/* 0x80092aa0 */ srl	$v0,$v1,0x3
.L80092aa4:
/* 0x80092aa4 */ addiu	$v0,$v0,7
.L80092aa8:
/* 0x80092aa8 */ srl	$v0,$v0,0x3
.L80092aac:
/* 0x80092aac */ sll	$v0,$v0,0x3
.L80092ab0:
/* 0x80092ab0 */ sw	$ra,48($sp)
.L80092ab4:
/* 0x80092ab4 */ sw	$s5,36($sp)
.L80092ab8:
/* 0x80092ab8 */ sw	$s3,28($sp)
.L80092abc:
/* 0x80092abc */ sw	$s2,24($sp)
.L80092ac0:
/* 0x80092ac0 */ sw	$s1,20($sp)
.L80092ac4:
/* 0x80092ac4 */ sw	$s0,16($sp)
.L80092ac8:
/* 0x80092ac8 */ subu	$sp,$sp,$v0
.L80092acc:
/* 0x80092acc */ addiu	$s5,$sp,16
.L80092ad0:
/* 0x80092ad0 */ srl	$v1,$v1,0x3
.L80092ad4:
/* 0x80092ad4 */ addiu	$v1,$v1,7
.L80092ad8:
/* 0x80092ad8 */ srl	$v1,$v1,0x3
.L80092adc:
/* 0x80092adc */ sll	$v1,$v1,0x3
.L80092ae0:
/* 0x80092ae0 */ subu	$sp,$sp,$v1
.L80092ae4:
/* 0x80092ae4 */ addu	$s0,$zero,$zero
.L80092ae8:
/* 0x80092ae8 */ blez	$s4,.L80092b18
.L80092aec:
/* 0x80092aec */ addiu	$v1,$sp,16
.L80092af0:
/* 0x80092af0 */ addiu	$a3,$zero,-1
.L80092af4:
/* 0x80092af4 */ addu	$a2,$v1,$zero
.L80092af8:
/* 0x80092af8 */ addu	$a1,$s5,$zero
.L80092afc:
/* 0x80092afc */ sw	$zero,0($a1)
.L80092b00:
/* 0x80092b00 */ sw	$a3,0($a2)
.L80092b04:
/* 0x80092b04 */ addiu	$a2,$a2,4
.L80092b08:
/* 0x80092b08 */ addiu	$s0,$s0,1
.L80092b0c:
/* 0x80092b0c */ slt	$v0,$s0,$s4
.L80092b10:
/* 0x80092b10 */ bne	$v0,$zero,.L80092afc
.L80092b14:
/* 0x80092b14 */ addiu	$a1,$a1,4
.L80092b18:
/* 0x80092b18 */ blez	$s4,.L80092be0
.L80092b1c:
/* 0x80092b1c */ addu	$s1,$zero,$zero
.L80092b20:
/* 0x80092b20 */ addiu	$t2,$zero,1
.L80092b24:
/* 0x80092b24 */ addiu	$t3,$zero,2
.L80092b28:
/* 0x80092b28 */ addu	$t1,$v1,$zero
.L80092b2c:
/* 0x80092b2c */ addu	$t0,$a0,$zero
.L80092b30:
/* 0x80092b30 */ lbu	$a3,1($t0)
.L80092b34:
/* 0x80092b34 */ sll	$zero,$zero,0x0
.L80092b38:
/* 0x80092b38 */ bltz	$a3,.L80092be0
.L80092b3c:
/* 0x80092b3c */ sll	$zero,$zero,0x0
.L80092b40:
/* 0x80092b40 */ beq	$s6,$t2,.L80092b58
.L80092b44:
/* 0x80092b44 */ lui	$v0,0x8011
.L80092b48:
/* 0x80092b48 */ beq	$s6,$t3,.L80092b88
.L80092b4c:
/* 0x80092b4c */ addiu	$v0,$zero,-1
.L80092b50:
/* 0x80092b50 */ j 0x80092bb8
.L80092b54:
/* 0x80092b54 */ sll	$zero,$zero,0x0
.L80092b58:
/* 0x80092b58 */ addu	$a2,$zero,$zero
.L80092b5c:
/* 0x80092b5c */ addiu	$a1,$v0,20936
.L80092b60:
/* 0x80092b60 */ lbu	$v0,0($a1)
.L80092b64:
/* 0x80092b64 */ sll	$zero,$zero,0x0
.L80092b68:
/* 0x80092b68 */ beq	$v0,$a3,.L80092bb8
.L80092b6c:
/* 0x80092b6c */ addu	$v0,$a2,$zero
.L80092b70:
/* 0x80092b70 */ addiu	$a2,$a2,1
.L80092b74:
/* 0x80092b74 */ slti	$v0,$a2,6
.L80092b78:
/* 0x80092b78 */ bne	$v0,$zero,.L80092b60
.L80092b7c:
/* 0x80092b7c */ addiu	$a1,$a1,2
.L80092b80:
/* 0x80092b80 */ j 0x80092bb8
.L80092b84:
/* 0x80092b84 */ addiu	$v0,$zero,-1
.L80092b88:
/* 0x80092b88 */ addu	$a2,$zero,$zero
.L80092b8c:
/* 0x80092b8c */ lui	$v0,0x8011
.L80092b90:
/* 0x80092b90 */ addiu	$a1,$v0,20952
.L80092b94:
/* 0x80092b94 */ lbu	$v0,0($a1)
.L80092b98:
/* 0x80092b98 */ sll	$zero,$zero,0x0
.L80092b9c:
/* 0x80092b9c */ beq	$v0,$a3,.L80092bb8
.L80092ba0:
/* 0x80092ba0 */ addu	$v0,$a2,$zero
.L80092ba4:
/* 0x80092ba4 */ addiu	$a2,$a2,1
.L80092ba8:
/* 0x80092ba8 */ slti	$v0,$a2,12
.L80092bac:
/* 0x80092bac */ bne	$v0,$zero,.L80092b94
.L80092bb0:
/* 0x80092bb0 */ addiu	$a1,$a1,2
.L80092bb4:
/* 0x80092bb4 */ addiu	$v0,$zero,-1
.L80092bb8:
/* 0x80092bb8 */ bltz	$v0,.L80092bcc
.L80092bbc:
/* 0x80092bbc */ sw	$v0,0($t1)
.L80092bc0:
/* 0x80092bc0 */ sll	$v0,$v0,0x2
.L80092bc4:
/* 0x80092bc4 */ addu	$v0,$s5,$v0
.L80092bc8:
/* 0x80092bc8 */ sw	$t2,0($v0)
.L80092bcc:
/* 0x80092bcc */ addiu	$t1,$t1,4
.L80092bd0:
/* 0x80092bd0 */ addiu	$s1,$s1,1
.L80092bd4:
/* 0x80092bd4 */ slt	$v0,$s1,$s4
.L80092bd8:
/* 0x80092bd8 */ bne	$v0,$zero,.L80092b30
.L80092bdc:
/* 0x80092bdc */ addiu	$t0,$t0,2
.L80092be0:
/* 0x80092be0 */ blez	$s4,.L80092c74
.L80092be4:
/* 0x80092be4 */ addu	$s1,$zero,$zero
.L80092be8:
/* 0x80092be8 */ addu	$s3,$a0,$zero
.L80092bec:
/* 0x80092bec */ addu	$s2,$v1,$zero
.L80092bf0:
/* 0x80092bf0 */ lw	$v1,0($s2)
.L80092bf4:
/* 0x80092bf4 */ addiu	$v0,$zero,-1
.L80092bf8:
/* 0x80092bf8 */ bne	$v1,$v0,.L80092c60
.L80092bfc:
/* 0x80092bfc */ sll	$zero,$zero,0x0
.L80092c00:
/* 0x80092c00 */ blez	$s4,.L80092c78
.L80092c04:
/* 0x80092c04 */ addu	$s0,$zero,$zero
.L80092c08:
/* 0x80092c08 */ addu	$v1,$s5,$zero
.L80092c0c:
/* 0x80092c0c */ lw	$v0,0($v1)
.L80092c10:
/* 0x80092c10 */ sll	$zero,$zero,0x0
.L80092c14:
/* 0x80092c14 */ beq	$v0,$zero,.L80092c30
.L80092c18:
/* 0x80092c18 */ slt	$v0,$s0,$s4
.L80092c1c:
/* 0x80092c1c */ addiu	$s0,$s0,1
.L80092c20:
/* 0x80092c20 */ slt	$v0,$s0,$s4
.L80092c24:
/* 0x80092c24 */ bne	$v0,$zero,.L80092c0c
.L80092c28:
/* 0x80092c28 */ addiu	$v1,$v1,4
.L80092c2c:
/* 0x80092c2c */ slt	$v0,$s0,$s4
.L80092c30:
/* 0x80092c30 */ beq	$v0,$zero,.L80092c4c
.L80092c34:
/* 0x80092c34 */ addu	$a1,$s6,$zero
.L80092c38:
/* 0x80092c38 */ lbu	$a0,1($s3)
.L80092c3c:
/* 0x80092c3c */ jal	0x80092968
.L80092c40:
/* 0x80092c40 */ addu	$a2,$s0,$zero
.L80092c44:
/* 0x80092c44 */ beq	$v0,$zero,.L80092c54
.L80092c48:
/* 0x80092c48 */ sll	$v0,$s0,0x2
.L80092c4c:
/* 0x80092c4c */ j 0x80092c78
.L80092c50:
/* 0x80092c50 */ addiu	$v0,$zero,-1
.L80092c54:
/* 0x80092c54 */ addu	$v0,$s5,$v0
.L80092c58:
/* 0x80092c58 */ addiu	$v1,$zero,1
.L80092c5c:
/* 0x80092c5c */ sw	$v1,0($v0)
.L80092c60:
/* 0x80092c60 */ addiu	$s3,$s3,2
.L80092c64:
/* 0x80092c64 */ addiu	$s1,$s1,1
.L80092c68:
/* 0x80092c68 */ slt	$v0,$s1,$s4
.L80092c6c:
/* 0x80092c6c */ bne	$v0,$zero,.L80092bf0
.L80092c70:
/* 0x80092c70 */ addiu	$s2,$s2,4
.L80092c74:
/* 0x80092c74 */ addu	$v0,$zero,$zero
.L80092c78:
/* 0x80092c78 */ addu	$sp,$s8,$zero
.L80092c7c:
/* 0x80092c7c */ lw	$ra,48($sp)
.L80092c80:
/* 0x80092c80 */ lw	$s8,44($sp)
.L80092c84:
/* 0x80092c84 */ lw	$s6,40($sp)
.L80092c88:
/* 0x80092c88 */ lw	$s5,36($sp)
.L80092c8c:
/* 0x80092c8c */ lw	$s4,32($sp)
.L80092c90:
/* 0x80092c90 */ lw	$s3,28($sp)
.L80092c94:
/* 0x80092c94 */ lw	$s2,24($sp)
.L80092c98:
/* 0x80092c98 */ lw	$s1,20($sp)
.L80092c9c:
/* 0x80092c9c */ lw	$s0,16($sp)
.L80092ca0:
/* 0x80092ca0 */ jr	$ra
.L80092ca4:
/* 0x80092ca4 */ addiu	$sp,$sp,56
.size FUN_80092a80, .-FUN_80092a80

