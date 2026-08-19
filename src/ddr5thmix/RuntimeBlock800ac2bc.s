.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ac2bc
.globl FUN_800ac2bc
.type FUN_800ac2bc, @function
FUN_800ac2bc:
.L800ac2bc:
/* 0x800ac2bc */ addiu	$sp,$sp,-24
.L800ac2c0:
/* 0x800ac2c0 */ addu	$t0,$a2,$zero
.L800ac2c4:
/* 0x800ac2c4 */ sw	$ra,16($sp)
.L800ac2c8:
/* 0x800ac2c8 */ lhu	$v0,0($t0)
.L800ac2cc:
/* 0x800ac2cc */ sll	$zero,$zero,0x0
.L800ac2d0:
/* 0x800ac2d0 */ mult	$v0,$a3
.L800ac2d4:
/* 0x800ac2d4 */ addu	$t2,$a0,$zero
.L800ac2d8:
/* 0x800ac2d8 */ lw	$v1,40($sp)
.L800ac2dc:
/* 0x800ac2dc */ mflo	$a0
.L800ac2e0:
/* 0x800ac2e0 */ lhu	$v0,2($t0)
.L800ac2e4:
/* 0x800ac2e4 */ sll	$zero,$zero,0x0
.L800ac2e8:
/* 0x800ac2e8 */ mult	$v0,$v1
.L800ac2ec:
/* 0x800ac2ec */ lw	$t3,52($sp)
.L800ac2f0:
/* 0x800ac2f0 */ lw	$t6,44($sp)
.L800ac2f4:
/* 0x800ac2f4 */ lw	$t4,48($sp)
.L800ac2f8:
/* 0x800ac2f8 */ addu	$t5,$t3,$zero
.L800ac2fc:
/* 0x800ac2fc */ lbu	$v0,6($t0)
.L800ac300:
/* 0x800ac300 */ lbu	$v1,7($t0)
.L800ac304:
/* 0x800ac304 */ addu	$a2,$v0,$a0
.L800ac308:
/* 0x800ac308 */ andi	$v0,$t3,0x8000
.L800ac30c:
/* 0x800ac30c */ mflo	$t1
.L800ac310:
/* 0x800ac310 */ beq	$v0,$zero,.L800ac458
.L800ac314:
/* 0x800ac314 */ addu	$t1,$v1,$t1
.L800ac318:
/* 0x800ac318 */ lui	$v1,0x800e
.L800ac31c:
/* 0x800ac31c */ lw	$a0,22064($v1)
.L800ac320:
/* 0x800ac320 */ sll	$zero,$zero,0x0
.L800ac324:
/* 0x800ac324 */ addiu	$v0,$a0,40
.L800ac328:
/* 0x800ac328 */ sw	$v0,22064($v1)
.L800ac32c:
/* 0x800ac32c */ addiu	$v0,$zero,9
.L800ac330:
/* 0x800ac330 */ sb	$v0,3($a0)
.L800ac334:
/* 0x800ac334 */ addiu	$v0,$zero,44
.L800ac338:
/* 0x800ac338 */ sb	$v0,7($a0)
.L800ac33c:
/* 0x800ac33c */ lhu	$v0,0($t0)
.L800ac340:
/* 0x800ac340 */ sh	$a1,10($a0)
.L800ac344:
/* 0x800ac344 */ sh	$t2,16($a0)
.L800ac348:
/* 0x800ac348 */ sh	$a1,18($a0)
.L800ac34c:
/* 0x800ac34c */ addu	$v0,$v0,$t2
.L800ac350:
/* 0x800ac350 */ sh	$v0,8($a0)
.L800ac354:
/* 0x800ac354 */ lhu	$v0,0($t0)
.L800ac358:
/* 0x800ac358 */ sll	$zero,$zero,0x0
.L800ac35c:
/* 0x800ac35c */ addu	$v0,$v0,$t2
.L800ac360:
/* 0x800ac360 */ sh	$v0,24($a0)
.L800ac364:
/* 0x800ac364 */ lhu	$v0,2($t0)
.L800ac368:
/* 0x800ac368 */ sh	$t2,32($a0)
.L800ac36c:
/* 0x800ac36c */ addu	$v0,$v0,$a1
.L800ac370:
/* 0x800ac370 */ sh	$v0,26($a0)
.L800ac374:
/* 0x800ac374 */ lhu	$v0,2($t0)
.L800ac378:
/* 0x800ac378 */ sll	$zero,$zero,0x0
.L800ac37c:
/* 0x800ac37c */ addu	$v0,$v0,$a1
.L800ac380:
/* 0x800ac380 */ sh	$v0,34($a0)
.L800ac384:
/* 0x800ac384 */ lhu	$v0,4($t0)
.L800ac388:
/* 0x800ac388 */ lui	$a3,0xff
.L800ac38c:
/* 0x800ac38c */ sb	$a2,12($a0)
.L800ac390:
/* 0x800ac390 */ sb	$t1,13($a0)
.L800ac394:
/* 0x800ac394 */ sh	$v0,22($a0)
.L800ac398:
/* 0x800ac398 */ lbu	$v0,0($t0)
.L800ac39c:
/* 0x800ac39c */ ori	$a3,$a3,0xffff
.L800ac3a0:
/* 0x800ac3a0 */ sb	$t1,21($a0)
.L800ac3a4:
/* 0x800ac3a4 */ sb	$a2,28($a0)
.L800ac3a8:
/* 0x800ac3a8 */ addu	$v0,$v0,$a2
.L800ac3ac:
/* 0x800ac3ac */ addiu	$v0,$v0,-1
.L800ac3b0:
/* 0x800ac3b0 */ sb	$v0,20($a0)
.L800ac3b4:
/* 0x800ac3b4 */ lbu	$v0,2($t0)
.L800ac3b8:
/* 0x800ac3b8 */ andi	$a1,$t3,0xfff
.L800ac3bc:
/* 0x800ac3bc */ addu	$v0,$v0,$t1
.L800ac3c0:
/* 0x800ac3c0 */ addiu	$v0,$v0,-1
.L800ac3c4:
/* 0x800ac3c4 */ sb	$v0,29($a0)
.L800ac3c8:
/* 0x800ac3c8 */ lbu	$v0,0($t0)
.L800ac3cc:
/* 0x800ac3cc */ sll	$a1,$a1,0x2
.L800ac3d0:
/* 0x800ac3d0 */ addu	$v0,$v0,$a2
.L800ac3d4:
/* 0x800ac3d4 */ addiu	$v0,$v0,-1
.L800ac3d8:
/* 0x800ac3d8 */ sb	$v0,36($a0)
.L800ac3dc:
/* 0x800ac3dc */ lbu	$v0,2($t0)
.L800ac3e0:
/* 0x800ac3e0 */ lui	$a2,0xff00
.L800ac3e4:
/* 0x800ac3e4 */ addu	$v0,$v0,$t1
.L800ac3e8:
/* 0x800ac3e8 */ addiu	$v0,$v0,-1
.L800ac3ec:
/* 0x800ac3ec */ sb	$v0,37($a0)
.L800ac3f0:
/* 0x800ac3f0 */ lhu	$v0,10($t0)
.L800ac3f4:
/* 0x800ac3f4 */ lhu	$v1,8($t0)
.L800ac3f8:
/* 0x800ac3f8 */ addu	$v0,$v0,$t6
.L800ac3fc:
/* 0x800ac3fc */ sll	$v0,$v0,0x6
.L800ac400:
/* 0x800ac400 */ srl	$v1,$v1,0x4
.L800ac404:
/* 0x800ac404 */ andi	$v1,$v1,0x3f
.L800ac408:
/* 0x800ac408 */ or	$v0,$v0,$v1
.L800ac40c:
/* 0x800ac40c */ sh	$v0,14($a0)
.L800ac410:
/* 0x800ac410 */ lui	$v0,0x800e
.L800ac414:
/* 0x800ac414 */ sb	$t4,4($a0)
.L800ac418:
/* 0x800ac418 */ sb	$t4,5($a0)
.L800ac41c:
/* 0x800ac41c */ sb	$t4,6($a0)
.L800ac420:
/* 0x800ac420 */ lw	$v0,10984($v0)
.L800ac424:
/* 0x800ac424 */ lw	$v1,0($a0)
.L800ac428:
/* 0x800ac428 */ addu	$a1,$a1,$v0
.L800ac42c:
/* 0x800ac42c */ lw	$v0,0($a1)
.L800ac430:
/* 0x800ac430 */ and	$v1,$v1,$a2
.L800ac434:
/* 0x800ac434 */ and	$v0,$v0,$a3
.L800ac438:
/* 0x800ac438 */ or	$v1,$v1,$v0
.L800ac43c:
/* 0x800ac43c */ sw	$v1,0($a0)
.L800ac440:
/* 0x800ac440 */ lw	$v0,0($a1)
.L800ac444:
/* 0x800ac444 */ and	$a0,$a0,$a3
.L800ac448:
/* 0x800ac448 */ and	$v0,$v0,$a2
.L800ac44c:
/* 0x800ac44c */ or	$v0,$v0,$a0
.L800ac450:
/* 0x800ac450 */ j	.L800ac51c
.L800ac454:
/* 0x800ac454 */ sw	$v0,0($a1)
.L800ac458:
/* 0x800ac458 */ lui	$v1,0x800e
.L800ac45c:
/* 0x800ac45c */ lui	$a3,0xff
.L800ac460:
/* 0x800ac460 */ lw	$a0,22064($v1)
.L800ac464:
/* 0x800ac464 */ ori	$a3,$a3,0xffff
.L800ac468:
/* 0x800ac468 */ addiu	$v0,$a0,20
.L800ac46c:
/* 0x800ac46c */ sw	$v0,22064($v1)
.L800ac470:
/* 0x800ac470 */ addiu	$v0,$zero,4
.L800ac474:
/* 0x800ac474 */ sb	$v0,3($a0)
.L800ac478:
/* 0x800ac478 */ addiu	$v0,$zero,100
.L800ac47c:
/* 0x800ac47c */ sb	$v0,7($a0)
.L800ac480:
/* 0x800ac480 */ sh	$t2,8($a0)
.L800ac484:
/* 0x800ac484 */ sh	$a1,10($a0)
.L800ac488:
/* 0x800ac488 */ lhu	$v0,0($t0)
.L800ac48c:
/* 0x800ac48c */ andi	$a1,$t3,0xfff
.L800ac490:
/* 0x800ac490 */ sh	$v0,16($a0)
.L800ac494:
/* 0x800ac494 */ lhu	$v0,2($t0)
.L800ac498:
/* 0x800ac498 */ sll	$a1,$a1,0x2
.L800ac49c:
/* 0x800ac49c */ sb	$a2,12($a0)
.L800ac4a0:
/* 0x800ac4a0 */ sb	$t1,13($a0)
.L800ac4a4:
/* 0x800ac4a4 */ sh	$v0,18($a0)
.L800ac4a8:
/* 0x800ac4a8 */ lhu	$v0,10($t0)
.L800ac4ac:
/* 0x800ac4ac */ lhu	$v1,8($t0)
.L800ac4b0:
/* 0x800ac4b0 */ lui	$a2,0xff00
.L800ac4b4:
/* 0x800ac4b4 */ sb	$t4,4($a0)
.L800ac4b8:
/* 0x800ac4b8 */ sb	$t4,5($a0)
.L800ac4bc:
/* 0x800ac4bc */ sb	$t4,6($a0)
.L800ac4c0:
/* 0x800ac4c0 */ addu	$v0,$v0,$t6
.L800ac4c4:
/* 0x800ac4c4 */ sll	$v0,$v0,0x6
.L800ac4c8:
/* 0x800ac4c8 */ srl	$v1,$v1,0x4
.L800ac4cc:
/* 0x800ac4cc */ andi	$v1,$v1,0x3f
.L800ac4d0:
/* 0x800ac4d0 */ or	$v0,$v0,$v1
.L800ac4d4:
/* 0x800ac4d4 */ sh	$v0,14($a0)
.L800ac4d8:
/* 0x800ac4d8 */ lui	$v0,0x800e
.L800ac4dc:
/* 0x800ac4dc */ lw	$v0,10984($v0)
.L800ac4e0:
/* 0x800ac4e0 */ lw	$v1,0($a0)
.L800ac4e4:
/* 0x800ac4e4 */ addu	$a1,$a1,$v0
.L800ac4e8:
/* 0x800ac4e8 */ lw	$v0,0($a1)
.L800ac4ec:
/* 0x800ac4ec */ and	$v1,$v1,$a2
.L800ac4f0:
/* 0x800ac4f0 */ and	$v0,$v0,$a3
.L800ac4f4:
/* 0x800ac4f4 */ or	$v1,$v1,$v0
.L800ac4f8:
/* 0x800ac4f8 */ sw	$v1,0($a0)
.L800ac4fc:
/* 0x800ac4fc */ lw	$v0,0($a1)
.L800ac500:
/* 0x800ac500 */ and	$a0,$a0,$a3
.L800ac504:
/* 0x800ac504 */ and	$v0,$v0,$a2
.L800ac508:
/* 0x800ac508 */ or	$v0,$v0,$a0
.L800ac50c:
/* 0x800ac50c */ sw	$v0,0($a1)
.L800ac510:
/* 0x800ac510 */ lhu	$a0,4($t0)
.L800ac514:
/* 0x800ac514 */ jal	0x80023f68
.L800ac518:
/* 0x800ac518 */ andi	$a1,$t5,0xffff
.L800ac51c:
/* 0x800ac51c */ lw	$ra,16($sp)
.L800ac520:
/* 0x800ac520 */ sll	$zero,$zero,0x0
.L800ac524:
/* 0x800ac524 */ jr	$ra
.L800ac528:
/* 0x800ac528 */ addiu	$sp,$sp,24
.size FUN_800ac2bc, .-FUN_800ac2bc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ac52c
.globl FUN_800ac52c
.type FUN_800ac52c, @function
FUN_800ac52c:
.L800ac52c:
/* 0x800ac52c */ addu	$t1,$a1,$zero
.L800ac530:
/* 0x800ac530 */ lhu	$v0,0($t1)
.L800ac534:
/* 0x800ac534 */ sll	$zero,$zero,0x0
.L800ac538:
/* 0x800ac538 */ mult	$v0,$a2
.L800ac53c:
/* 0x800ac53c */ addu	$t0,$a0,$zero
.L800ac540:
/* 0x800ac540 */ lui	$v1,0x800e
.L800ac544:
/* 0x800ac544 */ lw	$t3,20($sp)
.L800ac548:
/* 0x800ac548 */ mflo	$t2
.L800ac54c:
/* 0x800ac54c */ lhu	$v0,2($t1)
.L800ac550:
/* 0x800ac550 */ lhu	$t4,24($sp)
.L800ac554:
/* 0x800ac554 */ mult	$v0,$a3
.L800ac558:
/* 0x800ac558 */ lbu	$a1,6($t1)
.L800ac55c:
/* 0x800ac55c */ lbu	$a0,7($t1)
.L800ac560:
/* 0x800ac560 */ lw	$a2,28($sp)
.L800ac564:
/* 0x800ac564 */ lw	$a3,22064($v1)
.L800ac568:
/* 0x800ac568 */ addu	$a1,$a1,$t2
.L800ac56c:
/* 0x800ac56c */ addiu	$v0,$a3,40
.L800ac570:
/* 0x800ac570 */ sw	$v0,22064($v1)
.L800ac574:
/* 0x800ac574 */ addiu	$v0,$zero,9
.L800ac578:
/* 0x800ac578 */ sb	$v0,3($a3)
.L800ac57c:
/* 0x800ac57c */ addiu	$v0,$zero,44
.L800ac580:
/* 0x800ac580 */ sb	$v0,7($a3)
.L800ac584:
/* 0x800ac584 */ mflo	$t6
.L800ac588:
/* 0x800ac588 */ addu	$a0,$a0,$t6
.L800ac58c:
/* 0x800ac58c */ beq	$a2,$zero,.L800ac598
.L800ac590:
/* 0x800ac590 */ addiu	$v0,$zero,44
.L800ac594:
/* 0x800ac594 */ addiu	$v0,$zero,46
.L800ac598:
/* 0x800ac598 */ sb	$v0,7($a3)
.L800ac59c:
/* 0x800ac59c */ andi	$v0,$t4,0x8000
.L800ac5a0:
/* 0x800ac5a0 */ beq	$v0,$zero,.L800ac614
.L800ac5a4:
/* 0x800ac5a4 */ sll	$zero,$zero,0x0
.L800ac5a8:
/* 0x800ac5a8 */ lhu	$v0,0($t0)
.L800ac5ac:
/* 0x800ac5ac */ lhu	$v1,4($t0)
.L800ac5b0:
/* 0x800ac5b0 */ sll	$zero,$zero,0x0
.L800ac5b4:
/* 0x800ac5b4 */ addu	$v0,$v0,$v1
.L800ac5b8:
/* 0x800ac5b8 */ sh	$v0,8($a3)
.L800ac5bc:
/* 0x800ac5bc */ lhu	$v0,2($t0)
.L800ac5c0:
/* 0x800ac5c0 */ sll	$zero,$zero,0x0
.L800ac5c4:
/* 0x800ac5c4 */ sh	$v0,10($a3)
.L800ac5c8:
/* 0x800ac5c8 */ lhu	$v0,0($t0)
.L800ac5cc:
/* 0x800ac5cc */ sll	$zero,$zero,0x0
.L800ac5d0:
/* 0x800ac5d0 */ sh	$v0,16($a3)
.L800ac5d4:
/* 0x800ac5d4 */ lhu	$v0,2($t0)
.L800ac5d8:
/* 0x800ac5d8 */ sll	$zero,$zero,0x0
.L800ac5dc:
/* 0x800ac5dc */ sh	$v0,18($a3)
.L800ac5e0:
/* 0x800ac5e0 */ lhu	$v0,0($t0)
.L800ac5e4:
/* 0x800ac5e4 */ lhu	$v1,4($t0)
.L800ac5e8:
/* 0x800ac5e8 */ sll	$zero,$zero,0x0
.L800ac5ec:
/* 0x800ac5ec */ addu	$v0,$v0,$v1
.L800ac5f0:
/* 0x800ac5f0 */ sh	$v0,24($a3)
.L800ac5f4:
/* 0x800ac5f4 */ lhu	$v0,2($t0)
.L800ac5f8:
/* 0x800ac5f8 */ lhu	$v1,6($t0)
.L800ac5fc:
/* 0x800ac5fc */ sll	$zero,$zero,0x0
.L800ac600:
/* 0x800ac600 */ addu	$v0,$v0,$v1
.L800ac604:
/* 0x800ac604 */ sh	$v0,26($a3)
.L800ac608:
/* 0x800ac608 */ lhu	$v0,0($t0)
.L800ac60c:
/* 0x800ac60c */ j	.L800ac680
.L800ac610:
/* 0x800ac610 */ sh	$v0,32($a3)
.L800ac614:
/* 0x800ac614 */ lhu	$v0,0($t0)
.L800ac618:
/* 0x800ac618 */ sll	$zero,$zero,0x0
.L800ac61c:
/* 0x800ac61c */ sh	$v0,8($a3)
.L800ac620:
/* 0x800ac620 */ lhu	$v0,2($t0)
.L800ac624:
/* 0x800ac624 */ sll	$zero,$zero,0x0
.L800ac628:
/* 0x800ac628 */ sh	$v0,10($a3)
.L800ac62c:
/* 0x800ac62c */ lhu	$v0,0($t0)
.L800ac630:
/* 0x800ac630 */ lhu	$v1,4($t0)
.L800ac634:
/* 0x800ac634 */ sll	$zero,$zero,0x0
.L800ac638:
/* 0x800ac638 */ addu	$v0,$v0,$v1
.L800ac63c:
/* 0x800ac63c */ sh	$v0,16($a3)
.L800ac640:
/* 0x800ac640 */ lhu	$v0,2($t0)
.L800ac644:
/* 0x800ac644 */ sll	$zero,$zero,0x0
.L800ac648:
/* 0x800ac648 */ sh	$v0,18($a3)
.L800ac64c:
/* 0x800ac64c */ lhu	$v0,0($t0)
.L800ac650:
/* 0x800ac650 */ sll	$zero,$zero,0x0
.L800ac654:
/* 0x800ac654 */ sh	$v0,24($a3)
.L800ac658:
/* 0x800ac658 */ lhu	$v0,2($t0)
.L800ac65c:
/* 0x800ac65c */ lhu	$v1,6($t0)
.L800ac660:
/* 0x800ac660 */ sll	$zero,$zero,0x0
.L800ac664:
/* 0x800ac664 */ addu	$v0,$v0,$v1
.L800ac668:
/* 0x800ac668 */ sh	$v0,26($a3)
.L800ac66c:
/* 0x800ac66c */ lhu	$v0,0($t0)
.L800ac670:
/* 0x800ac670 */ lhu	$v1,4($t0)
.L800ac674:
/* 0x800ac674 */ sll	$zero,$zero,0x0
.L800ac678:
/* 0x800ac678 */ addu	$v0,$v0,$v1
.L800ac67c:
/* 0x800ac67c */ sh	$v0,32($a3)
.L800ac680:
/* 0x800ac680 */ lhu	$v0,2($t0)
.L800ac684:
/* 0x800ac684 */ lhu	$v1,6($t0)
.L800ac688:
/* 0x800ac688 */ sll	$zero,$zero,0x0
.L800ac68c:
/* 0x800ac68c */ addu	$v0,$v0,$v1
.L800ac690:
/* 0x800ac690 */ sh	$v0,34($a3)
.L800ac694:
/* 0x800ac694 */ lhu	$v0,4($t1)
.L800ac698:
/* 0x800ac698 */ sb	$a1,12($a3)
.L800ac69c:
/* 0x800ac69c */ sb	$a0,13($a3)
.L800ac6a0:
/* 0x800ac6a0 */ sh	$v0,22($a3)
.L800ac6a4:
/* 0x800ac6a4 */ lbu	$v0,0($t1)
.L800ac6a8:
/* 0x800ac6a8 */ sb	$a0,21($a3)
.L800ac6ac:
/* 0x800ac6ac */ sb	$a1,28($a3)
.L800ac6b0:
/* 0x800ac6b0 */ addu	$v0,$v0,$a1
.L800ac6b4:
/* 0x800ac6b4 */ sb	$v0,20($a3)
.L800ac6b8:
/* 0x800ac6b8 */ lbu	$v0,2($t1)
.L800ac6bc:
/* 0x800ac6bc */ sll	$zero,$zero,0x0
.L800ac6c0:
/* 0x800ac6c0 */ addu	$v0,$v0,$a0
.L800ac6c4:
/* 0x800ac6c4 */ sb	$v0,29($a3)
.L800ac6c8:
/* 0x800ac6c8 */ lbu	$v0,0($t1)
.L800ac6cc:
/* 0x800ac6cc */ sll	$zero,$zero,0x0
.L800ac6d0:
/* 0x800ac6d0 */ addu	$v0,$v0,$a1
.L800ac6d4:
/* 0x800ac6d4 */ sb	$v0,36($a3)
.L800ac6d8:
/* 0x800ac6d8 */ lbu	$v0,2($t1)
.L800ac6dc:
/* 0x800ac6dc */ lui	$a2,0xff00
.L800ac6e0:
/* 0x800ac6e0 */ addu	$v0,$v0,$a0
.L800ac6e4:
/* 0x800ac6e4 */ sb	$v0,37($a3)
.L800ac6e8:
/* 0x800ac6e8 */ lhu	$v0,10($t1)
.L800ac6ec:
/* 0x800ac6ec */ lhu	$a0,8($t1)
.L800ac6f0:
/* 0x800ac6f0 */ lui	$a1,0xff
.L800ac6f4:
/* 0x800ac6f4 */ sb	$t3,4($a3)
.L800ac6f8:
/* 0x800ac6f8 */ sb	$t3,5($a3)
.L800ac6fc:
/* 0x800ac6fc */ sb	$t3,6($a3)
.L800ac700:
/* 0x800ac700 */ lw	$v1,16($sp)
.L800ac704:
/* 0x800ac704 */ ori	$a1,$a1,0xffff
.L800ac708:
/* 0x800ac708 */ addu	$v0,$v0,$v1
.L800ac70c:
/* 0x800ac70c */ sll	$v0,$v0,0x6
.L800ac710:
/* 0x800ac710 */ srl	$a0,$a0,0x4
.L800ac714:
/* 0x800ac714 */ andi	$a0,$a0,0x3f
.L800ac718:
/* 0x800ac718 */ or	$v0,$v0,$a0
.L800ac71c:
/* 0x800ac71c */ andi	$a0,$t4,0xfff
.L800ac720:
/* 0x800ac720 */ sh	$v0,14($a3)
.L800ac724:
/* 0x800ac724 */ lui	$v0,0x800e
.L800ac728:
/* 0x800ac728 */ sll	$a0,$a0,0x2
.L800ac72c:
/* 0x800ac72c */ lw	$v0,10984($v0)
.L800ac730:
/* 0x800ac730 */ lw	$v1,0($a3)
.L800ac734:
/* 0x800ac734 */ addu	$a0,$a0,$v0
.L800ac738:
/* 0x800ac738 */ lw	$v0,0($a0)
.L800ac73c:
/* 0x800ac73c */ and	$v1,$v1,$a2
.L800ac740:
/* 0x800ac740 */ and	$v0,$v0,$a1
.L800ac744:
/* 0x800ac744 */ or	$v1,$v1,$v0
.L800ac748:
/* 0x800ac748 */ sw	$v1,0($a3)
.L800ac74c:
/* 0x800ac74c */ lw	$v0,0($a0)
.L800ac750:
/* 0x800ac750 */ and	$a1,$a3,$a1
.L800ac754:
/* 0x800ac754 */ and	$v0,$v0,$a2
.L800ac758:
/* 0x800ac758 */ or	$v0,$v0,$a1
.L800ac75c:
/* 0x800ac75c */ jr	$ra
.L800ac760:
/* 0x800ac760 */ sw	$v0,0($a0)
.size FUN_800ac52c, .-FUN_800ac52c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ac764
.globl FUN_800ac764
.type FUN_800ac764, @function
FUN_800ac764:
.L800ac764:
/* 0x800ac764 */ addu	$t1,$a0,$zero
.L800ac768:
/* 0x800ac768 */ addu	$t2,$a1,$zero
.L800ac76c:
/* 0x800ac76c */ addiu	$t0,$t1,-1
.L800ac770:
/* 0x800ac770 */ bgez	$t0,.L800ac77c
.L800ac774:
/* 0x800ac774 */ addu	$a0,$t0,$zero
.L800ac778:
/* 0x800ac778 */ addiu	$a0,$t1,2
.L800ac77c:
/* 0x800ac77c */ lui	$v1,0x51eb
.L800ac780:
/* 0x800ac780 */ ori	$v1,$v1,0x851f
.L800ac784:
/* 0x800ac784 */ mult	$t0,$v1
.L800ac788:
/* 0x800ac788 */ addu	$a3,$zero,$zero
.L800ac78c:
/* 0x800ac78c */ sra	$a0,$a0,0x2
.L800ac790:
/* 0x800ac790 */ sra	$a1,$t0,0x1f
.L800ac794:
/* 0x800ac794 */ mfhi	$v1
.L800ac798:
/* 0x800ac798 */ sra	$v0,$v1,0x5
.L800ac79c:
/* 0x800ac79c */ subu	$v0,$v0,$a1
.L800ac7a0:
/* 0x800ac7a0 */ subu	$a0,$a0,$v0
.L800ac7a4:
/* 0x800ac7a4 */ sra	$v1,$v1,0x7
.L800ac7a8:
/* 0x800ac7a8 */ subu	$v1,$v1,$a1
.L800ac7ac:
/* 0x800ac7ac */ addu	$a0,$a0,$v1
.L800ac7b0:
/* 0x800ac7b0 */ sll	$v1,$a0,0x1
.L800ac7b4:
/* 0x800ac7b4 */ addu	$v1,$v1,$a0
.L800ac7b8:
/* 0x800ac7b8 */ sll	$v1,$v1,0x3
.L800ac7bc:
/* 0x800ac7bc */ subu	$v1,$v1,$a0
.L800ac7c0:
/* 0x800ac7c0 */ sll	$v1,$v1,0x3
.L800ac7c4:
/* 0x800ac7c4 */ subu	$v1,$v1,$a0
.L800ac7c8:
/* 0x800ac7c8 */ sll	$v1,$v1,0x1
.L800ac7cc:
/* 0x800ac7cc */ subu	$a0,$t0,$a0
.L800ac7d0:
/* 0x800ac7d0 */ sll	$v0,$a0,0x3
.L800ac7d4:
/* 0x800ac7d4 */ addu	$v0,$v0,$a0
.L800ac7d8:
/* 0x800ac7d8 */ sll	$v0,$v0,0x3
.L800ac7dc:
/* 0x800ac7dc */ addu	$v0,$v0,$a0
.L800ac7e0:
/* 0x800ac7e0 */ sll	$a0,$v0,0x2
.L800ac7e4:
/* 0x800ac7e4 */ addu	$v0,$v0,$a0
.L800ac7e8:
/* 0x800ac7e8 */ addiu	$a1,$t2,-1
.L800ac7ec:
/* 0x800ac7ec */ blez	$a1,.L800ac814
.L800ac7f0:
/* 0x800ac7f0 */ addu	$a0,$v1,$v0
.L800ac7f4:
/* 0x800ac7f4 */ lui	$v0,0x800e
.L800ac7f8:
/* 0x800ac7f8 */ addiu	$v1,$v0,10500
.L800ac7fc:
/* 0x800ac7fc */ lw	$v0,0($v1)
.L800ac800:
/* 0x800ac800 */ addiu	$a3,$a3,1
.L800ac804:
/* 0x800ac804 */ addu	$a0,$a0,$v0
.L800ac808:
/* 0x800ac808 */ slt	$v0,$a3,$a1
.L800ac80c:
/* 0x800ac80c */ bne	$v0,$zero,.L800ac7fc
.L800ac810:
/* 0x800ac810 */ addiu	$v1,$v1,4
.L800ac814:
/* 0x800ac814 */ slti	$v0,$t2,3
.L800ac818:
/* 0x800ac818 */ bne	$v0,$zero,.L800ac880
.L800ac81c:
/* 0x800ac81c */ lui	$v0,0x51eb
.L800ac820:
/* 0x800ac820 */ ori	$v0,$v0,0x851f
.L800ac824:
/* 0x800ac824 */ mult	$t1,$v0
.L800ac828:
/* 0x800ac828 */ sra	$a1,$t1,0x1f
.L800ac82c:
/* 0x800ac82c */ mfhi	$a3
.L800ac830:
/* 0x800ac830 */ sra	$v1,$a3,0x7
.L800ac834:
/* 0x800ac834 */ subu	$v1,$v1,$a1
.L800ac838:
/* 0x800ac838 */ sll	$v0,$v1,0x1
.L800ac83c:
/* 0x800ac83c */ addu	$v0,$v0,$v1
.L800ac840:
/* 0x800ac840 */ sll	$v0,$v0,0x3
.L800ac844:
/* 0x800ac844 */ addu	$v0,$v0,$v1
.L800ac848:
/* 0x800ac848 */ sll	$v0,$v0,0x4
.L800ac84c:
/* 0x800ac84c */ beq	$t1,$v0,.L800ac87c
.L800ac850:
/* 0x800ac850 */ andi	$v0,$t1,0x3
.L800ac854:
/* 0x800ac854 */ bne	$v0,$zero,.L800ac880
.L800ac858:
/* 0x800ac858 */ sra	$v1,$a3,0x5
.L800ac85c:
/* 0x800ac85c */ subu	$v1,$v1,$a1
.L800ac860:
/* 0x800ac860 */ sll	$v0,$v1,0x1
.L800ac864:
/* 0x800ac864 */ addu	$v0,$v0,$v1
.L800ac868:
/* 0x800ac868 */ sll	$v0,$v0,0x3
.L800ac86c:
/* 0x800ac86c */ addu	$v0,$v0,$v1
.L800ac870:
/* 0x800ac870 */ sll	$v0,$v0,0x2
.L800ac874:
/* 0x800ac874 */ beq	$t1,$v0,.L800ac880
.L800ac878:
/* 0x800ac878 */ sll	$zero,$zero,0x0
.L800ac87c:
/* 0x800ac87c */ addiu	$a0,$a0,1
.L800ac880:
/* 0x800ac880 */ jr	$ra
.L800ac884:
/* 0x800ac884 */ addu	$v0,$a0,$a2
.size FUN_800ac764, .-FUN_800ac764
