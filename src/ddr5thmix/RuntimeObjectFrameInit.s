.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007e7b8
.globl FUN_8007e7b8
.type FUN_8007e7b8, @function
FUN_8007e7b8:
/* Initialize the frame records and publish sixteen sampled channels. */
/* 0x8007e7b8 */ addiu $sp,$sp,-56
/* 0x8007e7bc */ sw $s1,36($sp)
/* 0x8007e7c0 */ addu $s1,$a0,$zero
/* 0x8007e7c4 */ sw $s3,44($sp)
/* 0x8007e7c8 */ addu $s3,$s1,$zero
/* 0x8007e7cc */ sw $ra,52($sp)
/* 0x8007e7d0 */ sw $s4,48($sp)
/* 0x8007e7d4 */ sw $s2,40($sp)
/* 0x8007e7d8 */ sw $s0,32($sp)
/* 0x8007e7dc */ lw $s0,2920($s1)
/* 0x8007e7e0 */ lw $v0,2940($s1)
/* 0x8007e7e4 */ addiu $s1,$s1,80
/* 0x8007e7e8 */ addu $a1,$s1,$zero
/* 0x8007e7ec */ addiu $a2,$zero,-1
/* 0x8007e7f0 */ sw $zero,0($s1)
/* 0x8007e7f4 */ addiu $s1,$s1,80
/* 0x8007e7f8 */ lw $a0,2916($s3)
/* 0x8007e7fc */ lw $a3,2908($s3)
/* 0x8007e800 */ jal 0x8007cf38
/* 0x8007e804 */ slt $s0,$s0,$v0
/* 0x8007e808 */ sll $v0,$s0,2
/* 0x8007e80c */ addu $v0,$v0,$s0
/* 0x8007e810 */ sll $v0,$v0,2
/* 0x8007e814 */ addu $v1,$s3,$v0
/* 0x8007e818 */ sw $zero,104($s3)
/* 0x8007e81c */ sw $zero,108($s3)
/* 0x8007e820 */ sw $zero,112($s3)
/* 0x8007e824 */ lw $v0,2920($v1)
/* 0x8007e828 */ nop
/* 0x8007e82c */ slti $v0,$v0,4096
/* 0x8007e830 */ bne $v0,$zero,.L8007e87c
/* 0x8007e834 */ addu $s4,$s0,$zero
/* 0x8007e838 */ addu $s0,$zero,$zero
/* 0x8007e83c */ addu $s2,$v1,$zero
/* 0x8007e840 */ addu $a1,$s1,$zero
.L8007e844:
/* 0x8007e844 */ addu $a2,$s0,$zero
/* 0x8007e848 */ sw $zero,0($s1)
/* 0x8007e84c */ lw $a0,2916($s2)
/* 0x8007e850 */ lw $a3,2908($s2)
/* 0x8007e854 */ jal 0x8007cf38
/* 0x8007e858 */ addiu $s1,$s1,80
/* 0x8007e85c */ addu $v1,$s3,$s0
/* 0x8007e860 */ addiu $s0,$s0,1
/* 0x8007e864 */ sb $v0,2880($v1)
/* 0x8007e868 */ slti $v0,$s0,16
/* 0x8007e86c */ bne $v0,$zero,.L8007e844
/* 0x8007e870 */ addu $a1,$s1,$zero
/* 0x8007e874 */ j 0x8007e8e4
/* 0x8007e878 */ nop
.L8007e87c:
/* 0x8007e87c */ addu $s0,$zero,$zero
/* 0x8007e880 */ addu $s2,$v1,$zero
/* 0x8007e884 */ addiu $v1,$zero,1
/* 0x8007e888 */ subu $v1,$v1,$s4
/* 0x8007e88c */ sll $v0,$v1,2
/* 0x8007e890 */ addu $v0,$v0,$v1
/* 0x8007e894 */ sll $v0,$v0,2
/* 0x8007e898 */ addu $s4,$s3,$v0
.L8007e89c:
/* 0x8007e89c */ sw $zero,0($s1)
/* 0x8007e8a0 */ lw $v0,2908($s4)
/* 0x8007e8a4 */ sw $s0,20($sp)
/* 0x8007e8a8 */ sw $v0,16($sp)
/* 0x8007e8ac */ lw $v0,2920($s2)
/* 0x8007e8b0 */ addu $a0,$s1,$zero
/* 0x8007e8b4 */ sw $v0,24($sp)
/* 0x8007e8b8 */ lw $a1,2916($s2)
/* 0x8007e8bc */ lw $a2,2908($s2)
/* 0x8007e8c0 */ lw $a3,2916($s4)
/* 0x8007e8c4 */ jal 0x8007dd2c
/* 0x8007e8c8 */ addiu $s1,$s1,80
/* 0x8007e8cc */ addu $v1,$s3,$s0
/* 0x8007e8d0 */ addiu $s0,$s0,1
/* 0x8007e8d4 */ sb $v0,2880($v1)
/* 0x8007e8d8 */ slti $v0,$s0,16
/* 0x8007e8dc */ bne $v0,$zero,.L8007e89c
/* 0x8007e8e0 */ nop
.L8007e8e4:
/* 0x8007e8e4 */ lw $ra,52($sp)
/* 0x8007e8e8 */ lw $s4,48($sp)
/* 0x8007e8ec */ lw $s3,44($sp)
/* 0x8007e8f0 */ lw $s2,40($sp)
/* 0x8007e8f4 */ lw $s1,36($sp)
/* 0x8007e8f8 */ lw $s0,32($sp)
/* 0x8007e8fc */ jr $ra
/* 0x8007e900 */ addiu $sp,$sp,56
.size FUN_8007e7b8, .-FUN_8007e7b8
