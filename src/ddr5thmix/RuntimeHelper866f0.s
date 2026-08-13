.set noreorder
.set noat
.set nomacro

.section .text.FUN_800866f0
.globl FUN_800866f0
.type FUN_800866f0, @function
FUN_800866f0:
/* Runtime state selector and status predicate. */
/* 0x800866f0 */ addiu $sp,$sp,-24
/* 0x800866f4 */ lui $v0,0x800f
/* 0x800866f8 */ addiu $a2,$v0,10504
/* 0x800866fc */ sw $ra,20($sp)
/* 0x80086700 */ sw $s0,16($sp)
/* 0x80086704 */ lb $v0,36($a2)
/* 0x80086708 */ addiu $a1,$zero,2
/* 0x8008670c */ beq $v0,$a1,.L8008677c
/* 0x80086710 */ addiu $v1,$zero,4
/* 0x80086714 */ beq $v0,$v1,.L8008677c
/* 0x80086718 */ ori $v0,$zero,0x8000
/* 0x8008671c */ addu $a3,$a2,$v0
/* 0x80086720 */ lb $v0,4776($a3)
/* 0x80086724 */ sll $zero,$zero,0x0
/* 0x80086728 */ beq $v0,$a1,.L80086774
/* 0x8008672c */ sll $zero,$zero,0x0
/* 0x80086730 */ beq $v0,$v1,.L80086774
/* 0x80086734 */ addiu $v1,$zero,7
/* 0x80086738 */ lbu $v0,146($a2)
/* 0x8008673c */ sll $zero,$zero,0x0
/* 0x80086740 */ beq $v0,$v1,.L80086750
/* 0x80086744 */ sll $zero,$zero,0x0
/* 0x80086748 */ bne $v0,$zero,.L80086780
/* 0x8008674c */ addu $v0,$zero,$zero
.L80086750:
/* 0x80086750 */ lbu $v0,4886($a3)
/* 0x80086754 */ sll $zero,$zero,0x0
/* 0x80086758 */ beq $v0,$v1,.L80086768
/* 0x8008675c */ sll $zero,$zero,0x0
/* 0x80086760 */ bne $v0,$zero,.L8008677c
/* 0x80086764 */ sll $zero,$zero,0x0
.L80086768:
/* 0x80086768 */ lui $v0,0xffff
/* 0x8008676c */ j 0x80086780
/* 0x80086770 */ ori $v0,$v0,0x6d7c
.L80086774:
/* 0x80086774 */ j 0x80086780
/* 0x80086778 */ ori $v0,$zero,0x9284
.L8008677c:
/* 0x8008677c */ addu $v0,$zero,$zero
.L80086780:
/* 0x80086780 */ addu $v0,$a2,$v0
/* 0x80086784 */ lbu $v0,146($v0)
/* 0x80086788 */ addiu $v1,$zero,2
/* 0x8008678c */ beq $v0,$v1,.L80086830
/* 0x80086790 */ lui $v0,0x800f
/* 0x80086794 */ addiu $a2,$v0,10504
/* 0x80086798 */ lb $v0,36($a2)
/* 0x8008679c */ sll $zero,$zero,0x0
/* 0x800867a0 */ beq $v0,$v1,.L80086810
/* 0x800867a4 */ addiu $a1,$zero,4
/* 0x800867a8 */ beq $v0,$a1,.L80086810
/* 0x800867ac */ ori $v0,$zero,0x8000
/* 0x800867b0 */ addu $a3,$a2,$v0
/* 0x800867b4 */ lb $v0,4776($a3)
/* 0x800867b8 */ sll $zero,$zero,0x0
/* 0x800867bc */ beq $v0,$v1,.L80086808
/* 0x800867c0 */ sll $zero,$zero,0x0
/* 0x800867c4 */ beq $v0,$a1,.L80086808
/* 0x800867c8 */ addiu $v1,$zero,7
/* 0x800867cc */ lbu $v0,146($a2)
/* 0x800867d0 */ sll $zero,$zero,0x0
/* 0x800867d4 */ beq $v0,$v1,.L800867e4
/* 0x800867d8 */ sll $zero,$zero,0x0
/* 0x800867dc */ bne $v0,$zero,.L80086814
/* 0x800867e0 */ addu $v0,$zero,$zero
.L800867e4:
/* 0x800867e4 */ lbu $v0,4886($a3)
/* 0x800867e8 */ sll $zero,$zero,0x0
/* 0x800867ec */ beq $v0,$v1,.L800867fc
/* 0x800867f0 */ sll $zero,$zero,0x0
/* 0x800867f4 */ bne $v0,$zero,.L80086810
/* 0x800867f8 */ sll $zero,$zero,0x0
.L800867fc:
/* 0x800867fc */ lui $v0,0xffff
/* 0x80086800 */ j 0x80086814
/* 0x80086804 */ ori $v0,$v0,0x6d7c
.L80086808:
/* 0x80086808 */ j 0x80086814
/* 0x8008680c */ ori $v0,$zero,0x9284
.L80086810:
/* 0x80086810 */ addu $v0,$zero,$zero
.L80086814:
/* 0x80086814 */ addu $v0,$a2,$v0
/* 0x80086818 */ lbu $v0,146($v0)
/* 0x8008681c */ sll $zero,$zero,0x0
/* 0x80086820 */ xori $v0,$v0,0xa
/* 0x80086824 */ sltiu $v0,$v0,1
/* 0x80086828 */ j 0x80086834
/* 0x8008682c */ sll $s0,$v0,0x1
.L80086830:
/* 0x80086830 */ addiu $s0,$zero,1
.L80086834:
/* 0x80086834 */ sltiu $v0,$a0,160
/* 0x80086838 */ beq $v0,$zero,.L80086864
/* 0x8008683c */ sll $zero,$zero,0x0
/* 0x80086840 */ jal 0x8007ee38
/* 0x80086844 */ sll $zero,$zero,0x0
/* 0x80086848 */ addu $a0,$v0,$zero
/* 0x8008684c */ addu $a1,$s0,$zero
/* 0x80086850 */ jal 0x8007eeb0
/* 0x80086854 */ addu $a2,$zero,$zero
/* 0x80086858 */ slti $v1,$v0,3
/* 0x8008685c */ bne $v1,$zero,.L80086868
/* 0x80086860 */ addiu $v0,$zero,1
.L80086864:
/* 0x80086864 */ addu $v0,$zero,$zero
.L80086868:
/* 0x80086868 */ lw $ra,20($sp)
/* 0x8008686c */ lw $s0,16($sp)
/* 0x80086870 */ jr $ra
/* 0x80086874 */ addiu $sp,$sp,24
.size FUN_800866f0, .-FUN_800866f0
