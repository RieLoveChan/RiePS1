.set noreorder
.set noat
.set nomacro

.section .text.FUN_80087050
.globl FUN_80087050
.type FUN_80087050, @function
FUN_80087050:
/* Runtime record reorder and counter update helper. */
/* 0x80087050 */ addiu $sp,$sp,-24
/* 0x80087054 */ sw $ra,16($sp)
/* 0x80087058 */ lw $v1,1864($a0)
/* 0x8008705c */ lw $v0,1868($a0)
/* 0x80087060 */ sll $zero,$zero,0x0
/* 0x80087064 */ bne $v1,$v0,.L80087178
/* 0x80087068 */ addiu $v0,$zero,-1
/* 0x8008706c */ lw $v1,1848($a0)
/* 0x80087070 */ sll $zero,$zero,0x0
/* 0x80087074 */ bne $v1,$v0,.L80087178
/* 0x80087078 */ sll $zero,$zero,0x0
/* 0x8008707c */ lbu $v0,1968($a0)
/* 0x80087080 */ sll $zero,$zero,0x0
/* 0x80087084 */ bne $v0,$zero,.L80087178
/* 0x80087088 */ addiu $v0,$a1,-200
/* 0x8008708c */ sll $v0,$v0,0x1
/* 0x80087090 */ addu $v0,$a0,$v0
/* 0x80087094 */ lh $t1,1722($v0)
/* 0x80087098 */ lh $v1,22($a0)
/* 0x8008709c */ lh $t0,1782($v0)
/* 0x800870a0 */ beq $v1,$a1,.L800870c0
/* 0x800870a4 */ addu $a3,$zero,$zero
/* 0x800870a8 */ addu $v1,$a0,$zero
.L800870ac:
/* 0x800870ac */ addiu $v1,$v1,2
/* 0x800870b0 */ lh $v0,22($v1)
/* 0x800870b4 */ sll $zero,$zero,0x0
/* 0x800870b8 */ bne $v0,$a1,.L800870ac
/* 0x800870bc */ addiu $a3,$a3,1
.L800870c0:
/* 0x800870c0 */ addiu $a3,$a3,1
/* 0x800870c4 */ lw $a1,4($a0)
/* 0x800870c8 */ addiu $v0,$a3,1
/* 0x800870cc */ div $zero,$v0,$a1
/* 0x800870d0 */ mfhi $v1
/* 0x800870d4 */ sll $zero,$zero,0x0
/* 0x800870d8 */ sll $v1,$v1,0x1
/* 0x800870dc */ addu $v1,$a0,$v1
/* 0x800870e0 */ lh $v0,22($v1)
/* 0x800870e4 */ sll $zero,$zero,0x0
/* 0x800870e8 */ slti $v0,$v0,200
/* 0x800870ec */ bne $v0,$zero,.L80087178
/* 0x800870f0 */ addiu $a1,$a1,-1
/* 0x800870f4 */ slt $v0,$a1,$a3
/* 0x800870f8 */ bne $v0,$zero,.L80087128
/* 0x800870fc */ sll $v0,$a1,0x1
/* 0x80087100 */ addu $a2,$v0,$a0
.L80087104:
/* 0x80087104 */ lhu $v0,22($a2)
/* 0x80087108 */ addu $v1,$a1,$t0
/* 0x8008710c */ addiu $a1,$a1,-1
/* 0x80087110 */ sll $v1,$v1,0x1
/* 0x80087114 */ addu $v1,$a0,$v1
/* 0x80087118 */ sh $v0,22($v1)
/* 0x8008711c */ slt $v0,$a1,$a3
/* 0x80087120 */ beq $v0,$zero,.L80087104
/* 0x80087124 */ addiu $a2,$a2,-2
.L80087128:
/* 0x80087128 */ blez $t0,.L80087160
/* 0x8008712c */ addu $a1,$zero,$zero
/* 0x80087130 */ addu $v1,$a3,$a1
.L80087134:
/* 0x80087134 */ addu $v0,$t1,$a1
/* 0x80087138 */ addiu $a1,$a1,1
/* 0x8008713c */ sll $v1,$v1,0x1
/* 0x80087140 */ sll $v0,$v0,0x1
/* 0x80087144 */ addu $v0,$a0,$v0
/* 0x80087148 */ lhu $v0,342($v0)
/* 0x8008714c */ addu $v1,$a0,$v1
/* 0x80087150 */ sh $v0,22($v1)
/* 0x80087154 */ slt $v0,$a1,$t0
/* 0x80087158 */ bne $v0,$zero,.L80087134
/* 0x8008715c */ addu $v1,$a3,$a1
.L80087160:
/* 0x80087160 */ lw $v0,4($a0)
/* 0x80087164 */ sll $zero,$zero,0x0
/* 0x80087168 */ addu $v0,$v0,$t0
/* 0x8008716c */ sw $v0,4($a0)
/* 0x80087170 */ jal 0x80028358
/* 0x80087174 */ addiu $a0,$zero,787
.L80087178:
/* 0x80087178 */ lw $ra,16($sp)
/* 0x8008717c */ sll $zero,$zero,0x0
/* 0x80087180 */ jr $ra
/* 0x80087184 */ addiu $sp,$sp,24
.size FUN_80087050, .-FUN_80087050
