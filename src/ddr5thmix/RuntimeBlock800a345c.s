.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a345c
.globl FUN_800a345c
.type FUN_800a345c, @function
FUN_800a345c:
.L800a345c:
/* 0x800a345c */ addiu	$sp,$sp,-40
.L800a3460:
/* 0x800a3460 */ sw	$s0,32($sp)
.L800a3464:
/* 0x800a3464 */ sw	$ra,36($sp)
.L800a3468:
/* 0x800a3468 */ jal	0x800a3648
.L800a346c:
/* 0x800a346c */ addu	$s0,$a0,$zero
.L800a3470:
/* 0x800a3470 */ addu	$t1,$zero,$zero
.L800a3474:
/* 0x800a3474 */ addiu	$t2,$zero,-1
.L800a3478:
/* 0x800a3478 */ addu	$t0,$s0,$zero
.L800a347c:
/* 0x800a347c */ lhu	$a2,0($t0)
.L800a3480:
/* 0x800a3480 */ addiu	$a0,$t1,1
.L800a3484:
/* 0x800a3484 */ slti	$v0,$a0,60
.L800a3488:
/* 0x800a3488 */ beq	$v0,$zero,.L800a34c4
.L800a348c:
/* 0x800a348c */ addiu	$a3,$zero,-1
.L800a3490:
/* 0x800a3490 */ sll	$v0,$a0,0x4
.L800a3494:
/* 0x800a3494 */ addu	$a1,$v0,$s0
.L800a3498:
/* 0x800a3498 */ lhu	$v1,0($a1)
.L800a349c:
/* 0x800a349c */ sll	$zero,$zero,0x0
.L800a34a0:
/* 0x800a34a0 */ slt	$v0,$a2,$v1
.L800a34a4:
/* 0x800a34a4 */ beq	$v0,$zero,.L800a34b4
.L800a34a8:
/* 0x800a34a8 */ sll	$zero,$zero,0x0
.L800a34ac:
/* 0x800a34ac */ addu	$a3,$a0,$zero
.L800a34b0:
/* 0x800a34b0 */ addu	$a2,$v1,$zero
.L800a34b4:
/* 0x800a34b4 */ addiu	$a0,$a0,1
.L800a34b8:
/* 0x800a34b8 */ slti	$v0,$a0,60
.L800a34bc:
/* 0x800a34bc */ bne	$v0,$zero,.L800a3498
.L800a34c0:
/* 0x800a34c0 */ addiu	$a1,$a1,16
.L800a34c4:
/* 0x800a34c4 */ beq	$a3,$t2,.L800a3530
.L800a34c8:
/* 0x800a34c8 */ sll	$v0,$a3,0x4
.L800a34cc:
/* 0x800a34cc */ addu	$v0,$v0,$s0
.L800a34d0:
/* 0x800a34d0 */ lw	$t3,0($t0)
.L800a34d4:
/* 0x800a34d4 */ lw	$t4,4($t0)
.L800a34d8:
/* 0x800a34d8 */ lw	$t5,8($t0)
.L800a34dc:
/* 0x800a34dc */ lw	$t6,12($t0)
.L800a34e0:
/* 0x800a34e0 */ sw	$t3,16($sp)
.L800a34e4:
/* 0x800a34e4 */ sw	$t4,20($sp)
.L800a34e8:
/* 0x800a34e8 */ sw	$t5,24($sp)
.L800a34ec:
/* 0x800a34ec */ sw	$t6,28($sp)
.L800a34f0:
/* 0x800a34f0 */ lw	$t3,0($v0)
.L800a34f4:
/* 0x800a34f4 */ lw	$t4,4($v0)
.L800a34f8:
/* 0x800a34f8 */ lw	$t5,8($v0)
.L800a34fc:
/* 0x800a34fc */ lw	$t6,12($v0)
.L800a3500:
/* 0x800a3500 */ sw	$t3,0($t0)
.L800a3504:
/* 0x800a3504 */ sw	$t4,4($t0)
.L800a3508:
/* 0x800a3508 */ sw	$t5,8($t0)
.L800a350c:
/* 0x800a350c */ sw	$t6,12($t0)
.L800a3510:
/* 0x800a3510 */ lw	$t3,16($sp)
.L800a3514:
/* 0x800a3514 */ lw	$t4,20($sp)
.L800a3518:
/* 0x800a3518 */ lw	$t5,24($sp)
.L800a351c:
/* 0x800a351c */ lw	$t6,28($sp)
.L800a3520:
/* 0x800a3520 */ sw	$t3,0($v0)
.L800a3524:
/* 0x800a3524 */ sw	$t4,4($v0)
.L800a3528:
/* 0x800a3528 */ sw	$t5,8($v0)
.L800a352c:
/* 0x800a352c */ sw	$t6,12($v0)
.L800a3530:
/* 0x800a3530 */ addiu	$t1,$t1,1
.L800a3534:
/* 0x800a3534 */ slti	$v0,$t1,59
.L800a3538:
/* 0x800a3538 */ bne	$v0,$zero,.L800a347c
.L800a353c:
/* 0x800a353c */ addiu	$t0,$t0,16
.L800a3540:
/* 0x800a3540 */ lw	$ra,36($sp)
.L800a3544:
/* 0x800a3544 */ lw	$s0,32($sp)
.L800a3548:
/* 0x800a3548 */ jr	$ra
.L800a354c:
/* 0x800a354c */ addiu	$sp,$sp,40
.size FUN_800a345c, .-FUN_800a345c
