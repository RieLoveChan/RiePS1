.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ea5c
.globl FUN_8007ea5c
.type FUN_8007ea5c, @function
FUN_8007ea5c:
/* Runtime callback helper. */
/* 0x8007ea5c */ addiu	$sp,$sp,-40
/* 0x8007ea60 */ sw	$s2,24($sp)
/* 0x8007ea64 */ addu $s2,$zero,$zero
/* 0x8007ea68 */ lui	$v0,0x800e
/* 0x8007ea6c */ sw	$s4,32($sp)
/* 0x8007ea70 */ addiu	$s4,$v0,-3112
/* 0x8007ea74 */ lui	$v0,0x800f
/* 0x8007ea78 */ sw	$s1,20($sp)
/* 0x8007ea7c */ addiu	$s1,$v0,10504
/* 0x8007ea80 */ sw	$s3,28($sp)
/* 0x8007ea84 */ addu $s3,$s1,$zero
/* 0x8007ea88 */ sw	$ra,36($sp)
/* 0x8007ea8c */ sw	$s0,16($sp)
.L8007ea90:
/* 0x8007ea90 */ addu $a1,$zero,$zero
/* 0x8007ea94 */ addu $a0,$s4,$zero
.L8007ea98:
/* 0x8007ea98 */ addu $v1,$a0,$zero
/* 0x8007ea9c */ lb	$v0,3($v1)
/* 0x8007eaa0 */ nop
/* 0x8007eaa4 */ beq	$v0,$s2,.L8007ead4
/* 0x8007eaa8 */ addiu	$a1,$a1,1
/* 0x8007eaac */ slti	$v0,$a1,47
/* 0x8007eab0 */ bne $v0,$zero,.L8007ea98
/* 0x8007eab4 */ addiu	$a0,$v1,28
/* 0x8007eab8 */ addu $s0,$zero,$zero
.L8007eabc:
/* 0x8007eabc */ bne $s0,$zero,.L8007eadc
/* 0x8007eac0 */ addu $a0,$s0,$zero
/* 0x8007eac4 */ lui	$v0,0x1
/* 0x8007eac8 */ addu	$v0,$s1,$v0
/* 0x8007eacc */ j	0x8007eb38
/* 0x8007ead0 */ addiu $v1,$zero,5
.L8007ead4:
/* 0x8007ead4 */ j	0x8007eabc
/* 0x8007ead8 */ addu $s0,$a0,$zero
.L8007eadc:
/* 0x8007eadc */ jal	0x8007eee0
/* 0x8007eae0 */ addu $a1,$zero,$zero
.L8007eae4:
/* 0x8007eae4 */ beq $v0,$zero,.L8007eb3c
/* 0x8007eae8 */ nop
/* 0x8007eaec */ lb	$v0,23($s3)
/* 0x8007eaf0 */ nop
.L8007eaf4:
/* 0x8007eaf4 */ bne $v0,$zero,.L8007eb30
/* 0x8007eaf8 */ lui	$v0,0x1
/* 0x8007eafc */ lw	$v0,12($s0)
/* 0x8007eb00 */ nop
/* 0x8007eb04 */ andi	$v0,$v0,0x100
.L8007eb08:
/* 0x8007eb08 */ beq $v0,$zero,.L8007eb30
/* 0x8007eb0c */ lui	$v0,0x1
/* 0x8007eb10 */ lb	$a0,24($s3)
/* 0x8007eb14 */ jal	0x80085fcc
/* 0x8007eb18 */ nop
/* 0x8007eb1c */ addiu $v1,$zero,2
.L8007eb20:
/* 0x8007eb20 */ beq	$v0,$v1,.L8007eb30
/* 0x8007eb24 */ lui	$v0,0x1
/* 0x8007eb28 */ j	0x8007eb38
/* 0x8007eb2c */ addu	$v0,$s1,$v0
.L8007eb30:
/* 0x8007eb30 */ addu	$v0,$s1,$v0
/* 0x8007eb34 */ addiu $v1,$zero,1
.L8007eb38:
/* 0x8007eb38 */ sb	$v1,9512($v0)
.L8007eb3c:
/* 0x8007eb3c */ addiu	$s2,$s2,1
/* 0x8007eb40 */ slti	$v0,$s2,160
/* 0x8007eb44 */ bne $v0,$zero,.L8007ea90
/* 0x8007eb48 */ addiu	$s1,$s1,1
/* 0x8007eb4c */ lw	$ra,36($sp)
/* 0x8007eb50 */ lw	$s4,32($sp)
/* 0x8007eb54 */ lw	$s3,28($sp)
/* 0x8007eb58 */ lw	$s2,24($sp)
/* 0x8007eb5c */ lw	$s1,20($sp)
/* 0x8007eb60 */ lw	$s0,16($sp)
/* 0x8007eb64 */ addu $v0,$zero,$zero
/* 0x8007eb68 */ jr $ra
/* 0x8007eb6c */ addiu	$sp,$sp,40
.size FUN_8007ea5c, .-FUN_8007ea5c

