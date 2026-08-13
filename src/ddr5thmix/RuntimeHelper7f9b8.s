.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f9b8
.globl FUN_8007f9b8
.type FUN_8007f9b8, @function
FUN_8007f9b8:
/* Runtime table helper. */
/* 0x8007f9b8 */ addiu	$sp,$sp,-24
/* 0x8007f9bc */ sw	$ra,16($sp)
/* 0x8007f9c0 */ jal	0x8009ff54
/* 0x8007f9c4 */ nop
/* 0x8007f9c8 */ andi	$a1,$v0,0xff
/* 0x8007f9cc */ lui	$v0,0x800f
/* 0x8007f9d0 */ addiu	$a0,$v0,10504
/* 0x8007f9d4 */ lb	$v1,20($a0)
/* 0x8007f9d8 */ addiu $v0,$zero,4
/* 0x8007f9dc */ bne	$v1,$v0,.L8007f9fc
/* 0x8007f9e0 */ addiu $v0,$zero,3
/* 0x8007f9e4 */ sll	$v1,$a1,0x1
/* 0x8007f9e8 */ addiu $v0,$zero,8
/* 0x8007f9ec */ bne	$a1,$v0,.L8007fa9c
/* 0x8007f9f0 */ addiu	$a0,$v1,5
/* 0x8007f9f4 */ j	0x8007fa9c
/* 0x8007f9f8 */ addiu	$a0,$v1,35
.L8007f9fc:
/* 0x8007f9fc */ lh	$v1,18($a0)
/* 0x8007fa00 */ nop
/* 0x8007fa04 */ bne	$v1,$v0,.L8007fa1c
/* 0x8007fa08 */ sra	$v0,$a1,0x1
/* 0x8007fa0c */ lh	$v1,12($a0)
/* 0x8007fa10 */ addiu	$v0,$v0,11
/* 0x8007fa14 */ j	0x8007fa28
/* 0x8007fa18 */ addiu	$v1,$v1,2
.L8007fa1c:
/* 0x8007fa1c */ lh	$v1,12($a0)
/* 0x8007fa20 */ addiu	$v0,$v0,5
/* 0x8007fa24 */ addiu	$v1,$v1,1
.L8007fa28:
/* 0x8007fa28 */ mult	$v1,$v0
/* 0x8007fa2c */ mflo	$a0
/* 0x8007fa30 */ addiu	$v1,$a1,-4
/* 0x8007fa34 */ sll	$v0,$v1,0x3
/* 0x8007fa38 */ addu	$v0,$v0,$v1
/* 0x8007fa3c */ lui	$v1,0x800f
/* 0x8007fa40 */ lh	$v1,10516($v1)
/* 0x8007fa44 */ nop
/* 0x8007fa48 */ bne $v1,$zero,.L8007fa54
/* 0x8007fa4c */ addu	$a0,$a0,$v0
/* 0x8007fa50 */ addiu	$a0,$a0,-10
.L8007fa54:
/* 0x8007fa54 */ sll	$v0,$a1,0x2
/* 0x8007fa58 */ addiu	$v1,$v0,70
/* 0x8007fa5c */ slt	$v0,$v1,$a0
/* 0x8007fa60 */ beq $v0,$zero,.L8007fa6c
/* 0x8007fa64 */ nop
/* 0x8007fa68 */ addu $a0,$v1,$zero
.L8007fa6c:
/* 0x8007fa6c */ bgez	$a0,.L8007fa7c
/* 0x8007fa70 */ slti	$v0,$a0,101
/* 0x8007fa74 */ j	0x8007fa88
/* 0x8007fa78 */ addu $a0,$zero,$zero
.L8007fa7c:
/* 0x8007fa7c */ bne $v0,$zero,.L8007fa8c
/* 0x8007fa80 */ addiu $v0,$zero,8
/* 0x8007fa84 */ addiu $a0,$zero,100
.L8007fa88:
/* 0x8007fa88 */ addiu $v0,$zero,8
.L8007fa8c:
/* 0x8007fa8c */ bne	$a1,$v0,.L8007faa0
/* 0x8007fa90 */ addu $v0,$a0,$zero
/* 0x8007fa94 */ sra	$v0,$a0,0x1
/* 0x8007fa98 */ addiu	$a0,$v0,50
.L8007fa9c:
/* 0x8007fa9c */ addu $v0,$a0,$zero
.L8007faa0:
/* 0x8007faa0 */ lw	$ra,16($sp)
/* 0x8007faa4 */ nop
/* 0x8007faa8 */ jr $ra
/* 0x8007faac */ addiu	$sp,$sp,24
.size FUN_8007f9b8, .-FUN_8007f9b8



