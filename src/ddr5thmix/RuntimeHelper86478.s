.set noreorder
.set noat
.set nomacro

.section .text.FUN_80086478
.globl FUN_80086478
.type FUN_80086478, @function
FUN_80086478:
/* Runtime gameplay/resource state helper. */
/* 0x80086478 */ addiu $sp,$sp,-64
/* 0x8008647c */ sw $s5,52($sp)
/* 0x80086480 */ addu $s5,$a0,$zero
/* 0x80086484 */ sw $s4,48($sp)
/* 0x80086488 */ addu $s4,$a3,$zero
/* 0x8008648c */ lw $v1,84($sp)
/* 0x80086490 */ lw $a0,88($sp)
/* 0x80086494 */ lw $a3,80($sp)
/* 0x80086498 */ sw $s3,44($sp)
/* 0x8008649c */ addu $s3,$a1,$zero
/* 0x800864a0 */ sw $s0,32($sp)
/* 0x800864a4 */ addu $s0,$a2,$zero
/* 0x800864a8 */ sw $ra,56($sp)
/* 0x800864ac */ sw $s2,40($sp)
/* 0x800864b0 */ bne $a0,$zero,.L80086528
/* 0x800864b4 */ sw $s1,36($sp)
/* 0x800864b8 */ blez $a3,.L800864f4
/* 0x800864bc */ addu $a0,$s3,$zero
/* 0x800864c0 */ addu $a1,$s0,$zero
/* 0x800864c4 */ lui $v0,0x800f
/* 0x800864c8 */ lw $a2,10492($v0)
/* 0x800864cc */ addiu $v0,$zero,99
/* 0x800864d0 */ sw $v0,16($sp)
/* 0x800864d4 */ addiu $v0,$zero,60
/* 0x800864d8 */ sw $v0,20($sp)
/* 0x800864dc */ addiu $v0,$zero,228
/* 0x800864e0 */ sw $v0,24($sp)
/* 0x800864e4 */ addiu $v0,$zero,-231
/* 0x800864e8 */ jal 0x800843dc
/* 0x800864ec */ sw $v0,28($sp)
/* 0x800864f0 */ addu $s0,$v0,$zero
.L800864f4:
/* 0x800864f4 */ addu $a0,$s3,$zero
/* 0x800864f8 */ addu $a1,$s0,$zero
/* 0x800864fc */ addu $a2,$zero,$zero
/* 0x80086500 */ addu $a3,$a2,$zero
/* 0x80086504 */ jal 0x80085254
/* 0x80086508 */ sw $s4,16($sp)
/* 0x8008650c */ addu $s0,$v0,$zero
/* 0x80086510 */ addiu $a1,$zero,254
/* 0x80086514 */ addiu $a2,$zero,128
/* 0x80086518 */ sw $s4,16($sp)
/* 0x8008651c */ lw $a0,0($s5)
/* 0x80086520 */ j 0x80086600
/* 0x80086524 */ addiu $a3,$zero,-10
.L80086528:
/* 0x80086528 */ addiu $v0,$zero,-1
/* 0x8008652c */ bne $v1,$v0,.L80086538
/* 0x80086530 */ sll $zero,$zero,0x0
/* 0x80086534 */ addu $v1,$zero,$zero
.L80086538:
/* 0x80086538 */ bgez $v1,.L80086548
/* 0x8008653c */ sll $v0,$v1,0x1
/* 0x80086540 */ j 0x80086584
/* 0x80086544 */ addiu $s2,$zero,-10
.L80086548:
/* 0x80086548 */ addu $v0,$v0,$v1
/* 0x8008654c */ sll $v0,$v0,0x4
/* 0x80086550 */ mult $v1,$v0
/* 0x80086554 */ mflo $v1
/* 0x80086558 */ sll $zero,$zero,0x0
/* 0x8008655c */ sll $zero,$zero,0x0
/* 0x80086560 */ div $zero,$v1,$a0
/* 0x80086564 */ mflo $v0
/* 0x80086568 */ lui $v1,0x6666
/* 0x8008656c */ ori $v1,$v1,0x6667
/* 0x80086570 */ mult $v0,$v1
/* 0x80086574 */ sra $v0,$v0,0x1f
/* 0x80086578 */ mfhi $v1
/* 0x8008657c */ sra $v1,$v1,0x2
/* 0x80086580 */ subu $s2,$v1,$v0
.L80086584:
/* 0x80086584 */ bgez $s2,.L80086590
/* 0x80086588 */ addu $s1,$s2,$zero
/* 0x8008658c */ addu $s1,$zero,$zero
.L80086590:
/* 0x80086590 */ blez $a3,.L800865d0
/* 0x80086594 */ addu $a0,$s3,$zero
/* 0x80086598 */ addu $a1,$s0,$zero
/* 0x8008659c */ lui $v0,0x800f
/* 0x800865a0 */ lw $a2,10492($v0)
/* 0x800865a4 */ addiu $v0,$zero,99
/* 0x800865a8 */ sw $v0,16($sp)
/* 0x800865ac */ addiu $v0,$zero,60
/* 0x800865b0 */ sw $v0,20($sp)
/* 0x800865b4 */ addiu $v0,$zero,228
/* 0x800865b8 */ sw $v0,24($sp)
/* 0x800865bc */ addiu $v0,$zero,-231
/* 0x800865c0 */ subu $v0,$v0,$s1
/* 0x800865c4 */ jal 0x800843dc
/* 0x800865c8 */ sw $v0,28($sp)
/* 0x800865cc */ addu $s0,$v0,$zero
.L800865d0:
/* 0x800865d0 */ addu $a0,$s3,$zero
/* 0x800865d4 */ addu $a1,$s0,$zero
/* 0x800865d8 */ addu $a2,$zero,$zero
/* 0x800865dc */ addu $a3,$s1,$zero
/* 0x800865e0 */ jal 0x80085254
/* 0x800865e4 */ sw $s4,16($sp)
/* 0x800865e8 */ addu $s0,$v0,$zero
/* 0x800865ec */ addiu $a1,$zero,254
/* 0x800865f0 */ addiu $a2,$zero,128
/* 0x800865f4 */ sw $s4,16($sp)
/* 0x800865f8 */ lw $a0,0($s5)
/* 0x800865fc */ addu $a3,$s2,$zero
.L80086600:
/* 0x80086600 */ jal 0x80084fe8
/* 0x80086604 */ sll $zero,$zero,0x0
/* 0x80086608 */ sw $v0,0($s5)
/* 0x8008660c */ addu $v0,$s0,$zero
/* 0x80086610 */ lw $ra,56($sp)
/* 0x80086614 */ lw $s5,52($sp)
/* 0x80086618 */ lw $s4,48($sp)
/* 0x8008661c */ lw $s3,44($sp)
/* 0x80086620 */ lw $s2,40($sp)
/* 0x80086624 */ lw $s1,36($sp)
/* 0x80086628 */ lw $s0,32($sp)
/* 0x8008662c */ jr $ra
/* 0x80086630 */ addiu $sp,$sp,64
.size FUN_80086478, .-FUN_80086478
