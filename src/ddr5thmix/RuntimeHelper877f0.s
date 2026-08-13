.set noreorder
.set noat
.set nomacro

.section .text.FUN_800877f0
.globl FUN_800877f0
.type FUN_800877f0, @function
FUN_800877f0:
/* Runtime indexed-state and timing helper. */
/* 0x800877f0 */ addu $a3,$a0,$zero
/* 0x800877f4 */ lbu $v0,1968($a3)
/* 0x800877f8 */ sll $zero,$zero,0x0
/* 0x800877fc */ beq $v0,$zero,.L80087818
/* 0x80087800 */ lui $v0,0x800f
/* 0x80087804 */ lw $v0,10508($v0)
/* 0x80087808 */ sll $zero,$zero,0x0
/* 0x8008780c */ lb $a0,3($v0)
/* 0x80087810 */ j 0x80087884
/* 0x80087814 */ slti $v0,$a0,200
.L80087818:
/* 0x80087818 */ bgez $a2,.L80087854
/* 0x8008781c */ negu $v0,$a2
/* 0x80087820 */ lw $v1,4($a3)
/* 0x80087824 */ sll $zero,$zero,0x0
/* 0x80087828 */ sll $v1,$v1,0xc
/* 0x8008782c */ div $zero,$v0,$v1
/* 0x80087830 */ mfhi $a0
/* 0x80087834 */ sll $zero,$zero,0x0
/* 0x80087838 */ subu $a0,$v1,$a0
/* 0x8008783c */ div $zero,$a0,$v1
/* 0x80087840 */ mfhi $v0
/* 0x80087844 */ sll $zero,$zero,0x0
/* 0x80087848 */ sra $v0,$v0,0xc
/* 0x8008784c */ j 0x80087874
/* 0x80087850 */ sll $v0,$v0,0x1
.L80087854:
/* 0x80087854 */ lw $v0,4($a3)
/* 0x80087858 */ sll $zero,$zero,0x0
/* 0x8008785c */ sll $v0,$v0,0xc
/* 0x80087860 */ div $zero,$a2,$v0
/* 0x80087864 */ mfhi $v1
/* 0x80087868 */ sll $zero,$zero,0x0
/* 0x8008786c */ sra $v1,$v1,0xc
/* 0x80087870 */ sll $v0,$v1,0x1
.L80087874:
/* 0x80087874 */ addu $v0,$a3,$v0
/* 0x80087878 */ lh $a0,22($v0)
/* 0x8008787c */ sll $zero,$zero,0x0
/* 0x80087880 */ slti $v0,$a0,200
.L80087884:
/* 0x80087884 */ beq $v0,$zero,.L800878f0
/* 0x80087888 */ lui $v1,0x800f
/* 0x8008788c */ addiu $v1,$v1,10504
/* 0x80087890 */ sll $v0,$a1,0x3
/* 0x80087894 */ addu $v0,$v0,$a1
/* 0x80087898 */ sll $v0,$v0,0x3
/* 0x8008789c */ addu $v0,$v0,$a1
/* 0x800878a0 */ sll $v0,$v0,0x2
/* 0x800878a4 */ addu $v0,$v0,$a1
/* 0x800878a8 */ sll $v0,$v0,0x5
/* 0x800878ac */ addu $v0,$v0,$a1
/* 0x800878b0 */ sll $v0,$v0,0x2
/* 0x800878b4 */ addu $v0,$v0,$v1
/* 0x800878b8 */ sll $v1,$a0,0x1
/* 0x800878bc */ addu $a0,$v1,$a0
/* 0x800878c0 */ lbu $v0,144($v0)
/* 0x800878c4 */ sll $v1,$a0,0x2
/* 0x800878c8 */ addiu $a1,$v0,-1
/* 0x800878cc */ sll $v0,$a1,0x1
/* 0x800878d0 */ addu $v0,$v0,$v1
/* 0x800878d4 */ addu $v0,$a3,$v0
/* 0x800878d8 */ lb $v0,1980($v0)
/* 0x800878dc */ sll $zero,$zero,0x0
/* 0x800878e0 */ addiu $v0,$v0,-1
/* 0x800878e4 */ sltiu $v0,$v0,7
/* 0x800878e8 */ bne $v0,$zero,.L800878f8
/* 0x800878ec */ sll $v0,$a1,0x3
.L800878f0:
/* 0x800878f0 */ jr $ra
/* 0x800878f4 */ addiu $v0,$zero,-1
.L800878f8:
/* 0x800878f8 */ sll $v1,$a0,0x4
/* 0x800878fc */ addu $v0,$v0,$v1
/* 0x80087900 */ addu $v0,$a3,$v0
/* 0x80087904 */ lw $v1,3900($v0)
/* 0x80087908 */ sll $zero,$zero,0x0
/* 0x8008790c */ bgez $v1,.L80087918
/* 0x80087910 */ lui $v0,0x3b9a
/* 0x80087914 */ addiu $v1,$zero,-1
.L80087918:
/* 0x80087918 */ ori $v0,$v0,0xc9ff
/* 0x8008791c */ slt $v0,$v0,$v1
/* 0x80087920 */ beq $v0,$zero,.L80087930
/* 0x80087924 */ sll $zero,$zero,0x0
/* 0x80087928 */ lui $v1,0x3b9a
/* 0x8008792c */ ori $v1,$v1,0xc9ff
.L80087930:
/* 0x80087930 */ jr $ra
/* 0x80087934 */ addu $v0,$v1,$zero
.size FUN_800877f0, .-FUN_800877f0
