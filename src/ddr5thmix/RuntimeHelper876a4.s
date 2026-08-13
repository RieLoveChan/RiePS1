.set noreorder
.set noat
.set nomacro

.section .text.FUN_800876a4
.globl FUN_800876a4
.type FUN_800876a4, @function
FUN_800876a4:
/* Runtime record table initialization helper. */
/* 0x800876a4 */ lui $v0,0x800e
/* 0x800876a8 */ lw $v0,2840($v0)
/* 0x800876ac */ addiu $sp,$sp,-72
/* 0x800876b0 */ sw $s4,48($sp)
/* 0x800876b4 */ addu $s4,$a0,$zero
/* 0x800876b8 */ sw $s7,60($sp)
/* 0x800876bc */ addu $s7,$zero,$zero
/* 0x800876c0 */ sw $ra,68($sp)
/* 0x800876c4 */ sw $s8,64($sp)
/* 0x800876c8 */ sw $s6,56($sp)
/* 0x800876cc */ sw $s5,52($sp)
/* 0x800876d0 */ sw $s3,44($sp)
/* 0x800876d4 */ sw $s2,40($sp)
/* 0x800876d8 */ sw $s1,36($sp)
/* 0x800876dc */ sw $s0,32($sp)
/* 0x800876e0 */ jal 0x80085558
/* 0x800876e4 */ addu $s8,$v0,176
/* 0x800876e8 */ beq $v0,$zero,.L800876f4
/* 0x800876ec */ lui $v0,0x8002
/* 0x800876f0 */ addiu $s7,$zero,3
.L800876f4:
/* 0x800876f4 */ addiu $t2,$v0,-6792
/* 0x800876f8 */ lw $a3,0($t2)
/* 0x800876fc */ lw $t0,4($t2)
/* 0x80087700 */ lw $t1,8($t2)
/* 0x80087704 */ sw $a3,16($sp)
/* 0x80087708 */ sw $t0,20($sp)
/* 0x8008770c */ sw $t1,24($sp)
/* 0x80087710 */ addu $s3,$zero,$zero
/* 0x80087714 */ addu $s6,$s3,$zero
/* 0x80087718 */ addu $s5,$s3,$zero
.L8008771c:
/* 0x8008771c */ addu $s2,$zero,$zero
/* 0x80087720 */ addu $s1,$s6,$zero
/* 0x80087724 */ addu $s0,$s5,$zero
.L80087728:
/* 0x80087728 */ jal 0x8007ee38
/* 0x8008772c */ addu $a0,$s3,$zero
/* 0x80087730 */ bne $v0,$zero,.L8008774c
/* 0x80087734 */ addu $v1,$s4,$s1
/* 0x80087738 */ addiu $v0,$zero,-1
/* 0x8008773c */ sb $v0,1980($v1)
/* 0x80087740 */ addu $v1,$s4,$s0
/* 0x80087744 */ addiu $v0,$zero,-1
/* 0x80087748 */ sw $v0,3900($v1)
.L8008774c:
/* 0x8008774c */ jal 0x8007f110
/* 0x80087750 */ addu $a0,$s3,$zero
/* 0x80087754 */ addu $a2,$s4,$s1
/* 0x80087758 */ addiu $s1,$s1,2
/* 0x8008775c */ sll $v0,$v0,0x6
/* 0x80087760 */ sll $v1,$s2,0x2
/* 0x80087764 */ addu $v1,$sp,$v1
/* 0x80087768 */ addu $v0,$s8,$v0
/* 0x8008776c */ addu $a1,$s4,$s0
/* 0x80087770 */ lw $a0,16($v1)
/* 0x80087774 */ sll $zero,$zero,0x0
/* 0x80087778 */ addiu $a0,$a0,-1
/* 0x8008777c */ addu $a0,$s7,$a0
/* 0x80087780 */ sll $v1,$a0,0x2
/* 0x80087784 */ addu $v1,$v0,$v1
/* 0x80087788 */ lw $v1,0($v1)
/* 0x8008778c */ addu $v0,$v0,$a0
/* 0x80087790 */ sw $v1,3900($a1)
/* 0x80087794 */ lbu $v0,54($v0)
/* 0x80087798 */ addiu $s2,$s2,1
/* 0x8008779c */ sb $v0,1980($a2)
/* 0x800877a0 */ slti $v0,$s2,3
/* 0x800877a4 */ bne $v0,$zero,.L80087728
/* 0x800877a8 */ addiu $s0,$s0,8
/* 0x800877ac */ addiu $s6,$s6,12
/* 0x800877b0 */ addiu $s3,$s3,1
/* 0x800877b4 */ slti $v0,$s3,160
/* 0x800877b8 */ bne $v0,$zero,.L8008771c
/* 0x800877bc */ addiu $s5,$s5,48
/* 0x800877c0 */ lw $ra,68($sp)
/* 0x800877c4 */ lw $s8,64($sp)
/* 0x800877c8 */ lw $s7,60($sp)
/* 0x800877cc */ lw $s6,56($sp)
/* 0x800877d0 */ lw $s5,52($sp)
/* 0x800877d4 */ lw $s4,48($sp)
/* 0x800877d8 */ lw $s3,44($sp)
/* 0x800877dc */ lw $s2,40($sp)
/* 0x800877e0 */ lw $s1,36($sp)
/* 0x800877e4 */ lw $s0,32($sp)
/* 0x800877e8 */ jr $ra
/* 0x800877ec */ addiu $sp,$sp,72
.size FUN_800876a4, .-FUN_800876a4
