.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ce50
.globl FUN_8007ce50
.type FUN_8007ce50, @function
FUN_8007ce50:
/* Interpolate a signed value from a compact, indexed breakpoint table. */
/* 0x8007ce50 */ sra $v0,$a1,0x8
/* 0x8007ce54 */ sll $v0,$v0,0x1
/* 0x8007ce58 */ addu $v0,$a0,$v0
/* 0x8007ce5c */ lhu $v0,0x2($v0)
/* 0x8007ce60 */ nop
/* 0x8007ce64 */ addu $v0,$a0,$v0
/* 0x8007ce68 */ lhu $v1,0x4($v0)
/* 0x8007ce6c */ nop
/* 0x8007ce70 */ slt $v1,$v1,$a1
/* 0x8007ce74 */ beq $v1,$zero,.Lsegment
/* 0x8007ce78 */ addiu $a2,$v0,0x4
/* 0x8007ce7c */ addiu $a2,$a2,0x4
.Lscan:
/* 0x8007ce80 */ lhu $v0,0x0($a2)
/* 0x8007ce84 */ nop
/* 0x8007ce88 */ slt $v0,$v0,$a1
/* 0x8007ce8c */ bne $v0,$zero,.Lscan
/* 0x8007ce90 */ addiu $a2,$a2,0x4
/* 0x8007ce94 */ addiu $a2,$a2,-0x4
.Lsegment:
/* 0x8007ce98 */ lh $t0,-0x2($a2)
/* 0x8007ce9c */ lh $v1,0x2($a2)
/* 0x8007cea0 */ nop
/* 0x8007cea4 */ bne $t0,$v1,.Ldifferent
/* 0x8007cea8 */ nop
/* 0x8007ceac */ lhu $v0,0x0($a0)
/* 0x8007ceb0 */ jr $ra
/* 0x8007ceb4 */ srav $v0,$v1,$v0
.Ldifferent:
/* 0x8007ceb8 */ lhu $a3,-0x4($a2)
/* 0x8007cebc */ nop
/* 0x8007cec0 */ bne $a1,$a3,.Lright_endpoint
/* 0x8007cec4 */ nop
/* 0x8007cec8 */ lhu $v0,0x0($a0)
/* 0x8007cecc */ jr $ra
/* 0x8007ced0 */ srav $v0,$t0,$v0
.Lright_endpoint:
/* 0x8007ced4 */ lhu $a2,0x0($a2)
/* 0x8007ced8 */ nop
/* 0x8007cedc */ beq $a1,$a2,.Lright_value
/* 0x8007cee0 */ nop
/* 0x8007cee4 */ lhu $a0,0x0($a0)
/* 0x8007cee8 */ subu $v0,$v1,$t0
/* 0x8007ceec */ subu $v1,$a1,$a3
/* 0x8007cef0 */ sll $v1,$v1,0x10
/* 0x8007cef4 */ sra $v1,$v1,0x10
/* 0x8007cef8 */ srav $v0,$v0,$a0
/* 0x8007cefc */ mult $v0,$v1
/* 0x8007cf00 */ subu $v1,$a2,$a3
/* 0x8007cf04 */ mflo $v0
/* 0x8007cf08 */ sll $v1,$v1,0x10
/* 0x8007cf0c */ sra $v1,$v1,0x10
/* 0x8007cf10 */ div $zero,$v0,$v1
/* 0x8007cf14 */ mflo $v0
/* 0x8007cf18 */ srav $a0,$t0,$a0
/* 0x8007cf1c */ addu $v0,$v0,$a0
/* 0x8007cf20 */ sll $v0,$v0,0x10
/* 0x8007cf24 */ jr $ra
/* 0x8007cf28 */ sra $v0,$v0,0x10
.Lright_value:
/* 0x8007cf2c */ lhu $v0,0x0($a0)
/* 0x8007cf30 */ jr $ra
/* 0x8007cf34 */ srav $v0,$v1,$v0
.size FUN_8007ce50, .-FUN_8007ce50
