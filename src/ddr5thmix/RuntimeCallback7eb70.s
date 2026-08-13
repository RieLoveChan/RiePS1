.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007eb70
.globl FUN_8007eb70
.type FUN_8007eb70, @function
FUN_8007eb70:
/* Runtime callback helper. */
/* 0x8007eb70 */ addiu	$sp,$sp,-40
/* 0x8007eb74 */ sw	$s4,32($sp)
/* 0x8007eb78 */ addu $s4,$a0,$zero
/* 0x8007eb7c */ sw	$s2,24($sp)
/* 0x8007eb80 */ addu $s2,$zero,$zero
/* 0x8007eb84 */ sw	$s3,28($sp)
/* 0x8007eb88 */ addiu $s3,$zero,1
/* 0x8007eb8c */ lui	$v0,0x800e
/* 0x8007eb90 */ sw	$s1,20($sp)
/* 0x8007eb94 */ addiu	$s1,$v0,-3112
/* 0x8007eb98 */ sw	$ra,36($sp)
/* 0x8007eb9c */ sw	$s0,16($sp)
.L8007eba0:
/* 0x8007eba0 */ lhu	$s0,18($s1)
/* 0x8007eba4 */ beq $s1,$zero,.L8007ebcc
/* 0x8007eba8 */ addiu $v1,$zero,-1
/* 0x8007ebac */ beq $s0,$zero,.L8007ebcc
/* 0x8007ebb0 */ addu $v1,$zero,$zero
/* 0x8007ebb4 */ jal	0x8007f968
/* 0x8007ebb8 */ nop
/* 0x8007ebbc */ addiu	$v1,$s0,-1
/* 0x8007ebc0 */ sllv	$v1,$s3,$v1
/* 0x8007ebc4 */ and	$v1,$v1,$v0
/* 0x8007ebc8 */ sltiu	$v1,$v1,1
.L8007ebcc:
/* 0x8007ebcc */ blez	$v1,.L8007ec04
/* 0x8007ebd0 */ nop
/* 0x8007ebd4 */ lw	$a0,16($s1)
/* 0x8007ebd8 */ nop
/* 0x8007ebdc */ andi	$v0,$a0,0xfff
/* 0x8007ebe0 */ sltu	$v0,$s4,$v0
/* 0x8007ebe4 */ bne $v0,$zero,.L8007ec04
/* 0x8007ebe8 */ srl	$a0,$a0,0x10
/* 0x8007ebec */ addiu	$a0,$a0,-1
/* 0x8007ebf0 */ jal	0x8007f998
/* 0x8007ebf4 */ sllv	$a0,$s3,$a0
/* 0x8007ebf8 */ lhu	$a0,0($s1)
/* 0x8007ebfc */ jal	0x800a2460
/* 0x8007ec00 */ addu $a1,$s2,$zero
.L8007ec04:
/* 0x8007ec04 */ addiu	$s2,$s2,1
/* 0x8007ec08 */ slti	$v0,$s2,47
/* 0x8007ec0c */ bne $v0,$zero,.L8007eba0
/* 0x8007ec10 */ addiu	$s1,$s1,28
/* 0x8007ec14 */ jal	0x8007f968
/* 0x8007ec18 */ nop
/* 0x8007ec1c */ andi	$v0,$v0,0x1
/* 0x8007ec20 */ bne $v0,$zero,.L8007ec50
/* 0x8007ec24 */ sltiu	$v0,$s4,70
/* 0x8007ec28 */ bne $v0,$zero,.L8007ec50
/* 0x8007ec2c */ nop
/* 0x8007ec30 */ jal	0x8007f998
/* 0x8007ec34 */ addiu $a0,$zero,1
/* 0x8007ec38 */ addiu $a0,$zero,43
/* 0x8007ec3c */ jal	0x8009d274
/* 0x8007ec40 */ ori $a1,$zero,0xffff
/* 0x8007ec44 */ addiu $a0,$zero,44
/* 0x8007ec48 */ jal	0x8009d274
/* 0x8007ec4c */ ori $a1,$zero,0xffff
.L8007ec50:
/* 0x8007ec50 */ jal	0x8007f968
/* 0x8007ec54 */ nop
/* 0x8007ec58 */ andi	$v0,$v0,0x2
/* 0x8007ec5c */ bne $v0,$zero,.L8007ec8c
/* 0x8007ec60 */ sltiu	$v0,$s4,100
/* 0x8007ec64 */ bne $v0,$zero,.L8007ec8c
/* 0x8007ec68 */ nop
/* 0x8007ec6c */ jal	0x8007f998
/* 0x8007ec70 */ addiu $a0,$zero,2
/* 0x8007ec74 */ addiu $a0,$zero,45
/* 0x8007ec78 */ jal	0x8009d274
/* 0x8007ec7c */ ori $a1,$zero,0xffff
/* 0x8007ec80 */ addiu $a0,$zero,46
/* 0x8007ec84 */ jal	0x8009d274
/* 0x8007ec88 */ ori $a1,$zero,0xffff
.L8007ec8c:
/* 0x8007ec8c */ lw	$ra,36($sp)
/* 0x8007ec90 */ lw	$s4,32($sp)
/* 0x8007ec94 */ lw	$s3,28($sp)
/* 0x8007ec98 */ lw	$s2,24($sp)
/* 0x8007ec9c */ lw	$s1,20($sp)
/* 0x8007eca0 */ lw	$s0,16($sp)
/* 0x8007eca4 */ jr $ra
/* 0x8007eca8 */ addiu	$sp,$sp,40
.size FUN_8007eb70, .-FUN_8007eb70

