.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007c384
.globl FUN_8007c384
.type FUN_8007c384, @function
FUN_8007c384:
/* Runtime startup state machine: poll the mode/status selector and run the
 * matching setup path until the selector reports completion. */
/* 0x8007c384 */ addiu $sp,$sp,-0x18
/* 0x8007c388 */ sw $s0,0x10($sp)
/* 0x8007c38c */ sw $ra,0x14($sp)
/* 0x8007c390 */ jal 0x8007b530
/* 0x8007c394 */ addu $s0,$zero,$zero
/* 0x8007c398 */ jal 0x8007b568
/* 0x8007c39c */ nop
/* 0x8007c3a0 */ addu $v1,$v0,$zero
/* 0x8007c3a4 */ sltiu $v0,$v1,0x6
/* 0x8007c3a8 */ beq $v0,$zero,.Ldone
/* 0x8007c3ac */ lui $v0,0x8002
/* 0x8007c3b0 */ addiu $v0,$v0,-0x2814
/* 0x8007c3b4 */ sll $v1,$v1,0x2
/* 0x8007c3b8 */ addu $v1,$v1,$v0
/* 0x8007c3bc */ lw $v0,0x0($v1)
/* 0x8007c3c0 */ nop
/* 0x8007c3c4 */ jr $v0
/* 0x8007c3c8 */ nop
/* 0x8007c3cc */ jal 0x80025b18
/* 0x8007c3d0 */ addiu $a0,$zero,0x6
/* 0x8007c3d4 */ jal 0x8007b630
/* 0x8007c3d8 */ nop
/* 0x8007c3dc */ jal 0x8002829c
/* 0x8007c3e0 */ nop
/* 0x8007c3e4 */ j 0x8007c40c
/* 0x8007c3e8 */ nop
/* 0x8007c3ec */ lui $a0,0x800b
/* 0x8007c3f0 */ addiu $a0,$a0,-0x2a68
/* 0x8007c3f4 */ jal 0x80020d24
/* 0x8007c3f8 */ lui $a1,0x8019
/* 0x8007c3fc */ j 0x8007c40c
/* 0x8007c400 */ nop
/* 0x8007c404 */ lui $v0,0x800b
/* 0x8007c408 */ lw $v0,-0x3774($v0)
/* 0x8007c40c */ nop
/* 0x8007c410 */ bne $v0,$zero,.Ldone
/* 0x8007c414 */ nop
/* 0x8007c418 */ jal 0x8007b630
/* 0x8007c41c */ nop
/* 0x8007c420 */ j 0x8007c398
/* 0x8007c424 */ nop
/* 0x8007c428 */ jal 0x8007bee4
/* 0x8007c42c */ nop
/* 0x8007c430 */ jal 0x8007c074
/* 0x8007c434 */ nop
/* 0x8007c438 */ jal 0x8007c21c
/* 0x8007c43c */ nop
/* 0x8007c440 */ jal 0x8007b630
/* 0x8007c444 */ nop
/* 0x8007c448 */ j 0x8007c398
/* 0x8007c44c */ nop
/* 0x8007c450 */ addiu $s0,$zero,0x1
.Ldone:
/* 0x8007c454 */ jal 0x8007b54c
/* 0x8007c458 */ nop
/* 0x8007c45c */ addu $v0,$s0,$zero
/* 0x8007c460 */ lw $ra,0x14($sp)
/* 0x8007c464 */ lw $s0,0x10($sp)
/* 0x8007c468 */ jr $ra
/* 0x8007c46c */ addiu $sp,$sp,0x18
.size FUN_8007c384, .-FUN_8007c384
