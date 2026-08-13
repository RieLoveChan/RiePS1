.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008ebac
.globl FUN_8008ebac
.type FUN_8008ebac, @function
FUN_8008ebac:
/* Runtime resource and state helper. */
.L8008ebac:
/* 0x8008ebac */ addiu	$sp,$sp,-72
.L8008ebb0:
/* 0x8008ebb0 */ sw	$s5,60($sp)
.L8008ebb4:
/* 0x8008ebb4 */ addu	$s5,$a0,$zero
.L8008ebb8:
/* 0x8008ebb8 */ sw	$s4,56($sp)
.L8008ebbc:
/* 0x8008ebbc */ addu	$s4,$a1,$zero
.L8008ebc0:
/* 0x8008ebc0 */ sw	$s3,52($sp)
.L8008ebc4:
/* 0x8008ebc4 */ addu	$s3,$a2,$zero
.L8008ebc8:
/* 0x8008ebc8 */ sw	$s0,40($sp)
.L8008ebcc:
/* 0x8008ebcc */ addu	$s0,$a3,$zero
.L8008ebd0:
/* 0x8008ebd0 */ sw	$s1,44($sp)
.L8008ebd4:
/* 0x8008ebd4 */ lw	$s1,88($sp)
.L8008ebd8:
/* 0x8008ebd8 */ addiu	$a0,$zero,103
.L8008ebdc:
/* 0x8008ebdc */ sw	$ra,64($sp)
.L8008ebe0:
/* 0x8008ebe0 */ jal	0x80098880
.L8008ebe4:
/* 0x8008ebe4 */ sw	$s2,48($sp)
.L8008ebe8:
/* 0x8008ebe8 */ addu	$s2,$v0,$zero
.L8008ebec:
/* 0x8008ebec */ lui	$v0,0x800f
.L8008ebf0:
/* 0x8008ebf0 */ lb	$v1,10528($v0)
.L8008ebf4:
/* 0x8008ebf4 */ addiu	$v0,$zero,2
.L8008ebf8:
/* 0x8008ebf8 */ beq	$v1,$v0,.L8008ec1c
.L8008ebfc:
/* 0x8008ebfc */ slti	$v0,$v1,3
.L8008ec00:
/* 0x8008ec00 */ bne	$v0,$zero,.L8008ec20
.L8008ec04:
/* 0x8008ec04 */ addu	$a3,$zero,$zero
.L8008ec08:
/* 0x8008ec08 */ addiu	$v0,$zero,5
.L8008ec0c:
/* 0x8008ec0c */ bne	$v1,$v0,.L8008ec20
.L8008ec10:
/* 0x8008ec10 */ sll	$zero,$zero,0x0
.L8008ec14:
/* 0x8008ec14 */ j	0x8008ec20
.L8008ec18:
/* 0x8008ec18 */ addiu	$a3,$zero,1
.L8008ec1c:
/* 0x8008ec1c */ addiu	$a3,$zero,2
.L8008ec20:
/* 0x8008ec20 */ sll	$s0,$s0,0x5
.L8008ec24:
/* 0x8008ec24 */ div	$zero,$s0,$s1
.L8008ec28:
/* 0x8008ec28 */ mflo	$s0
.L8008ec2c:
/* 0x8008ec2c */ addu	$a0,$s4,$zero
.L8008ec30:
/* 0x8008ec30 */ addu	$a1,$s3,$zero
.L8008ec34:
/* 0x8008ec34 */ addiu	$s1,$zero,166
.L8008ec38:
/* 0x8008ec38 */ sll	$a3,$a3,0x5
.L8008ec3c:
/* 0x8008ec3c */ lh	$a2,2($s2)
.L8008ec40:
/* 0x8008ec40 */ lh	$v0,4($s2)
.L8008ec44:
/* 0x8008ec44 */ addiu	$a3,$a3,140
.L8008ec48:
/* 0x8008ec48 */ sw	$s1,16($sp)
.L8008ec4c:
/* 0x8008ec4c */ addu	$a3,$v0,$a3
.L8008ec50:
/* 0x8008ec50 */ sw	$s0,20($sp)
.L8008ec54:
/* 0x8008ec54 */ lh	$v1,10($s2)
.L8008ec58:
/* 0x8008ec58 */ addiu	$v0,$zero,-1
.L8008ec5c:
/* 0x8008ec5c */ sw	$v0,28($sp)
.L8008ec60:
/* 0x8008ec60 */ jal	0x80048144
.L8008ec64:
/* 0x8008ec64 */ sw	$v1,24($sp)
.L8008ec68:
/* 0x8008ec68 */ addu	$a0,$s4,$zero
.L8008ec6c:
/* 0x8008ec6c */ lh	$a2,14($s2)
.L8008ec70:
/* 0x8008ec70 */ lh	$a3,16($s2)
.L8008ec74:
/* 0x8008ec74 */ jal	0x80049208
.L8008ec78:
/* 0x8008ec78 */ addu	$a1,$s3,$zero
.L8008ec7c:
/* 0x8008ec7c */ addu	$a0,$s4,$zero
.L8008ec80:
/* 0x8008ec80 */ addu	$a1,$s3,$zero
.L8008ec84:
/* 0x8008ec84 */ addiu	$a2,$zero,-261
.L8008ec88:
/* 0x8008ec88 */ addiu	$a3,$zero,129
.L8008ec8c:
/* 0x8008ec8c */ sw	$s1,16($sp)
.L8008ec90:
/* 0x8008ec90 */ jal	0x80049364
.L8008ec94:
/* 0x8008ec94 */ sw	$s0,20($sp)
.L8008ec98:
/* 0x8008ec98 */ addu	$a0,$s4,$zero
.L8008ec9c:
/* 0x8008ec9c */ addu	$a1,$s3,$zero
.L8008eca0:
/* 0x8008eca0 */ addiu	$a2,$zero,128
.L8008eca4:
/* 0x8008eca4 */ addu	$a3,$a2,$zero
.L8008eca8:
/* 0x8008eca8 */ addu	$v0,$a2,$zero
.L8008ecac:
/* 0x8008ecac */ jal	0x800490f8
.L8008ecb0:
/* 0x8008ecb0 */ sw	$v0,16($sp)
.L8008ecb4:
/* 0x8008ecb4 */ addiu	$s3,$s3,1
.L8008ecb8:
/* 0x8008ecb8 */ jal	0x80098880
.L8008ecbc:
/* 0x8008ecbc */ addiu	$a0,$zero,100
.L8008ecc0:
/* 0x8008ecc0 */ addiu	$a1,$zero,255
.L8008ecc4:
/* 0x8008ecc4 */ addiu	$a2,$zero,128
.L8008ecc8:
/* 0x8008ecc8 */ addiu	$v1,$zero,129
.L8008eccc:
/* 0x8008eccc */ sw	$v0,20($sp)
.L8008ecd0:
/* 0x8008ecd0 */ addiu	$v0,$zero,59
.L8008ecd4:
/* 0x8008ecd4 */ sw	$v0,24($sp)
.L8008ecd8:
/* 0x8008ecd8 */ addiu	$v0,$zero,369
.L8008ecdc:
/* 0x8008ecdc */ sw	$v0,28($sp)
.L8008ece0:
/* 0x8008ece0 */ addiu	$v0,$zero,32
.L8008ece4:
/* 0x8008ece4 */ sw	$v1,16($sp)
.L8008ece8:
/* 0x8008ece8 */ sw	$s1,32($sp)
.L8008ecec:
/* 0x8008ecec */ sw	$v0,36($sp)
.L8008ecf0:
/* 0x8008ecf0 */ lw	$a0,84($s5)
.L8008ecf4:
/* 0x8008ecf4 */ jal	0x8004dab8
.L8008ecf8:
/* 0x8008ecf8 */ addiu	$a3,$zero,-261
.L8008ecfc:
/* 0x8008ecfc */ sw	$v0,84($s5)
.L8008ed00:
/* 0x8008ed00 */ addu	$v0,$s3,$zero
.L8008ed04:
/* 0x8008ed04 */ lw	$ra,64($sp)
.L8008ed08:
/* 0x8008ed08 */ lw	$s5,60($sp)
.L8008ed0c:
/* 0x8008ed0c */ lw	$s4,56($sp)
.L8008ed10:
/* 0x8008ed10 */ lw	$s3,52($sp)
.L8008ed14:
/* 0x8008ed14 */ lw	$s2,48($sp)
.L8008ed18:
/* 0x8008ed18 */ lw	$s1,44($sp)
.L8008ed1c:
/* 0x8008ed1c */ lw	$s0,40($sp)
.L8008ed20:
/* 0x8008ed20 */ jr	$ra
.L8008ed24:
/* 0x8008ed24 */ addiu	$sp,$sp,72
.size FUN_8008ebac, .-FUN_8008ebac
