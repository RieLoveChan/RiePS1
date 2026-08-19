.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8254
.globl FUN_800a8254
.type FUN_800a8254, @function
FUN_800a8254:
.L800a8254:
/* 0x800a8254 */ addiu	$sp,$sp,-144
.L800a8258:
/* 0x800a8258 */ lui	$v0,0x8002
.L800a825c:
/* 0x800a825c */ sw	$ra,136($sp)
.L800a8260:
/* 0x800a8260 */ sw	$s7,132($sp)
.L800a8264:
/* 0x800a8264 */ sw	$s6,128($sp)
.L800a8268:
/* 0x800a8268 */ sw	$s5,124($sp)
.L800a826c:
/* 0x800a826c */ sw	$s4,120($sp)
.L800a8270:
/* 0x800a8270 */ sw	$s3,116($sp)
.L800a8274:
/* 0x800a8274 */ sw	$s2,112($sp)
.L800a8278:
/* 0x800a8278 */ sw	$s1,108($sp)
.L800a827c:
/* 0x800a827c */ sw	$s0,104($sp)
.L800a8280:
/* 0x800a8280 */ addiu	$t3,$v0,1692
.L800a8284:
/* 0x800a8284 */ lwl	$t0,3($t3)
.L800a8288:
/* 0x800a8288 */ lwr	$t0,0($t3)
.L800a828c:
/* 0x800a828c */ sll	$zero,$zero,0x0
.L800a8290:
/* 0x800a8290 */ swl	$t0,35($sp)
.L800a8294:
/* 0x800a8294 */ swr	$t0,32($sp)
.L800a8298:
/* 0x800a8298 */ addiu	$v1,$zero,12
.L800a829c:
/* 0x800a829c */ addiu	$v0,$zero,9
.L800a82a0:
/* 0x800a82a0 */ sb	$v0,41($sp)
.L800a82a4:
/* 0x800a82a4 */ lui	$v0,0x8002
.L800a82a8:
/* 0x800a82a8 */ sb	$v1,40($sp)
.L800a82ac:
/* 0x800a82ac */ sb	$v1,96($sp)
.L800a82b0:
/* 0x800a82b0 */ addiu	$t3,$v0,1696
.L800a82b4:
/* 0x800a82b4 */ lwl	$t0,3($t3)
.L800a82b8:
/* 0x800a82b8 */ lwr	$t0,0($t3)
.L800a82bc:
/* 0x800a82bc */ sll	$zero,$zero,0x0
.L800a82c0:
/* 0x800a82c0 */ swl	$t0,51($sp)
.L800a82c4:
/* 0x800a82c4 */ swr	$t0,48($sp)
.L800a82c8:
/* 0x800a82c8 */ lui	$v0,0x8002
.L800a82cc:
/* 0x800a82cc */ addiu	$t3,$v0,1700
.L800a82d0:
/* 0x800a82d0 */ lb	$t0,0($t3)
.L800a82d4:
/* 0x800a82d4 */ lb	$t1,1($t3)
.L800a82d8:
/* 0x800a82d8 */ lb	$t2,2($t3)
.L800a82dc:
/* 0x800a82dc */ sb	$t0,56($sp)
.L800a82e0:
/* 0x800a82e0 */ sb	$t1,57($sp)
.L800a82e4:
/* 0x800a82e4 */ sb	$t2,58($sp)
.L800a82e8:
/* 0x800a82e8 */ addu	$a2,$zero,$zero
.L800a82ec:
/* 0x800a82ec */ addu	$s1,$a2,$zero
.L800a82f0:
/* 0x800a82f0 */ addiu	$v0,$sp,40
.L800a82f4:
/* 0x800a82f4 */ sw	$v0,80($sp)
.L800a82f8:
/* 0x800a82f8 */ addiu	$v0,$sp,96
.L800a82fc:
/* 0x800a82fc */ sw	$v0,84($sp)
.L800a8300:
/* 0x800a8300 */ addiu	$v0,$sp,48
.L800a8304:
/* 0x800a8304 */ sw	$v0,88($sp)
.L800a8308:
/* 0x800a8308 */ addiu	$v0,$sp,56
.L800a830c:
/* 0x800a830c */ sll	$v1,$a0,0x2
.L800a8310:
/* 0x800a8310 */ sw	$v0,92($sp)
.L800a8314:
/* 0x800a8314 */ addu	$v0,$sp,$a0
.L800a8318:
/* 0x800a8318 */ lw	$t0,80($sp)
.L800a831c:
/* 0x800a831c */ lw	$t1,84($sp)
.L800a8320:
/* 0x800a8320 */ lw	$t2,88($sp)
.L800a8324:
/* 0x800a8324 */ lw	$t3,92($sp)
.L800a8328:
/* 0x800a8328 */ sw	$t0,64($sp)
.L800a832c:
/* 0x800a832c */ sw	$t1,68($sp)
.L800a8330:
/* 0x800a8330 */ sw	$t2,72($sp)
.L800a8334:
/* 0x800a8334 */ sw	$t3,76($sp)
.L800a8338:
/* 0x800a8338 */ lbu	$s4,32($v0)
.L800a833c:
/* 0x800a833c */ addu	$v0,$sp,$v1
.L800a8340:
/* 0x800a8340 */ lw	$s3,64($v0)
.L800a8344:
/* 0x800a8344 */ andi	$a0,$s4,0xff
.L800a8348:
/* 0x800a8348 */ beq	$a0,$zero,.L800a838c
.L800a834c:
/* 0x800a834c */ addu	$s5,$a1,$zero
.L800a8350:
/* 0x800a8350 */ lui	$v0,0x800e
.L800a8354:
/* 0x800a8354 */ addiu	$a1,$v0,9028
.L800a8358:
/* 0x800a8358 */ addu	$v0,$s3,$s1
.L800a835c:
/* 0x800a835c */ lbu	$v1,0($v0)
.L800a8360:
/* 0x800a8360 */ sll	$zero,$zero,0x0
.L800a8364:
/* 0x800a8364 */ sll	$v0,$v1,0x1
.L800a8368:
/* 0x800a8368 */ addu	$v0,$v0,$v1
.L800a836c:
/* 0x800a836c */ sll	$v0,$v0,0x2
.L800a8370:
/* 0x800a8370 */ addu	$s0,$v0,$a1
.L800a8374:
/* 0x800a8374 */ lhu	$v0,0($s0)
.L800a8378:
/* 0x800a8378 */ addiu	$s1,$s1,1
.L800a837c:
/* 0x800a837c */ addu	$a2,$a2,$v0
.L800a8380:
/* 0x800a8380 */ slt	$v0,$s1,$a0
.L800a8384:
/* 0x800a8384 */ bne	$v0,$zero,.L800a835c
.L800a8388:
/* 0x800a8388 */ addu	$v0,$s3,$s1
.L800a838c:
/* 0x800a838c */ negu	$v0,$a2
.L800a8390:
/* 0x800a8390 */ srl	$v1,$v0,0x1f
.L800a8394:
/* 0x800a8394 */ addu	$v0,$v0,$v1
.L800a8398:
/* 0x800a8398 */ sra	$s2,$v0,0x1
.L800a839c:
/* 0x800a839c */ beq	$s4,$zero,.L800a845c
.L800a83a0:
/* 0x800a83a0 */ addu	$s1,$zero,$zero
.L800a83a4:
/* 0x800a83a4 */ lui	$v0,0x800e
.L800a83a8:
/* 0x800a83a8 */ addiu	$s7,$v0,9028
.L800a83ac:
/* 0x800a83ac */ lui	$v0,0x8012
.L800a83b0:
/* 0x800a83b0 */ addiu	$s6,$v0,-30088
.L800a83b4:
/* 0x800a83b4 */ lui	$v0,0x2aaa
.L800a83b8:
/* 0x800a83b8 */ lw	$a1,8($s6)
.L800a83bc:
/* 0x800a83bc */ ori	$v0,$v0,0xaaab
.L800a83c0:
/* 0x800a83c0 */ sll	$a1,$a1,0xa
.L800a83c4:
/* 0x800a83c4 */ mult	$a1,$v0
.L800a83c8:
/* 0x800a83c8 */ addu	$v0,$s3,$s1
.L800a83cc:
/* 0x800a83cc */ lbu	$v1,0($v0)
.L800a83d0:
/* 0x800a83d0 */ sra	$a1,$a1,0x1f
.L800a83d4:
/* 0x800a83d4 */ sll	$v0,$v1,0x1
.L800a83d8:
/* 0x800a83d8 */ addu	$v0,$v0,$v1
.L800a83dc:
/* 0x800a83dc */ sll	$v0,$v0,0x2
.L800a83e0:
/* 0x800a83e0 */ addu	$s0,$v0,$s7
.L800a83e4:
/* 0x800a83e4 */ mfhi	$t0
.L800a83e8:
/* 0x800a83e8 */ sra	$a0,$t0,0x2
.L800a83ec:
/* 0x800a83ec */ jal	0x8004964c
.L800a83f0:
/* 0x800a83f0 */ subu	$a0,$a0,$a1
.L800a83f4:
/* 0x800a83f4 */ addu	$a0,$s2,$zero
.L800a83f8:
/* 0x800a83f8 */ andi	$v1,$s5,0xff
.L800a83fc:
/* 0x800a83fc */ sw	$v1,24($sp)
.L800a8400:
/* 0x800a8400 */ addiu	$v1,$zero,10
.L800a8404:
/* 0x800a8404 */ sw	$v1,28($sp)
.L800a8408:
/* 0x800a8408 */ sll	$v1,$v0,0x1
.L800a840c:
/* 0x800a840c */ addu	$v1,$v1,$v0
.L800a8410:
/* 0x800a8410 */ sll	$v1,$v1,0x4
.L800a8414:
/* 0x800a8414 */ sra	$v1,$v1,0xc
.L800a8418:
/* 0x800a8418 */ addiu	$a1,$zero,48
.L800a841c:
/* 0x800a841c */ subu	$a1,$a1,$v1
.L800a8420:
/* 0x800a8420 */ sll	$a1,$a1,0x10
.L800a8424:
/* 0x800a8424 */ sra	$a1,$a1,0x10
.L800a8428:
/* 0x800a8428 */ addiu	$a1,$a1,195
.L800a842c:
/* 0x800a842c */ addu	$a2,$s0,$zero
.L800a8430:
/* 0x800a8430 */ addu	$a3,$zero,$zero
.L800a8434:
/* 0x800a8434 */ sw	$zero,16($sp)
.L800a8438:
/* 0x800a8438 */ jal	0x800ac2bc
.L800a843c:
/* 0x800a843c */ sw	$zero,20($sp)
.L800a8440:
/* 0x800a8440 */ lhu	$v0,0($s0)
.L800a8444:
/* 0x800a8444 */ addiu	$s1,$s1,1
.L800a8448:
/* 0x800a8448 */ addu	$s2,$s2,$v0
.L800a844c:
/* 0x800a844c */ andi	$v0,$s4,0xff
.L800a8450:
/* 0x800a8450 */ slt	$v0,$s1,$v0
.L800a8454:
/* 0x800a8454 */ bne	$v0,$zero,.L800a83b8
.L800a8458:
/* 0x800a8458 */ lui	$v0,0x2aaa
.L800a845c:
/* 0x800a845c */ lw	$ra,136($sp)
.L800a8460:
/* 0x800a8460 */ lw	$s7,132($sp)
.L800a8464:
/* 0x800a8464 */ lw	$s6,128($sp)
.L800a8468:
/* 0x800a8468 */ lw	$s5,124($sp)
.L800a846c:
/* 0x800a846c */ lw	$s4,120($sp)
.L800a8470:
/* 0x800a8470 */ lw	$s3,116($sp)
.L800a8474:
/* 0x800a8474 */ lw	$s2,112($sp)
.L800a8478:
/* 0x800a8478 */ lw	$s1,108($sp)
.L800a847c:
/* 0x800a847c */ lw	$s0,104($sp)
.L800a8480:
/* 0x800a8480 */ jr	$ra
.L800a8484:
/* 0x800a8484 */ addiu	$sp,$sp,144
.size FUN_800a8254, .-FUN_800a8254
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8488
.globl FUN_800a8488
.type FUN_800a8488, @function
FUN_800a8488:
.L800a8488:
/* 0x800a8488 */ addiu	$sp,$sp,-80
.L800a848c:
/* 0x800a848c */ sw	$s0,40($sp)
.L800a8490:
/* 0x800a8490 */ addu	$s0,$a0,$zero
.L800a8494:
/* 0x800a8494 */ sw	$s3,52($sp)
.L800a8498:
/* 0x800a8498 */ addu	$s3,$a1,$zero
.L800a849c:
/* 0x800a849c */ addiu	$a0,$zero,-320
.L800a84a0:
/* 0x800a84a0 */ sw	$s2,48($sp)
.L800a84a4:
/* 0x800a84a4 */ sll	$s2,$s0,0x10
.L800a84a8:
/* 0x800a84a8 */ sra	$s2,$s2,0x10
.L800a84ac:
/* 0x800a84ac */ addu	$a1,$s2,$zero
.L800a84b0:
/* 0x800a84b0 */ sw	$s5,60($sp)
.L800a84b4:
/* 0x800a84b4 */ addu	$s5,$a2,$zero
.L800a84b8:
/* 0x800a84b8 */ addiu	$a2,$zero,320
.L800a84bc:
/* 0x800a84bc */ sw	$s4,56($sp)
.L800a84c0:
/* 0x800a84c0 */ addu	$s4,$a3,$zero
.L800a84c4:
/* 0x800a84c4 */ addu	$a3,$s2,$zero
.L800a84c8:
/* 0x800a84c8 */ sw	$s7,68($sp)
.L800a84cc:
/* 0x800a84cc */ addiu	$s7,$zero,74
.L800a84d0:
/* 0x800a84d0 */ sw	$s6,64($sp)
.L800a84d4:
/* 0x800a84d4 */ addiu	$s6,$zero,49
.L800a84d8:
/* 0x800a84d8 */ sw	$s1,44($sp)
.L800a84dc:
/* 0x800a84dc */ addiu	$s1,$zero,128
.L800a84e0:
/* 0x800a84e0 */ sw	$ra,72($sp)
.L800a84e4:
/* 0x800a84e4 */ sw	$s7,16($sp)
.L800a84e8:
/* 0x800a84e8 */ sw	$zero,20($sp)
.L800a84ec:
/* 0x800a84ec */ sw	$s6,24($sp)
.L800a84f0:
/* 0x800a84f0 */ sw	$s1,28($sp)
.L800a84f4:
/* 0x800a84f4 */ jal	0x800a8990
.L800a84f8:
/* 0x800a84f8 */ sw	$s4,32($sp)
.L800a84fc:
/* 0x800a84fc */ addiu	$a0,$zero,-320
.L800a8500:
/* 0x800a8500 */ addu	$s0,$s0,$s3
.L800a8504:
/* 0x800a8504 */ sll	$s0,$s0,0x10
.L800a8508:
/* 0x800a8508 */ sra	$s0,$s0,0x10
.L800a850c:
/* 0x800a850c */ addu	$a1,$s0,$zero
.L800a8510:
/* 0x800a8510 */ addiu	$a2,$zero,320
.L800a8514:
/* 0x800a8514 */ addu	$a3,$a1,$zero
.L800a8518:
/* 0x800a8518 */ sw	$s7,16($sp)
.L800a851c:
/* 0x800a851c */ sw	$zero,20($sp)
.L800a8520:
/* 0x800a8520 */ sw	$s6,24($sp)
.L800a8524:
/* 0x800a8524 */ sw	$s1,28($sp)
.L800a8528:
/* 0x800a8528 */ jal	0x800a8990
.L800a852c:
/* 0x800a852c */ sw	$s4,32($sp)
.L800a8530:
/* 0x800a8530 */ addiu	$a0,$zero,-320
.L800a8534:
/* 0x800a8534 */ addu	$a1,$s2,$zero
.L800a8538:
/* 0x800a8538 */ addiu	$a2,$zero,640
.L800a853c:
/* 0x800a853c */ sll	$s3,$s3,0x10
.L800a8540:
/* 0x800a8540 */ sra	$a3,$s3,0x10
.L800a8544:
/* 0x800a8544 */ andi	$s5,$s5,0xff
.L800a8548:
/* 0x800a8548 */ sw	$s1,16($sp)
.L800a854c:
/* 0x800a854c */ sw	$s1,20($sp)
.L800a8550:
/* 0x800a8550 */ sw	$s1,24($sp)
.L800a8554:
/* 0x800a8554 */ sw	$s5,28($sp)
.L800a8558:
/* 0x800a8558 */ jal	0x80023dbc
.L800a855c:
/* 0x800a855c */ sw	$s4,32($sp)
.L800a8560:
/* 0x800a8560 */ lw	$ra,72($sp)
.L800a8564:
/* 0x800a8564 */ lw	$s7,68($sp)
.L800a8568:
/* 0x800a8568 */ lw	$s6,64($sp)
.L800a856c:
/* 0x800a856c */ lw	$s5,60($sp)
.L800a8570:
/* 0x800a8570 */ lw	$s4,56($sp)
.L800a8574:
/* 0x800a8574 */ lw	$s3,52($sp)
.L800a8578:
/* 0x800a8578 */ lw	$s2,48($sp)
.L800a857c:
/* 0x800a857c */ lw	$s1,44($sp)
.L800a8580:
/* 0x800a8580 */ lw	$s0,40($sp)
.L800a8584:
/* 0x800a8584 */ jr	$ra
.L800a8588:
/* 0x800a8588 */ addiu	$sp,$sp,80
.size FUN_800a8488, .-FUN_800a8488
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a858c
.globl FUN_800a858c
.type FUN_800a858c, @function
FUN_800a858c:
.L800a858c:
/* 0x800a858c */ addiu	$sp,$sp,-64
.L800a8590:
/* 0x800a8590 */ sw	$s3,52($sp)
.L800a8594:
/* 0x800a8594 */ addu	$s3,$a0,$zero
.L800a8598:
/* 0x800a8598 */ sw	$s2,48($sp)
.L800a859c:
/* 0x800a859c */ addu	$s2,$a1,$zero
.L800a85a0:
/* 0x800a85a0 */ sw	$s4,56($sp)
.L800a85a4:
/* 0x800a85a4 */ addu	$s4,$a3,$zero
.L800a85a8:
/* 0x800a85a8 */ addiu	$a3,$zero,4
.L800a85ac:
/* 0x800a85ac */ sw	$s0,40($sp)
.L800a85b0:
/* 0x800a85b0 */ lw	$s0,80($sp)
.L800a85b4:
/* 0x800a85b4 */ addiu	$v0,$zero,3
.L800a85b8:
/* 0x800a85b8 */ sw	$ra,60($sp)
.L800a85bc:
/* 0x800a85bc */ sw	$s1,44($sp)
.L800a85c0:
/* 0x800a85c0 */ sw	$v0,16($sp)
.L800a85c4:
/* 0x800a85c4 */ sw	$s4,24($sp)
.L800a85c8:
/* 0x800a85c8 */ jal	0x800a6430
.L800a85cc:
/* 0x800a85cc */ sw	$s0,20($sp)
.L800a85d0:
/* 0x800a85d0 */ addiu	$v1,$s3,8
.L800a85d4:
/* 0x800a85d4 */ addu	$s3,$v1,$v0
.L800a85d8:
/* 0x800a85d8 */ addiu	$v0,$zero,1
.L800a85dc:
/* 0x800a85dc */ beq	$s0,$v0,.L800a85e8
.L800a85e0:
/* 0x800a85e0 */ lui	$v1,0x10
.L800a85e4:
/* 0x800a85e4 */ addu	$s0,$zero,$zero
.L800a85e8:
/* 0x800a85e8 */ ori	$v1,$v1,0xcc6
.L800a85ec:
/* 0x800a85ec */ addiu	$a0,$zero,1
.L800a85f0:
/* 0x800a85f0 */ addiu	$a1,$zero,15
.L800a85f4:
/* 0x800a85f4 */ lui	$v0,0x8002
.L800a85f8:
/* 0x800a85f8 */ addiu	$s2,$s2,2
.L800a85fc:
/* 0x800a85fc */ lui	$s1,0x8002
.L800a8600:
/* 0x800a8600 */ addiu	$t3,$v0,1620
.L800a8604:
/* 0x800a8604 */ lwl	$t0,3($t3)
.L800a8608:
/* 0x800a8608 */ lwr	$t0,0($t3)
.L800a860c:
/* 0x800a860c */ lb	$t1,4($t3)
.L800a8610:
/* 0x800a8610 */ lb	$t2,5($t3)
.L800a8614:
/* 0x800a8614 */ swl	$t0,35($sp)
.L800a8618:
/* 0x800a8618 */ swr	$t0,32($sp)
.L800a861c:
/* 0x800a861c */ sb	$t1,36($sp)
.L800a8620:
/* 0x800a8620 */ sb	$t2,37($sp)
.L800a8624:
/* 0x800a8624 */ lb	$t0,6($t3)
.L800a8628:
/* 0x800a8628 */ sll	$zero,$zero,0x0
.L800a862c:
/* 0x800a862c */ sb	$t0,38($sp)
.L800a8630:
/* 0x800a8630 */ addu	$v0,$sp,$s0
.L800a8634:
/* 0x800a8634 */ lbu	$s0,32($v0)
.L800a8638:
/* 0x800a8638 */ addiu	$s1,$s1,1628
.L800a863c:
/* 0x800a863c */ and	$s0,$s0,$a1
.L800a8640:
/* 0x800a8640 */ sll	$s0,$s0,0x18
.L800a8644:
/* 0x800a8644 */ jal	0x80043134
.L800a8648:
/* 0x800a8648 */ or	$s0,$s0,$v1
.L800a864c:
/* 0x800a864c */ addiu	$a0,$zero,1
.L800a8650:
/* 0x800a8650 */ jal	0x80048e80
.L800a8654:
/* 0x800a8654 */ addiu	$a1,$zero,10
.L800a8658:
/* 0x800a8658 */ addiu	$a0,$zero,1
.L800a865c:
/* 0x800a865c */ addu	$a1,$zero,$zero
.L800a8660:
/* 0x800a8660 */ addu	$a2,$s3,$zero
.L800a8664:
/* 0x800a8664 */ addu	$a3,$s2,$zero
.L800a8668:
/* 0x800a8668 */ sw	$s1,16($sp)
.L800a866c:
/* 0x800a866c */ sw	$s0,20($sp)
.L800a8670:
/* 0x800a8670 */ jal	0x80041628
.L800a8674:
/* 0x800a8674 */ sw	$s4,24($sp)
.L800a8678:
/* 0x800a8678 */ addiu	$a0,$zero,1
.L800a867c:
/* 0x800a867c */ jal	0x80048aa8
.L800a8680:
/* 0x800a8680 */ addu	$a1,$v0,$zero
.L800a8684:
/* 0x800a8684 */ jal	0x80043344
.L800a8688:
/* 0x800a8688 */ addiu	$a0,$zero,1
.L800a868c:
/* 0x800a868c */ lw	$ra,60($sp)
.L800a8690:
/* 0x800a8690 */ lw	$s4,56($sp)
.L800a8694:
/* 0x800a8694 */ lw	$s3,52($sp)
.L800a8698:
/* 0x800a8698 */ lw	$s2,48($sp)
.L800a869c:
/* 0x800a869c */ lw	$s1,44($sp)
.L800a86a0:
/* 0x800a86a0 */ lw	$s0,40($sp)
.L800a86a4:
/* 0x800a86a4 */ jr	$ra
.L800a86a8:
/* 0x800a86a8 */ addiu	$sp,$sp,64
.size FUN_800a858c, .-FUN_800a858c
