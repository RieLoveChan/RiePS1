.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004d078
.globl FUN_8004d078
.type FUN_8004d078, @function
FUN_8004d078:
.L8004d078:
/* 0x8004d078 */ jr	$ra
.L8004d07c:
/* 0x8004d07c */ sll	$zero,$zero,0x0
.size FUN_8004d078, .-FUN_8004d078
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004d160
.globl FUN_8004d160
.type FUN_8004d160, @function
FUN_8004d160:
.L8004d160:
/* 0x8004d160 */ addiu	$sp,$sp,-24
.L8004d164:
/* 0x8004d164 */ addiu	$a0,$zero,62
.L8004d168:
/* 0x8004d168 */ addiu	$a1,$zero,-1
.L8004d16c:
/* 0x8004d16c */ sw	$ra,16($sp)
.L8004d170:
/* 0x8004d170 */ jal	0x8002a8b0
.L8004d174:
/* 0x8004d174 */ addu	$a2,$a1,$zero
.L8004d178:
/* 0x8004d178 */ addiu	$a0,$zero,61
.L8004d17c:
/* 0x8004d17c */ addiu	$a1,$zero,-1
.L8004d180:
/* 0x8004d180 */ jal	0x8002a8b0
.L8004d184:
/* 0x8004d184 */ addu	$a2,$a1,$zero
.L8004d188:
/* 0x8004d188 */ lw	$ra,16($sp)
.L8004d18c:
/* 0x8004d18c */ sll	$zero,$zero,0x0
.L8004d190:
/* 0x8004d190 */ jr	$ra
.L8004d194:
/* 0x8004d194 */ addiu	$sp,$sp,24
.size FUN_8004d160, .-FUN_8004d160
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004d198
.globl FUN_8004d198
.type FUN_8004d198, @function
FUN_8004d198:
.L8004d198:
/* 0x8004d198 */ jr	$ra
.L8004d19c:
/* 0x8004d19c */ sll	$zero,$zero,0x0
.size FUN_8004d198, .-FUN_8004d198
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004d564
.globl FUN_8004d564
.type FUN_8004d564, @function
FUN_8004d564:
.L8004d564:
/* 0x8004d564 */ addiu	$sp,$sp,-32
.L8004d568:
/* 0x8004d568 */ lui	$a2,0x8017
.L8004d56c:
/* 0x8004d56c */ ori	$a2,$a2,0x4000
.L8004d570:
/* 0x8004d570 */ lui	$v0,0x800b
.L8004d574:
/* 0x8004d574 */ addiu	$a0,$a0,-121
.L8004d578:
/* 0x8004d578 */ lw	$v0,-14100($v0)
.L8004d57c:
/* 0x8004d57c */ sltiu	$v1,$a0,6
.L8004d580:
/* 0x8004d580 */ sw	$ra,28($sp)
.L8004d584:
/* 0x8004d584 */ sw	$s0,24($sp)
.L8004d588:
/* 0x8004d588 */ lw	$s0,144($v0)
.L8004d58c:
/* 0x8004d58c */ beq	$v1,$zero,.L8004d5e0
.L8004d590:
/* 0x8004d590 */ addiu	$a1,$zero,-1
.L8004d594:
/* 0x8004d594 */ lui	$v0,0x8002
.L8004d598:
/* 0x8004d598 */ addiu	$v0,$v0,-16764
.L8004d59c:
/* 0x8004d59c */ sll	$v1,$a0,0x2
.L8004d5a0:
/* 0x8004d5a0 */ addu	$v1,$v1,$v0
.L8004d5a4:
/* 0x8004d5a4 */ lw	$v0,0($v1)
.L8004d5a8:
/* 0x8004d5a8 */ sll	$zero,$zero,0x0
.L8004d5ac:
/* 0x8004d5ac */ jr	$v0
.L8004d5b0:
/* 0x8004d5b0 */ sll	$zero,$zero,0x0
.L8004d5b4:
/* 0x8004d5b4 */ j	.L8004d5e0
.L8004d5b8:
/* 0x8004d5b8 */ addu	$a1,$zero,$zero
.L8004d5bc:
/* 0x8004d5bc */ j	.L8004d5e0
.L8004d5c0:
/* 0x8004d5c0 */ addiu	$a1,$zero,1
.L8004d5c4:
/* 0x8004d5c4 */ j	.L8004d5e0
.L8004d5c8:
/* 0x8004d5c8 */ addiu	$a1,$zero,2
.L8004d5cc:
/* 0x8004d5cc */ j	.L8004d5e0
.L8004d5d0:
/* 0x8004d5d0 */ addiu	$a1,$zero,3
.L8004d5d4:
/* 0x8004d5d4 */ j	.L8004d5e0
.L8004d5d8:
/* 0x8004d5d8 */ addiu	$a1,$zero,4
.L8004d5dc:
/* 0x8004d5dc */ addiu	$a1,$zero,5
.L8004d5e0:
/* 0x8004d5e0 */ bltz	$a1,.L8004d618
.L8004d5e4:
/* 0x8004d5e4 */ sll	$zero,$zero,0x0
.L8004d5e8:
/* 0x8004d5e8 */ sll	$v0,$a1,0x2
.L8004d5ec:
/* 0x8004d5ec */ addu	$v0,$v0,$a2
.L8004d5f0:
/* 0x8004d5f0 */ lw	$a0,16($v0)
.L8004d5f4:
/* 0x8004d5f4 */ addu	$a1,$s0,$zero
.L8004d5f8:
/* 0x8004d5f8 */ jal	0x8002a8b8
.L8004d5fc:
/* 0x8004d5fc */ addu	$a0,$a2,$a0
.L8004d600:
/* 0x8004d600 */ addu	$a0,$s0,$zero
.L8004d604:
/* 0x8004d604 */ addu	$a1,$zero,$zero
.L8004d608:
/* 0x8004d608 */ addu	$a2,$a1,$zero
.L8004d60c:
/* 0x8004d60c */ addu	$a3,$a1,$zero
.L8004d610:
/* 0x8004d610 */ jal	0x800223a8
.L8004d614:
/* 0x8004d614 */ sw	$zero,16($sp)
.L8004d618:
/* 0x8004d618 */ lw	$ra,28($sp)
.L8004d61c:
/* 0x8004d61c */ lw	$s0,24($sp)
.L8004d620:
/* 0x8004d620 */ jr	$ra
.L8004d624:
/* 0x8004d624 */ addiu	$sp,$sp,32
.size FUN_8004d564, .-FUN_8004d564
