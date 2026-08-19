.set noreorder
.set noat
.set nomacro

.section .text.FUN_8006e43c
.globl FUN_8006e43c
.type FUN_8006e43c, @function
FUN_8006e43c:
.L8006e43c:
/* 0x8006e43c */ addiu	$sp,$sp,-40
.L8006e440:
/* 0x8006e440 */ sw	$s0,16($sp)
.L8006e444:
/* 0x8006e444 */ addu	$s0,$zero,$zero
.L8006e448:
/* 0x8006e448 */ sw	$s3,28($sp)
.L8006e44c:
/* 0x8006e44c */ lui	$s3,0x800b
.L8006e450:
/* 0x8006e450 */ lui	$v0,0x800e
.L8006e454:
/* 0x8006e454 */ sw	$s1,20($sp)
.L8006e458:
/* 0x8006e458 */ addiu	$s1,$v0,15192
.L8006e45c:
/* 0x8006e45c */ lui	$v0,0x800f
.L8006e460:
/* 0x8006e460 */ sw	$s4,32($sp)
.L8006e464:
/* 0x8006e464 */ addiu	$s4,$v0,10504
.L8006e468:
/* 0x8006e468 */ sw	$s2,24($sp)
.L8006e46c:
/* 0x8006e46c */ addu	$s2,$s4,$zero
.L8006e470:
/* 0x8006e470 */ sw	$ra,36($sp)
.L8006e474:
/* 0x8006e474 */ lb	$v0,36($s2)
.L8006e478:
/* 0x8006e478 */ sll	$zero,$zero,0x0
.L8006e47c:
/* 0x8006e47c */ bne	$v0,$zero,.L8006e49c
.L8006e480:
/* 0x8006e480 */ addu	$v0,$s0,$s4
.L8006e484:
/* 0x8006e484 */ lui	$v1,0x1
.L8006e488:
/* 0x8006e488 */ addu	$v0,$v0,$v1
.L8006e48c:
/* 0x8006e48c */ lb	$v0,10112($v0)
.L8006e490:
/* 0x8006e490 */ sll	$zero,$zero,0x0
.L8006e494:
/* 0x8006e494 */ beq	$v0,$zero,.L8006e5a0
.L8006e498:
/* 0x8006e498 */ ori	$v0,$zero,0x9284
.L8006e49c:
/* 0x8006e49c */ lw	$v0,32($s2)
.L8006e4a0:
/* 0x8006e4a0 */ sll	$zero,$zero,0x0
.L8006e4a4:
/* 0x8006e4a4 */ sltiu	$v0,$v0,16
.L8006e4a8:
/* 0x8006e4a8 */ bne	$v0,$zero,.L8006e5a0
.L8006e4ac:
/* 0x8006e4ac */ ori	$v0,$zero,0x9284
.L8006e4b0:
/* 0x8006e4b0 */ lw	$v0,8($s1)
.L8006e4b4:
/* 0x8006e4b4 */ sll	$zero,$zero,0x0
.L8006e4b8:
/* 0x8006e4b8 */ andi	$v0,$v0,0x40
.L8006e4bc:
/* 0x8006e4bc */ beq	$v0,$zero,.L8006e4d4
.L8006e4c0:
/* 0x8006e4c0 */ addiu	$v1,$zero,1
.L8006e4c4:
/* 0x8006e4c4 */ lw	$v0,-14104($s3)
.L8006e4c8:
/* 0x8006e4c8 */ sll	$zero,$zero,0x0
.L8006e4cc:
/* 0x8006e4cc */ addu	$v0,$v0,$s0
.L8006e4d0:
/* 0x8006e4d0 */ sb	$v1,256($v0)
.L8006e4d4:
/* 0x8006e4d4 */ lw	$v0,-14104($s3)
.L8006e4d8:
/* 0x8006e4d8 */ sll	$zero,$zero,0x0
.L8006e4dc:
/* 0x8006e4dc */ addu	$v1,$v0,$s0
.L8006e4e0:
/* 0x8006e4e0 */ lbu	$v0,256($v1)
.L8006e4e4:
/* 0x8006e4e4 */ sll	$zero,$zero,0x0
.L8006e4e8:
/* 0x8006e4e8 */ beq	$v0,$zero,.L8006e544
.L8006e4ec:
/* 0x8006e4ec */ sll	$zero,$zero,0x0
.L8006e4f0:
/* 0x8006e4f0 */ lw	$v0,4($s1)
.L8006e4f4:
/* 0x8006e4f4 */ sll	$zero,$zero,0x0
.L8006e4f8:
/* 0x8006e4f8 */ andi	$v0,$v0,0x40
.L8006e4fc:
/* 0x8006e4fc */ beq	$v0,$zero,.L8006e544
.L8006e500:
/* 0x8006e500 */ sll	$zero,$zero,0x0
.L8006e504:
/* 0x8006e504 */ lbu	$v0,246($v1)
.L8006e508:
/* 0x8006e508 */ sll	$zero,$zero,0x0
.L8006e50c:
/* 0x8006e50c */ addiu	$v0,$v0,1
.L8006e510:
/* 0x8006e510 */ sb	$v0,246($v1)
.L8006e514:
/* 0x8006e514 */ andi	$v0,$v0,0xff
.L8006e518:
/* 0x8006e518 */ sltiu	$v0,$v0,61
.L8006e51c:
/* 0x8006e51c */ bne	$v0,$zero,.L8006e558
.L8006e520:
/* 0x8006e520 */ lui	$v0,0x8011
.L8006e524:
/* 0x8006e524 */ jal	0x80028358
.L8006e528:
/* 0x8006e528 */ addiu	$a0,$zero,512
.L8006e52c:
/* 0x8006e52c */ jal	0x8002313c
.L8006e530:
/* 0x8006e530 */ sll	$zero,$zero,0x0
.L8006e534:
/* 0x8006e534 */ jal	0x80028358
.L8006e538:
/* 0x8006e538 */ addiu	$a0,$zero,795
.L8006e53c:
/* 0x8006e53c */ j	.L8006e558
.L8006e540:
/* 0x8006e540 */ lui	$v0,0x8011
.L8006e544:
/* 0x8006e544 */ lw	$v0,-14104($s3)
.L8006e548:
/* 0x8006e548 */ sll	$zero,$zero,0x0
.L8006e54c:
/* 0x8006e54c */ addu	$v0,$v0,$s0
.L8006e550:
/* 0x8006e550 */ sb	$zero,246($v0)
.L8006e554:
/* 0x8006e554 */ lui	$v0,0x8011
.L8006e558:
/* 0x8006e558 */ lw	$v0,7844($v0)
.L8006e55c:
/* 0x8006e55c */ sll	$zero,$zero,0x0
.L8006e560:
/* 0x8006e560 */ beq	$v0,$zero,.L8006e5a0
.L8006e564:
/* 0x8006e564 */ ori	$v0,$zero,0x9284
.L8006e568:
/* 0x8006e568 */ lb	$v0,23($s4)
.L8006e56c:
/* 0x8006e56c */ sll	$zero,$zero,0x0
.L8006e570:
/* 0x8006e570 */ beq	$v0,$zero,.L8006e5a0
.L8006e574:
/* 0x8006e574 */ ori	$v0,$zero,0x9284
.L8006e578:
/* 0x8006e578 */ lw	$v0,8($s1)
.L8006e57c:
/* 0x8006e57c */ sll	$zero,$zero,0x0
.L8006e580:
/* 0x8006e580 */ andi	$v0,$v0,0x40
.L8006e584:
/* 0x8006e584 */ beq	$v0,$zero,.L8006e5a0
.L8006e588:
/* 0x8006e588 */ ori	$v0,$zero,0x9284
.L8006e58c:
/* 0x8006e58c */ jal	0x8002313c
.L8006e590:
/* 0x8006e590 */ sll	$zero,$zero,0x0
.L8006e594:
/* 0x8006e594 */ jal	0x80028358
.L8006e598:
/* 0x8006e598 */ addiu	$a0,$zero,795
.L8006e59c:
/* 0x8006e59c */ ori	$v0,$zero,0x9284
.L8006e5a0:
/* 0x8006e5a0 */ addu	$s2,$s2,$v0
.L8006e5a4:
/* 0x8006e5a4 */ addiu	$s0,$s0,1
.L8006e5a8:
/* 0x8006e5a8 */ slti	$v0,$s0,2
.L8006e5ac:
/* 0x8006e5ac */ bne	$v0,$zero,.L8006e474
.L8006e5b0:
/* 0x8006e5b0 */ addiu	$s1,$s1,16
.L8006e5b4:
/* 0x8006e5b4 */ lw	$ra,36($sp)
.L8006e5b8:
/* 0x8006e5b8 */ lw	$s4,32($sp)
.L8006e5bc:
/* 0x8006e5bc */ lw	$s3,28($sp)
.L8006e5c0:
/* 0x8006e5c0 */ lw	$s2,24($sp)
.L8006e5c4:
/* 0x8006e5c4 */ lw	$s1,20($sp)
.L8006e5c8:
/* 0x8006e5c8 */ lw	$s0,16($sp)
.L8006e5cc:
/* 0x8006e5cc */ jr	$ra
.L8006e5d0:
/* 0x8006e5d0 */ addiu	$sp,$sp,40
.size FUN_8006e43c, .-FUN_8006e43c
