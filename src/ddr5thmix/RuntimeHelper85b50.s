.set noreorder
.set noat
.set nomacro

.section .text.FUN_80085b50
.globl FUN_80085b50
.type FUN_80085b50, @function
FUN_80085b50:
/* Runtime gameplay/resource helper. */
.L80085b50:
/* 0x80085b50 */ addiu	$sp,$sp,-32
.L80085b54:
/* 0x80085b54 */ lui	$v0,0x800f
.L80085b58:
/* 0x80085b58 */ addiu	$a0,$v0,10504
.L80085b5c:
/* 0x80085b5c */ lui	$v0,0x1
.L80085b60:
/* 0x80085b60 */ addu	$v1,$a0,$v0
.L80085b64:
/* 0x80085b64 */ sw	$ra,28($sp)
.L80085b68:
/* 0x80085b68 */ sw	$s2,24($sp)
.L80085b6c:
/* 0x80085b6c */ sw	$s1,20($sp)
.L80085b70:
/* 0x80085b70 */ sw	$s0,16($sp)
.L80085b74:
/* 0x80085b74 */ lb	$v0,10115($v1)
.L80085b78:
/* 0x80085b78 */ sll	$zero,$zero,0x0
.L80085b7c:
/* 0x80085b7c */ bne	$v0,$zero,.L80085c24
.L80085b80:
/* 0x80085b80 */ lui	$v0,0x800f
.L80085b84:
/* 0x80085b84 */ addiu	$v0,$zero,2
.L80085b88:
/* 0x80085b88 */ sb	$v0,10115($v1)
.L80085b8c:
/* 0x80085b8c */ addu	$s0,$zero,$zero
.L80085b90:
/* 0x80085b90 */ addu	$s1,$a0,$zero
.L80085b94:
/* 0x80085b94 */ addu	$s2,$v1,$zero
.L80085b98:
/* 0x80085b98 */ jal	0x8007f09c
.L80085b9c:
/* 0x80085b9c */ sll	$zero,$zero,0x0
.L80085ba0:
/* 0x80085ba0 */ slt	$v0,$s0,$v0
.L80085ba4:
/* 0x80085ba4 */ beq	$v0,$zero,.L80085c24
.L80085ba8:
/* 0x80085ba8 */ lui	$v0,0x800f
.L80085bac:
/* 0x80085bac */ jal	0x8007ee70
.L80085bb0:
/* 0x80085bb0 */ addu	$a0,$s0,$zero
.L80085bb4:
/* 0x80085bb4 */ lb	$v1,23($s1)
.L80085bb8:
/* 0x80085bb8 */ sll	$zero,$zero,0x0
.L80085bbc:
/* 0x80085bbc */ bne	$v1,$zero,.L80085bfc
.L80085bc0:
/* 0x80085bc0 */ addu	$a1,$v0,$zero
.L80085bc4:
/* 0x80085bc4 */ lw	$v0,12($a1)
.L80085bc8:
/* 0x80085bc8 */ sll	$zero,$zero,0x0
.L80085bcc:
/* 0x80085bcc */ andi	$v0,$v0,0x100
.L80085bd0:
/* 0x80085bd0 */ beq	$v0,$zero,.L80085bfc
.L80085bd4:
/* 0x80085bd4 */ sll	$zero,$zero,0x0
.L80085bd8:
/* 0x80085bd8 */ lb	$v0,8($s1)
.L80085bdc:
/* 0x80085bdc */ lb	$v1,9($s1)
.L80085be0:
/* 0x80085be0 */ lb	$a0,10($s1)
.L80085be4:
/* 0x80085be4 */ addu	$v0,$v0,$v1
.L80085be8:
/* 0x80085be8 */ subu	$v0,$v0,$a0
.L80085bec:
/* 0x80085bec */ lb	$v1,11($s1)
.L80085bf0:
/* 0x80085bf0 */ addiu	$v0,$v0,-2
.L80085bf4:
/* 0x80085bf4 */ bne	$v1,$v0,.L80085c18
.L80085bf8:
/* 0x80085bf8 */ sll	$zero,$zero,0x0
.L80085bfc:
/* 0x80085bfc */ lhu	$a0,0($a1)
.L80085c00:
/* 0x80085c00 */ jal	0x80096478
.L80085c04:
/* 0x80085c04 */ sll	$zero,$zero,0x0
.L80085c08:
/* 0x80085c08 */ beq	$v0,$zero,.L80085c18
.L80085c0c:
/* 0x80085c0c */ addiu	$v0,$zero,1
.L80085c10:
/* 0x80085c10 */ j 0x0085c20
.L80085c14:
/* 0x80085c14 */ sb	$v0,10115($s2)
.L80085c18:
/* 0x80085c18 */ j 0x0085b98
.L80085c1c:
/* 0x80085c1c */ addiu	$s0,$s0,1
.L80085c20:
/* 0x80085c20 */ lui	$v0,0x800f
.L80085c24:
/* 0x80085c24 */ addiu	$v0,$v0,10504
.L80085c28:
/* 0x80085c28 */ lui	$v1,0x1
.L80085c2c:
/* 0x80085c2c */ addu	$v0,$v0,$v1
.L80085c30:
/* 0x80085c30 */ lbu	$v0,10115($v0)
.L80085c34:
/* 0x80085c34 */ lw	$ra,28($sp)
.L80085c38:
/* 0x80085c38 */ lw	$s2,24($sp)
.L80085c3c:
/* 0x80085c3c */ lw	$s1,20($sp)
.L80085c40:
/* 0x80085c40 */ lw	$s0,16($sp)
.L80085c44:
/* 0x80085c44 */ xori	$v0,$v0,0x1
.L80085c48:
/* 0x80085c48 */ andi	$v0,$v0,0x1
.L80085c4c:
/* 0x80085c4c */ jr	$ra
.L80085c50:
/* 0x80085c50 */ addiu	$sp,$sp,32
.size FUN_80085b50, .-FUN_80085b50
