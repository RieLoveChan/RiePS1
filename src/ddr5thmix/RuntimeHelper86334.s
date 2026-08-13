.set noreorder
.set noat
.set nomacro

.section .text.FUN_80086334
.globl FUN_80086334
.type FUN_80086334, @function
FUN_80086334:
/* Runtime gameplay/resource state helper. */
.L80086334:
/* 0x80086334 */ addiu $sp,$sp,-72
/* 0x80086338 */ lw $v0,92($sp)
/* 0x8008633c */ lw $v1,96($sp)
/* 0x80086340 */ sw $s0,40($sp)
/* 0x80086344 */ sll $v0,$v0,0x7
/* 0x80086348 */ div $zero,$v0,$v1
/* 0x8008634c */ mflo $s0
/* 0x80086350 */ sw $s3,52($sp)
/* 0x80086354 */ lw $s3,88($sp)
/* 0x80086358 */ sw $s4,56($sp)
/* 0x8008635c */ lw $s4,100($sp)
/* 0x80086360 */ sw $s1,44($sp)
/* 0x80086364 */ addu $s1,$a0,$zero
/* 0x80086368 */ sw $s6,64($sp)
/* 0x8008636c */ addu $s6,$a2,$zero
/* 0x80086370 */ sw $s5,60($sp)
/* 0x80086374 */ addu $s5,$a3,$zero
/* 0x80086378 */ sw $ra,68($sp)
/* 0x8008637c */ bgez $s0,.L80086388
/* 0x80086380 */ sw $s2,48($sp)
/* 0x80086384 */ addu $s0,$zero,$zero
.L80086388:
/* 0x80086388 */ slti $v0,$s0,129
/* 0x8008638c */ bne $v0,$zero,.L80086398
/* 0x80086390 */ sll $zero,$zero,0x0
/* 0x80086394 */ addiu $s0,$zero,128
.L80086398:
/* 0x80086398 */ jal 0x80098880
/* 0x8008639c */ addiu $a0,$zero,95
/* 0x800863a0 */ addiu $s2,$zero,128
/* 0x800863a4 */ beq $s3,$zero,.L80086404
/* 0x800863a8 */ subu $s0,$s2,$s0
/* 0x800863ac */ addiu $a1,$zero,253
/* 0x800863b0 */ addiu $a2,$zero,1
/* 0x800863b4 */ sw $v0,16($sp)
/* 0x800863b8 */ lw $a0,0($s1)
/* 0x800863bc */ jal 0x8004e2ec
/* 0x800863c0 */ addu $a3,$s0,$zero
/* 0x800863c4 */ jal 0x8009643c
/* 0x800863c8 */ sw $v0,0($s1)
/* 0x800863cc */ beq $v0,$zero,.L80086404
/* 0x800863d0 */ sll $zero,$zero,0x0
/* 0x800863d4 */ beq $s4,$zero,.L80086404
/* 0x800863d8 */ slti $v0,$s0,65
/* 0x800863dc */ bne $v0,$zero,.L80086404
/* 0x800863e0 */ addu $a1,$zero,$zero
/* 0x800863e4 */ addiu $a2,$zero,-46
/* 0x800863e8 */ addiu $v0,$zero,-1
/* 0x800863ec */ sw $s2,16($sp)
/* 0x800863f0 */ sw $v0,20($sp)
/* 0x800863f4 */ lw $a0,0($s1)
/* 0x800863f8 */ jal 0x80061d00
/* 0x800863fc */ addiu $a3,$zero,4
/* 0x80086400 */ sw $v0,0($s1)
.L80086404:
/* 0x80086404 */ jal 0x80098880
/* 0x80086408 */ addu $a0,$s5,$zero
/* 0x8008640c */ addiu $a1,$zero,254
/* 0x80086410 */ addiu $a2,$zero,128
/* 0x80086414 */ subu $a2,$a2,$s0
/* 0x80086418 */ addiu $v1,$zero,-240
/* 0x8008641c */ sw $v0,20($sp)
/* 0x80086420 */ addiu $v0,$zero,640
/* 0x80086424 */ sw $v0,32($sp)
/* 0x80086428 */ addiu $v0,$zero,480
/* 0x8008642c */ sw $v1,16($sp)
/* 0x80086430 */ sw $zero,24($sp)
/* 0x80086434 */ sw $zero,28($sp)
/* 0x80086438 */ sw $v0,36($sp)
/* 0x8008643c */ lw $a0,0($s1)
/* 0x80086440 */ jal 0x8004dab8
/* 0x80086444 */ addiu $a3,$zero,-320
/* 0x80086448 */ sw $v0,0($s1)
/* 0x8008644c */ addu $v0,$s6,$zero
/* 0x80086450 */ lw $ra,68($sp)
/* 0x80086454 */ lw $s6,64($sp)
/* 0x80086458 */ lw $s5,60($sp)
/* 0x8008645c */ lw $s4,56($sp)
/* 0x80086460 */ lw $s3,52($sp)
/* 0x80086464 */ lw $s2,48($sp)
/* 0x80086468 */ lw $s1,44($sp)
/* 0x8008646c */ lw $s0,40($sp)
/* 0x80086470 */ jr $ra
/* 0x80086474 */ addiu $sp,$sp,72
.size FUN_80086334, .-FUN_80086334
