.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a9210
.globl FUN_800a9210
.type FUN_800a9210, @function
FUN_800a9210:
.L800a9210:
/* 0x800a9210 */ addiu	$sp,$sp,-40
.L800a9214:
/* 0x800a9214 */ lui	$a0,0x8012
.L800a9218:
/* 0x800a9218 */ addiu	$a0,$a0,-30000
.L800a921c:
/* 0x800a921c */ lui	$v0,0x800e
.L800a9220:
/* 0x800a9220 */ sw	$s0,16($sp)
.L800a9224:
/* 0x800a9224 */ lw	$s0,2840($v0)
.L800a9228:
/* 0x800a9228 */ addiu	$a1,$zero,8
.L800a922c:
/* 0x800a922c */ sw	$ra,32($sp)
.L800a9230:
/* 0x800a9230 */ sw	$s3,28($sp)
.L800a9234:
/* 0x800a9234 */ sw	$s2,24($sp)
.L800a9238:
/* 0x800a9238 */ jal	0x8003bac8
.L800a923c:
/* 0x800a923c */ sw	$s1,20($sp)
.L800a9240:
/* 0x800a9240 */ addiu	$s1,$s0,4948
.L800a9244:
/* 0x800a9244 */ jal	0x800a345c
.L800a9248:
/* 0x800a9248 */ addu	$a0,$s1,$zero
.L800a924c:
/* 0x800a924c */ addiu	$s2,$s0,4880
.L800a9250:
/* 0x800a9250 */ lhu	$a1,2($s2)
.L800a9254:
/* 0x800a9254 */ jal	0x800a358c
.L800a9258:
/* 0x800a9258 */ addu	$a0,$s1,$zero
.L800a925c:
/* 0x800a925c */ lhu	$v1,2($s2)
.L800a9260:
/* 0x800a9260 */ lhu	$v0,4948($s0)
.L800a9264:
/* 0x800a9264 */ sll	$zero,$zero,0x0
.L800a9268:
/* 0x800a9268 */ beq	$v1,$v0,.L800a9290
.L800a926c:
/* 0x800a926c */ addiu	$s3,$s0,4884
.L800a9270:
/* 0x800a9270 */ jal	0x800a3550
.L800a9274:
/* 0x800a9274 */ addu	$a0,$s1,$zero
.L800a9278:
/* 0x800a9278 */ addu	$a0,$s1,$zero
.L800a927c:
/* 0x800a927c */ jal	0x8003bac8
.L800a9280:
/* 0x800a9280 */ addiu	$a1,$zero,16
.L800a9284:
/* 0x800a9284 */ lhu	$v0,2($s2)
.L800a9288:
/* 0x800a9288 */ sll	$zero,$zero,0x0
.L800a928c:
/* 0x800a928c */ sh	$v0,4948($s0)
.L800a9290:
/* 0x800a9290 */ addu	$a1,$zero,$zero
.L800a9294:
/* 0x800a9294 */ addiu	$a2,$zero,7
.L800a9298:
/* 0x800a9298 */ addu	$a0,$s1,$zero
.L800a929c:
/* 0x800a929c */ lui	$v0,0x800f
.L800a92a0:
/* 0x800a92a0 */ addiu	$v1,$v0,10504
.L800a92a4:
/* 0x800a92a4 */ lbu	$v0,146($v1)
.L800a92a8:
/* 0x800a92a8 */ sll	$zero,$zero,0x0
.L800a92ac:
/* 0x800a92ac */ beq	$v0,$a2,.L800a92c8
.L800a92b0:
/* 0x800a92b0 */ sll	$zero,$zero,0x0
.L800a92b4:
/* 0x800a92b4 */ beq	$v0,$zero,.L800a92c8
.L800a92b8:
/* 0x800a92b8 */ sll	$zero,$zero,0x0
.L800a92bc:
/* 0x800a92bc */ lhu	$v0,10($s3)
.L800a92c0:
/* 0x800a92c0 */ sll	$zero,$zero,0x0
.L800a92c4:
/* 0x800a92c4 */ sh	$v0,4($a0)
.L800a92c8:
/* 0x800a92c8 */ addiu	$a0,$a0,2
.L800a92cc:
/* 0x800a92cc */ ori	$v0,$zero,0x9284
.L800a92d0:
/* 0x800a92d0 */ addu	$v1,$v1,$v0
.L800a92d4:
/* 0x800a92d4 */ addiu	$a1,$a1,1
.L800a92d8:
/* 0x800a92d8 */ slti	$v0,$a1,2
.L800a92dc:
/* 0x800a92dc */ bne	$v0,$zero,.L800a92a4
.L800a92e0:
/* 0x800a92e0 */ addiu	$s3,$s3,32
.L800a92e4:
/* 0x800a92e4 */ lw	$ra,32($sp)
.L800a92e8:
/* 0x800a92e8 */ lw	$s3,28($sp)
.L800a92ec:
/* 0x800a92ec */ lw	$s2,24($sp)
.L800a92f0:
/* 0x800a92f0 */ lw	$s1,20($sp)
.L800a92f4:
/* 0x800a92f4 */ lw	$s0,16($sp)
.L800a92f8:
/* 0x800a92f8 */ jr	$ra
.L800a92fc:
/* 0x800a92fc */ addiu	$sp,$sp,40
.size FUN_800a9210, .-FUN_800a9210
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a9300
.globl FUN_800a9300
.type FUN_800a9300, @function
FUN_800a9300:
.L800a9300:
/* 0x800a9300 */ addiu	$sp,$sp,-48
.L800a9304:
/* 0x800a9304 */ sw	$s0,16($sp)
.L800a9308:
/* 0x800a9308 */ addu	$s0,$a0,$zero
.L800a930c:
/* 0x800a930c */ lui	$v0,0x800f
.L800a9310:
/* 0x800a9310 */ sw	$s2,24($sp)
.L800a9314:
/* 0x800a9314 */ addiu	$s2,$v0,10536
.L800a9318:
/* 0x800a9318 */ sw	$s1,20($sp)
.L800a931c:
/* 0x800a931c */ lui	$s1,0x8012
.L800a9320:
/* 0x800a9320 */ sw	$s3,28($sp)
.L800a9324:
/* 0x800a9324 */ addiu	$s3,$s1,-30072
.L800a9328:
/* 0x800a9328 */ addu	$a0,$s3,$zero
.L800a932c:
/* 0x800a932c */ lui	$v0,0x800e
.L800a9330:
/* 0x800a9330 */ lw	$v0,2840($v0)
.L800a9334:
/* 0x800a9334 */ addiu	$a1,$zero,68
.L800a9338:
/* 0x800a9338 */ sw	$ra,44($sp)
.L800a933c:
/* 0x800a933c */ sw	$s6,40($sp)
.L800a9340:
/* 0x800a9340 */ sw	$s5,36($sp)
.L800a9344:
/* 0x800a9344 */ sw	$s4,32($sp)
.L800a9348:
/* 0x800a9348 */ addiu	$s5,$v0,4948
.L800a934c:
/* 0x800a934c */ addu	$s4,$s5,$zero
.L800a9350:
/* 0x800a9350 */ lui	$v0,0x8012
.L800a9354:
/* 0x800a9354 */ jal	0x8003bac8
.L800a9358:
/* 0x800a9358 */ addiu	$s6,$v0,-30000
.L800a935c:
/* 0x800a935c */ addiu	$v0,$zero,-1
.L800a9360:
/* 0x800a9360 */ sb	$s0,-30072($s1)
.L800a9364:
/* 0x800a9364 */ andi	$s0,$s0,0xff
.L800a9368:
/* 0x800a9368 */ sw	$v0,20($s3)
.L800a936c:
/* 0x800a936c */ bne	$s0,$zero,.L800a9424
.L800a9370:
/* 0x800a9370 */ sw	$zero,64($s3)
.L800a9374:
/* 0x800a9374 */ addu	$t0,$zero,$zero
.L800a9378:
/* 0x800a9378 */ addiu	$t2,$zero,7
.L800a937c:
/* 0x800a937c */ lui	$v0,0x8010
.L800a9380:
/* 0x800a9380 */ addiu	$t1,$v0,10504
.L800a9384:
/* 0x800a9384 */ addu	$a2,$s6,$zero
.L800a9388:
/* 0x800a9388 */ addu	$a0,$s3,$zero
.L800a938c:
/* 0x800a938c */ addu	$a1,$s5,$zero
.L800a9390:
/* 0x800a9390 */ addiu	$a3,$s2,-32
.L800a9394:
/* 0x800a9394 */ lbu	$v0,146($a3)
.L800a9398:
/* 0x800a9398 */ sll	$zero,$zero,0x0
.L800a939c:
/* 0x800a939c */ beq	$v0,$t2,.L800a9400
.L800a93a0:
/* 0x800a93a0 */ sll	$zero,$zero,0x0
.L800a93a4:
/* 0x800a93a4 */ beq	$v0,$zero,.L800a9400
.L800a93a8:
/* 0x800a93a8 */ sll	$zero,$zero,0x0
.L800a93ac:
/* 0x800a93ac */ lbu	$v0,10110($t1)
.L800a93b0:
/* 0x800a93b0 */ sll	$zero,$zero,0x0
.L800a93b4:
/* 0x800a93b4 */ beq	$v0,$zero,.L800a93cc
.L800a93b8:
/* 0x800a93b8 */ sll	$zero,$zero,0x0
.L800a93bc:
/* 0x800a93bc */ lw	$v0,52($s2)
.L800a93c0:
/* 0x800a93c0 */ lw	$v1,0($a2)
.L800a93c4:
/* 0x800a93c4 */ j	.L800a93dc
.L800a93c8:
/* 0x800a93c8 */ subu	$v0,$v0,$v1
.L800a93cc:
/* 0x800a93cc */ lw	$v0,52($s2)
.L800a93d0:
/* 0x800a93d0 */ lw	$v1,56($s2)
.L800a93d4:
/* 0x800a93d4 */ sll	$zero,$zero,0x0
.L800a93d8:
/* 0x800a93d8 */ subu	$v0,$v0,$v1
.L800a93dc:
/* 0x800a93dc */ sw	$v0,32($a0)
.L800a93e0:
/* 0x800a93e0 */ lw	$v0,8($a1)
.L800a93e4:
/* 0x800a93e4 */ lw	$v1,32($a0)
.L800a93e8:
/* 0x800a93e8 */ sll	$zero,$zero,0x0
.L800a93ec:
/* 0x800a93ec */ addu	$v0,$v0,$v1
.L800a93f0:
/* 0x800a93f0 */ sw	$v0,8($a1)
.L800a93f4:
/* 0x800a93f4 */ lw	$v0,52($s2)
.L800a93f8:
/* 0x800a93f8 */ sll	$zero,$zero,0x0
.L800a93fc:
/* 0x800a93fc */ sw	$v0,0($a2)
.L800a9400:
/* 0x800a9400 */ addiu	$a2,$a2,4
.L800a9404:
/* 0x800a9404 */ addiu	$a0,$a0,4
.L800a9408:
/* 0x800a9408 */ ori	$v0,$zero,0x9284
.L800a940c:
/* 0x800a940c */ addu	$a3,$a3,$v0
.L800a9410:
/* 0x800a9410 */ addiu	$t0,$t0,1
.L800a9414:
/* 0x800a9414 */ addu	$s2,$s2,$v0
.L800a9418:
/* 0x800a9418 */ slti	$v0,$t0,2
.L800a941c:
/* 0x800a941c */ bne	$v0,$zero,.L800a9394
.L800a9420:
/* 0x800a9420 */ addiu	$a1,$a1,4
.L800a9424:
/* 0x800a9424 */ lhu	$a2,0($s4)
.L800a9428:
/* 0x800a9428 */ addu	$s4,$s5,$zero
.L800a942c:
/* 0x800a942c */ andi	$a1,$a2,0xffff
.L800a9430:
/* 0x800a9430 */ srl	$a0,$a1,0x9
.L800a9434:
/* 0x800a9434 */ addiu	$a0,$a0,2000
.L800a9438:
/* 0x800a9438 */ srl	$a1,$a1,0x5
.L800a943c:
/* 0x800a943c */ andi	$a1,$a1,0xf
.L800a9440:
/* 0x800a9440 */ jal	0x800ac764
.L800a9444:
/* 0x800a9444 */ andi	$a2,$a2,0x1f
.L800a9448:
/* 0x800a9448 */ lui	$a0,0x4
.L800a944c:
/* 0x800a944c */ ori	$a0,$a0,0x93e0
.L800a9450:
/* 0x800a9450 */ addu	$t0,$zero,$zero
.L800a9454:
/* 0x800a9454 */ addiu	$t3,$zero,1
.L800a9458:
/* 0x800a9458 */ lui	$v1,0x800f
.L800a945c:
/* 0x800a945c */ addiu	$v1,$v1,10504
.L800a9460:
/* 0x800a9460 */ addiu	$t2,$zero,7
.L800a9464:
/* 0x800a9464 */ sw	$v0,28($s3)
.L800a9468:
/* 0x800a9468 */ addiu	$v0,$zero,5000
.L800a946c:
/* 0x800a946c */ sw	$v0,56($s3)
.L800a9470:
/* 0x800a9470 */ addiu	$v0,$zero,500
.L800a9474:
/* 0x800a9474 */ sw	$a0,52($s3)
.L800a9478:
/* 0x800a9478 */ sw	$zero,60($s3)
.L800a947c:
/* 0x800a947c */ sw	$v0,48($s3)
.L800a9480:
/* 0x800a9480 */ sw	$v0,56($s3)
.L800a9484:
/* 0x800a9484 */ lhu	$v0,0($s4)
.L800a9488:
/* 0x800a9488 */ sll	$zero,$zero,0x0
.L800a948c:
/* 0x800a948c */ beq	$v0,$zero,.L800a952c
.L800a9490:
/* 0x800a9490 */ addu	$a3,$zero,$zero
.L800a9494:
/* 0x800a9494 */ lbu	$t1,0($s3)
.L800a9498:
/* 0x800a9498 */ addu	$a1,$s4,$zero
.L800a949c:
/* 0x800a949c */ addu	$a2,$v1,$zero
.L800a94a0:
/* 0x800a94a0 */ beq	$t1,$t3,.L800a94c0
.L800a94a4:
/* 0x800a94a4 */ sll	$zero,$zero,0x0
.L800a94a8:
/* 0x800a94a8 */ lbu	$v0,146($a2)
.L800a94ac:
/* 0x800a94ac */ sll	$zero,$zero,0x0
.L800a94b0:
/* 0x800a94b0 */ beq	$v0,$t2,.L800a9504
.L800a94b4:
/* 0x800a94b4 */ sll	$zero,$zero,0x0
.L800a94b8:
/* 0x800a94b8 */ beq	$v0,$zero,.L800a9508
.L800a94bc:
/* 0x800a94bc */ ori	$v0,$zero,0x9284
.L800a94c0:
/* 0x800a94c0 */ lhu	$v0,4($a1)
.L800a94c4:
/* 0x800a94c4 */ sll	$zero,$zero,0x0
.L800a94c8:
/* 0x800a94c8 */ beq	$v0,$zero,.L800a9504
.L800a94cc:
/* 0x800a94cc */ addu	$a0,$v0,$zero
.L800a94d0:
/* 0x800a94d0 */ lw	$v0,48($s3)
.L800a94d4:
/* 0x800a94d4 */ sll	$zero,$zero,0x0
.L800a94d8:
/* 0x800a94d8 */ slt	$v0,$v0,$a0
.L800a94dc:
/* 0x800a94dc */ beq	$v0,$zero,.L800a94e8
.L800a94e0:
/* 0x800a94e0 */ sll	$zero,$zero,0x0
.L800a94e4:
/* 0x800a94e4 */ sw	$a0,48($s3)
.L800a94e8:
/* 0x800a94e8 */ lhu	$a0,4($a1)
.L800a94ec:
/* 0x800a94ec */ lw	$v0,56($s3)
.L800a94f0:
/* 0x800a94f0 */ sll	$zero,$zero,0x0
.L800a94f4:
/* 0x800a94f4 */ slt	$v0,$a0,$v0
.L800a94f8:
/* 0x800a94f8 */ beq	$v0,$zero,.L800a9508
.L800a94fc:
/* 0x800a94fc */ ori	$v0,$zero,0x9284
.L800a9500:
/* 0x800a9500 */ sw	$a0,56($s3)
.L800a9504:
/* 0x800a9504 */ ori	$v0,$zero,0x9284
.L800a9508:
/* 0x800a9508 */ addu	$a2,$a2,$v0
.L800a950c:
/* 0x800a950c */ addiu	$a3,$a3,1
.L800a9510:
/* 0x800a9510 */ slti	$v0,$a3,2
.L800a9514:
/* 0x800a9514 */ bne	$v0,$zero,.L800a94a0
.L800a9518:
/* 0x800a9518 */ addiu	$a1,$a1,2
.L800a951c:
/* 0x800a951c */ addiu	$t0,$t0,1
.L800a9520:
/* 0x800a9520 */ slti	$v0,$t0,60
.L800a9524:
/* 0x800a9524 */ bne	$v0,$zero,.L800a9484
.L800a9528:
/* 0x800a9528 */ addiu	$s4,$s4,16
.L800a952c:
/* 0x800a952c */ sll	$v0,$t0,0x4
.L800a9530:
/* 0x800a9530 */ addu	$v0,$v0,$s5
.L800a9534:
/* 0x800a9534 */ sw	$t0,24($s3)
.L800a9538:
/* 0x800a9538 */ lhu	$a2,-16($v0)
.L800a953c:
/* 0x800a953c */ sll	$zero,$zero,0x0
.L800a9540:
/* 0x800a9540 */ andi	$a1,$a2,0xffff
.L800a9544:
/* 0x800a9544 */ srl	$a0,$a1,0x9
.L800a9548:
/* 0x800a9548 */ addiu	$a0,$a0,2000
.L800a954c:
/* 0x800a954c */ srl	$a1,$a1,0x5
.L800a9550:
/* 0x800a9550 */ andi	$a1,$a1,0xf
.L800a9554:
/* 0x800a9554 */ jal	0x800ac764
.L800a9558:
/* 0x800a9558 */ andi	$a2,$a2,0x1f
.L800a955c:
/* 0x800a955c */ lui	$a2,0x51eb
.L800a9560:
/* 0x800a9560 */ lw	$a0,48($s3)
.L800a9564:
/* 0x800a9564 */ ori	$a2,$a2,0x851f
.L800a9568:
/* 0x800a9568 */ addiu	$a0,$a0,50
.L800a956c:
/* 0x800a956c */ mult	$a0,$a2
.L800a9570:
/* 0x800a9570 */ lw	$a1,56($s3)
.L800a9574:
/* 0x800a9574 */ lw	$v1,28($s3)
.L800a9578:
/* 0x800a9578 */ addiu	$a1,$a1,-50
.L800a957c:
/* 0x800a957c */ mfhi	$a3
.L800a9580:
/* 0x800a9580 */ subu	$v1,$v1,$v0
.L800a9584:
/* 0x800a9584 */ sra	$a0,$a0,0x1f
.L800a9588:
/* 0x800a9588 */ mult	$a1,$a2
.L800a958c:
/* 0x800a958c */ sw	$v1,44($s3)
.L800a9590:
/* 0x800a9590 */ sra	$v1,$a3,0x4
.L800a9594:
/* 0x800a9594 */ subu	$v1,$v1,$a0
.L800a9598:
/* 0x800a9598 */ sll	$v0,$v1,0x1
.L800a959c:
/* 0x800a959c */ addu	$v0,$v0,$v1
.L800a95a0:
/* 0x800a95a0 */ sll	$v0,$v0,0x3
.L800a95a4:
/* 0x800a95a4 */ addu	$v0,$v0,$v1
.L800a95a8:
/* 0x800a95a8 */ sll	$v0,$v0,0x1
.L800a95ac:
/* 0x800a95ac */ sra	$a1,$a1,0x1f
.L800a95b0:
/* 0x800a95b0 */ sw	$v0,48($s3)
.L800a95b4:
/* 0x800a95b4 */ lw	$a0,48($s3)
.L800a95b8:
/* 0x800a95b8 */ mfhi	$a2
.L800a95bc:
/* 0x800a95bc */ sra	$v1,$a2,0x4
.L800a95c0:
/* 0x800a95c0 */ subu	$v1,$v1,$a1
.L800a95c4:
/* 0x800a95c4 */ sll	$v0,$v1,0x1
.L800a95c8:
/* 0x800a95c8 */ addu	$v0,$v0,$v1
.L800a95cc:
/* 0x800a95cc */ sll	$v0,$v0,0x3
.L800a95d0:
/* 0x800a95d0 */ addu	$v0,$v0,$v1
.L800a95d4:
/* 0x800a95d4 */ sll	$v0,$v0,0x1
.L800a95d8:
/* 0x800a95d8 */ bltz	$a0,.L800a95f4
.L800a95dc:
/* 0x800a95dc */ sw	$v0,56($s3)
.L800a95e0:
/* 0x800a95e0 */ slti	$v0,$a0,5001
.L800a95e4:
/* 0x800a95e4 */ beq	$v0,$zero,.L800a95f8
.L800a95e8:
/* 0x800a95e8 */ addiu	$v1,$zero,5000
.L800a95ec:
/* 0x800a95ec */ j	.L800a95f8
.L800a95f0:
/* 0x800a95f0 */ addu	$v1,$a0,$zero
.L800a95f4:
/* 0x800a95f4 */ addu	$v1,$zero,$zero
.L800a95f8:
/* 0x800a95f8 */ lw	$a0,56($s3)
.L800a95fc:
/* 0x800a95fc */ sll	$zero,$zero,0x0
.L800a9600:
/* 0x800a9600 */ bltz	$a0,.L800a961c
.L800a9604:
/* 0x800a9604 */ sw	$v1,48($s3)
.L800a9608:
/* 0x800a9608 */ slti	$v0,$a0,5001
.L800a960c:
/* 0x800a960c */ beq	$v0,$zero,.L800a9620
.L800a9610:
/* 0x800a9610 */ addiu	$v1,$zero,5000
.L800a9614:
/* 0x800a9614 */ j	.L800a9620
.L800a9618:
/* 0x800a9618 */ addu	$v1,$a0,$zero
.L800a961c:
/* 0x800a961c */ addu	$v1,$zero,$zero
.L800a9620:
/* 0x800a9620 */ sw	$v1,56($s3)
.L800a9624:
/* 0x800a9624 */ lw	$ra,44($sp)
.L800a9628:
/* 0x800a9628 */ lw	$s6,40($sp)
.L800a962c:
/* 0x800a962c */ lw	$s5,36($sp)
.L800a9630:
/* 0x800a9630 */ lw	$s4,32($sp)
.L800a9634:
/* 0x800a9634 */ lw	$s3,28($sp)
.L800a9638:
/* 0x800a9638 */ lw	$s2,24($sp)
.L800a963c:
/* 0x800a963c */ lw	$s1,20($sp)
.L800a9640:
/* 0x800a9640 */ lw	$s0,16($sp)
.L800a9644:
/* 0x800a9644 */ jr	$ra
.L800a9648:
/* 0x800a9648 */ addiu	$sp,$sp,48
.size FUN_800a9300, .-FUN_800a9300
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a964c
.globl FUN_800a964c
.type FUN_800a964c, @function
FUN_800a964c:
.L800a964c:
/* 0x800a964c */ addiu	$sp,$sp,-72
.L800a9650:
/* 0x800a9650 */ sw	$s0,48($sp)
.L800a9654:
/* 0x800a9654 */ addu	$s0,$a0,$zero
.L800a9658:
/* 0x800a9658 */ lui	$v0,0x8002
.L800a965c:
/* 0x800a965c */ sw	$ra,68($sp)
.L800a9660:
/* 0x800a9660 */ sw	$s4,64($sp)
.L800a9664:
/* 0x800a9664 */ sw	$s3,60($sp)
.L800a9668:
/* 0x800a9668 */ sw	$s2,56($sp)
.L800a966c:
/* 0x800a966c */ sw	$s1,52($sp)
.L800a9670:
/* 0x800a9670 */ addiu	$t1,$v0,1704
.L800a9674:
/* 0x800a9674 */ lw	$a2,0($t1)
.L800a9678:
/* 0x800a9678 */ lw	$a3,4($t1)
.L800a967c:
/* 0x800a967c */ lw	$t0,8($t1)
.L800a9680:
/* 0x800a9680 */ sw	$a2,16($sp)
.L800a9684:
/* 0x800a9684 */ sw	$a3,20($sp)
.L800a9688:
/* 0x800a9688 */ sw	$t0,24($sp)
.L800a968c:
/* 0x800a968c */ lw	$a2,12($t1)
.L800a9690:
/* 0x800a9690 */ sll	$zero,$zero,0x0
.L800a9694:
/* 0x800a9694 */ sw	$a2,28($sp)
.L800a9698:
/* 0x800a9698 */ lui	$v0,0x800e
.L800a969c:
/* 0x800a969c */ lw	$a0,2840($v0)
.L800a96a0:
/* 0x800a96a0 */ lui	$v0,0x8002
.L800a96a4:
/* 0x800a96a4 */ addiu	$t1,$v0,1720
.L800a96a8:
/* 0x800a96a8 */ lw	$a2,0($t1)
.L800a96ac:
/* 0x800a96ac */ lw	$a3,4($t1)
.L800a96b0:
/* 0x800a96b0 */ lw	$t0,8($t1)
.L800a96b4:
/* 0x800a96b4 */ sw	$a2,32($sp)
.L800a96b8:
/* 0x800a96b8 */ sw	$a3,36($sp)
.L800a96bc:
/* 0x800a96bc */ sw	$t0,40($sp)
.L800a96c0:
/* 0x800a96c0 */ lw	$a2,12($t1)
.L800a96c4:
/* 0x800a96c4 */ sll	$zero,$zero,0x0
.L800a96c8:
/* 0x800a96c8 */ sw	$a2,44($sp)
.L800a96cc:
/* 0x800a96cc */ lui	$v0,0x8012
.L800a96d0:
/* 0x800a96d0 */ addiu	$s2,$v0,-30072
.L800a96d4:
/* 0x800a96d4 */ jal	0x800a3618
.L800a96d8:
/* 0x800a96d8 */ addiu	$a0,$a0,4948
.L800a96dc:
/* 0x800a96dc */ beq	$v0,$zero,.L800a99c8
.L800a96e0:
/* 0x800a96e0 */ sll	$zero,$zero,0x0
.L800a96e4:
/* 0x800a96e4 */ lbu	$v0,1($s2)
.L800a96e8:
/* 0x800a96e8 */ sll	$zero,$zero,0x0
.L800a96ec:
/* 0x800a96ec */ bne	$v0,$zero,.L800a97f8
.L800a96f0:
/* 0x800a96f0 */ sll	$zero,$zero,0x0
.L800a96f4:
/* 0x800a96f4 */ beq	$s0,$zero,.L800a97f8
.L800a96f8:
/* 0x800a96f8 */ lui	$s1,0x800b
.L800a96fc:
/* 0x800a96fc */ lw	$v0,-14104($s1)
.L800a9700:
/* 0x800a9700 */ sll	$zero,$zero,0x0
.L800a9704:
/* 0x800a9704 */ lw	$v1,84($v0)
.L800a9708:
/* 0x800a9708 */ lw	$v0,100($v0)
.L800a970c:
/* 0x800a970c */ sll	$zero,$zero,0x0
.L800a9710:
/* 0x800a9710 */ or	$s0,$v1,$v0
.L800a9714:
/* 0x800a9714 */ andi	$v0,$s0,0x1000
.L800a9718:
/* 0x800a9718 */ beq	$v0,$zero,.L800a9744
.L800a971c:
/* 0x800a971c */ andi	$v0,$s0,0x4000
.L800a9720:
/* 0x800a9720 */ jal	0x80026940
.L800a9724:
/* 0x800a9724 */ addiu	$a0,$zero,794
.L800a9728:
/* 0x800a9728 */ addiu	$v0,$zero,2
.L800a972c:
/* 0x800a972c */ sb	$v0,1($s2)
.L800a9730:
/* 0x800a9730 */ addiu	$v0,$zero,1
.L800a9734:
/* 0x800a9734 */ sw	$v0,16($s2)
.L800a9738:
/* 0x800a9738 */ sw	$zero,8($s2)
.L800a973c:
/* 0x800a973c */ sw	$zero,12($s2)
.L800a9740:
/* 0x800a9740 */ andi	$v0,$s0,0x4000
.L800a9744:
/* 0x800a9744 */ beq	$v0,$zero,.L800a976c
.L800a9748:
/* 0x800a9748 */ sll	$zero,$zero,0x0
.L800a974c:
/* 0x800a974c */ jal	0x80026940
.L800a9750:
/* 0x800a9750 */ addiu	$a0,$zero,794
.L800a9754:
/* 0x800a9754 */ addiu	$v0,$zero,2
.L800a9758:
/* 0x800a9758 */ sb	$v0,1($s2)
.L800a975c:
/* 0x800a975c */ addiu	$v0,$zero,-1
.L800a9760:
/* 0x800a9760 */ sw	$v0,16($s2)
.L800a9764:
/* 0x800a9764 */ sw	$zero,8($s2)
.L800a9768:
/* 0x800a9768 */ sw	$zero,12($s2)
.L800a976c:
/* 0x800a976c */ lw	$v0,-14104($s1)
.L800a9770:
/* 0x800a9770 */ sll	$zero,$zero,0x0
.L800a9774:
/* 0x800a9774 */ lw	$v1,80($v0)
.L800a9778:
/* 0x800a9778 */ lw	$v0,96($v0)
.L800a977c:
/* 0x800a977c */ sll	$zero,$zero,0x0
.L800a9780:
/* 0x800a9780 */ or	$s0,$v1,$v0
.L800a9784:
/* 0x800a9784 */ andi	$v0,$s0,0x2000
.L800a9788:
/* 0x800a9788 */ beq	$v0,$zero,.L800a97b8
.L800a978c:
/* 0x800a978c */ andi	$v0,$s0,0x8000
.L800a9790:
/* 0x800a9790 */ lw	$v0,20($s2)
.L800a9794:
/* 0x800a9794 */ sll	$zero,$zero,0x0
.L800a9798:
/* 0x800a9798 */ bltz	$v0,.L800a97b4
.L800a979c:
/* 0x800a979c */ addiu	$v0,$zero,1
.L800a97a0:
/* 0x800a97a0 */ sb	$v0,1($s2)
.L800a97a4:
/* 0x800a97a4 */ addiu	$v0,$zero,-1
.L800a97a8:
/* 0x800a97a8 */ sw	$v0,16($s2)
.L800a97ac:
/* 0x800a97ac */ sw	$zero,8($s2)
.L800a97b0:
/* 0x800a97b0 */ sw	$zero,12($s2)
.L800a97b4:
/* 0x800a97b4 */ andi	$v0,$s0,0x8000
.L800a97b8:
/* 0x800a97b8 */ beq	$v0,$zero,.L800a97f8
.L800a97bc:
/* 0x800a97bc */ sll	$zero,$zero,0x0
.L800a97c0:
/* 0x800a97c0 */ lw	$v0,44($s2)
.L800a97c4:
/* 0x800a97c4 */ lw	$v1,40($s2)
.L800a97c8:
/* 0x800a97c8 */ sll	$zero,$zero,0x0
.L800a97cc:
/* 0x800a97cc */ subu	$v0,$v0,$v1
.L800a97d0:
/* 0x800a97d0 */ lw	$v1,20($s2)
.L800a97d4:
/* 0x800a97d4 */ addiu	$v0,$v0,1
.L800a97d8:
/* 0x800a97d8 */ slt	$v0,$v0,$v1
.L800a97dc:
/* 0x800a97dc */ bne	$v0,$zero,.L800a97f8
.L800a97e0:
/* 0x800a97e0 */ addiu	$v0,$zero,1
.L800a97e4:
/* 0x800a97e4 */ sb	$v0,1($s2)
.L800a97e8:
/* 0x800a97e8 */ addiu	$v0,$zero,1
.L800a97ec:
/* 0x800a97ec */ sw	$v0,16($s2)
.L800a97f0:
/* 0x800a97f0 */ sw	$zero,8($s2)
.L800a97f4:
/* 0x800a97f4 */ sw	$zero,12($s2)
.L800a97f8:
/* 0x800a97f8 */ lw	$v0,8($s2)
.L800a97fc:
/* 0x800a97fc */ lbu	$v1,1($s2)
.L800a9800:
/* 0x800a9800 */ addiu	$v0,$v0,1
.L800a9804:
/* 0x800a9804 */ beq	$v1,$zero,.L800a98a4
.L800a9808:
/* 0x800a9808 */ sw	$v0,8($s2)
.L800a980c:
/* 0x800a980c */ addiu	$v0,$zero,2
.L800a9810:
/* 0x800a9810 */ beq	$v1,$v0,.L800a982c
.L800a9814:
/* 0x800a9814 */ addiu	$a0,$zero,8
.L800a9818:
/* 0x800a9818 */ lb	$v0,4($s2)
.L800a981c:
/* 0x800a981c */ sll	$zero,$zero,0x0
.L800a9820:
/* 0x800a9820 */ sll	$v0,$v0,0x2
.L800a9824:
/* 0x800a9824 */ addu	$v0,$sp,$v0
.L800a9828:
/* 0x800a9828 */ lw	$a0,32($v0)
.L800a982c:
/* 0x800a982c */ lw	$v0,8($s2)
.L800a9830:
/* 0x800a9830 */ sll	$zero,$zero,0x0
.L800a9834:
/* 0x800a9834 */ sll	$v0,$v0,0x8
.L800a9838:
/* 0x800a9838 */ div	$zero,$v0,$a0
.L800a983c:
/* 0x800a983c */ mflo	$v0
.L800a9840:
/* 0x800a9840 */ lw	$v1,8($s2)
.L800a9844:
/* 0x800a9844 */ sll	$zero,$zero,0x0
.L800a9848:
/* 0x800a9848 */ slt	$v1,$v1,$a0
.L800a984c:
/* 0x800a984c */ bne	$v1,$zero,.L800a98a4
.L800a9850:
/* 0x800a9850 */ sw	$v0,12($s2)
.L800a9854:
/* 0x800a9854 */ lbu	$v1,1($s2)
.L800a9858:
/* 0x800a9858 */ addiu	$v0,$zero,2
.L800a985c:
/* 0x800a985c */ bne	$v1,$v0,.L800a9880
.L800a9860:
/* 0x800a9860 */ sll	$zero,$zero,0x0
.L800a9864:
/* 0x800a9864 */ lbu	$v0,4($s2)
.L800a9868:
/* 0x800a9868 */ lbu	$v1,16($s2)
.L800a986c:
/* 0x800a986c */ sll	$zero,$zero,0x0
.L800a9870:
/* 0x800a9870 */ addu	$v0,$v0,$v1
.L800a9874:
/* 0x800a9874 */ andi	$v0,$v0,0x3
.L800a9878:
/* 0x800a9878 */ j	.L800a9894
.L800a987c:
/* 0x800a987c */ sb	$v0,4($s2)
.L800a9880:
/* 0x800a9880 */ lw	$v0,20($s2)
.L800a9884:
/* 0x800a9884 */ lw	$v1,16($s2)
.L800a9888:
/* 0x800a9888 */ sll	$zero,$zero,0x0
.L800a988c:
/* 0x800a988c */ addu	$v0,$v0,$v1
.L800a9890:
/* 0x800a9890 */ sw	$v0,20($s2)
.L800a9894:
/* 0x800a9894 */ sb	$zero,1($s2)
.L800a9898:
/* 0x800a9898 */ sw	$zero,16($s2)
.L800a989c:
/* 0x800a989c */ sw	$zero,8($s2)
.L800a98a0:
/* 0x800a98a0 */ sw	$zero,12($s2)
.L800a98a4:
/* 0x800a98a4 */ addu	$s1,$zero,$zero
.L800a98a8:
/* 0x800a98a8 */ lui	$s4,0x800b
.L800a98ac:
/* 0x800a98ac */ lui	$v0,0x800f
.L800a98b0:
/* 0x800a98b0 */ addiu	$s3,$v0,10504
.L800a98b4:
/* 0x800a98b4 */ lbu	$v0,0($s2)
.L800a98b8:
/* 0x800a98b8 */ sll	$zero,$zero,0x0
.L800a98bc:
/* 0x800a98bc */ bne	$v0,$zero,.L800a98dc
.L800a98c0:
/* 0x800a98c0 */ addiu	$v0,$zero,7
.L800a98c4:
/* 0x800a98c4 */ lbu	$v1,146($s3)
.L800a98c8:
/* 0x800a98c8 */ sll	$zero,$zero,0x0
.L800a98cc:
/* 0x800a98cc */ beq	$v1,$v0,.L800a9938
.L800a98d0:
/* 0x800a98d0 */ ori	$v0,$zero,0x9284
.L800a98d4:
/* 0x800a98d4 */ beq	$v1,$zero,.L800a9938
.L800a98d8:
/* 0x800a98d8 */ sll	$zero,$zero,0x0
.L800a98dc:
/* 0x800a98dc */ bne	$s1,$zero,.L800a98f8
.L800a98e0:
/* 0x800a98e0 */ sll	$zero,$zero,0x0
.L800a98e4:
/* 0x800a98e4 */ lw	$v0,-14104($s4)
.L800a98e8:
/* 0x800a98e8 */ sll	$zero,$zero,0x0
.L800a98ec:
/* 0x800a98ec */ lw	$s0,84($v0)
.L800a98f0:
/* 0x800a98f0 */ j	.L800a990c
.L800a98f4:
/* 0x800a98f4 */ andi	$v0,$s0,0x800
.L800a98f8:
/* 0x800a98f8 */ lw	$v0,-14104($s4)
.L800a98fc:
/* 0x800a98fc */ sll	$zero,$zero,0x0
.L800a9900:
/* 0x800a9900 */ lw	$s0,100($v0)
.L800a9904:
/* 0x800a9904 */ sll	$zero,$zero,0x0
.L800a9908:
/* 0x800a9908 */ andi	$v0,$s0,0x800
.L800a990c:
/* 0x800a990c */ beq	$v0,$zero,.L800a9938
.L800a9910:
/* 0x800a9910 */ ori	$v0,$zero,0x9284
.L800a9914:
/* 0x800a9914 */ jal	0x80026940
.L800a9918:
/* 0x800a9918 */ addiu	$a0,$zero,794
.L800a991c:
/* 0x800a991c */ addu	$v1,$s2,$s1
.L800a9920:
/* 0x800a9920 */ lbu	$v0,2($v1)
.L800a9924:
/* 0x800a9924 */ sll	$zero,$zero,0x0
.L800a9928:
/* 0x800a9928 */ xori	$v0,$v0,0x1
.L800a992c:
/* 0x800a992c */ sltu	$v0,$zero,$v0
.L800a9930:
/* 0x800a9930 */ sb	$v0,2($v1)
.L800a9934:
/* 0x800a9934 */ ori	$v0,$zero,0x9284
.L800a9938:
/* 0x800a9938 */ addu	$s3,$s3,$v0
.L800a993c:
/* 0x800a993c */ addiu	$s1,$s1,1
.L800a9940:
/* 0x800a9940 */ slti	$v0,$s1,2
.L800a9944:
/* 0x800a9944 */ bne	$v0,$zero,.L800a98b4
.L800a9948:
/* 0x800a9948 */ addiu	$v0,$zero,2
.L800a994c:
/* 0x800a994c */ lbu	$v1,1($s2)
.L800a9950:
/* 0x800a9950 */ sll	$zero,$zero,0x0
.L800a9954:
/* 0x800a9954 */ bne	$v1,$v0,.L800a99ac
.L800a9958:
/* 0x800a9958 */ addiu	$v1,$sp,16
.L800a995c:
/* 0x800a995c */ lb	$v0,4($s2)
.L800a9960:
/* 0x800a9960 */ lw	$a1,16($s2)
.L800a9964:
/* 0x800a9964 */ sll	$a0,$v0,0x2
.L800a9968:
/* 0x800a9968 */ addu	$a0,$v1,$a0
.L800a996c:
/* 0x800a996c */ addu	$v0,$v0,$a1
.L800a9970:
/* 0x800a9970 */ andi	$v0,$v0,0x3
.L800a9974:
/* 0x800a9974 */ sll	$v0,$v0,0x2
.L800a9978:
/* 0x800a9978 */ addu	$v1,$v1,$v0
.L800a997c:
/* 0x800a997c */ lw	$a0,0($a0)
.L800a9980:
/* 0x800a9980 */ lw	$v0,0($v1)
.L800a9984:
/* 0x800a9984 */ lw	$v1,12($s2)
.L800a9988:
/* 0x800a9988 */ subu	$v0,$v0,$a0
.L800a998c:
/* 0x800a998c */ mult	$v0,$v1
.L800a9990:
/* 0x800a9990 */ mflo	$v0
.L800a9994:
/* 0x800a9994 */ bgez	$v0,.L800a99a0
.L800a9998:
/* 0x800a9998 */ sll	$zero,$zero,0x0
.L800a999c:
/* 0x800a999c */ addiu	$v0,$v0,255
.L800a99a0:
/* 0x800a99a0 */ sra	$v0,$v0,0x8
.L800a99a4:
/* 0x800a99a4 */ j	.L800a99c0
.L800a99a8:
/* 0x800a99a8 */ addu	$v0,$a0,$v0
.L800a99ac:
/* 0x800a99ac */ lb	$v0,4($s2)
.L800a99b0:
/* 0x800a99b0 */ sll	$zero,$zero,0x0
.L800a99b4:
/* 0x800a99b4 */ sll	$v0,$v0,0x2
.L800a99b8:
/* 0x800a99b8 */ addu	$v0,$sp,$v0
.L800a99bc:
/* 0x800a99bc */ lw	$v0,16($v0)
.L800a99c0:
/* 0x800a99c0 */ sll	$zero,$zero,0x0
.L800a99c4:
/* 0x800a99c4 */ sw	$v0,40($s2)
.L800a99c8:
/* 0x800a99c8 */ lw	$ra,68($sp)
.L800a99cc:
/* 0x800a99cc */ lw	$s4,64($sp)
.L800a99d0:
/* 0x800a99d0 */ lw	$s3,60($sp)
.L800a99d4:
/* 0x800a99d4 */ lw	$s2,56($sp)
.L800a99d8:
/* 0x800a99d8 */ lw	$s1,52($sp)
.L800a99dc:
/* 0x800a99dc */ lw	$s0,48($sp)
.L800a99e0:
/* 0x800a99e0 */ jr	$ra
.L800a99e4:
/* 0x800a99e4 */ addiu	$sp,$sp,72
.size FUN_800a964c, .-FUN_800a964c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a99e8
.globl FUN_800a99e8
.type FUN_800a99e8, @function
FUN_800a99e8:
.L800a99e8:
/* 0x800a99e8 */ lui	$v0,0x800e
.L800a99ec:
/* 0x800a99ec */ lw	$v0,2840($v0)
.L800a99f0:
/* 0x800a99f0 */ addiu	$sp,$sp,-352
.L800a99f4:
/* 0x800a99f4 */ sw	$s2,320($sp)
.L800a99f8:
/* 0x800a99f8 */ addu	$s2,$zero,$zero
.L800a99fc:
/* 0x800a99fc */ sw	$ra,348($sp)
.L800a9a00:
/* 0x800a9a00 */ sw	$s8,344($sp)
.L800a9a04:
/* 0x800a9a04 */ sw	$s7,340($sp)
.L800a9a08:
/* 0x800a9a08 */ sw	$s6,336($sp)
.L800a9a0c:
/* 0x800a9a0c */ sw	$s5,332($sp)
.L800a9a10:
/* 0x800a9a10 */ sw	$s4,328($sp)
.L800a9a14:
/* 0x800a9a14 */ sw	$s3,324($sp)
.L800a9a18:
/* 0x800a9a18 */ sw	$s1,316($sp)
.L800a9a1c:
/* 0x800a9a1c */ sw	$s0,312($sp)
.L800a9a20:
/* 0x800a9a20 */ sw	$a0,352($sp)
.L800a9a24:
/* 0x800a9a24 */ addiu	$s0,$v0,4948
.L800a9a28:
/* 0x800a9a28 */ lui	$v0,0x8012
.L800a9a2c:
/* 0x800a9a2c */ addiu	$s7,$v0,-30072
.L800a9a30:
/* 0x800a9a30 */ lw	$v0,24($s7)
.L800a9a34:
/* 0x800a9a34 */ addu	$s1,$s2,$zero
.L800a9a38:
/* 0x800a9a38 */ blez	$v0,.L800a9a80
.L800a9a3c:
/* 0x800a9a3c */ sw	$s0,280($sp)
.L800a9a40:
/* 0x800a9a40 */ sll	$a0,$a0,0x1
.L800a9a44:
/* 0x800a9a44 */ addiu	$v1,$sp,24
.L800a9a48:
/* 0x800a9a48 */ addu	$v0,$s0,$a0
.L800a9a4c:
/* 0x800a9a4c */ lhu	$v0,4($v0)
.L800a9a50:
/* 0x800a9a50 */ sll	$zero,$zero,0x0
.L800a9a54:
/* 0x800a9a54 */ beq	$v0,$zero,.L800a9a68
.L800a9a58:
/* 0x800a9a58 */ sll	$zero,$zero,0x0
.L800a9a5c:
/* 0x800a9a5c */ sw	$s1,0($v1)
.L800a9a60:
/* 0x800a9a60 */ addiu	$v1,$v1,4
.L800a9a64:
/* 0x800a9a64 */ addiu	$s2,$s2,1
.L800a9a68:
/* 0x800a9a68 */ addiu	$s1,$s1,1
.L800a9a6c:
/* 0x800a9a6c */ lw	$v0,24($s7)
.L800a9a70:
/* 0x800a9a70 */ sll	$zero,$zero,0x0
.L800a9a74:
/* 0x800a9a74 */ slt	$v0,$s1,$v0
.L800a9a78:
/* 0x800a9a78 */ bne	$v0,$zero,.L800a9a48
.L800a9a7c:
/* 0x800a9a7c */ addiu	$s0,$s0,16
.L800a9a80:
/* 0x800a9a80 */ addiu	$t0,$zero,-1
.L800a9a84:
/* 0x800a9a84 */ addu	$t1,$t0,$zero
.L800a9a88:
/* 0x800a9a88 */ addu	$s3,$t0,$zero
.L800a9a8c:
/* 0x800a9a8c */ addu	$t2,$t0,$zero
.L800a9a90:
/* 0x800a9a90 */ addu	$s1,$zero,$zero
.L800a9a94:
/* 0x800a9a94 */ sw	$t0,292($sp)
.L800a9a98:
/* 0x800a9a98 */ sw	$t1,288($sp)
.L800a9a9c:
/* 0x800a9a9c */ blez	$s2,.L800a9b64
.L800a9aa0:
/* 0x800a9aa0 */ sw	$t2,284($sp)
.L800a9aa4:
/* 0x800a9aa4 */ sll	$v0,$s1,0x2
.L800a9aa8:
/* 0x800a9aa8 */ addu	$v0,$sp,$v0
.L800a9aac:
/* 0x800a9aac */ lw	$v0,24($v0)
.L800a9ab0:
/* 0x800a9ab0 */ lw	$t3,280($sp)
.L800a9ab4:
/* 0x800a9ab4 */ sll	$v0,$v0,0x4
.L800a9ab8:
/* 0x800a9ab8 */ addu	$s0,$t3,$v0
.L800a9abc:
/* 0x800a9abc */ lhu	$a2,0($s0)
.L800a9ac0:
/* 0x800a9ac0 */ sll	$zero,$zero,0x0
.L800a9ac4:
/* 0x800a9ac4 */ andi	$a1,$a2,0xffff
.L800a9ac8:
/* 0x800a9ac8 */ srl	$a0,$a1,0x9
.L800a9acc:
/* 0x800a9acc */ addiu	$a0,$a0,2000
.L800a9ad0:
/* 0x800a9ad0 */ srl	$a1,$a1,0x5
.L800a9ad4:
/* 0x800a9ad4 */ andi	$a1,$a1,0xf
.L800a9ad8:
/* 0x800a9ad8 */ jal	0x800ac764
.L800a9adc:
/* 0x800a9adc */ andi	$a2,$a2,0x1f
.L800a9ae0:
/* 0x800a9ae0 */ lw	$v1,28($s7)
.L800a9ae4:
/* 0x800a9ae4 */ lw	$a0,20($s7)
.L800a9ae8:
/* 0x800a9ae8 */ subu	$v1,$v1,$v0
.L800a9aec:
/* 0x800a9aec */ addiu	$v0,$a0,-1
.L800a9af0:
/* 0x800a9af0 */ slt	$v0,$v1,$v0
.L800a9af4:
/* 0x800a9af4 */ beq	$v0,$zero,.L800a9b04
.L800a9af8:
/* 0x800a9af8 */ sll	$zero,$zero,0x0
.L800a9afc:
/* 0x800a9afc */ j	.L800a9b54
.L800a9b00:
/* 0x800a9b00 */ sw	$s1,288($sp)
.L800a9b04:
/* 0x800a9b04 */ lw	$v0,40($s7)
.L800a9b08:
/* 0x800a9b08 */ sll	$zero,$zero,0x0
.L800a9b0c:
/* 0x800a9b0c */ addu	$v0,$a0,$v0
.L800a9b10:
/* 0x800a9b10 */ slt	$v0,$v0,$v1
.L800a9b14:
/* 0x800a9b14 */ beq	$v0,$zero,.L800a9b34
.L800a9b18:
/* 0x800a9b18 */ sll	$zero,$zero,0x0
.L800a9b1c:
/* 0x800a9b1c */ lw	$t0,292($sp)
.L800a9b20:
/* 0x800a9b20 */ sll	$zero,$zero,0x0
.L800a9b24:
/* 0x800a9b24 */ bgez	$t0,.L800a9b54
.L800a9b28:
/* 0x800a9b28 */ sll	$zero,$zero,0x0
.L800a9b2c:
/* 0x800a9b2c */ j	.L800a9b54
.L800a9b30:
/* 0x800a9b30 */ sw	$s1,292($sp)
.L800a9b34:
/* 0x800a9b34 */ lw	$t1,284($sp)
.L800a9b38:
/* 0x800a9b38 */ sll	$zero,$zero,0x0
.L800a9b3c:
/* 0x800a9b3c */ bgez	$t1,.L800a9b48
.L800a9b40:
/* 0x800a9b40 */ slt	$v0,$s3,$s1
.L800a9b44:
/* 0x800a9b44 */ sw	$s1,284($sp)
.L800a9b48:
/* 0x800a9b48 */ beq	$v0,$zero,.L800a9b54
.L800a9b4c:
/* 0x800a9b4c */ sll	$zero,$zero,0x0
.L800a9b50:
/* 0x800a9b50 */ addu	$s3,$s1,$zero
.L800a9b54:
/* 0x800a9b54 */ addiu	$s1,$s1,1
.L800a9b58:
/* 0x800a9b58 */ slt	$v0,$s1,$s2
.L800a9b5c:
/* 0x800a9b5c */ bne	$v0,$zero,.L800a9aa8
.L800a9b60:
/* 0x800a9b60 */ sll	$v0,$s1,0x2
.L800a9b64:
/* 0x800a9b64 */ lw	$t2,288($sp)
.L800a9b68:
/* 0x800a9b68 */ sll	$zero,$zero,0x0
.L800a9b6c:
/* 0x800a9b6c */ bltz	$t2,.L800a9b84
.L800a9b70:
/* 0x800a9b70 */ sw	$zero,296($sp)
.L800a9b74:
/* 0x800a9b74 */ lw	$v1,24($s7)
.L800a9b78:
/* 0x800a9b78 */ addiu	$v0,$t2,1
.L800a9b7c:
/* 0x800a9b7c */ slt	$v0,$v0,$v1
.L800a9b80:
/* 0x800a9b80 */ sw	$v0,296($sp)
.L800a9b84:
/* 0x800a9b84 */ lw	$t3,284($sp)
.L800a9b88:
/* 0x800a9b88 */ lw	$s6,296($sp)
.L800a9b8c:
/* 0x800a9b8c */ bltz	$t3,.L800a9ba4
.L800a9b90:
/* 0x800a9b90 */ slt	$v0,$s3,$t3
.L800a9b94:
/* 0x800a9b94 */ bne	$v0,$zero,.L800a9ba4
.L800a9b98:
/* 0x800a9b98 */ subu	$v0,$s3,$t3
.L800a9b9c:
/* 0x800a9b9c */ j	.L800a9ba8
.L800a9ba0:
/* 0x800a9ba0 */ addiu	$v0,$v0,1
.L800a9ba4:
/* 0x800a9ba4 */ addu	$v0,$zero,$zero
.L800a9ba8:
/* 0x800a9ba8 */ addu	$s6,$s6,$v0
.L800a9bac:
/* 0x800a9bac */ lw	$t0,292($sp)
.L800a9bb0:
/* 0x800a9bb0 */ addu	$s1,$zero,$zero
.L800a9bb4:
/* 0x800a9bb4 */ slt	$t0,$zero,$t0
.L800a9bb8:
/* 0x800a9bb8 */ addu	$s6,$s6,$t0
.L800a9bbc:
/* 0x800a9bbc */ blez	$s6,.L800a9e88
.L800a9bc0:
/* 0x800a9bc0 */ sw	$t0,300($sp)
.L800a9bc4:
/* 0x800a9bc4 */ lw	$t1,288($sp)
.L800a9bc8:
/* 0x800a9bc8 */ sll	$zero,$zero,0x0
.L800a9bcc:
/* 0x800a9bcc */ sll	$v0,$t1,0x2
.L800a9bd0:
/* 0x800a9bd0 */ addiu	$s8,$sp,24
.L800a9bd4:
/* 0x800a9bd4 */ lw	$t2,352($sp)
.L800a9bd8:
/* 0x800a9bd8 */ lw	$t3,292($sp)
.L800a9bdc:
/* 0x800a9bdc */ addu	$v0,$s8,$v0
.L800a9be0:
/* 0x800a9be0 */ sw	$v0,304($sp)
.L800a9be4:
/* 0x800a9be4 */ sll	$s5,$t2,0x1
.L800a9be8:
/* 0x800a9be8 */ sll	$v0,$t3,0x2
.L800a9bec:
/* 0x800a9bec */ addu	$v0,$s8,$v0
.L800a9bf0:
/* 0x800a9bf0 */ sw	$v0,308($sp)
.L800a9bf4:
/* 0x800a9bf4 */ bne	$s1,$zero,.L800a9cb0
.L800a9bf8:
/* 0x800a9bf8 */ addiu	$v0,$s6,-1
.L800a9bfc:
/* 0x800a9bfc */ lw	$t0,296($sp)
.L800a9c00:
/* 0x800a9c00 */ sll	$zero,$zero,0x0
.L800a9c04:
/* 0x800a9c04 */ beq	$t0,$zero,.L800a9cac
.L800a9c08:
/* 0x800a9c08 */ addiu	$v0,$zero,-2
.L800a9c0c:
/* 0x800a9c0c */ lw	$t1,288($sp)
.L800a9c10:
/* 0x800a9c10 */ lw	$t2,280($sp)
.L800a9c14:
/* 0x800a9c14 */ sw	$v0,264($sp)
.L800a9c18:
/* 0x800a9c18 */ lw	$v1,20($s7)
.L800a9c1c:
/* 0x800a9c1c */ lw	$s0,28($s7)
.L800a9c20:
/* 0x800a9c20 */ lw	$t3,304($sp)
.L800a9c24:
/* 0x800a9c24 */ addiu	$v0,$t1,1
.L800a9c28:
/* 0x800a9c28 */ sll	$v0,$v0,0x2
.L800a9c2c:
/* 0x800a9c2c */ addu	$v0,$s8,$v0
.L800a9c30:
/* 0x800a9c30 */ addiu	$v1,$v1,-2
.L800a9c34:
/* 0x800a9c34 */ lw	$v0,0($v0)
.L800a9c38:
/* 0x800a9c38 */ subu	$s0,$s0,$v1
.L800a9c3c:
/* 0x800a9c3c */ sll	$v0,$v0,0x4
.L800a9c40:
/* 0x800a9c40 */ addu	$s4,$v0,$t2
.L800a9c44:
/* 0x800a9c44 */ lhu	$a2,0($s4)
.L800a9c48:
/* 0x800a9c48 */ lw	$v0,0($t3)
.L800a9c4c:
/* 0x800a9c4c */ andi	$a1,$a2,0xffff
.L800a9c50:
/* 0x800a9c50 */ srl	$a0,$a1,0x9
.L800a9c54:
/* 0x800a9c54 */ addiu	$a0,$a0,2000
.L800a9c58:
/* 0x800a9c58 */ srl	$a1,$a1,0x5
.L800a9c5c:
/* 0x800a9c5c */ andi	$a1,$a1,0xf
.L800a9c60:
/* 0x800a9c60 */ andi	$a2,$a2,0x1f
.L800a9c64:
/* 0x800a9c64 */ sll	$v0,$v0,0x4
.L800a9c68:
/* 0x800a9c68 */ jal	0x800ac764
.L800a9c6c:
/* 0x800a9c6c */ addu	$s3,$v0,$t2
.L800a9c70:
/* 0x800a9c70 */ lhu	$a2,0($s3)
.L800a9c74:
/* 0x800a9c74 */ subu	$s2,$s0,$v0
.L800a9c78:
/* 0x800a9c78 */ andi	$a1,$a2,0xffff
.L800a9c7c:
/* 0x800a9c7c */ srl	$a0,$a1,0x9
.L800a9c80:
/* 0x800a9c80 */ addiu	$a0,$a0,2000
.L800a9c84:
/* 0x800a9c84 */ srl	$a1,$a1,0x5
.L800a9c88:
/* 0x800a9c88 */ andi	$a1,$a1,0xf
.L800a9c8c:
/* 0x800a9c8c */ jal	0x800ac764
.L800a9c90:
/* 0x800a9c90 */ andi	$a2,$a2,0x1f
.L800a9c94:
/* 0x800a9c94 */ subu	$a0,$v0,$s0
.L800a9c98:
/* 0x800a9c98 */ addu	$v1,$s2,$a0
.L800a9c9c:
/* 0x800a9c9c */ beq	$v1,$zero,.L800a9d68
.L800a9ca0:
/* 0x800a9ca0 */ addu	$v0,$s4,$s5
.L800a9ca4:
/* 0x800a9ca4 */ j	.L800a9d70
.L800a9ca8:
/* 0x800a9ca8 */ sll	$zero,$zero,0x0
.L800a9cac:
/* 0x800a9cac */ addiu	$v0,$s6,-1
.L800a9cb0:
/* 0x800a9cb0 */ bne	$s1,$v0,.L800a9dac
.L800a9cb4:
/* 0x800a9cb4 */ sll	$zero,$zero,0x0
.L800a9cb8:
/* 0x800a9cb8 */ lw	$t0,300($sp)
.L800a9cbc:
/* 0x800a9cbc */ sll	$zero,$zero,0x0
.L800a9cc0:
/* 0x800a9cc0 */ beq	$t0,$zero,.L800a9dac
.L800a9cc4:
/* 0x800a9cc4 */ sll	$zero,$zero,0x0
.L800a9cc8:
/* 0x800a9cc8 */ lw	$a3,40($s7)
.L800a9ccc:
/* 0x800a9ccc */ lw	$t1,308($sp)
.L800a9cd0:
/* 0x800a9cd0 */ lw	$t2,280($sp)
.L800a9cd4:
/* 0x800a9cd4 */ lw	$t3,292($sp)
.L800a9cd8:
/* 0x800a9cd8 */ addiu	$a3,$a3,1
.L800a9cdc:
/* 0x800a9cdc */ sw	$a3,264($sp)
.L800a9ce0:
/* 0x800a9ce0 */ lw	$v0,0($t1)
.L800a9ce4:
/* 0x800a9ce4 */ lw	$v1,20($s7)
.L800a9ce8:
/* 0x800a9ce8 */ lw	$s0,28($s7)
.L800a9cec:
/* 0x800a9cec */ sll	$v0,$v0,0x4
.L800a9cf0:
/* 0x800a9cf0 */ addu	$s4,$v0,$t2
.L800a9cf4:
/* 0x800a9cf4 */ addu	$v1,$v1,$a3
.L800a9cf8:
/* 0x800a9cf8 */ addiu	$v0,$t3,-1
.L800a9cfc:
/* 0x800a9cfc */ sll	$v0,$v0,0x2
.L800a9d00:
/* 0x800a9d00 */ addu	$v0,$s8,$v0
.L800a9d04:
/* 0x800a9d04 */ subu	$s0,$s0,$v1
.L800a9d08:
/* 0x800a9d08 */ lhu	$a2,0($s4)
.L800a9d0c:
/* 0x800a9d0c */ lw	$v0,0($v0)
.L800a9d10:
/* 0x800a9d10 */ andi	$a1,$a2,0xffff
.L800a9d14:
/* 0x800a9d14 */ srl	$a0,$a1,0x9
.L800a9d18:
/* 0x800a9d18 */ addiu	$a0,$a0,2000
.L800a9d1c:
/* 0x800a9d1c */ srl	$a1,$a1,0x5
.L800a9d20:
/* 0x800a9d20 */ andi	$a1,$a1,0xf
.L800a9d24:
/* 0x800a9d24 */ andi	$a2,$a2,0x1f
.L800a9d28:
/* 0x800a9d28 */ sll	$v0,$v0,0x4
.L800a9d2c:
/* 0x800a9d2c */ jal	0x800ac764
.L800a9d30:
/* 0x800a9d30 */ addu	$s3,$v0,$t2
.L800a9d34:
/* 0x800a9d34 */ lhu	$a2,0($s3)
.L800a9d38:
/* 0x800a9d38 */ subu	$s2,$s0,$v0
.L800a9d3c:
/* 0x800a9d3c */ andi	$a1,$a2,0xffff
.L800a9d40:
/* 0x800a9d40 */ srl	$a0,$a1,0x9
.L800a9d44:
/* 0x800a9d44 */ addiu	$a0,$a0,2000
.L800a9d48:
/* 0x800a9d48 */ srl	$a1,$a1,0x5
.L800a9d4c:
/* 0x800a9d4c */ andi	$a1,$a1,0xf
.L800a9d50:
/* 0x800a9d50 */ jal	0x800ac764
.L800a9d54:
/* 0x800a9d54 */ andi	$a2,$a2,0x1f
.L800a9d58:
/* 0x800a9d58 */ subu	$a0,$v0,$s0
.L800a9d5c:
/* 0x800a9d5c */ addu	$v1,$s2,$a0
.L800a9d60:
/* 0x800a9d60 */ bne	$v1,$zero,.L800a9d70
.L800a9d64:
/* 0x800a9d64 */ addu	$v0,$s4,$s5
.L800a9d68:
/* 0x800a9d68 */ j	.L800a9da4
.L800a9d6c:
/* 0x800a9d6c */ addu	$v1,$zero,$zero
.L800a9d70:
/* 0x800a9d70 */ lhu	$v0,4($v0)
.L800a9d74:
/* 0x800a9d74 */ sll	$zero,$zero,0x0
.L800a9d78:
/* 0x800a9d78 */ mult	$a0,$v0
.L800a9d7c:
/* 0x800a9d7c */ addu	$v0,$s3,$s5
.L800a9d80:
/* 0x800a9d80 */ mflo	$a0
.L800a9d84:
/* 0x800a9d84 */ lhu	$v0,4($v0)
.L800a9d88:
/* 0x800a9d88 */ sll	$zero,$zero,0x0
.L800a9d8c:
/* 0x800a9d8c */ mult	$s2,$v0
.L800a9d90:
/* 0x800a9d90 */ mflo	$t4
.L800a9d94:
/* 0x800a9d94 */ addu	$v0,$a0,$t4
.L800a9d98:
/* 0x800a9d98 */ sll	$zero,$zero,0x0
.L800a9d9c:
/* 0x800a9d9c */ div	$zero,$v0,$v1
.L800a9da0:
/* 0x800a9da0 */ mflo	$v1
.L800a9da4:
/* 0x800a9da4 */ j	.L800a9e1c
.L800a9da8:
/* 0x800a9da8 */ sw	$v1,268($sp)
.L800a9dac:
/* 0x800a9dac */ lw	$t0,284($sp)
.L800a9db0:
/* 0x800a9db0 */ lw	$t1,296($sp)
.L800a9db4:
/* 0x800a9db4 */ addu	$v0,$t0,$s1
.L800a9db8:
/* 0x800a9db8 */ subu	$v0,$v0,$t1
.L800a9dbc:
/* 0x800a9dbc */ sll	$v0,$v0,0x2
.L800a9dc0:
/* 0x800a9dc0 */ addu	$v0,$s8,$v0
.L800a9dc4:
/* 0x800a9dc4 */ lw	$v0,0($v0)
.L800a9dc8:
/* 0x800a9dc8 */ lw	$t2,280($sp)
.L800a9dcc:
/* 0x800a9dcc */ sll	$v0,$v0,0x4
.L800a9dd0:
/* 0x800a9dd0 */ addu	$s0,$t2,$v0
.L800a9dd4:
/* 0x800a9dd4 */ lhu	$a2,0($s0)
.L800a9dd8:
/* 0x800a9dd8 */ sll	$zero,$zero,0x0
.L800a9ddc:
/* 0x800a9ddc */ andi	$a1,$a2,0xffff
.L800a9de0:
/* 0x800a9de0 */ srl	$a0,$a1,0x9
.L800a9de4:
/* 0x800a9de4 */ addiu	$a0,$a0,2000
.L800a9de8:
/* 0x800a9de8 */ srl	$a1,$a1,0x5
.L800a9dec:
/* 0x800a9dec */ andi	$a1,$a1,0xf
.L800a9df0:
/* 0x800a9df0 */ jal	0x800ac764
.L800a9df4:
/* 0x800a9df4 */ andi	$a2,$a2,0x1f
.L800a9df8:
/* 0x800a9df8 */ lw	$v1,28($s7)
.L800a9dfc:
/* 0x800a9dfc */ lw	$a0,20($s7)
.L800a9e00:
/* 0x800a9e00 */ subu	$v1,$v1,$v0
.L800a9e04:
/* 0x800a9e04 */ subu	$v1,$v1,$a0
.L800a9e08:
/* 0x800a9e08 */ addu	$v0,$s0,$s5
.L800a9e0c:
/* 0x800a9e0c */ sw	$v1,264($sp)
.L800a9e10:
/* 0x800a9e10 */ lhu	$v0,4($v0)
.L800a9e14:
/* 0x800a9e14 */ sll	$zero,$zero,0x0
.L800a9e18:
/* 0x800a9e18 */ sw	$v0,268($sp)
.L800a9e1c:
/* 0x800a9e1c */ blez	$s1,.L800a9e44
.L800a9e20:
/* 0x800a9e20 */ sll	$zero,$zero,0x0
.L800a9e24:
/* 0x800a9e24 */ lw	$v0,272($sp)
.L800a9e28:
/* 0x800a9e28 */ lw	$a0,352($sp)
.L800a9e2c:
/* 0x800a9e2c */ sw	$v0,16($sp)
.L800a9e30:
/* 0x800a9e30 */ lw	$a1,268($sp)
.L800a9e34:
/* 0x800a9e34 */ lw	$a2,264($sp)
.L800a9e38:
/* 0x800a9e38 */ lw	$a3,276($sp)
.L800a9e3c:
/* 0x800a9e3c */ jal	0x800aa810
.L800a9e40:
/* 0x800a9e40 */ sll	$zero,$zero,0x0
.L800a9e44:
/* 0x800a9e44 */ beq	$s1,$zero,.L800a9e54
.L800a9e48:
/* 0x800a9e48 */ addiu	$v0,$s6,-1
.L800a9e4c:
/* 0x800a9e4c */ bne	$s1,$v0,.L800a9e68
.L800a9e50:
/* 0x800a9e50 */ sll	$zero,$zero,0x0
.L800a9e54:
/* 0x800a9e54 */ lw	$a1,268($sp)
.L800a9e58:
/* 0x800a9e58 */ lw	$a2,264($sp)
.L800a9e5c:
/* 0x800a9e5c */ lw	$a0,352($sp)
.L800a9e60:
/* 0x800a9e60 */ jal	0x800aac9c
.L800a9e64:
/* 0x800a9e64 */ sll	$zero,$zero,0x0
.L800a9e68:
/* 0x800a9e68 */ lw	$t3,264($sp)
.L800a9e6c:
/* 0x800a9e6c */ lw	$t0,268($sp)
.L800a9e70:
/* 0x800a9e70 */ sw	$t3,272($sp)
.L800a9e74:
/* 0x800a9e74 */ sw	$t0,276($sp)
.L800a9e78:
/* 0x800a9e78 */ addiu	$s1,$s1,1
.L800a9e7c:
/* 0x800a9e7c */ slt	$v0,$s1,$s6
.L800a9e80:
/* 0x800a9e80 */ bne	$v0,$zero,.L800a9bf4
.L800a9e84:
/* 0x800a9e84 */ sll	$zero,$zero,0x0
.L800a9e88:
/* 0x800a9e88 */ lw	$ra,348($sp)
.L800a9e8c:
/* 0x800a9e8c */ lw	$s8,344($sp)
.L800a9e90:
/* 0x800a9e90 */ lw	$s7,340($sp)
.L800a9e94:
/* 0x800a9e94 */ lw	$s6,336($sp)
.L800a9e98:
/* 0x800a9e98 */ lw	$s5,332($sp)
.L800a9e9c:
/* 0x800a9e9c */ lw	$s4,328($sp)
.L800a9ea0:
/* 0x800a9ea0 */ lw	$s3,324($sp)
.L800a9ea4:
/* 0x800a9ea4 */ lw	$s2,320($sp)
.L800a9ea8:
/* 0x800a9ea8 */ lw	$s1,316($sp)
.L800a9eac:
/* 0x800a9eac */ lw	$s0,312($sp)
.L800a9eb0:
/* 0x800a9eb0 */ jr	$ra
.L800a9eb4:
/* 0x800a9eb4 */ addiu	$sp,$sp,352
.size FUN_800a99e8, .-FUN_800a99e8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a9eb8
.globl FUN_800a9eb8
.type FUN_800a9eb8, @function
FUN_800a9eb8:
.L800a9eb8:
/* 0x800a9eb8 */ addiu	$sp,$sp,-88
.L800a9ebc:
/* 0x800a9ebc */ sw	$s8,80($sp)
.L800a9ec0:
/* 0x800a9ec0 */ lui	$s8,0x8000
.L800a9ec4:
/* 0x800a9ec4 */ lui	$v0,0x800e
.L800a9ec8:
/* 0x800a9ec8 */ lw	$v0,2840($v0)
.L800a9ecc:
/* 0x800a9ecc */ ori	$s8,$s8,0xa
.L800a9ed0:
/* 0x800a9ed0 */ sw	$ra,84($sp)
.L800a9ed4:
/* 0x800a9ed4 */ sw	$s7,76($sp)
.L800a9ed8:
/* 0x800a9ed8 */ sw	$s6,72($sp)
.L800a9edc:
/* 0x800a9edc */ sw	$s5,68($sp)
.L800a9ee0:
/* 0x800a9ee0 */ sw	$s4,64($sp)
.L800a9ee4:
/* 0x800a9ee4 */ sw	$s3,60($sp)
.L800a9ee8:
/* 0x800a9ee8 */ sw	$s2,56($sp)
.L800a9eec:
/* 0x800a9eec */ sw	$s1,52($sp)
.L800a9ef0:
/* 0x800a9ef0 */ sw	$s0,48($sp)
.L800a9ef4:
/* 0x800a9ef4 */ sb	$a0,40($sp)
.L800a9ef8:
/* 0x800a9ef8 */ sw	$zero,44($sp)
.L800a9efc:
/* 0x800a9efc */ addiu	$s5,$v0,4948
.L800a9f00:
/* 0x800a9f00 */ addu	$a0,$s5,$zero
.L800a9f04:
/* 0x800a9f04 */ lui	$v0,0x8012
.L800a9f08:
/* 0x800a9f08 */ addiu	$s6,$v0,-30072
.L800a9f0c:
/* 0x800a9f0c */ jal	0x800a3618
.L800a9f10:
/* 0x800a9f10 */ addu	$s2,$a0,$zero
.L800a9f14:
/* 0x800a9f14 */ bne	$v0,$zero,.L800a9f6c
.L800a9f18:
/* 0x800a9f18 */ addiu	$a0,$zero,2
.L800a9f1c:
/* 0x800a9f1c */ lui	$s0,0x8002
.L800a9f20:
/* 0x800a9f20 */ addiu	$s0,$s0,1736
.L800a9f24:
/* 0x800a9f24 */ jal	0x800a87fc
.L800a9f28:
/* 0x800a9f28 */ addu	$a1,$s0,$zero
.L800a9f2c:
/* 0x800a9f2c */ addiu	$a0,$zero,2
.L800a9f30:
/* 0x800a9f30 */ jal	0x800a87fc
.L800a9f34:
/* 0x800a9f34 */ addu	$a1,$s0,$zero
.L800a9f38:
/* 0x800a9f38 */ addiu	$a0,$zero,2
.L800a9f3c:
/* 0x800a9f3c */ negu	$v0,$v0
.L800a9f40:
/* 0x800a9f40 */ srl	$v1,$v0,0x1f
.L800a9f44:
/* 0x800a9f44 */ addu	$v0,$v0,$v1
.L800a9f48:
/* 0x800a9f48 */ sra	$a1,$v0,0x1
.L800a9f4c:
/* 0x800a9f4c */ addu	$a2,$zero,$zero
.L800a9f50:
/* 0x800a9f50 */ lbu	$v0,40($sp)
.L800a9f54:
/* 0x800a9f54 */ addu	$a3,$s0,$zero
.L800a9f58:
/* 0x800a9f58 */ sw	$zero,16($sp)
.L800a9f5c:
/* 0x800a9f5c */ jal	0x800a86e0
.L800a9f60:
/* 0x800a9f60 */ sw	$v0,20($sp)
.L800a9f64:
/* 0x800a9f64 */ j	.L800aa7e0
.L800a9f68:
/* 0x800a9f68 */ sll	$zero,$zero,0x0
.L800a9f6c:
/* 0x800a9f6c */ jal	0x800a88ec
.L800a9f70:
/* 0x800a9f70 */ addiu	$a0,$zero,10
.L800a9f74:
/* 0x800a9f74 */ addu	$s0,$zero,$zero
.L800a9f78:
/* 0x800a9f78 */ lui	$v0,0x800f
.L800a9f7c:
/* 0x800a9f7c */ addiu	$s1,$v0,10504
.L800a9f80:
/* 0x800a9f80 */ lbu	$v0,0($s6)
.L800a9f84:
/* 0x800a9f84 */ sll	$zero,$zero,0x0
.L800a9f88:
/* 0x800a9f88 */ bne	$v0,$zero,.L800a9fa8
.L800a9f8c:
/* 0x800a9f8c */ addu	$v0,$s6,$s0
.L800a9f90:
/* 0x800a9f90 */ lbu	$v1,146($s1)
.L800a9f94:
/* 0x800a9f94 */ addiu	$v0,$zero,7
.L800a9f98:
/* 0x800a9f98 */ beq	$v1,$v0,.L800a9fc4
.L800a9f9c:
/* 0x800a9f9c */ ori	$v0,$zero,0x9284
.L800a9fa0:
/* 0x800a9fa0 */ beq	$v1,$zero,.L800a9fc0
.L800a9fa4:
/* 0x800a9fa4 */ addu	$v0,$s6,$s0
.L800a9fa8:
/* 0x800a9fa8 */ lbu	$v0,2($v0)
.L800a9fac:
/* 0x800a9fac */ sll	$zero,$zero,0x0
.L800a9fb0:
/* 0x800a9fb0 */ beq	$v0,$zero,.L800a9fc4
.L800a9fb4:
/* 0x800a9fb4 */ ori	$v0,$zero,0x9284
.L800a9fb8:
/* 0x800a9fb8 */ jal	0x800a99e8
.L800a9fbc:
/* 0x800a9fbc */ addu	$a0,$s0,$zero
.L800a9fc0:
/* 0x800a9fc0 */ ori	$v0,$zero,0x9284
.L800a9fc4:
/* 0x800a9fc4 */ addu	$s1,$s1,$v0
.L800a9fc8:
/* 0x800a9fc8 */ addiu	$s0,$s0,1
.L800a9fcc:
/* 0x800a9fcc */ slti	$v0,$s0,2
.L800a9fd0:
/* 0x800a9fd0 */ bne	$v0,$zero,.L800a9f80
.L800a9fd4:
/* 0x800a9fd4 */ addu	$s5,$s2,$zero
.L800a9fd8:
/* 0x800a9fd8 */ lw	$v0,24($s6)
.L800a9fdc:
/* 0x800a9fdc */ sll	$zero,$zero,0x0
.L800a9fe0:
/* 0x800a9fe0 */ blez	$v0,.L800aa0d8
.L800a9fe4:
/* 0x800a9fe4 */ addu	$s7,$zero,$zero
.L800a9fe8:
/* 0x800a9fe8 */ lhu	$a2,0($s5)
.L800a9fec:
/* 0x800a9fec */ sll	$zero,$zero,0x0
.L800a9ff0:
/* 0x800a9ff0 */ andi	$a1,$a2,0xffff
.L800a9ff4:
/* 0x800a9ff4 */ srl	$a0,$a1,0x9
.L800a9ff8:
/* 0x800a9ff8 */ addiu	$a0,$a0,2000
.L800a9ffc:
/* 0x800a9ffc */ srl	$a1,$a1,0x5
.L800aa000:
/* 0x800aa000 */ andi	$a1,$a1,0xf
.L800aa004:
/* 0x800aa004 */ jal	0x800ac764
.L800aa008:
/* 0x800aa008 */ andi	$a2,$a2,0x1f
.L800aa00c:
/* 0x800aa00c */ lw	$v1,28($s6)
.L800aa010:
/* 0x800aa010 */ lw	$a0,20($s6)
.L800aa014:
/* 0x800aa014 */ subu	$s4,$v1,$v0
.L800aa018:
/* 0x800aa018 */ addiu	$v0,$a0,-1
.L800aa01c:
/* 0x800aa01c */ slt	$v0,$s4,$v0
.L800aa020:
/* 0x800aa020 */ bne	$v0,$zero,.L800aa0c0
.L800aa024:
/* 0x800aa024 */ sll	$zero,$zero,0x0
.L800aa028:
/* 0x800aa028 */ lw	$v0,40($s6)
.L800aa02c:
/* 0x800aa02c */ sll	$zero,$zero,0x0
.L800aa030:
/* 0x800aa030 */ addu	$v0,$a0,$v0
.L800aa034:
/* 0x800aa034 */ slt	$v0,$v0,$s4
.L800aa038:
/* 0x800aa038 */ bne	$v0,$zero,.L800aa0c0
.L800aa03c:
/* 0x800aa03c */ sll	$zero,$zero,0x0
.L800aa040:
/* 0x800aa040 */ addu	$s0,$zero,$zero
.L800aa044:
/* 0x800aa044 */ addu	$s3,$s6,$zero
.L800aa048:
/* 0x800aa048 */ addu	$s2,$s5,$zero
.L800aa04c:
/* 0x800aa04c */ lui	$s1,0x800f
.L800aa050:
/* 0x800aa050 */ addiu	$s1,$s1,10504
.L800aa054:
/* 0x800aa054 */ lbu	$v0,0($s6)
.L800aa058:
/* 0x800aa058 */ sll	$zero,$zero,0x0
.L800aa05c:
/* 0x800aa05c */ bne	$v0,$zero,.L800aa07c
.L800aa060:
/* 0x800aa060 */ addiu	$v0,$zero,7
.L800aa064:
/* 0x800aa064 */ lbu	$v1,146($s1)
.L800aa068:
/* 0x800aa068 */ sll	$zero,$zero,0x0
.L800aa06c:
/* 0x800aa06c */ beq	$v1,$v0,.L800aa0a4
.L800aa070:
/* 0x800aa070 */ sll	$zero,$zero,0x0
.L800aa074:
/* 0x800aa074 */ beq	$v1,$zero,.L800aa0a4
.L800aa078:
/* 0x800aa078 */ sll	$zero,$zero,0x0
.L800aa07c:
/* 0x800aa07c */ bne	$s4,$zero,.L800aa088
.L800aa080:
/* 0x800aa080 */ addu	$a2,$zero,$zero
.L800aa084:
/* 0x800aa084 */ lw	$a2,32($s3)
.L800aa088:
/* 0x800aa088 */ lbu	$v0,40($sp)
.L800aa08c:
/* 0x800aa08c */ addu	$a0,$s0,$zero
.L800aa090:
/* 0x800aa090 */ sw	$v0,16($sp)
.L800aa094:
/* 0x800aa094 */ lw	$a3,20($s6)
.L800aa098:
/* 0x800aa098 */ lw	$a1,8($s2)
.L800aa09c:
/* 0x800aa09c */ jal	0x800aaa28
.L800aa0a0:
/* 0x800aa0a0 */ subu	$a3,$s4,$a3
.L800aa0a4:
/* 0x800aa0a4 */ addiu	$s3,$s3,4
.L800aa0a8:
/* 0x800aa0a8 */ ori	$v0,$zero,0x9284
.L800aa0ac:
/* 0x800aa0ac */ addu	$s1,$s1,$v0
.L800aa0b0:
/* 0x800aa0b0 */ addiu	$s0,$s0,1
.L800aa0b4:
/* 0x800aa0b4 */ slti	$v0,$s0,2
.L800aa0b8:
/* 0x800aa0b8 */ bne	$v0,$zero,.L800aa054
.L800aa0bc:
/* 0x800aa0bc */ addiu	$s2,$s2,4
.L800aa0c0:
/* 0x800aa0c0 */ addiu	$s7,$s7,1
.L800aa0c4:
/* 0x800aa0c4 */ lw	$v0,24($s6)
.L800aa0c8:
/* 0x800aa0c8 */ sll	$zero,$zero,0x0
.L800aa0cc:
/* 0x800aa0cc */ slt	$v0,$s7,$v0
.L800aa0d0:
/* 0x800aa0d0 */ bne	$v0,$zero,.L800a9fe8
.L800aa0d4:
/* 0x800aa0d4 */ addiu	$s5,$s5,16
.L800aa0d8:
/* 0x800aa0d8 */ addiu	$a0,$zero,-288
.L800aa0dc:
/* 0x800aa0dc */ addiu	$a1,$zero,-83
.L800aa0e0:
/* 0x800aa0e0 */ addiu	$a2,$zero,576
.L800aa0e4:
/* 0x800aa0e4 */ addiu	$a3,$zero,198
.L800aa0e8:
/* 0x800aa0e8 */ addiu	$v0,$zero,10
.L800aa0ec:
/* 0x800aa0ec */ jal	0x800a8848
.L800aa0f0:
/* 0x800aa0f0 */ sw	$v0,16($sp)
.L800aa0f4:
/* 0x800aa0f4 */ lw	$v0,0($s6)
.L800aa0f8:
/* 0x800aa0f8 */ lui	$v1,0xffff
.L800aa0fc:
/* 0x800aa0fc */ and	$v0,$v0,$v1
.L800aa100:
/* 0x800aa100 */ beq	$v0,$zero,.L800aa124
.L800aa104:
/* 0x800aa104 */ sll	$zero,$zero,0x0
.L800aa108:
/* 0x800aa108 */ lw	$v1,64($s6)
.L800aa10c:
/* 0x800aa10c */ sll	$zero,$zero,0x0
.L800aa110:
/* 0x800aa110 */ slti	$v0,$v1,8
.L800aa114:
/* 0x800aa114 */ beq	$v0,$zero,.L800aa138
.L800aa118:
/* 0x800aa118 */ addiu	$v0,$v1,1
.L800aa11c:
/* 0x800aa11c */ j	.L800aa138
.L800aa120:
/* 0x800aa120 */ sw	$v0,64($s6)
.L800aa124:
/* 0x800aa124 */ lw	$v0,64($s6)
.L800aa128:
/* 0x800aa128 */ sll	$zero,$zero,0x0
.L800aa12c:
/* 0x800aa12c */ blez	$v0,.L800aa138
.L800aa130:
/* 0x800aa130 */ addiu	$v0,$v0,-1
.L800aa134:
/* 0x800aa134 */ sw	$v0,64($s6)
.L800aa138:
/* 0x800aa138 */ lw	$v0,64($s6)
.L800aa13c:
/* 0x800aa13c */ lbu	$s4,40($sp)
.L800aa140:
/* 0x800aa140 */ sll	$zero,$zero,0x0
.L800aa144:
/* 0x800aa144 */ mult	$v0,$s4
.L800aa148:
/* 0x800aa148 */ mflo	$v0
.L800aa14c:
/* 0x800aa14c */ bgez	$v0,.L800aa158
.L800aa150:
/* 0x800aa150 */ sll	$zero,$zero,0x0
.L800aa154:
/* 0x800aa154 */ addiu	$v0,$v0,127
.L800aa158:
/* 0x800aa158 */ sra	$v0,$v0,0x7
.L800aa15c:
/* 0x800aa15c */ blez	$v0,.L800aa250
.L800aa160:
/* 0x800aa160 */ sw	$v0,64($s6)
.L800aa164:
/* 0x800aa164 */ lui	$s2,0x6666
.L800aa168:
/* 0x800aa168 */ ori	$s2,$s2,0x6667
.L800aa16c:
/* 0x800aa16c */ sll	$v1,$v0,0x2
.L800aa170:
/* 0x800aa170 */ lw	$t0,48($s6)
.L800aa174:
/* 0x800aa174 */ addiu	$v0,$zero,32
.L800aa178:
/* 0x800aa178 */ mult	$t0,$s2
.L800aa17c:
/* 0x800aa17c */ subu	$s5,$v0,$v1
.L800aa180:
/* 0x800aa180 */ addiu	$s0,$zero,-308
.L800aa184:
/* 0x800aa184 */ subu	$s0,$s0,$s5
.L800aa188:
/* 0x800aa188 */ addu	$a0,$s0,$zero
.L800aa18c:
/* 0x800aa18c */ addiu	$a1,$zero,-84
.L800aa190:
/* 0x800aa190 */ addiu	$a3,$zero,3
.L800aa194:
/* 0x800aa194 */ ori	$s1,$zero,0x8000
.L800aa198:
/* 0x800aa198 */ sw	$zero,16($sp)
.L800aa19c:
/* 0x800aa19c */ sw	$s1,20($sp)
.L800aa1a0:
/* 0x800aa1a0 */ sw	$s4,24($sp)
.L800aa1a4:
/* 0x800aa1a4 */ sra	$t0,$t0,0x1f
.L800aa1a8:
/* 0x800aa1a8 */ mfhi	$t3
.L800aa1ac:
/* 0x800aa1ac */ sra	$a2,$t3,0x2
.L800aa1b0:
/* 0x800aa1b0 */ jal	0x800a66c0
.L800aa1b4:
/* 0x800aa1b4 */ subu	$a2,$a2,$t0
.L800aa1b8:
/* 0x800aa1b8 */ lw	$a2,48($s6)
.L800aa1bc:
/* 0x800aa1bc */ lw	$v0,56($s6)
.L800aa1c0:
/* 0x800aa1c0 */ sll	$zero,$zero,0x0
.L800aa1c4:
/* 0x800aa1c4 */ addu	$a2,$a2,$v0
.L800aa1c8:
/* 0x800aa1c8 */ mult	$a2,$s2
.L800aa1cc:
/* 0x800aa1cc */ addu	$a0,$s0,$zero
.L800aa1d0:
/* 0x800aa1d0 */ addiu	$a1,$zero,12
.L800aa1d4:
/* 0x800aa1d4 */ addiu	$a3,$zero,3
.L800aa1d8:
/* 0x800aa1d8 */ sw	$zero,16($sp)
.L800aa1dc:
/* 0x800aa1dc */ sw	$s1,20($sp)
.L800aa1e0:
/* 0x800aa1e0 */ sw	$s4,24($sp)
.L800aa1e4:
/* 0x800aa1e4 */ sra	$a2,$a2,0x1f
.L800aa1e8:
/* 0x800aa1e8 */ mfhi	$t3
.L800aa1ec:
/* 0x800aa1ec */ srav	$v0,$t3,$a3
.L800aa1f0:
/* 0x800aa1f0 */ jal	0x800a66c0
.L800aa1f4:
/* 0x800aa1f4 */ subu	$a2,$v0,$a2
.L800aa1f8:
/* 0x800aa1f8 */ lw	$a2,56($s6)
.L800aa1fc:
/* 0x800aa1fc */ sll	$zero,$zero,0x0
.L800aa200:
/* 0x800aa200 */ mult	$a2,$s2
.L800aa204:
/* 0x800aa204 */ addu	$a0,$s0,$zero
.L800aa208:
/* 0x800aa208 */ addiu	$a1,$zero,108
.L800aa20c:
/* 0x800aa20c */ addiu	$a3,$zero,3
.L800aa210:
/* 0x800aa210 */ sw	$zero,16($sp)
.L800aa214:
/* 0x800aa214 */ sw	$s1,20($sp)
.L800aa218:
/* 0x800aa218 */ sw	$s4,24($sp)
.L800aa21c:
/* 0x800aa21c */ sra	$a2,$a2,0x1f
.L800aa220:
/* 0x800aa220 */ mfhi	$t3
.L800aa224:
/* 0x800aa224 */ sra	$v0,$t3,0x2
.L800aa228:
/* 0x800aa228 */ jal	0x800a66c0
.L800aa22c:
/* 0x800aa22c */ subu	$a2,$v0,$a2
.L800aa230:
/* 0x800aa230 */ addiu	$a0,$zero,-312
.L800aa234:
/* 0x800aa234 */ subu	$a0,$a0,$s5
.L800aa238:
/* 0x800aa238 */ addiu	$a1,$zero,135
.L800aa23c:
/* 0x800aa23c */ lui	$a2,0x8002
.L800aa240:
/* 0x800aa240 */ addiu	$a2,$a2,1744
.L800aa244:
/* 0x800aa244 */ addiu	$a3,$zero,128
.L800aa248:
/* 0x800aa248 */ jal	0x800a8d98
.L800aa24c:
/* 0x800aa24c */ sw	$zero,16($sp)
.L800aa250:
/* 0x800aa250 */ lui	$s3,0x1062
.L800aa254:
/* 0x800aa254 */ ori	$s3,$s3,0x4dd3
.L800aa258:
/* 0x800aa258 */ srl	$v1,$s4,0x1
.L800aa25c:
/* 0x800aa25c */ lw	$t0,52($s6)
.L800aa260:
/* 0x800aa260 */ addiu	$v0,$zero,64
.L800aa264:
/* 0x800aa264 */ mult	$t0,$s3
.L800aa268:
/* 0x800aa268 */ subu	$s5,$v0,$v1
.L800aa26c:
/* 0x800aa26c */ addiu	$s1,$s5,290
.L800aa270:
/* 0x800aa270 */ addu	$a0,$s1,$zero
.L800aa274:
/* 0x800aa274 */ addiu	$a1,$zero,-84
.L800aa278:
/* 0x800aa278 */ addiu	$a3,$zero,3
.L800aa27c:
/* 0x800aa27c */ ori	$s0,$zero,0x8000
.L800aa280:
/* 0x800aa280 */ addiu	$s2,$zero,128
.L800aa284:
/* 0x800aa284 */ sw	$zero,16($sp)
.L800aa288:
/* 0x800aa288 */ sw	$s0,20($sp)
.L800aa28c:
/* 0x800aa28c */ sw	$s2,24($sp)
.L800aa290:
/* 0x800aa290 */ sra	$t0,$t0,0x1f
.L800aa294:
/* 0x800aa294 */ mfhi	$t3
.L800aa298:
/* 0x800aa298 */ sra	$a2,$t3,0x6
.L800aa29c:
/* 0x800aa29c */ jal	0x800a66c0
.L800aa2a0:
/* 0x800aa2a0 */ subu	$a2,$a2,$t0
.L800aa2a4:
/* 0x800aa2a4 */ lw	$a2,52($s6)
.L800aa2a8:
/* 0x800aa2a8 */ lw	$v0,60($s6)
.L800aa2ac:
/* 0x800aa2ac */ sll	$zero,$zero,0x0
.L800aa2b0:
/* 0x800aa2b0 */ addu	$a2,$a2,$v0
.L800aa2b4:
/* 0x800aa2b4 */ mult	$a2,$s3
.L800aa2b8:
/* 0x800aa2b8 */ addu	$a0,$s1,$zero
.L800aa2bc:
/* 0x800aa2bc */ addiu	$a1,$zero,12
.L800aa2c0:
/* 0x800aa2c0 */ addiu	$a3,$zero,3
.L800aa2c4:
/* 0x800aa2c4 */ sw	$zero,16($sp)
.L800aa2c8:
/* 0x800aa2c8 */ sw	$s0,20($sp)
.L800aa2cc:
/* 0x800aa2cc */ sw	$s2,24($sp)
.L800aa2d0:
/* 0x800aa2d0 */ sra	$a2,$a2,0x1f
.L800aa2d4:
/* 0x800aa2d4 */ mfhi	$t3
.L800aa2d8:
/* 0x800aa2d8 */ sra	$v0,$t3,0x7
.L800aa2dc:
/* 0x800aa2dc */ jal	0x800a66c0
.L800aa2e0:
/* 0x800aa2e0 */ subu	$a2,$v0,$a2
.L800aa2e4:
/* 0x800aa2e4 */ lw	$a2,60($s6)
.L800aa2e8:
/* 0x800aa2e8 */ sll	$zero,$zero,0x0
.L800aa2ec:
/* 0x800aa2ec */ mult	$a2,$s3
.L800aa2f0:
/* 0x800aa2f0 */ addu	$a0,$s1,$zero
.L800aa2f4:
/* 0x800aa2f4 */ addiu	$a1,$zero,108
.L800aa2f8:
/* 0x800aa2f8 */ addiu	$a3,$zero,3
.L800aa2fc:
/* 0x800aa2fc */ sw	$zero,16($sp)
.L800aa300:
/* 0x800aa300 */ sw	$s0,20($sp)
.L800aa304:
/* 0x800aa304 */ sw	$s2,24($sp)
.L800aa308:
/* 0x800aa308 */ sra	$a2,$a2,0x1f
.L800aa30c:
/* 0x800aa30c */ mfhi	$t3
.L800aa310:
/* 0x800aa310 */ sra	$v0,$t3,0x6
.L800aa314:
/* 0x800aa314 */ jal	0x800a66c0
.L800aa318:
/* 0x800aa318 */ subu	$a2,$v0,$a2
.L800aa31c:
/* 0x800aa31c */ addiu	$a0,$s5,264
.L800aa320:
/* 0x800aa320 */ addiu	$a1,$zero,135
.L800aa324:
/* 0x800aa324 */ lui	$a2,0x8002
.L800aa328:
/* 0x800aa328 */ addiu	$a2,$a2,1748
.L800aa32c:
/* 0x800aa32c */ addu	$a3,$s2,$zero
.L800aa330:
/* 0x800aa330 */ jal	0x800a8d98
.L800aa334:
/* 0x800aa334 */ sw	$zero,16($sp)
.L800aa338:
/* 0x800aa338 */ addiu	$a0,$zero,-288
.L800aa33c:
/* 0x800aa33c */ addiu	$a1,$zero,-76
.L800aa340:
/* 0x800aa340 */ addiu	$a2,$zero,288
.L800aa344:
/* 0x800aa344 */ addu	$a3,$a1,$zero
.L800aa348:
/* 0x800aa348 */ addiu	$s1,$zero,192
.L800aa34c:
/* 0x800aa34c */ addiu	$s0,$zero,255
.L800aa350:
/* 0x800aa350 */ sw	$s2,16($sp)
.L800aa354:
/* 0x800aa354 */ sw	$s1,20($sp)
.L800aa358:
/* 0x800aa358 */ sw	$s0,24($sp)
.L800aa35c:
/* 0x800aa35c */ sw	$s4,28($sp)
.L800aa360:
/* 0x800aa360 */ jal	0x800a8990
.L800aa364:
/* 0x800aa364 */ sw	$s8,32($sp)
.L800aa368:
/* 0x800aa368 */ addiu	$a0,$zero,-288
.L800aa36c:
/* 0x800aa36c */ addiu	$a1,$zero,-77
.L800aa370:
/* 0x800aa370 */ addiu	$a2,$zero,288
.L800aa374:
/* 0x800aa374 */ addu	$a3,$a1,$zero
.L800aa378:
/* 0x800aa378 */ sw	$s2,16($sp)
.L800aa37c:
/* 0x800aa37c */ sw	$s1,20($sp)
.L800aa380:
/* 0x800aa380 */ sw	$s0,24($sp)
.L800aa384:
/* 0x800aa384 */ sw	$s4,28($sp)
.L800aa388:
/* 0x800aa388 */ jal	0x800a8990
.L800aa38c:
/* 0x800aa38c */ sw	$s8,32($sp)
.L800aa390:
/* 0x800aa390 */ addiu	$a0,$zero,-288
.L800aa394:
/* 0x800aa394 */ addiu	$a1,$zero,19
.L800aa398:
/* 0x800aa398 */ addiu	$a2,$zero,288
.L800aa39c:
/* 0x800aa39c */ addu	$a3,$a1,$zero
.L800aa3a0:
/* 0x800aa3a0 */ sw	$s2,16($sp)
.L800aa3a4:
/* 0x800aa3a4 */ sw	$s1,20($sp)
.L800aa3a8:
/* 0x800aa3a8 */ sw	$s0,24($sp)
.L800aa3ac:
/* 0x800aa3ac */ sw	$s4,28($sp)
.L800aa3b0:
/* 0x800aa3b0 */ jal	0x800a8990
.L800aa3b4:
/* 0x800aa3b4 */ sw	$s8,32($sp)
.L800aa3b8:
/* 0x800aa3b8 */ addiu	$a0,$zero,-288
.L800aa3bc:
/* 0x800aa3bc */ addiu	$a1,$zero,20
.L800aa3c0:
/* 0x800aa3c0 */ addiu	$a2,$zero,288
.L800aa3c4:
/* 0x800aa3c4 */ addu	$a3,$a1,$zero
.L800aa3c8:
/* 0x800aa3c8 */ sw	$s2,16($sp)
.L800aa3cc:
/* 0x800aa3cc */ sw	$s1,20($sp)
.L800aa3d0:
/* 0x800aa3d0 */ sw	$s0,24($sp)
.L800aa3d4:
/* 0x800aa3d4 */ sw	$s4,28($sp)
.L800aa3d8:
/* 0x800aa3d8 */ jal	0x800a8990
.L800aa3dc:
/* 0x800aa3dc */ sw	$s8,32($sp)
.L800aa3e0:
/* 0x800aa3e0 */ addiu	$a0,$zero,-288
.L800aa3e4:
/* 0x800aa3e4 */ addiu	$a1,$zero,18
.L800aa3e8:
/* 0x800aa3e8 */ addiu	$a2,$zero,288
.L800aa3ec:
/* 0x800aa3ec */ addu	$a3,$a1,$zero
.L800aa3f0:
/* 0x800aa3f0 */ sw	$s2,16($sp)
.L800aa3f4:
/* 0x800aa3f4 */ sw	$s1,20($sp)
.L800aa3f8:
/* 0x800aa3f8 */ sw	$s0,24($sp)
.L800aa3fc:
/* 0x800aa3fc */ sw	$s4,28($sp)
.L800aa400:
/* 0x800aa400 */ jal	0x800a8990
.L800aa404:
/* 0x800aa404 */ sw	$s8,32($sp)
.L800aa408:
/* 0x800aa408 */ addiu	$a0,$zero,-288
.L800aa40c:
/* 0x800aa40c */ addiu	$a1,$zero,115
.L800aa410:
/* 0x800aa410 */ addiu	$a2,$zero,288
.L800aa414:
/* 0x800aa414 */ addu	$a3,$a1,$zero
.L800aa418:
/* 0x800aa418 */ sw	$s2,16($sp)
.L800aa41c:
/* 0x800aa41c */ sw	$s1,20($sp)
.L800aa420:
/* 0x800aa420 */ sw	$s0,24($sp)
.L800aa424:
/* 0x800aa424 */ sw	$s4,28($sp)
.L800aa428:
/* 0x800aa428 */ jal	0x800a8990
.L800aa42c:
/* 0x800aa42c */ sw	$s8,32($sp)
.L800aa430:
/* 0x800aa430 */ addiu	$a0,$zero,-288
.L800aa434:
/* 0x800aa434 */ addiu	$a1,$zero,116
.L800aa438:
/* 0x800aa438 */ addiu	$a2,$zero,288
.L800aa43c:
/* 0x800aa43c */ addu	$a3,$a1,$zero
.L800aa440:
/* 0x800aa440 */ sw	$s2,16($sp)
.L800aa444:
/* 0x800aa444 */ sw	$s1,20($sp)
.L800aa448:
/* 0x800aa448 */ sw	$s0,24($sp)
.L800aa44c:
/* 0x800aa44c */ sw	$s4,28($sp)
.L800aa450:
/* 0x800aa450 */ jal	0x800a8990
.L800aa454:
/* 0x800aa454 */ sw	$s8,32($sp)
.L800aa458:
/* 0x800aa458 */ jal	0x800a88ec
.L800aa45c:
/* 0x800aa45c */ addiu	$a0,$zero,10
.L800aa460:
/* 0x800aa460 */ lbu	$v1,1($s6)
.L800aa464:
/* 0x800aa464 */ addiu	$v0,$zero,1
.L800aa468:
/* 0x800aa468 */ bne	$v1,$v0,.L800aa4b4
.L800aa46c:
/* 0x800aa46c */ sll	$zero,$zero,0x0
.L800aa470:
/* 0x800aa470 */ lw	$v1,12($s6)
.L800aa474:
/* 0x800aa474 */ lw	$v0,16($s6)
.L800aa478:
/* 0x800aa478 */ sll	$zero,$zero,0x0
.L800aa47c:
/* 0x800aa47c */ mult	$v1,$v0
.L800aa480:
/* 0x800aa480 */ mflo	$v1
.L800aa484:
/* 0x800aa484 */ sll	$v0,$v1,0x3
.L800aa488:
/* 0x800aa488 */ addu	$v0,$v0,$v1
.L800aa48c:
/* 0x800aa48c */ lw	$v1,40($s6)
.L800aa490:
/* 0x800aa490 */ sll	$v0,$v0,0x6
.L800aa494:
/* 0x800aa494 */ div	$zero,$v0,$v1
.L800aa498:
/* 0x800aa498 */ mflo	$v1
.L800aa49c:
/* 0x800aa49c */ sll	$zero,$zero,0x0
.L800aa4a0:
/* 0x800aa4a0 */ bgez	$v1,.L800aa4ac
.L800aa4a4:
/* 0x800aa4a4 */ sll	$zero,$zero,0x0
.L800aa4a8:
/* 0x800aa4a8 */ addu	$v1,$v1,$s0
.L800aa4ac:
/* 0x800aa4ac */ sra	$v1,$v1,0x8
.L800aa4b0:
/* 0x800aa4b0 */ sw	$v1,44($sp)
.L800aa4b4:
/* 0x800aa4b4 */ lw	$v0,28($s6)
.L800aa4b8:
/* 0x800aa4b8 */ lw	$v1,20($s6)
.L800aa4bc:
/* 0x800aa4bc */ lw	$a0,40($s6)
.L800aa4c0:
/* 0x800aa4c0 */ subu	$v0,$v0,$v1
.L800aa4c4:
/* 0x800aa4c4 */ addiu	$s3,$v0,1
.L800aa4c8:
/* 0x800aa4c8 */ addiu	$v0,$a0,1
.L800aa4cc:
/* 0x800aa4cc */ bltz	$v0,.L800aa7c4
.L800aa4d0:
/* 0x800aa4d0 */ addiu	$s7,$zero,-1
.L800aa4d4:
/* 0x800aa4d4 */ lbu	$s4,40($sp)
.L800aa4d8:
/* 0x800aa4d8 */ addiu	$s5,$zero,-576
.L800aa4dc:
/* 0x800aa4dc */ div	$zero,$s5,$a0
.L800aa4e0:
/* 0x800aa4e0 */ mflo	$v1
.L800aa4e4:
/* 0x800aa4e4 */ lui	$v0,0x5555
.L800aa4e8:
/* 0x800aa4e8 */ ori	$v0,$v0,0x5556
.L800aa4ec:
/* 0x800aa4ec */ mult	$v1,$v0
.L800aa4f0:
/* 0x800aa4f0 */ addu	$a0,$s3,$zero
.L800aa4f4:
/* 0x800aa4f4 */ sra	$v1,$v1,0x1f
.L800aa4f8:
/* 0x800aa4f8 */ addiu	$v0,$zero,288
.L800aa4fc:
/* 0x800aa4fc */ mfhi	$t0
.L800aa500:
/* 0x800aa500 */ subu	$v1,$t0,$v1
.L800aa504:
/* 0x800aa504 */ jal	0x800ac268
.L800aa508:
/* 0x800aa508 */ subu	$s2,$v0,$v1
.L800aa50c:
/* 0x800aa50c */ addu	$a0,$s3,$zero
.L800aa510:
/* 0x800aa510 */ jal	0x800ac0b4
.L800aa514:
/* 0x800aa514 */ andi	$s1,$v0,0xff
.L800aa518:
/* 0x800aa518 */ beq	$s1,$zero,.L800aa534
.L800aa51c:
/* 0x800aa51c */ andi	$v1,$v0,0xffff
.L800aa520:
/* 0x800aa520 */ lw	$v0,40($s6)
.L800aa524:
/* 0x800aa524 */ sll	$zero,$zero,0x0
.L800aa528:
/* 0x800aa528 */ slti	$v0,$v0,8
.L800aa52c:
/* 0x800aa52c */ beq	$v0,$zero,.L800aa584
.L800aa530:
/* 0x800aa530 */ addiu	$a1,$zero,111
.L800aa534:
/* 0x800aa534 */ addiu	$a1,$zero,117
.L800aa538:
/* 0x800aa538 */ sra	$v0,$v1,0x5
.L800aa53c:
/* 0x800aa53c */ andi	$v0,$v0,0xf
.L800aa540:
/* 0x800aa540 */ sll	$a2,$v0,0x1
.L800aa544:
/* 0x800aa544 */ addu	$a2,$a2,$v0
.L800aa548:
/* 0x800aa548 */ sll	$a2,$a2,0x3
.L800aa54c:
/* 0x800aa54c */ addu	$a2,$a2,$v0
.L800aa550:
/* 0x800aa550 */ sll	$a2,$a2,0x2
.L800aa554:
/* 0x800aa554 */ andi	$v0,$v1,0x1f
.L800aa558:
/* 0x800aa558 */ addu	$a2,$a2,$v0
.L800aa55c:
/* 0x800aa55c */ addiu	$a3,$zero,2
.L800aa560:
/* 0x800aa560 */ lw	$t3,44($sp)
.L800aa564:
/* 0x800aa564 */ addu	$v0,$a3,$zero
.L800aa568:
/* 0x800aa568 */ sw	$v0,16($sp)
.L800aa56c:
/* 0x800aa56c */ ori	$v0,$zero,0x8000
.L800aa570:
/* 0x800aa570 */ sw	$v0,20($sp)
.L800aa574:
/* 0x800aa574 */ sw	$s4,24($sp)
.L800aa578:
/* 0x800aa578 */ jal	0x800a6430
.L800aa57c:
/* 0x800aa57c */ addu	$a0,$s2,$t3
.L800aa580:
/* 0x800aa580 */ addiu	$a1,$zero,111
.L800aa584:
/* 0x800aa584 */ lw	$t3,44($sp)
.L800aa588:
/* 0x800aa588 */ addiu	$a3,$zero,119
.L800aa58c:
/* 0x800aa58c */ sw	$s4,28($sp)
.L800aa590:
/* 0x800aa590 */ sw	$s8,32($sp)
.L800aa594:
/* 0x800aa594 */ addu	$v0,$s2,$t3
.L800aa598:
/* 0x800aa598 */ sll	$v0,$v0,0x10
.L800aa59c:
/* 0x800aa59c */ sra	$s0,$v0,0x10
.L800aa5a0:
/* 0x800aa5a0 */ addu	$a0,$s0,$zero
.L800aa5a4:
/* 0x800aa5a4 */ addu	$a2,$s0,$zero
.L800aa5a8:
/* 0x800aa5a8 */ addiu	$t3,$zero,128
.L800aa5ac:
/* 0x800aa5ac */ sw	$t3,16($sp)
.L800aa5b0:
/* 0x800aa5b0 */ sw	$t3,20($sp)
.L800aa5b4:
/* 0x800aa5b4 */ addiu	$t3,$zero,255
.L800aa5b8:
/* 0x800aa5b8 */ jal	0x800a8990
.L800aa5bc:
/* 0x800aa5bc */ sw	$t3,24($sp)
.L800aa5c0:
/* 0x800aa5c0 */ lw	$v1,28($s6)
.L800aa5c4:
/* 0x800aa5c4 */ sll	$zero,$zero,0x0
.L800aa5c8:
/* 0x800aa5c8 */ addiu	$v0,$v1,1
.L800aa5cc:
/* 0x800aa5cc */ beq	$s3,$v0,.L800aa5e8
.L800aa5d0:
/* 0x800aa5d0 */ addu	$a0,$s0,$zero
.L800aa5d4:
/* 0x800aa5d4 */ lw	$v0,44($s6)
.L800aa5d8:
/* 0x800aa5d8 */ sll	$zero,$zero,0x0
.L800aa5dc:
/* 0x800aa5dc */ subu	$v0,$v1,$v0
.L800aa5e0:
/* 0x800aa5e0 */ bne	$s3,$v0,.L800aa614
.L800aa5e4:
/* 0x800aa5e4 */ sll	$zero,$zero,0x0
.L800aa5e8:
/* 0x800aa5e8 */ addiu	$a1,$zero,-76
.L800aa5ec:
/* 0x800aa5ec */ addu	$a2,$a0,$zero
.L800aa5f0:
/* 0x800aa5f0 */ addiu	$a3,$zero,115
.L800aa5f4:
/* 0x800aa5f4 */ addiu	$t3,$zero,255
.L800aa5f8:
/* 0x800aa5f8 */ sw	$t3,16($sp)
.L800aa5fc:
/* 0x800aa5fc */ sw	$t3,20($sp)
.L800aa600:
/* 0x800aa600 */ addiu	$t3,$zero,128
.L800aa604:
/* 0x800aa604 */ sw	$t3,24($sp)
.L800aa608:
/* 0x800aa608 */ sw	$s4,28($sp)
.L800aa60c:
/* 0x800aa60c */ jal	0x800a8990
.L800aa610:
/* 0x800aa610 */ sw	$s8,32($sp)
.L800aa614:
/* 0x800aa614 */ bne	$s1,$zero,.L800aa62c
.L800aa618:
/* 0x800aa618 */ addiu	$v0,$zero,6
.L800aa61c:
/* 0x800aa61c */ addiu	$t2,$zero,192
.L800aa620:
/* 0x800aa620 */ addiu	$t1,$zero,128
.L800aa624:
/* 0x800aa624 */ j	.L800aa63c
.L800aa628:
/* 0x800aa628 */ addu	$t0,$t1,$zero
.L800aa62c:
/* 0x800aa62c */ bne	$s1,$v0,.L800aa694
.L800aa630:
/* 0x800aa630 */ addiu	$t2,$zero,128
.L800aa634:
/* 0x800aa634 */ addu	$t1,$t2,$zero
.L800aa638:
/* 0x800aa638 */ addiu	$t0,$zero,192
.L800aa63c:
/* 0x800aa63c */ lw	$v0,40($s6)
.L800aa640:
/* 0x800aa640 */ addiu	$a2,$zero,576
.L800aa644:
/* 0x800aa644 */ div	$zero,$a2,$v0
.L800aa648:
/* 0x800aa648 */ mflo	$a2
.L800aa64c:
/* 0x800aa64c */ lui	$v1,0x8000
.L800aa650:
/* 0x800aa650 */ ori	$v1,$v1,0xa
.L800aa654:
/* 0x800aa654 */ addiu	$a1,$zero,117
.L800aa658:
/* 0x800aa658 */ lw	$t3,44($sp)
.L800aa65c:
/* 0x800aa65c */ addiu	$a3,$zero,15
.L800aa660:
/* 0x800aa660 */ sw	$t2,16($sp)
.L800aa664:
/* 0x800aa664 */ sw	$t1,20($sp)
.L800aa668:
/* 0x800aa668 */ sw	$t0,24($sp)
.L800aa66c:
/* 0x800aa66c */ sw	$v1,32($sp)
.L800aa670:
/* 0x800aa670 */ addu	$a0,$s2,$t3
.L800aa674:
/* 0x800aa674 */ addiu	$a0,$a0,1
.L800aa678:
/* 0x800aa678 */ sll	$a0,$a0,0x10
.L800aa67c:
/* 0x800aa67c */ sra	$a0,$a0,0x10
.L800aa680:
/* 0x800aa680 */ sll	$v0,$s4,0x1
.L800aa684:
/* 0x800aa684 */ addu	$v0,$v0,$s4
.L800aa688:
/* 0x800aa688 */ srl	$v0,$v0,0x2
.L800aa68c:
/* 0x800aa68c */ jal	0x80023dbc
.L800aa690:
/* 0x800aa690 */ sw	$v0,28($sp)
.L800aa694:
/* 0x800aa694 */ lbu	$v0,0($s6)
.L800aa698:
/* 0x800aa698 */ sll	$zero,$zero,0x0
.L800aa69c:
/* 0x800aa69c */ bne	$v0,$zero,.L800aa744
.L800aa6a0:
/* 0x800aa6a0 */ lui	$a1,0xe100
.L800aa6a4:
/* 0x800aa6a4 */ lw	$v0,28($s6)
.L800aa6a8:
/* 0x800aa6a8 */ sll	$zero,$zero,0x0
.L800aa6ac:
/* 0x800aa6ac */ bne	$s3,$v0,.L800aa748
.L800aa6b0:
/* 0x800aa6b0 */ ori	$a1,$a1,0x220
.L800aa6b4:
/* 0x800aa6b4 */ lui	$v0,0x800b
.L800aa6b8:
/* 0x800aa6b8 */ lw	$v0,-14104($v0)
.L800aa6bc:
/* 0x800aa6bc */ sll	$zero,$zero,0x0
.L800aa6c0:
/* 0x800aa6c0 */ lhu	$a0,32($v0)
.L800aa6c4:
/* 0x800aa6c4 */ jal	0x8004964c
.L800aa6c8:
/* 0x800aa6c8 */ sll	$a0,$a0,0x5
.L800aa6cc:
/* 0x800aa6cc */ lw	$v1,40($s6)
.L800aa6d0:
/* 0x800aa6d0 */ addiu	$a2,$zero,576
.L800aa6d4:
/* 0x800aa6d4 */ div	$zero,$a2,$v1
.L800aa6d8:
/* 0x800aa6d8 */ mflo	$a2
.L800aa6dc:
/* 0x800aa6dc */ lui	$t1,0x8000
.L800aa6e0:
/* 0x800aa6e0 */ ori	$t1,$t1,0xa
.L800aa6e4:
/* 0x800aa6e4 */ addiu	$a1,$zero,-75
.L800aa6e8:
/* 0x800aa6e8 */ addiu	$a3,$zero,190
.L800aa6ec:
/* 0x800aa6ec */ sll	$v0,$v0,0x5
.L800aa6f0:
/* 0x800aa6f0 */ sra	$v0,$v0,0xc
.L800aa6f4:
/* 0x800aa6f4 */ addiu	$v0,$v0,64
.L800aa6f8:
/* 0x800aa6f8 */ lw	$t3,44($sp)
.L800aa6fc:
/* 0x800aa6fc */ andi	$t0,$v0,0xff
.L800aa700:
/* 0x800aa700 */ sw	$t0,16($sp)
.L800aa704:
/* 0x800aa704 */ sw	$t0,24($sp)
.L800aa708:
/* 0x800aa708 */ sw	$s4,28($sp)
.L800aa70c:
/* 0x800aa70c */ sw	$t1,32($sp)
.L800aa710:
/* 0x800aa710 */ addu	$a0,$s2,$t3
.L800aa714:
/* 0x800aa714 */ addiu	$a0,$a0,1
.L800aa718:
/* 0x800aa718 */ sll	$a0,$a0,0x10
.L800aa71c:
/* 0x800aa71c */ sra	$a0,$a0,0x10
.L800aa720:
/* 0x800aa720 */ sll	$v1,$v0,0x2
.L800aa724:
/* 0x800aa724 */ addu	$v1,$v1,$v0
.L800aa728:
/* 0x800aa728 */ srl	$v0,$v1,0x1f
.L800aa72c:
/* 0x800aa72c */ addu	$v1,$v1,$v0
.L800aa730:
/* 0x800aa730 */ sra	$v1,$v1,0x1
.L800aa734:
/* 0x800aa734 */ andi	$v1,$v1,0xff
.L800aa738:
/* 0x800aa738 */ jal	0x80023dbc
.L800aa73c:
/* 0x800aa73c */ sw	$v1,20($sp)
.L800aa740:
/* 0x800aa740 */ lui	$a1,0xe100
.L800aa744:
/* 0x800aa744 */ ori	$a1,$a1,0x220
.L800aa748:
/* 0x800aa748 */ lui	$a3,0xff
.L800aa74c:
/* 0x800aa74c */ ori	$a3,$a3,0xffff
.L800aa750:
/* 0x800aa750 */ lui	$v1,0x800e
.L800aa754:
/* 0x800aa754 */ addiu	$s5,$s5,1728
.L800aa758:
/* 0x800aa758 */ lui	$a2,0xff00
.L800aa75c:
/* 0x800aa75c */ lw	$a0,22064($v1)
.L800aa760:
/* 0x800aa760 */ addiu	$s7,$s7,1
.L800aa764:
/* 0x800aa764 */ addiu	$v0,$a0,8
.L800aa768:
/* 0x800aa768 */ sw	$v0,22064($v1)
.L800aa76c:
/* 0x800aa76c */ addiu	$v0,$zero,1
.L800aa770:
/* 0x800aa770 */ sb	$v0,3($a0)
.L800aa774:
/* 0x800aa774 */ lui	$v0,0x800e
.L800aa778:
/* 0x800aa778 */ sw	$a1,4($a0)
.L800aa77c:
/* 0x800aa77c */ lw	$a1,10984($v0)
.L800aa780:
/* 0x800aa780 */ lw	$v1,0($a0)
.L800aa784:
/* 0x800aa784 */ lw	$v0,40($a1)
.L800aa788:
/* 0x800aa788 */ and	$v1,$v1,$a2
.L800aa78c:
/* 0x800aa78c */ and	$v0,$v0,$a3
.L800aa790:
/* 0x800aa790 */ or	$v1,$v1,$v0
.L800aa794:
/* 0x800aa794 */ sw	$v1,0($a0)
.L800aa798:
/* 0x800aa798 */ lw	$v0,40($a1)
.L800aa79c:
/* 0x800aa79c */ and	$a0,$a0,$a3
.L800aa7a0:
/* 0x800aa7a0 */ and	$v0,$v0,$a2
.L800aa7a4:
/* 0x800aa7a4 */ or	$v0,$v0,$a0
.L800aa7a8:
/* 0x800aa7a8 */ sw	$v0,40($a1)
.L800aa7ac:
/* 0x800aa7ac */ lw	$a0,40($s6)
.L800aa7b0:
/* 0x800aa7b0 */ sll	$zero,$zero,0x0
.L800aa7b4:
/* 0x800aa7b4 */ addiu	$v0,$a0,1
.L800aa7b8:
/* 0x800aa7b8 */ slt	$v0,$s7,$v0
.L800aa7bc:
/* 0x800aa7bc */ bne	$v0,$zero,.L800aa4dc
.L800aa7c0:
/* 0x800aa7c0 */ addiu	$s3,$s3,-1
.L800aa7c4:
/* 0x800aa7c4 */ addiu	$v0,$zero,10
.L800aa7c8:
/* 0x800aa7c8 */ sw	$v0,16($sp)
.L800aa7cc:
/* 0x800aa7cc */ addiu	$a0,$zero,-288
.L800aa7d0:
/* 0x800aa7d0 */ addiu	$a1,$zero,-76
.L800aa7d4:
/* 0x800aa7d4 */ addiu	$a2,$zero,576
.L800aa7d8:
/* 0x800aa7d8 */ jal	0x800a8848
.L800aa7dc:
/* 0x800aa7dc */ addiu	$a3,$zero,209
.L800aa7e0:
/* 0x800aa7e0 */ lw	$ra,84($sp)
.L800aa7e4:
/* 0x800aa7e4 */ lw	$s8,80($sp)
.L800aa7e8:
/* 0x800aa7e8 */ lw	$s7,76($sp)
.L800aa7ec:
/* 0x800aa7ec */ lw	$s6,72($sp)
.L800aa7f0:
/* 0x800aa7f0 */ lw	$s5,68($sp)
.L800aa7f4:
/* 0x800aa7f4 */ lw	$s4,64($sp)
.L800aa7f8:
/* 0x800aa7f8 */ lw	$s3,60($sp)
.L800aa7fc:
/* 0x800aa7fc */ lw	$s2,56($sp)
.L800aa800:
/* 0x800aa800 */ lw	$s1,52($sp)
.L800aa804:
/* 0x800aa804 */ lw	$s0,48($sp)
.L800aa808:
/* 0x800aa808 */ jr	$ra
.L800aa80c:
/* 0x800aa80c */ addiu	$sp,$sp,88
.size FUN_800a9eb8, .-FUN_800a9eb8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800aa810
.globl FUN_800aa810
.type FUN_800aa810, @function
FUN_800aa810:
.L800aa810:
/* 0x800aa810 */ addiu	$sp,$sp,-80
.L800aa814:
/* 0x800aa814 */ lui	$v0,0x8012
.L800aa818:
/* 0x800aa818 */ addiu	$t5,$v0,-30072
.L800aa81c:
/* 0x800aa81c */ sll	$v0,$a2,0x1
.L800aa820:
/* 0x800aa820 */ addu	$v0,$v0,$a2
.L800aa824:
/* 0x800aa824 */ addiu	$t3,$a0,-2
.L800aa828:
/* 0x800aa828 */ subu	$v0,$v0,$t3
.L800aa82c:
/* 0x800aa82c */ sll	$v0,$v0,0x1
.L800aa830:
/* 0x800aa830 */ addiu	$v0,$v0,-1
.L800aa834:
/* 0x800aa834 */ sll	$a2,$v0,0x3
.L800aa838:
/* 0x800aa838 */ addu	$a2,$a2,$v0
.L800aa83c:
/* 0x800aa83c */ sw	$ra,72($sp)
.L800aa840:
/* 0x800aa840 */ sw	$s7,68($sp)
.L800aa844:
/* 0x800aa844 */ sw	$s6,64($sp)
.L800aa848:
/* 0x800aa848 */ sw	$s5,60($sp)
.L800aa84c:
/* 0x800aa84c */ sw	$s4,56($sp)
.L800aa850:
/* 0x800aa850 */ sw	$s3,52($sp)
.L800aa854:
/* 0x800aa854 */ sw	$s2,48($sp)
.L800aa858:
/* 0x800aa858 */ sw	$s1,44($sp)
.L800aa85c:
/* 0x800aa85c */ sw	$s0,40($sp)
.L800aa860:
/* 0x800aa860 */ lw	$t4,40($t5)
.L800aa864:
/* 0x800aa864 */ sll	$a2,$a2,0x6
.L800aa868:
/* 0x800aa868 */ div	$zero,$a2,$t4
.L800aa86c:
/* 0x800aa86c */ mflo	$a2
.L800aa870:
/* 0x800aa870 */ lw	$t2,56($t5)
.L800aa874:
/* 0x800aa874 */ lw	$t1,48($t5)
.L800aa878:
/* 0x800aa878 */ subu	$a1,$a1,$t2
.L800aa87c:
/* 0x800aa87c */ sll	$t0,$a1,0x1
.L800aa880:
/* 0x800aa880 */ addu	$t0,$t0,$a1
.L800aa884:
/* 0x800aa884 */ sll	$t0,$t0,0x6
.L800aa888:
/* 0x800aa888 */ subu	$t0,$t0,$a1
.L800aa88c:
/* 0x800aa88c */ subu	$t1,$t1,$t2
.L800aa890:
/* 0x800aa890 */ div	$zero,$t0,$t1
.L800aa894:
/* 0x800aa894 */ mflo	$t0
.L800aa898:
/* 0x800aa898 */ lw	$v1,96($sp)
.L800aa89c:
/* 0x800aa89c */ sll	$zero,$zero,0x0
.L800aa8a0:
/* 0x800aa8a0 */ sll	$v0,$v1,0x1
.L800aa8a4:
/* 0x800aa8a4 */ addu	$v0,$v0,$v1
.L800aa8a8:
/* 0x800aa8a8 */ subu	$v0,$v0,$t3
.L800aa8ac:
/* 0x800aa8ac */ sll	$v0,$v0,0x1
.L800aa8b0:
/* 0x800aa8b0 */ addiu	$v0,$v0,-1
.L800aa8b4:
/* 0x800aa8b4 */ sll	$v1,$v0,0x3
.L800aa8b8:
/* 0x800aa8b8 */ addu	$v1,$v1,$v0
.L800aa8bc:
/* 0x800aa8bc */ sll	$v1,$v1,0x6
.L800aa8c0:
/* 0x800aa8c0 */ div	$zero,$v1,$t4
.L800aa8c4:
/* 0x800aa8c4 */ mflo	$v1
.L800aa8c8:
/* 0x800aa8c8 */ subu	$a3,$a3,$t2
.L800aa8cc:
/* 0x800aa8cc */ sll	$v0,$a3,0x1
.L800aa8d0:
/* 0x800aa8d0 */ addu	$v0,$v0,$a3
.L800aa8d4:
/* 0x800aa8d4 */ sll	$v0,$v0,0x6
.L800aa8d8:
/* 0x800aa8d8 */ subu	$v0,$v0,$a3
.L800aa8dc:
/* 0x800aa8dc */ div	$zero,$v0,$t1
.L800aa8e0:
/* 0x800aa8e0 */ mflo	$v0
.L800aa8e4:
/* 0x800aa8e4 */ lui	$a1,0x2aaa
.L800aa8e8:
/* 0x800aa8e8 */ ori	$a1,$a1,0xaaab
.L800aa8ec:
/* 0x800aa8ec */ mult	$a2,$a1
.L800aa8f0:
/* 0x800aa8f0 */ mfhi	$t3
.L800aa8f4:
/* 0x800aa8f4 */ sll	$zero,$zero,0x0
.L800aa8f8:
/* 0x800aa8f8 */ sll	$zero,$zero,0x0
.L800aa8fc:
/* 0x800aa8fc */ mult	$v1,$a1
.L800aa900:
/* 0x800aa900 */ addu	$t1,$zero,$zero
.L800aa904:
/* 0x800aa904 */ addiu	$a3,$zero,288
.L800aa908:
/* 0x800aa908 */ sra	$a2,$a2,0x1f
.L800aa90c:
/* 0x800aa90c */ subu	$a2,$t3,$a2
.L800aa910:
/* 0x800aa910 */ subu	$a2,$a3,$a2
.L800aa914:
/* 0x800aa914 */ addiu	$a1,$zero,115
.L800aa918:
/* 0x800aa918 */ subu	$s7,$a1,$t0
.L800aa91c:
/* 0x800aa91c */ sra	$v1,$v1,0x1f
.L800aa920:
/* 0x800aa920 */ subu	$s6,$a1,$v0
.L800aa924:
/* 0x800aa924 */ mfhi	$t2
.L800aa928:
/* 0x800aa928 */ subu	$v1,$t2,$v1
.L800aa92c:
/* 0x800aa92c */ bne	$a0,$zero,.L800aa944
.L800aa930:
/* 0x800aa930 */ subu	$a3,$a3,$v1
.L800aa934:
/* 0x800aa934 */ addu	$s3,$t1,$zero
.L800aa938:
/* 0x800aa938 */ addiu	$s2,$zero,110
.L800aa93c:
/* 0x800aa93c */ j	.L800aa950
.L800aa940:
/* 0x800aa940 */ addiu	$s1,$zero,161
.L800aa944:
/* 0x800aa944 */ addiu	$s3,$zero,254
.L800aa948:
/* 0x800aa948 */ addu	$s2,$zero,$zero
.L800aa94c:
/* 0x800aa94c */ addu	$s1,$s3,$zero
.L800aa950:
/* 0x800aa950 */ lbu	$v1,1($t5)
.L800aa954:
/* 0x800aa954 */ addiu	$v0,$zero,1
.L800aa958:
/* 0x800aa958 */ bne	$v1,$v0,.L800aa9a0
.L800aa95c:
/* 0x800aa95c */ addiu	$s0,$zero,-1
.L800aa960:
/* 0x800aa960 */ lw	$v1,12($t5)
.L800aa964:
/* 0x800aa964 */ lw	$v0,16($t5)
.L800aa968:
/* 0x800aa968 */ sll	$zero,$zero,0x0
.L800aa96c:
/* 0x800aa96c */ mult	$v1,$v0
.L800aa970:
/* 0x800aa970 */ mflo	$v1
.L800aa974:
/* 0x800aa974 */ sll	$v0,$v1,0x3
.L800aa978:
/* 0x800aa978 */ addu	$v0,$v0,$v1
.L800aa97c:
/* 0x800aa97c */ sll	$v0,$v0,0x6
.L800aa980:
/* 0x800aa980 */ div	$zero,$v0,$t4
.L800aa984:
/* 0x800aa984 */ mflo	$v1
.L800aa988:
/* 0x800aa988 */ sll	$zero,$zero,0x0
.L800aa98c:
/* 0x800aa98c */ bgez	$v1,.L800aa9a0
.L800aa990:
/* 0x800aa990 */ sra	$t1,$v1,0x8
.L800aa994:
/* 0x800aa994 */ addiu	$v1,$v1,255
.L800aa998:
/* 0x800aa998 */ sra	$t1,$v1,0x8
.L800aa99c:
/* 0x800aa99c */ addiu	$s0,$zero,-1
.L800aa9a0:
/* 0x800aa9a0 */ addu	$v0,$a2,$t1
.L800aa9a4:
/* 0x800aa9a4 */ sll	$s5,$v0,0x10
.L800aa9a8:
/* 0x800aa9a8 */ addu	$v0,$a3,$t1
.L800aa9ac:
/* 0x800aa9ac */ sll	$s4,$v0,0x10
.L800aa9b0:
/* 0x800aa9b0 */ addiu	$v0,$zero,128
.L800aa9b4:
/* 0x800aa9b4 */ sw	$v0,28($sp)
.L800aa9b8:
/* 0x800aa9b8 */ addiu	$v0,$zero,10
.L800aa9bc:
/* 0x800aa9bc */ addu	$a1,$s7,$s0
.L800aa9c0:
/* 0x800aa9c0 */ sll	$a1,$a1,0x10
.L800aa9c4:
/* 0x800aa9c4 */ addu	$a3,$s6,$s0
.L800aa9c8:
/* 0x800aa9c8 */ sll	$a3,$a3,0x10
.L800aa9cc:
/* 0x800aa9cc */ sra	$a0,$s5,0x10
.L800aa9d0:
/* 0x800aa9d0 */ sra	$a1,$a1,0x10
.L800aa9d4:
/* 0x800aa9d4 */ sra	$a2,$s4,0x10
.L800aa9d8:
/* 0x800aa9d8 */ sra	$a3,$a3,0x10
.L800aa9dc:
/* 0x800aa9dc */ sw	$s3,16($sp)
.L800aa9e0:
/* 0x800aa9e0 */ sw	$s2,20($sp)
.L800aa9e4:
/* 0x800aa9e4 */ sw	$s1,24($sp)
.L800aa9e8:
/* 0x800aa9e8 */ jal	0x800a8990
.L800aa9ec:
/* 0x800aa9ec */ sw	$v0,32($sp)
.L800aa9f0:
/* 0x800aa9f0 */ addiu	$s0,$s0,1
.L800aa9f4:
/* 0x800aa9f4 */ blez	$s0,.L800aa9b4
.L800aa9f8:
/* 0x800aa9f8 */ addiu	$v0,$zero,128
.L800aa9fc:
/* 0x800aa9fc */ lw	$ra,72($sp)
.L800aaa00:
/* 0x800aaa00 */ lw	$s7,68($sp)
.L800aaa04:
/* 0x800aaa04 */ lw	$s6,64($sp)
.L800aaa08:
/* 0x800aaa08 */ lw	$s5,60($sp)
.L800aaa0c:
/* 0x800aaa0c */ lw	$s4,56($sp)
.L800aaa10:
/* 0x800aaa10 */ lw	$s3,52($sp)
.L800aaa14:
/* 0x800aaa14 */ lw	$s2,48($sp)
.L800aaa18:
/* 0x800aaa18 */ lw	$s1,44($sp)
.L800aaa1c:
/* 0x800aaa1c */ lw	$s0,40($sp)
.L800aaa20:
/* 0x800aaa20 */ jr	$ra
.L800aaa24:
/* 0x800aaa24 */ addiu	$sp,$sp,80
.size FUN_800aa810, .-FUN_800aa810
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800aaa28
.globl FUN_800aaa28
.type FUN_800aaa28, @function
FUN_800aaa28:
.L800aaa28:
/* 0x800aaa28 */ addiu	$sp,$sp,-80
.L800aaa2c:
/* 0x800aaa2c */ addu	$t5,$a0,$zero
.L800aaa30:
/* 0x800aaa30 */ addu	$t1,$a1,$zero
.L800aaa34:
/* 0x800aaa34 */ sw	$s2,48($sp)
.L800aaa38:
/* 0x800aaa38 */ lui	$v1,0x4
.L800aaa3c:
/* 0x800aaa3c */ ori	$v1,$v1,0x93e0
.L800aaa40:
/* 0x800aaa40 */ lui	$v0,0x8012
.L800aaa44:
/* 0x800aaa44 */ addiu	$t2,$v0,-30072
.L800aaa48:
/* 0x800aaa48 */ sw	$s8,72($sp)
.L800aaa4c:
/* 0x800aaa4c */ lw	$s8,96($sp)
.L800aaa50:
/* 0x800aaa50 */ slt	$v1,$v1,$t1
.L800aaa54:
/* 0x800aaa54 */ sw	$ra,76($sp)
.L800aaa58:
/* 0x800aaa58 */ sw	$s7,68($sp)
.L800aaa5c:
/* 0x800aaa5c */ sw	$s6,64($sp)
.L800aaa60:
/* 0x800aaa60 */ sw	$s5,60($sp)
.L800aaa64:
/* 0x800aaa64 */ sw	$s4,56($sp)
.L800aaa68:
/* 0x800aaa68 */ sw	$s3,52($sp)
.L800aaa6c:
/* 0x800aaa6c */ sw	$s1,44($sp)
.L800aaa70:
/* 0x800aaa70 */ sw	$s0,40($sp)
.L800aaa74:
/* 0x800aaa74 */ lw	$t3,60($t2)
.L800aaa78:
/* 0x800aaa78 */ lw	$t4,52($t2)
.L800aaa7c:
/* 0x800aaa7c */ lw	$t0,40($t2)
.L800aaa80:
/* 0x800aaa80 */ beq	$v1,$zero,.L800aaa90
.L800aaa84:
/* 0x800aaa84 */ addu	$s2,$zero,$zero
.L800aaa88:
/* 0x800aaa88 */ lui	$t1,0x4
.L800aaa8c:
/* 0x800aaa8c */ ori	$t1,$t1,0x93e0
.L800aaa90:
/* 0x800aaa90 */ subu	$v1,$t1,$t3
.L800aaa94:
/* 0x800aaa94 */ sll	$v0,$v1,0x1
.L800aaa98:
/* 0x800aaa98 */ addu	$v0,$v0,$v1
.L800aaa9c:
/* 0x800aaa9c */ sll	$v0,$v0,0x6
.L800aaaa0:
/* 0x800aaaa0 */ subu	$v0,$v0,$v1
.L800aaaa4:
/* 0x800aaaa4 */ addu	$v1,$t3,$t4
.L800aaaa8:
/* 0x800aaaa8 */ div	$zero,$v0,$v1
.L800aaaac:
/* 0x800aaaac */ mflo	$a1
.L800aaab0:
/* 0x800aaab0 */ sll	$v1,$a3,0x1
.L800aaab4:
/* 0x800aaab4 */ addu	$v1,$v1,$a3
.L800aaab8:
/* 0x800aaab8 */ addiu	$v0,$t5,-2
.L800aaabc:
/* 0x800aaabc */ subu	$v1,$v1,$v0
.L800aaac0:
/* 0x800aaac0 */ sll	$v0,$v1,0x3
.L800aaac4:
/* 0x800aaac4 */ addu	$v0,$v0,$v1
.L800aaac8:
/* 0x800aaac8 */ sll	$v0,$v0,0x6
.L800aaacc:
/* 0x800aaacc */ div	$zero,$v0,$t0
.L800aaad0:
/* 0x800aaad0 */ mflo	$v0
.L800aaad4:
/* 0x800aaad4 */ addiu	$v1,$zero,576
.L800aaad8:
/* 0x800aaad8 */ sll	$zero,$zero,0x0
.L800aaadc:
/* 0x800aaadc */ div	$zero,$v1,$t0
.L800aaae0:
/* 0x800aaae0 */ mflo	$v1
.L800aaae4:
/* 0x800aaae4 */ lui	$a0,0x5555
.L800aaae8:
/* 0x800aaae8 */ ori	$a0,$a0,0x5556
.L800aaaec:
/* 0x800aaaec */ mult	$v0,$a0
.L800aaaf0:
/* 0x800aaaf0 */ mfhi	$t7
.L800aaaf4:
/* 0x800aaaf4 */ sll	$zero,$zero,0x0
.L800aaaf8:
/* 0x800aaaf8 */ sll	$zero,$zero,0x0
.L800aaafc:
/* 0x800aaafc */ mult	$v1,$a0
.L800aab00:
/* 0x800aab00 */ sra	$v0,$v0,0x1f
.L800aab04:
/* 0x800aab04 */ subu	$v0,$t7,$v0
.L800aab08:
/* 0x800aab08 */ addiu	$a0,$zero,288
.L800aab0c:
/* 0x800aab0c */ subu	$s0,$a0,$v0
.L800aab10:
/* 0x800aab10 */ sra	$v1,$v1,0x1f
.L800aab14:
/* 0x800aab14 */ mfhi	$a3
.L800aab18:
/* 0x800aab18 */ subu	$v1,$a3,$v1
.L800aab1c:
/* 0x800aab1c */ bgtz	$a1,.L800aab28
.L800aab20:
/* 0x800aab20 */ addu	$s6,$s0,$v1
.L800aab24:
/* 0x800aab24 */ slt	$a1,$zero,$t1
.L800aab28:
/* 0x800aab28 */ addiu	$s7,$zero,115
.L800aab2c:
/* 0x800aab2c */ lbu	$v1,1($t2)
.L800aab30:
/* 0x800aab30 */ addiu	$v0,$zero,1
.L800aab34:
/* 0x800aab34 */ bne	$v1,$v0,.L800aab78
.L800aab38:
/* 0x800aab38 */ subu	$s1,$s7,$a1
.L800aab3c:
/* 0x800aab3c */ lw	$v1,12($t2)
.L800aab40:
/* 0x800aab40 */ lw	$v0,16($t2)
.L800aab44:
/* 0x800aab44 */ sll	$zero,$zero,0x0
.L800aab48:
/* 0x800aab48 */ mult	$v1,$v0
.L800aab4c:
/* 0x800aab4c */ mflo	$v1
.L800aab50:
/* 0x800aab50 */ sll	$v0,$v1,0x3
.L800aab54:
/* 0x800aab54 */ addu	$v0,$v0,$v1
.L800aab58:
/* 0x800aab58 */ sll	$v0,$v0,0x6
.L800aab5c:
/* 0x800aab5c */ div	$zero,$v0,$t0
.L800aab60:
/* 0x800aab60 */ mflo	$v1
.L800aab64:
/* 0x800aab64 */ sll	$zero,$zero,0x0
.L800aab68:
/* 0x800aab68 */ bgez	$v1,.L800aab78
.L800aab6c:
/* 0x800aab6c */ sra	$s2,$v1,0x8
.L800aab70:
/* 0x800aab70 */ addiu	$v1,$v1,255
.L800aab74:
/* 0x800aab74 */ sra	$s2,$v1,0x8
.L800aab78:
/* 0x800aab78 */ bne	$t5,$zero,.L800aab90
.L800aab7c:
/* 0x800aab7c */ addiu	$s5,$zero,254
.L800aab80:
/* 0x800aab80 */ addu	$s5,$zero,$zero
.L800aab84:
/* 0x800aab84 */ addiu	$s4,$zero,110
.L800aab88:
/* 0x800aab88 */ j	.L800aab98
.L800aab8c:
/* 0x800aab8c */ addiu	$s3,$zero,161
.L800aab90:
/* 0x800aab90 */ addu	$s4,$zero,$zero
.L800aab94:
/* 0x800aab94 */ addu	$s3,$s5,$zero
.L800aab98:
/* 0x800aab98 */ beq	$a2,$zero,.L800aac20
.L800aab9c:
/* 0x800aab9c */ subu	$v0,$a2,$t3
.L800aaba0:
/* 0x800aaba0 */ sll	$a3,$v0,0x1
.L800aaba4:
/* 0x800aaba4 */ addu	$a3,$a3,$v0
.L800aaba8:
/* 0x800aaba8 */ sll	$a3,$a3,0x6
.L800aabac:
/* 0x800aabac */ subu	$a3,$a3,$v0
.L800aabb0:
/* 0x800aabb0 */ addu	$v0,$t3,$t4
.L800aabb4:
/* 0x800aabb4 */ div	$zero,$a3,$v0
.L800aabb8:
/* 0x800aabb8 */ mflo	$a3
.L800aabbc:
/* 0x800aabbc */ lui	$t0,0x8000
.L800aabc0:
/* 0x800aabc0 */ ori	$t0,$t0,0xa
.L800aabc4:
/* 0x800aabc4 */ addu	$a0,$s0,$s2
.L800aabc8:
/* 0x800aabc8 */ sll	$a0,$a0,0x10
.L800aabcc:
/* 0x800aabcc */ sra	$a0,$a0,0x10
.L800aabd0:
/* 0x800aabd0 */ sll	$a1,$s1,0x10
.L800aabd4:
/* 0x800aabd4 */ sra	$a1,$a1,0x10
.L800aabd8:
/* 0x800aabd8 */ lui	$v0,0x800b
.L800aabdc:
/* 0x800aabdc */ subu	$a2,$s6,$s0
.L800aabe0:
/* 0x800aabe0 */ sll	$a2,$a2,0x10
.L800aabe4:
/* 0x800aabe4 */ lw	$v0,-14104($v0)
.L800aabe8:
/* 0x800aabe8 */ sra	$a2,$a2,0x10
.L800aabec:
/* 0x800aabec */ lbu	$v1,144($v0)
.L800aabf0:
/* 0x800aabf0 */ andi	$v0,$s8,0xff
.L800aabf4:
/* 0x800aabf4 */ sw	$v0,28($sp)
.L800aabf8:
/* 0x800aabf8 */ sw	$t0,32($sp)
.L800aabfc:
/* 0x800aabfc */ sw	$v1,16($sp)
.L800aac00:
/* 0x800aac00 */ sw	$v1,20($sp)
.L800aac04:
/* 0x800aac04 */ sw	$v1,24($sp)
.L800aac08:
/* 0x800aac08 */ sll	$a3,$a3,0x10
.L800aac0c:
/* 0x800aac0c */ jal	0x80023dbc
.L800aac10:
/* 0x800aac10 */ sra	$a3,$a3,0x10
.L800aac14:
/* 0x800aac14 */ addiu	$a0,$zero,32
.L800aac18:
/* 0x800aac18 */ jal	0x80023f68
.L800aac1c:
/* 0x800aac1c */ addiu	$a1,$zero,10
.L800aac20:
/* 0x800aac20 */ addu	$a0,$s0,$s2
.L800aac24:
/* 0x800aac24 */ sll	$a0,$a0,0x10
.L800aac28:
/* 0x800aac28 */ sra	$a0,$a0,0x10
.L800aac2c:
/* 0x800aac2c */ sll	$a1,$s1,0x10
.L800aac30:
/* 0x800aac30 */ sra	$a1,$a1,0x10
.L800aac34:
/* 0x800aac34 */ subu	$a2,$s6,$s0
.L800aac38:
/* 0x800aac38 */ sll	$a2,$a2,0x10
.L800aac3c:
/* 0x800aac3c */ sra	$a2,$a2,0x10
.L800aac40:
/* 0x800aac40 */ subu	$a3,$s7,$s1
.L800aac44:
/* 0x800aac44 */ sll	$a3,$a3,0x10
.L800aac48:
/* 0x800aac48 */ sra	$a3,$a3,0x10
.L800aac4c:
/* 0x800aac4c */ andi	$v0,$s8,0xff
.L800aac50:
/* 0x800aac50 */ sw	$v0,28($sp)
.L800aac54:
/* 0x800aac54 */ addiu	$v0,$zero,10
.L800aac58:
/* 0x800aac58 */ sw	$s5,16($sp)
.L800aac5c:
/* 0x800aac5c */ sw	$s4,20($sp)
.L800aac60:
/* 0x800aac60 */ sw	$s3,24($sp)
.L800aac64:
/* 0x800aac64 */ jal	0x80023dbc
.L800aac68:
/* 0x800aac68 */ sw	$v0,32($sp)
.L800aac6c:
/* 0x800aac6c */ lw	$ra,76($sp)
.L800aac70:
/* 0x800aac70 */ lw	$s8,72($sp)
.L800aac74:
/* 0x800aac74 */ lw	$s7,68($sp)
.L800aac78:
/* 0x800aac78 */ lw	$s6,64($sp)
.L800aac7c:
/* 0x800aac7c */ lw	$s5,60($sp)
.L800aac80:
/* 0x800aac80 */ lw	$s4,56($sp)
.L800aac84:
/* 0x800aac84 */ lw	$s3,52($sp)
.L800aac88:
/* 0x800aac88 */ lw	$s2,48($sp)
.L800aac8c:
/* 0x800aac8c */ lw	$s1,44($sp)
.L800aac90:
/* 0x800aac90 */ lw	$s0,40($sp)
.L800aac94:
/* 0x800aac94 */ jr	$ra
.L800aac98:
/* 0x800aac98 */ addiu	$sp,$sp,80
.size FUN_800aaa28, .-FUN_800aaa28
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800aac9c
.globl FUN_800aac9c
.type FUN_800aac9c, @function
FUN_800aac9c:
.L800aac9c:
/* 0x800aac9c */ addiu	$sp,$sp,-32
.L800aaca0:
/* 0x800aaca0 */ lui	$v0,0x8012
.L800aaca4:
/* 0x800aaca4 */ addiu	$t0,$v0,-30072
.L800aaca8:
/* 0x800aaca8 */ sll	$v0,$a2,0x1
.L800aacac:
/* 0x800aacac */ addu	$v0,$v0,$a2
.L800aacb0:
/* 0x800aacb0 */ addiu	$a0,$a0,-2
.L800aacb4:
/* 0x800aacb4 */ subu	$v0,$v0,$a0
.L800aacb8:
/* 0x800aacb8 */ sll	$v0,$v0,0x1
.L800aacbc:
/* 0x800aacbc */ addiu	$v0,$v0,-1
.L800aacc0:
/* 0x800aacc0 */ sll	$a0,$v0,0x3
.L800aacc4:
/* 0x800aacc4 */ addu	$a0,$a0,$v0
.L800aacc8:
/* 0x800aacc8 */ sw	$ra,24($sp)
.L800aaccc:
/* 0x800aaccc */ lw	$a3,40($t0)
.L800aacd0:
/* 0x800aacd0 */ sll	$a0,$a0,0x6
.L800aacd4:
/* 0x800aacd4 */ div	$zero,$a0,$a3
.L800aacd8:
/* 0x800aacd8 */ mflo	$a0
.L800aacdc:
/* 0x800aacdc */ lw	$a2,56($t0)
.L800aace0:
/* 0x800aace0 */ sll	$zero,$zero,0x0
.L800aace4:
/* 0x800aace4 */ subu	$a1,$a1,$a2
.L800aace8:
/* 0x800aace8 */ sll	$v1,$a1,0x1
.L800aacec:
/* 0x800aacec */ addu	$v1,$v1,$a1
.L800aacf0:
/* 0x800aacf0 */ sll	$v1,$v1,0x6
.L800aacf4:
/* 0x800aacf4 */ lw	$v0,48($t0)
.L800aacf8:
/* 0x800aacf8 */ subu	$v1,$v1,$a1
.L800aacfc:
/* 0x800aacfc */ subu	$v0,$v0,$a2
.L800aad00:
/* 0x800aad00 */ div	$zero,$v1,$v0
.L800aad04:
/* 0x800aad04 */ mflo	$v1
.L800aad08:
/* 0x800aad08 */ lui	$v0,0x2aaa
.L800aad0c:
/* 0x800aad0c */ ori	$v0,$v0,0xaaab
.L800aad10:
/* 0x800aad10 */ mult	$a0,$v0
.L800aad14:
/* 0x800aad14 */ sra	$a0,$a0,0x1f
.L800aad18:
/* 0x800aad18 */ addiu	$v0,$zero,288
.L800aad1c:
/* 0x800aad1c */ mfhi	$t2
.L800aad20:
/* 0x800aad20 */ subu	$a0,$t2,$a0
.L800aad24:
/* 0x800aad24 */ subu	$a0,$v0,$a0
.L800aad28:
/* 0x800aad28 */ addiu	$v0,$zero,115
.L800aad2c:
/* 0x800aad2c */ subu	$a1,$v0,$v1
.L800aad30:
/* 0x800aad30 */ lbu	$v1,1($t0)
.L800aad34:
/* 0x800aad34 */ addiu	$v0,$zero,1
.L800aad38:
/* 0x800aad38 */ bne	$v1,$v0,.L800aad7c
.L800aad3c:
/* 0x800aad3c */ addu	$a2,$zero,$zero
.L800aad40:
/* 0x800aad40 */ lw	$v1,12($t0)
.L800aad44:
/* 0x800aad44 */ lw	$v0,16($t0)
.L800aad48:
/* 0x800aad48 */ sll	$zero,$zero,0x0
.L800aad4c:
/* 0x800aad4c */ mult	$v1,$v0
.L800aad50:
/* 0x800aad50 */ mflo	$v1
.L800aad54:
/* 0x800aad54 */ sll	$v0,$v1,0x3
.L800aad58:
/* 0x800aad58 */ addu	$v0,$v0,$v1
.L800aad5c:
/* 0x800aad5c */ sll	$v0,$v0,0x6
.L800aad60:
/* 0x800aad60 */ div	$zero,$v0,$a3
.L800aad64:
/* 0x800aad64 */ mflo	$v1
.L800aad68:
/* 0x800aad68 */ sll	$zero,$zero,0x0
.L800aad6c:
/* 0x800aad6c */ bgez	$v1,.L800aad7c
.L800aad70:
/* 0x800aad70 */ sra	$a2,$v1,0x8
.L800aad74:
/* 0x800aad74 */ addiu	$v1,$v1,255
.L800aad78:
/* 0x800aad78 */ sra	$a2,$v1,0x8
.L800aad7c:
/* 0x800aad7c */ addu	$a0,$a0,$a2
.L800aad80:
/* 0x800aad80 */ lui	$v0,0x8012
.L800aad84:
/* 0x800aad84 */ addiu	$a0,$a0,-5
.L800aad88:
/* 0x800aad88 */ addiu	$a1,$a1,-6
.L800aad8c:
/* 0x800aad8c */ lbu	$a3,-30087($v0)
.L800aad90:
/* 0x800aad90 */ addiu	$a2,$zero,11
.L800aad94:
/* 0x800aad94 */ jal	0x800a8cf0
.L800aad98:
/* 0x800aad98 */ sw	$zero,16($sp)
.L800aad9c:
/* 0x800aad9c */ lw	$ra,24($sp)
.L800aada0:
/* 0x800aada0 */ sll	$zero,$zero,0x0
.L800aada4:
/* 0x800aada4 */ jr	$ra
.L800aada8:
/* 0x800aada8 */ addiu	$sp,$sp,32
.size FUN_800aac9c, .-FUN_800aac9c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800aadac
.globl FUN_800aadac
.type FUN_800aadac, @function
FUN_800aadac:
.L800aadac:
/* 0x800aadac */ lui	$v0,0x7fff
.L800aadb0:
/* 0x800aadb0 */ lui	$t1,0x8012
.L800aadb4:
/* 0x800aadb4 */ addiu	$v1,$t1,-29992
.L800aadb8:
/* 0x800aadb8 */ lw	$a0,4($v1)
.L800aadbc:
/* 0x800aadbc */ ori	$v0,$v0,0xfffe
.L800aadc0:
/* 0x800aadc0 */ slt	$v0,$v0,$a0
.L800aadc4:
/* 0x800aadc4 */ bne	$v0,$zero,.L800aadd8
.L800aadc8:
/* 0x800aadc8 */ lui	$v0,0x51eb
.L800aadcc:
/* 0x800aadcc */ addiu	$v0,$a0,1
.L800aadd0:
/* 0x800aadd0 */ sw	$v0,4($v1)
.L800aadd4:
/* 0x800aadd4 */ lui	$v0,0x51eb
.L800aadd8:
/* 0x800aadd8 */ lw	$a0,-29992($t1)
.L800aaddc:
/* 0x800aaddc */ ori	$v0,$v0,0x851f
.L800aade0:
/* 0x800aade0 */ addiu	$a0,$a0,1
.L800aade4:
/* 0x800aade4 */ mult	$a0,$v0
.L800aade8:
/* 0x800aade8 */ addu	$t0,$v1,$zero
.L800aadec:
/* 0x800aadec */ lui	$v0,0x8010
.L800aadf0:
/* 0x800aadf0 */ addiu	$t3,$v0,10504
.L800aadf4:
/* 0x800aadf4 */ lui	$v0,0x800f
.L800aadf8:
/* 0x800aadf8 */ addiu	$v0,$v0,10504
.L800aadfc:
/* 0x800aadfc */ addu	$t2,$v0,$zero
.L800aae00:
/* 0x800aae00 */ addu	$a1,$t2,$zero
.L800aae04:
/* 0x800aae04 */ sra	$v0,$a0,0x1f
.L800aae08:
/* 0x800aae08 */ mfhi	$t4
.L800aae0c:
/* 0x800aae0c */ sra	$v1,$t4,0x4
.L800aae10:
/* 0x800aae10 */ subu	$v1,$v1,$v0
.L800aae14:
/* 0x800aae14 */ sll	$v0,$v1,0x1
.L800aae18:
/* 0x800aae18 */ addu	$v0,$v0,$v1
.L800aae1c:
/* 0x800aae1c */ sll	$v0,$v0,0x3
.L800aae20:
/* 0x800aae20 */ addu	$v0,$v0,$v1
.L800aae24:
/* 0x800aae24 */ sll	$v0,$v0,0x1
.L800aae28:
/* 0x800aae28 */ subu	$a0,$a0,$v0
.L800aae2c:
/* 0x800aae2c */ sll	$v0,$a0,0x4
.L800aae30:
/* 0x800aae30 */ addiu	$v1,$t0,20
.L800aae34:
/* 0x800aae34 */ addu	$v0,$v0,$v1
.L800aae38:
/* 0x800aae38 */ addu	$a2,$v0,$zero
.L800aae3c:
/* 0x800aae3c */ lbu	$v0,28($t2)
.L800aae40:
/* 0x800aae40 */ addu	$a3,$a2,$zero
.L800aae44:
/* 0x800aae44 */ sw	$a0,-29992($t1)
.L800aae48:
/* 0x800aae48 */ sb	$v0,0($a2)
.L800aae4c:
/* 0x800aae4c */ lbu	$v1,146($a1)
.L800aae50:
/* 0x800aae50 */ addiu	$v0,$zero,7
.L800aae54:
/* 0x800aae54 */ beq	$v1,$v0,.L800aae64
.L800aae58:
/* 0x800aae58 */ addiu	$v0,$zero,-1
.L800aae5c:
/* 0x800aae5c */ bne	$v1,$zero,.L800aae74
.L800aae60:
/* 0x800aae60 */ sll	$zero,$zero,0x0
.L800aae64:
/* 0x800aae64 */ sw	$v0,8($a3)
.L800aae68:
/* 0x800aae68 */ sb	$zero,3($a2)
.L800aae6c:
/* 0x800aae6c */ j	.L800aaed4
.L800aae70:
/* 0x800aae70 */ sb	$zero,1($a2)
.L800aae74:
/* 0x800aae74 */ lbu	$v0,10110($t3)
.L800aae78:
/* 0x800aae78 */ sll	$zero,$zero,0x0
.L800aae7c:
/* 0x800aae7c */ beq	$v0,$zero,.L800aaea8
.L800aae80:
/* 0x800aae80 */ sll	$zero,$zero,0x0
.L800aae84:
/* 0x800aae84 */ lw	$a0,84($a1)
.L800aae88:
/* 0x800aae88 */ lw	$v1,12($t0)
.L800aae8c:
/* 0x800aae8c */ lw	$v0,8($a3)
.L800aae90:
/* 0x800aae90 */ subu	$a0,$a0,$v1
.L800aae94:
/* 0x800aae94 */ sltu	$v0,$v0,$a0
.L800aae98:
/* 0x800aae98 */ beq	$v0,$zero,.L800aaebc
.L800aae9c:
/* 0x800aae9c */ sll	$zero,$zero,0x0
.L800aaea0:
/* 0x800aaea0 */ j	.L800aaebc
.L800aaea4:
/* 0x800aaea4 */ sw	$a0,8($a3)
.L800aaea8:
/* 0x800aaea8 */ lw	$v0,84($a1)
.L800aaeac:
/* 0x800aaeac */ lw	$v1,88($a1)
.L800aaeb0:
/* 0x800aaeb0 */ sll	$zero,$zero,0x0
.L800aaeb4:
/* 0x800aaeb4 */ subu	$v0,$v0,$v1
.L800aaeb8:
/* 0x800aaeb8 */ sw	$v0,8($a3)
.L800aaebc:
/* 0x800aaebc */ lbu	$v0,188($a1)
.L800aaec0:
/* 0x800aaec0 */ sll	$zero,$zero,0x0
.L800aaec4:
/* 0x800aaec4 */ sb	$v0,3($a2)
.L800aaec8:
/* 0x800aaec8 */ lbu	$v0,144($a1)
.L800aaecc:
/* 0x800aaecc */ sll	$zero,$zero,0x0
.L800aaed0:
/* 0x800aaed0 */ sb	$v0,1($a2)
.L800aaed4:
/* 0x800aaed4 */ ori	$v0,$zero,0x9284
.L800aaed8:
/* 0x800aaed8 */ addu	$a1,$a1,$v0
.L800aaedc:
/* 0x800aaedc */ addiu	$a2,$a2,1
.L800aaee0:
/* 0x800aaee0 */ addiu	$a3,$a3,4
.L800aaee4:
/* 0x800aaee4 */ lui	$v0,0x1
.L800aaee8:
/* 0x800aaee8 */ ori	$v0,$v0,0x2508
.L800aaeec:
/* 0x800aaeec */ addu	$v0,$t2,$v0
.L800aaef0:
/* 0x800aaef0 */ slt	$v0,$a1,$v0
.L800aaef4:
/* 0x800aaef4 */ bne	$v0,$zero,.L800aae4c
.L800aaef8:
/* 0x800aaef8 */ addiu	$t0,$t0,4
.L800aaefc:
/* 0x800aaefc */ addu	$a2,$zero,$zero
.L800aaf00:
/* 0x800aaf00 */ lui	$v0,0x800f
.L800aaf04:
/* 0x800aaf04 */ addiu	$a1,$v0,10504
.L800aaf08:
/* 0x800aaf08 */ lui	$v0,0x8012
.L800aaf0c:
/* 0x800aaf0c */ addiu	$a0,$v0,-29992
.L800aaf10:
/* 0x800aaf10 */ ori	$v0,$zero,0x9284
.L800aaf14:
/* 0x800aaf14 */ lw	$v1,84($a1)
.L800aaf18:
/* 0x800aaf18 */ addu	$a1,$a1,$v0
.L800aaf1c:
/* 0x800aaf1c */ addiu	$a2,$a2,1
.L800aaf20:
/* 0x800aaf20 */ slti	$v0,$a2,2
.L800aaf24:
/* 0x800aaf24 */ sw	$v1,12($a0)
.L800aaf28:
/* 0x800aaf28 */ bne	$v0,$zero,.L800aaf10
.L800aaf2c:
/* 0x800aaf2c */ addiu	$a0,$a0,4
.L800aaf30:
/* 0x800aaf30 */ jr	$ra
.L800aaf34:
/* 0x800aaf34 */ sll	$zero,$zero,0x0
.size FUN_800aadac, .-FUN_800aadac
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800aaf38
.globl FUN_800aaf38
.type FUN_800aaf38, @function
FUN_800aaf38:
.L800aaf38:
/* 0x800aaf38 */ addiu	$sp,$sp,-104
.L800aaf3c:
/* 0x800aaf3c */ sw	$s3,84($sp)
.L800aaf40:
/* 0x800aaf40 */ addu	$s3,$a0,$zero
.L800aaf44:
/* 0x800aaf44 */ sw	$s4,88($sp)
.L800aaf48:
/* 0x800aaf48 */ addu	$s4,$a1,$zero
.L800aaf4c:
/* 0x800aaf4c */ sw	$s5,92($sp)
.L800aaf50:
/* 0x800aaf50 */ addu	$s5,$a3,$zero
.L800aaf54:
/* 0x800aaf54 */ sw	$ra,100($sp)
.L800aaf58:
/* 0x800aaf58 */ sw	$s6,96($sp)
.L800aaf5c:
/* 0x800aaf5c */ sw	$s2,80($sp)
.L800aaf60:
/* 0x800aaf60 */ sw	$s1,76($sp)
.L800aaf64:
/* 0x800aaf64 */ beq	$a2,$zero,.L800ab278
.L800aaf68:
/* 0x800aaf68 */ sw	$s0,72($sp)
.L800aaf6c:
/* 0x800aaf6c */ addiu	$v1,$a2,-1
.L800aaf70:
/* 0x800aaf70 */ sltiu	$v0,$v1,7
.L800aaf74:
/* 0x800aaf74 */ beq	$v0,$zero,.L800aafc8
.L800aaf78:
/* 0x800aaf78 */ lui	$v0,0x8002
.L800aaf7c:
/* 0x800aaf7c */ addiu	$v0,$v0,1756
.L800aaf80:
/* 0x800aaf80 */ sll	$v1,$v1,0x2
.L800aaf84:
/* 0x800aaf84 */ addu	$v1,$v1,$v0
.L800aaf88:
/* 0x800aaf88 */ lw	$v0,0($v1)
.L800aaf8c:
/* 0x800aaf8c */ sll	$zero,$zero,0x0
.L800aaf90:
/* 0x800aaf90 */ jr	$v0
.L800aaf94:
/* 0x800aaf94 */ sll	$zero,$zero,0x0
.L800aaf98:
/* 0x800aaf98 */ j	.L800aafcc
.L800aaf9c:
/* 0x800aaf9c */ addu	$s1,$zero,$zero
.L800aafa0:
/* 0x800aafa0 */ j	.L800aafcc
.L800aafa4:
/* 0x800aafa4 */ addiu	$s1,$zero,1
.L800aafa8:
/* 0x800aafa8 */ j	.L800aafcc
.L800aafac:
/* 0x800aafac */ addiu	$s1,$zero,2
.L800aafb0:
/* 0x800aafb0 */ j	.L800aafcc
.L800aafb4:
/* 0x800aafb4 */ addiu	$s1,$zero,3
.L800aafb8:
/* 0x800aafb8 */ j	.L800aafcc
.L800aafbc:
/* 0x800aafbc */ addiu	$s1,$zero,4
.L800aafc0:
/* 0x800aafc0 */ j	.L800aafcc
.L800aafc4:
/* 0x800aafc4 */ addiu	$s1,$zero,5
.L800aafc8:
/* 0x800aafc8 */ addiu	$s1,$zero,6
.L800aafcc:
/* 0x800aafcc */ sll	$v1,$s1,0x1
.L800aafd0:
/* 0x800aafd0 */ addu	$v1,$v1,$s1
.L800aafd4:
/* 0x800aafd4 */ sll	$v1,$v1,0x2
.L800aafd8:
/* 0x800aafd8 */ lui	$v0,0x800e
.L800aafdc:
/* 0x800aafdc */ addiu	$v0,$v0,9316
.L800aafe0:
/* 0x800aafe0 */ addu	$s6,$v1,$v0
.L800aafe4:
/* 0x800aafe4 */ lhu	$v0,0($s6)
.L800aafe8:
/* 0x800aafe8 */ sll	$s2,$s5,0x2
.L800aafec:
/* 0x800aafec */ srl	$v0,$v0,0x1
.L800aaff0:
/* 0x800aaff0 */ subu	$s3,$s3,$v0
.L800aaff4:
/* 0x800aaff4 */ slti	$v0,$s2,129
.L800aaff8:
/* 0x800aaff8 */ bne	$v0,$zero,.L800ab028
.L800aaffc:
/* 0x800aaffc */ slti	$v0,$s1,2
.L800ab000:
/* 0x800ab000 */ slti	$v0,$s2,160
.L800ab004:
/* 0x800ab004 */ bne	$v0,$zero,.L800ab028
.L800ab008:
/* 0x800ab008 */ slti	$v0,$s1,2
.L800ab00c:
/* 0x800ab00c */ slti	$v0,$s2,192
.L800ab010:
/* 0x800ab010 */ beq	$v0,$zero,.L800ab020
.L800ab014:
/* 0x800ab014 */ addiu	$v0,$zero,320
.L800ab018:
/* 0x800ab018 */ j	.L800ab024
.L800ab01c:
/* 0x800ab01c */ subu	$s2,$v0,$s2
.L800ab020:
/* 0x800ab020 */ addiu	$s2,$zero,128
.L800ab024:
/* 0x800ab024 */ slti	$v0,$s1,2
.L800ab028:
/* 0x800ab028 */ beq	$v0,$zero,.L800ab250
.L800ab02c:
/* 0x800ab02c */ addu	$a0,$s3,$zero
.L800ab030:
/* 0x800ab030 */ beq	$s1,$zero,.L800ab044
.L800ab034:
/* 0x800ab034 */ addu	$s0,$zero,$zero
.L800ab038:
/* 0x800ab038 */ slti	$v0,$s0,3
.L800ab03c:
/* 0x800ab03c */ beq	$v0,$zero,.L800ab250
.L800ab040:
/* 0x800ab040 */ addu	$a0,$s3,$zero
.L800ab044:
/* 0x800ab044 */ lui	$v0,0x2aaa
.L800ab048:
/* 0x800ab048 */ ori	$v0,$v0,0xaaab
.L800ab04c:
/* 0x800ab04c */ sra	$a0,$s5,0x2
.L800ab050:
/* 0x800ab050 */ sll	$a1,$s0,0x2
.L800ab054:
/* 0x800ab054 */ addu	$a0,$a0,$a1
.L800ab058:
/* 0x800ab058 */ mult	$a0,$v0
.L800ab05c:
/* 0x800ab05c */ sra	$v0,$a0,0x1f
.L800ab060:
/* 0x800ab060 */ mfhi	$t4
.L800ab064:
/* 0x800ab064 */ sra	$v1,$t4,0x1
.L800ab068:
/* 0x800ab068 */ subu	$t0,$v1,$v0
.L800ab06c:
/* 0x800ab06c */ sll	$v0,$t0,0x1
.L800ab070:
/* 0x800ab070 */ addu	$v0,$v0,$t0
.L800ab074:
/* 0x800ab074 */ sll	$v0,$v0,0x2
.L800ab078:
/* 0x800ab078 */ subu	$t0,$a0,$v0
.L800ab07c:
/* 0x800ab07c */ bne	$s1,$zero,.L800ab08c
.L800ab080:
/* 0x800ab080 */ addiu	$v1,$s2,-20
.L800ab084:
/* 0x800ab084 */ j	.L800ab094
.L800ab088:
/* 0x800ab088 */ addu	$v0,$a1,$s0
.L800ab08c:
/* 0x800ab08c */ addu	$v0,$a1,$s0
.L800ab090:
/* 0x800ab090 */ sll	$v0,$v0,0x1
.L800ab094:
/* 0x800ab094 */ bne	$s1,$zero,.L800ab114
.L800ab098:
/* 0x800ab098 */ subu	$t3,$v1,$v0
.L800ab09c:
/* 0x800ab09c */ addiu	$a0,$zero,32
.L800ab0a0:
/* 0x800ab0a0 */ subu	$a0,$a0,$s0
.L800ab0a4:
/* 0x800ab0a4 */ andi	$v1,$s0,0x3
.L800ab0a8:
/* 0x800ab0a8 */ sll	$v0,$v1,0x1
.L800ab0ac:
/* 0x800ab0ac */ addu	$v0,$v0,$v1
.L800ab0b0:
/* 0x800ab0b0 */ subu	$a3,$a0,$v0
.L800ab0b4:
/* 0x800ab0b4 */ addu	$t1,$a3,$zero
.L800ab0b8:
/* 0x800ab0b8 */ addu	$a1,$s0,$zero
.L800ab0bc:
/* 0x800ab0bc */ sll	$a2,$s0,0x1
.L800ab0c0:
/* 0x800ab0c0 */ addu	$v0,$a2,$s0
.L800ab0c4:
/* 0x800ab0c4 */ sll	$v0,$v0,0x2
.L800ab0c8:
/* 0x800ab0c8 */ subu	$v0,$v0,$s0
.L800ab0cc:
/* 0x800ab0cc */ sll	$v0,$v0,0x1
.L800ab0d0:
/* 0x800ab0d0 */ addiu	$v0,$v0,-98
.L800ab0d4:
/* 0x800ab0d4 */ bgez	$s0,.L800ab0e0
.L800ab0d8:
/* 0x800ab0d8 */ subu	$v0,$s3,$v0
.L800ab0dc:
/* 0x800ab0dc */ addiu	$a1,$s0,3
.L800ab0e0:
/* 0x800ab0e0 */ sra	$a1,$a1,0x2
.L800ab0e4:
/* 0x800ab0e4 */ sll	$a0,$a1,0x2
.L800ab0e8:
/* 0x800ab0e8 */ subu	$t2,$v0,$a0
.L800ab0ec:
/* 0x800ab0ec */ andi	$v1,$s0,0x1
.L800ab0f0:
/* 0x800ab0f0 */ sll	$v0,$v1,0x3
.L800ab0f4:
/* 0x800ab0f4 */ addu	$v0,$v0,$v1
.L800ab0f8:
/* 0x800ab0f8 */ sll	$v0,$v0,0x1
.L800ab0fc:
/* 0x800ab0fc */ addiu	$v0,$v0,10
.L800ab100:
/* 0x800ab100 */ addu	$v0,$s4,$v0
.L800ab104:
/* 0x800ab104 */ addu	$v0,$v0,$a2
.L800ab108:
/* 0x800ab108 */ addu	$a0,$a0,$a1
.L800ab10c:
/* 0x800ab10c */ j	.L800ab178
.L800ab110:
/* 0x800ab110 */ subu	$a0,$v0,$a0
.L800ab114:
/* 0x800ab114 */ sll	$v0,$s0,0x1
.L800ab118:
/* 0x800ab118 */ addu	$v0,$v0,$s0
.L800ab11c:
/* 0x800ab11c */ sll	$v0,$v0,0x1
.L800ab120:
/* 0x800ab120 */ addiu	$v1,$zero,32
.L800ab124:
/* 0x800ab124 */ subu	$a3,$v1,$v0
.L800ab128:
/* 0x800ab128 */ addu	$t1,$a3,$zero
.L800ab12c:
/* 0x800ab12c */ andi	$v0,$s0,0x1
.L800ab130:
/* 0x800ab130 */ sll	$v1,$v0,0x3
.L800ab134:
/* 0x800ab134 */ subu	$v1,$v1,$v0
.L800ab138:
/* 0x800ab138 */ sll	$v1,$v1,0x3
.L800ab13c:
/* 0x800ab13c */ addiu	$v1,$v1,-64
.L800ab140:
/* 0x800ab140 */ subu	$v1,$s3,$v1
.L800ab144:
/* 0x800ab144 */ andi	$a0,$s0,0x2
.L800ab148:
/* 0x800ab148 */ sll	$v0,$a0,0x3
.L800ab14c:
/* 0x800ab14c */ addu	$v0,$v0,$a0
.L800ab150:
/* 0x800ab150 */ subu	$t2,$v1,$v0
.L800ab154:
/* 0x800ab154 */ sll	$a0,$s0,0x3
.L800ab158:
/* 0x800ab158 */ addiu	$a0,$a0,10
.L800ab15c:
/* 0x800ab15c */ addu	$a0,$s4,$a0
.L800ab160:
/* 0x800ab160 */ srl	$v1,$s0,0x1f
.L800ab164:
/* 0x800ab164 */ addu	$v1,$s0,$v1
.L800ab168:
/* 0x800ab168 */ sra	$v1,$v1,0x1
.L800ab16c:
/* 0x800ab16c */ sll	$v0,$v1,0x3
.L800ab170:
/* 0x800ab170 */ subu	$v0,$v0,$v1
.L800ab174:
/* 0x800ab174 */ addu	$a0,$a0,$v0
.L800ab178:
/* 0x800ab178 */ blez	$t3,.L800ab238
.L800ab17c:
/* 0x800ab17c */ addu	$v1,$t0,$zero
.L800ab180:
/* 0x800ab180 */ addiu	$v0,$zero,640
.L800ab184:
/* 0x800ab184 */ sw	$v0,16($sp)
.L800ab188:
/* 0x800ab188 */ sw	$v0,24($sp)
.L800ab18c:
/* 0x800ab18c */ addiu	$v0,$zero,176
.L800ab190:
/* 0x800ab190 */ sw	$v0,28($sp)
.L800ab194:
/* 0x800ab194 */ sra	$v0,$t1,0x1
.L800ab198:
/* 0x800ab198 */ subu	$v0,$t2,$v0
.L800ab19c:
/* 0x800ab19c */ sll	$v0,$v0,0x10
.L800ab1a0:
/* 0x800ab1a0 */ sra	$t2,$v0,0x10
.L800ab1a4:
/* 0x800ab1a4 */ sra	$v0,$a3,0x1
.L800ab1a8:
/* 0x800ab1a8 */ subu	$v0,$a0,$v0
.L800ab1ac:
/* 0x800ab1ac */ sll	$v0,$v0,0x10
.L800ab1b0:
/* 0x800ab1b0 */ sra	$a1,$v0,0x10
.L800ab1b4:
/* 0x800ab1b4 */ sll	$v0,$t1,0x10
.L800ab1b8:
/* 0x800ab1b8 */ sra	$a2,$v0,0x10
.L800ab1bc:
/* 0x800ab1bc */ sll	$v0,$a3,0x10
.L800ab1c0:
/* 0x800ab1c0 */ sra	$a3,$v0,0x10
.L800ab1c4:
/* 0x800ab1c4 */ bgez	$t0,.L800ab1d0
.L800ab1c8:
/* 0x800ab1c8 */ sw	$zero,20($sp)
.L800ab1cc:
/* 0x800ab1cc */ addiu	$v1,$t0,7
.L800ab1d0:
/* 0x800ab1d0 */ sra	$t1,$v1,0x3
.L800ab1d4:
/* 0x800ab1d4 */ sll	$v0,$t1,0x3
.L800ab1d8:
/* 0x800ab1d8 */ subu	$v0,$t0,$v0
.L800ab1dc:
/* 0x800ab1dc */ sll	$v0,$v0,0x15
.L800ab1e0:
/* 0x800ab1e0 */ sra	$v0,$v0,0x10
.L800ab1e4:
/* 0x800ab1e4 */ sw	$v0,32($sp)
.L800ab1e8:
/* 0x800ab1e8 */ lui	$t0,0x8000
.L800ab1ec:
/* 0x800ab1ec */ ori	$t0,$t0,0xa
.L800ab1f0:
/* 0x800ab1f0 */ lui	$v1,0x8000
.L800ab1f4:
/* 0x800ab1f4 */ ori	$v1,$v1,0x10
.L800ab1f8:
/* 0x800ab1f8 */ addu	$a0,$t2,$zero
.L800ab1fc:
/* 0x800ab1fc */ sll	$v0,$t1,0x5
.L800ab200:
/* 0x800ab200 */ addiu	$v0,$v0,52
.L800ab204:
/* 0x800ab204 */ sll	$v0,$v0,0x10
.L800ab208:
/* 0x800ab208 */ sra	$v0,$v0,0x10
.L800ab20c:
/* 0x800ab20c */ sw	$v0,36($sp)
.L800ab210:
/* 0x800ab210 */ addiu	$v0,$zero,32
.L800ab214:
/* 0x800ab214 */ sw	$v0,40($sp)
.L800ab218:
/* 0x800ab218 */ sw	$v0,44($sp)
.L800ab21c:
/* 0x800ab21c */ andi	$v0,$t3,0xff
.L800ab220:
/* 0x800ab220 */ sw	$v0,48($sp)
.L800ab224:
/* 0x800ab224 */ sw	$v0,52($sp)
.L800ab228:
/* 0x800ab228 */ sw	$v0,56($sp)
.L800ab22c:
/* 0x800ab22c */ sw	$t0,60($sp)
.L800ab230:
/* 0x800ab230 */ jal	0x80023c00
.L800ab234:
/* 0x800ab234 */ sw	$v1,64($sp)
.L800ab238:
/* 0x800ab238 */ bne	$s1,$zero,.L800ab038
.L800ab23c:
/* 0x800ab23c */ addiu	$s0,$s0,1
.L800ab240:
/* 0x800ab240 */ slti	$v0,$s0,5
.L800ab244:
/* 0x800ab244 */ bne	$v0,$zero,.L800ab048
.L800ab248:
/* 0x800ab248 */ lui	$v0,0x2aaa
.L800ab24c:
/* 0x800ab24c */ addu	$a0,$s3,$zero
.L800ab250:
/* 0x800ab250 */ addu	$a1,$s4,$zero
.L800ab254:
/* 0x800ab254 */ addu	$a2,$s6,$zero
.L800ab258:
/* 0x800ab258 */ addu	$a3,$zero,$zero
.L800ab25c:
/* 0x800ab25c */ addiu	$v0,$zero,128
.L800ab260:
/* 0x800ab260 */ sw	$v0,24($sp)
.L800ab264:
/* 0x800ab264 */ addiu	$v0,$zero,10
.L800ab268:
/* 0x800ab268 */ sw	$zero,16($sp)
.L800ab26c:
/* 0x800ab26c */ sw	$zero,20($sp)
.L800ab270:
/* 0x800ab270 */ jal	0x800ac2bc
.L800ab274:
/* 0x800ab274 */ sw	$v0,28($sp)
.L800ab278:
/* 0x800ab278 */ lw	$ra,100($sp)
.L800ab27c:
/* 0x800ab27c */ lw	$s6,96($sp)
.L800ab280:
/* 0x800ab280 */ lw	$s5,92($sp)
.L800ab284:
/* 0x800ab284 */ lw	$s4,88($sp)
.L800ab288:
/* 0x800ab288 */ lw	$s3,84($sp)
.L800ab28c:
/* 0x800ab28c */ lw	$s2,80($sp)
.L800ab290:
/* 0x800ab290 */ lw	$s1,76($sp)
.L800ab294:
/* 0x800ab294 */ lw	$s0,72($sp)
.L800ab298:
/* 0x800ab298 */ jr	$ra
.L800ab29c:
/* 0x800ab29c */ addiu	$sp,$sp,104
.size FUN_800aaf38, .-FUN_800aaf38
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ab2a0
.globl FUN_800ab2a0
.type FUN_800ab2a0, @function
FUN_800ab2a0:
.L800ab2a0:
/* 0x800ab2a0 */ addiu	$sp,$sp,-72
.L800ab2a4:
/* 0x800ab2a4 */ sw	$s3,60($sp)
.L800ab2a8:
/* 0x800ab2a8 */ addu	$s3,$a1,$zero
.L800ab2ac:
/* 0x800ab2ac */ sw	$ra,68($sp)
.L800ab2b0:
/* 0x800ab2b0 */ sw	$s4,64($sp)
.L800ab2b4:
/* 0x800ab2b4 */ sw	$s2,56($sp)
.L800ab2b8:
/* 0x800ab2b8 */ sw	$s1,52($sp)
.L800ab2bc:
/* 0x800ab2bc */ sw	$s0,48($sp)
.L800ab2c0:
/* 0x800ab2c0 */ lbu	$a0,0($a3)
.L800ab2c4:
/* 0x800ab2c4 */ jal	0x8007ee38
.L800ab2c8:
/* 0x800ab2c8 */ addu	$s4,$a2,$zero
.L800ab2cc:
/* 0x800ab2cc */ beq	$v0,$zero,.L800ab3e8
.L800ab2d0:
/* 0x800ab2d0 */ sll	$zero,$zero,0x0
.L800ab2d4:
/* 0x800ab2d4 */ jal	0x8007f0dc
.L800ab2d8:
/* 0x800ab2d8 */ addu	$a0,$v0,$zero
.L800ab2dc:
/* 0x800ab2dc */ sll	$s0,$v0,0x1
.L800ab2e0:
/* 0x800ab2e0 */ addu	$s1,$zero,$zero
.L800ab2e4:
/* 0x800ab2e4 */ addiu	$s2,$zero,128
.L800ab2e8:
/* 0x800ab2e8 */ lui	$v0,0x9249
.L800ab2ec:
/* 0x800ab2ec */ ori	$v0,$v0,0x2493
.L800ab2f0:
/* 0x800ab2f0 */ mult	$s0,$v0
.L800ab2f4:
/* 0x800ab2f4 */ mfhi	$v1
.L800ab2f8:
/* 0x800ab2f8 */ addiu	$a0,$s3,-64
.L800ab2fc:
/* 0x800ab2fc */ addiu	$v0,$zero,18
.L800ab300:
/* 0x800ab300 */ mult	$s1,$v0
.L800ab304:
/* 0x800ab304 */ addiu	$s1,$s1,1
.L800ab308:
/* 0x800ab308 */ addiu	$v0,$zero,128
.L800ab30c:
/* 0x800ab30c */ sh	$v0,32($sp)
.L800ab310:
/* 0x800ab310 */ addiu	$v0,$zero,18
.L800ab314:
/* 0x800ab314 */ sh	$v0,34($sp)
.L800ab318:
/* 0x800ab318 */ addiu	$v0,$zero,768
.L800ab31c:
/* 0x800ab31c */ sh	$v0,40($sp)
.L800ab320:
/* 0x800ab320 */ addiu	$v0,$s0,52
.L800ab324:
/* 0x800ab324 */ addu	$a3,$v1,$s0
.L800ab328:
/* 0x800ab328 */ sra	$t0,$a3,0x3
.L800ab32c:
/* 0x800ab32c */ sh	$v0,42($sp)
.L800ab330:
/* 0x800ab330 */ sra	$v0,$s0,0x1f
.L800ab334:
/* 0x800ab334 */ subu	$t0,$t0,$v0
.L800ab338:
/* 0x800ab338 */ srl	$a2,$t0,0x1f
.L800ab33c:
/* 0x800ab33c */ addu	$a2,$t0,$a2
.L800ab340:
/* 0x800ab340 */ sra	$a2,$a2,0x1
.L800ab344:
/* 0x800ab344 */ sll	$v1,$a2,0x1
.L800ab348:
/* 0x800ab348 */ subu	$v1,$t0,$v1
.L800ab34c:
/* 0x800ab34c */ sll	$v1,$v1,0x8
.L800ab350:
/* 0x800ab350 */ andi	$a1,$v1,0x100
.L800ab354:
/* 0x800ab354 */ sra	$a1,$a1,0x4
.L800ab358:
/* 0x800ab358 */ sra	$a3,$a3,0x5
.L800ab35c:
/* 0x800ab35c */ subu	$a3,$a3,$v0
.L800ab360:
/* 0x800ab360 */ sll	$v0,$a3,0x6
.L800ab364:
/* 0x800ab364 */ addiu	$v0,$v0,832
.L800ab368:
/* 0x800ab368 */ andi	$v0,$v0,0x3ff
.L800ab36c:
/* 0x800ab36c */ sra	$v0,$v0,0x6
.L800ab370:
/* 0x800ab370 */ or	$a1,$a1,$v0
.L800ab374:
/* 0x800ab374 */ andi	$v1,$v1,0x200
.L800ab378:
/* 0x800ab378 */ sll	$v1,$v1,0x2
.L800ab37c:
/* 0x800ab37c */ or	$a1,$a1,$v1
.L800ab380:
/* 0x800ab380 */ sll	$a3,$a3,0x1
.L800ab384:
/* 0x800ab384 */ subu	$a2,$a2,$a3
.L800ab388:
/* 0x800ab388 */ sll	$a2,$a2,0x7
.L800ab38c:
/* 0x800ab38c */ sll	$v0,$t0,0x3
.L800ab390:
/* 0x800ab390 */ subu	$v0,$v0,$t0
.L800ab394:
/* 0x800ab394 */ sll	$v0,$v0,0x1
.L800ab398:
/* 0x800ab398 */ subu	$v0,$s0,$v0
.L800ab39c:
/* 0x800ab39c */ sll	$v1,$v0,0x3
.L800ab3a0:
/* 0x800ab3a0 */ addu	$v1,$v1,$v0
.L800ab3a4:
/* 0x800ab3a4 */ sll	$v1,$v1,0x1
.L800ab3a8:
/* 0x800ab3a8 */ addiu	$v0,$zero,10
.L800ab3ac:
/* 0x800ab3ac */ sb	$a2,38($sp)
.L800ab3b0:
/* 0x800ab3b0 */ addiu	$a2,$sp,32
.L800ab3b4:
/* 0x800ab3b4 */ addu	$a3,$zero,$zero
.L800ab3b8:
/* 0x800ab3b8 */ sh	$a1,36($sp)
.L800ab3bc:
/* 0x800ab3bc */ sb	$v1,39($sp)
.L800ab3c0:
/* 0x800ab3c0 */ sw	$zero,16($sp)
.L800ab3c4:
/* 0x800ab3c4 */ sw	$zero,20($sp)
.L800ab3c8:
/* 0x800ab3c8 */ sw	$s2,24($sp)
.L800ab3cc:
/* 0x800ab3cc */ sw	$v0,28($sp)
.L800ab3d0:
/* 0x800ab3d0 */ mflo	$t2
.L800ab3d4:
/* 0x800ab3d4 */ jal	0x800ac2bc
.L800ab3d8:
/* 0x800ab3d8 */ addu	$a1,$s4,$t2
.L800ab3dc:
/* 0x800ab3dc */ slti	$v0,$s1,2
.L800ab3e0:
/* 0x800ab3e0 */ bne	$v0,$zero,.L800ab2e8
.L800ab3e4:
/* 0x800ab3e4 */ addiu	$s0,$s0,1
.L800ab3e8:
/* 0x800ab3e8 */ lw	$ra,68($sp)
.L800ab3ec:
/* 0x800ab3ec */ lw	$s4,64($sp)
.L800ab3f0:
/* 0x800ab3f0 */ lw	$s3,60($sp)
.L800ab3f4:
/* 0x800ab3f4 */ lw	$s2,56($sp)
.L800ab3f8:
/* 0x800ab3f8 */ lw	$s1,52($sp)
.L800ab3fc:
/* 0x800ab3fc */ lw	$s0,48($sp)
.L800ab400:
/* 0x800ab400 */ jr	$ra
.L800ab404:
/* 0x800ab404 */ addiu	$sp,$sp,72
.size FUN_800ab2a0, .-FUN_800ab2a0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ab408
.globl FUN_800ab408
.type FUN_800ab408, @function
FUN_800ab408:
.L800ab408:
/* 0x800ab408 */ addiu	$sp,$sp,-96
.L800ab40c:
/* 0x800ab40c */ sw	$s3,68($sp)
.L800ab410:
/* 0x800ab410 */ addu	$s3,$a0,$zero
.L800ab414:
/* 0x800ab414 */ sw	$s2,64($sp)
.L800ab418:
/* 0x800ab418 */ addu	$s2,$a2,$zero
.L800ab41c:
/* 0x800ab41c */ addiu	$a0,$zero,-15
.L800ab420:
/* 0x800ab420 */ addu	$a2,$s3,$zero
.L800ab424:
/* 0x800ab424 */ sw	$a3,108($sp)
.L800ab428:
/* 0x800ab428 */ addiu	$a3,$zero,3
.L800ab42c:
/* 0x800ab42c */ ori	$v0,$zero,0x8000
.L800ab430:
/* 0x800ab430 */ sw	$s0,56($sp)
.L800ab434:
/* 0x800ab434 */ addiu	$s0,$zero,128
.L800ab438:
/* 0x800ab438 */ sw	$ra,92($sp)
.L800ab43c:
/* 0x800ab43c */ sw	$s8,88($sp)
.L800ab440:
/* 0x800ab440 */ sw	$s7,84($sp)
.L800ab444:
/* 0x800ab444 */ sw	$s6,80($sp)
.L800ab448:
/* 0x800ab448 */ sw	$s5,76($sp)
.L800ab44c:
/* 0x800ab44c */ sw	$s4,72($sp)
.L800ab450:
/* 0x800ab450 */ sw	$s1,60($sp)
.L800ab454:
/* 0x800ab454 */ sw	$a1,100($sp)
.L800ab458:
/* 0x800ab458 */ sw	$zero,16($sp)
.L800ab45c:
/* 0x800ab45c */ sw	$v0,20($sp)
.L800ab460:
/* 0x800ab460 */ jal	0x800a6430
.L800ab464:
/* 0x800ab464 */ sw	$s0,24($sp)
.L800ab468:
/* 0x800ab468 */ lui	$v0,0x800e
.L800ab46c:
/* 0x800ab46c */ addiu	$a2,$v0,9268
.L800ab470:
/* 0x800ab470 */ addu	$a3,$zero,$zero
.L800ab474:
/* 0x800ab474 */ lw	$a1,100($sp)
.L800ab478:
/* 0x800ab478 */ lhu	$a0,9268($v0)
.L800ab47c:
/* 0x800ab47c */ addiu	$s1,$zero,10
.L800ab480:
/* 0x800ab480 */ sw	$zero,16($sp)
.L800ab484:
/* 0x800ab484 */ sw	$zero,20($sp)
.L800ab488:
/* 0x800ab488 */ sw	$s0,24($sp)
.L800ab48c:
/* 0x800ab48c */ sw	$s1,28($sp)
.L800ab490:
/* 0x800ab490 */ negu	$a0,$a0
.L800ab494:
/* 0x800ab494 */ srl	$v0,$a0,0x1f
.L800ab498:
/* 0x800ab498 */ addu	$a0,$a0,$v0
.L800ab49c:
/* 0x800ab49c */ jal	0x800ac2bc
.L800ab4a0:
/* 0x800ab4a0 */ sra	$a0,$a0,0x1
.L800ab4a4:
/* 0x800ab4a4 */ lui	$v0,0x800b
.L800ab4a8:
/* 0x800ab4a8 */ lw	$v0,-14104($v0)
.L800ab4ac:
/* 0x800ab4ac */ sll	$zero,$zero,0x0
.L800ab4b0:
/* 0x800ab4b0 */ sb	$s0,23($v0)
.L800ab4b4:
/* 0x800ab4b4 */ lui	$v0,0x800b
.L800ab4b8:
/* 0x800ab4b8 */ lw	$v0,-14100($v0)
.L800ab4bc:
/* 0x800ab4bc */ sll	$zero,$zero,0x0
.L800ab4c0:
/* 0x800ab4c0 */ sh	$s1,8($v0)
.L800ab4c4:
/* 0x800ab4c4 */ lbu	$a0,0($s2)
.L800ab4c8:
/* 0x800ab4c8 */ jal	0x8007ee38
.L800ab4cc:
/* 0x800ab4cc */ sll	$zero,$zero,0x0
.L800ab4d0:
/* 0x800ab4d0 */ beq	$v0,$zero,.L800ab4f0
.L800ab4d4:
/* 0x800ab4d4 */ sw	$v0,32($sp)
.L800ab4d8:
/* 0x800ab4d8 */ addu	$a0,$s3,$zero
.L800ab4dc:
/* 0x800ab4dc */ addu	$a1,$zero,$zero
.L800ab4e0:
/* 0x800ab4e0 */ lw	$t1,100($sp)
.L800ab4e4:
/* 0x800ab4e4 */ addu	$a3,$s2,$zero
.L800ab4e8:
/* 0x800ab4e8 */ jal	0x800ab2a0
.L800ab4ec:
/* 0x800ab4ec */ addiu	$a2,$t1,24
.L800ab4f0:
/* 0x800ab4f0 */ addu	$s6,$zero,$zero
.L800ab4f4:
/* 0x800ab4f4 */ addu	$s7,$s2,$zero
.L800ab4f8:
/* 0x800ab4f8 */ lui	$v0,0x800f
.L800ab4fc:
/* 0x800ab4fc */ addiu	$v0,$v0,10504
.L800ab500:
/* 0x800ab500 */ sw	$s7,36($sp)
.L800ab504:
/* 0x800ab504 */ sw	$v0,40($sp)
.L800ab508:
/* 0x800ab508 */ lw	$t1,40($sp)
.L800ab50c:
/* 0x800ab50c */ sll	$zero,$zero,0x0
.L800ab510:
/* 0x800ab510 */ lbu	$v1,146($t1)
.L800ab514:
/* 0x800ab514 */ addiu	$v0,$zero,7
.L800ab518:
/* 0x800ab518 */ beq	$v1,$v0,.L800ab6c4
.L800ab51c:
/* 0x800ab51c */ sll	$zero,$zero,0x0
.L800ab520:
/* 0x800ab520 */ beq	$v1,$zero,.L800ab6c4
.L800ab524:
/* 0x800ab524 */ sll	$zero,$zero,0x0
.L800ab528:
/* 0x800ab528 */ beq	$s6,$zero,.L800ab534
.L800ab52c:
/* 0x800ab52c */ addiu	$s4,$zero,1
.L800ab530:
/* 0x800ab530 */ addiu	$s4,$zero,-1
.L800ab534:
/* 0x800ab534 */ lw	$t1,36($sp)
.L800ab538:
/* 0x800ab538 */ sll	$zero,$zero,0x0
.L800ab53c:
/* 0x800ab53c */ lw	$v1,8($t1)
.L800ab540:
/* 0x800ab540 */ addiu	$v0,$zero,-1
.L800ab544:
/* 0x800ab544 */ beq	$v1,$v0,.L800ab58c
.L800ab548:
/* 0x800ab548 */ sll	$v0,$s4,0x3
.L800ab54c:
/* 0x800ab54c */ subu	$v0,$v0,$s4
.L800ab550:
/* 0x800ab550 */ sll	$v0,$v0,0x3
.L800ab554:
/* 0x800ab554 */ subu	$v0,$v0,$s4
.L800ab558:
/* 0x800ab558 */ sll	$v0,$v0,0x2
.L800ab55c:
/* 0x800ab55c */ beq	$s6,$zero,.L800ab568
.L800ab560:
/* 0x800ab560 */ negu	$s1,$v0
.L800ab564:
/* 0x800ab564 */ addiu	$s1,$s1,-130
.L800ab568:
/* 0x800ab568 */ lw	$t1,100($sp)
.L800ab56c:
/* 0x800ab56c */ sll	$zero,$zero,0x0
.L800ab570:
/* 0x800ab570 */ addiu	$a1,$t1,50
.L800ab574:
/* 0x800ab574 */ lw	$t1,36($sp)
.L800ab578:
/* 0x800ab578 */ addu	$a0,$s1,$zero
.L800ab57c:
/* 0x800ab57c */ sw	$zero,16($sp)
.L800ab580:
/* 0x800ab580 */ lw	$a2,8($t1)
.L800ab584:
/* 0x800ab584 */ jal	0x800a858c
.L800ab588:
/* 0x800ab588 */ addiu	$a3,$zero,128
.L800ab58c:
/* 0x800ab58c */ addu	$a1,$zero,$zero
.L800ab590:
/* 0x800ab590 */ lbu	$a2,1($s7)
.L800ab594:
/* 0x800ab594 */ lw	$a0,32($sp)
.L800ab598:
/* 0x800ab598 */ jal	0x8007eeb0
.L800ab59c:
/* 0x800ab59c */ addiu	$a2,$a2,-1
.L800ab5a0:
/* 0x800ab5a0 */ sll	$a0,$s4,0x3
.L800ab5a4:
/* 0x800ab5a4 */ subu	$a0,$a0,$s4
.L800ab5a8:
/* 0x800ab5a8 */ sll	$v1,$a0,0x4
.L800ab5ac:
/* 0x800ab5ac */ subu	$v1,$v1,$a0
.L800ab5b0:
/* 0x800ab5b0 */ sll	$v1,$v1,0x1
.L800ab5b4:
/* 0x800ab5b4 */ negu	$s1,$v1
.L800ab5b8:
/* 0x800ab5b8 */ beq	$s6,$zero,.L800ab5c4
.L800ab5bc:
/* 0x800ab5bc */ addu	$t0,$v0,$zero
.L800ab5c0:
/* 0x800ab5c0 */ addiu	$s1,$s1,-68
.L800ab5c4:
/* 0x800ab5c4 */ lui	$v0,0x800e
.L800ab5c8:
/* 0x800ab5c8 */ addiu	$s5,$v0,9292
.L800ab5cc:
/* 0x800ab5cc */ lw	$t1,100($sp)
.L800ab5d0:
/* 0x800ab5d0 */ lbu	$s8,1($s7)
.L800ab5d4:
/* 0x800ab5d4 */ sll	$zero,$zero,0x0
.L800ab5d8:
/* 0x800ab5d8 */ addiu	$v0,$s8,-1
.L800ab5dc:
/* 0x800ab5dc */ sltiu	$v0,$v0,3
.L800ab5e0:
/* 0x800ab5e0 */ beq	$v0,$zero,.L800ab698
.L800ab5e4:
/* 0x800ab5e4 */ addiu	$a1,$t1,14
.L800ab5e8:
/* 0x800ab5e8 */ addu	$s2,$s1,$zero
.L800ab5ec:
/* 0x800ab5ec */ addu	$s3,$a1,$zero
.L800ab5f0:
/* 0x800ab5f0 */ blez	$t0,.L800ab698
.L800ab5f4:
/* 0x800ab5f4 */ addiu	$s0,$zero,1
.L800ab5f8:
/* 0x800ab5f8 */ addu	$a0,$s2,$zero
.L800ab5fc:
/* 0x800ab5fc */ addu	$a1,$s3,$zero
.L800ab600:
/* 0x800ab600 */ addu	$a2,$s5,$zero
.L800ab604:
/* 0x800ab604 */ addu	$a3,$zero,$zero
.L800ab608:
/* 0x800ab608 */ addiu	$v0,$s8,-1
.L800ab60c:
/* 0x800ab60c */ sw	$v0,20($sp)
.L800ab610:
/* 0x800ab610 */ addiu	$v0,$zero,128
.L800ab614:
/* 0x800ab614 */ sw	$v0,24($sp)
.L800ab618:
/* 0x800ab618 */ addiu	$v0,$zero,10
.L800ab61c:
/* 0x800ab61c */ sw	$zero,16($sp)
.L800ab620:
/* 0x800ab620 */ sw	$v0,28($sp)
.L800ab624:
/* 0x800ab624 */ jal	0x800ac2bc
.L800ab628:
/* 0x800ab628 */ sw	$t0,48($sp)
.L800ab62c:
/* 0x800ab62c */ lui	$v0,0x6666
.L800ab630:
/* 0x800ab630 */ ori	$v0,$v0,0x6667
.L800ab634:
/* 0x800ab634 */ mult	$s0,$v0
.L800ab638:
/* 0x800ab638 */ sra	$v0,$s0,0x1f
.L800ab63c:
/* 0x800ab63c */ lhu	$a0,0($s5)
.L800ab640:
/* 0x800ab640 */ lw	$t0,48($sp)
.L800ab644:
/* 0x800ab644 */ mfhi	$t1
.L800ab648:
/* 0x800ab648 */ sra	$v1,$t1,0x1
.L800ab64c:
/* 0x800ab64c */ subu	$v1,$v1,$v0
.L800ab650:
/* 0x800ab650 */ sll	$v0,$v1,0x2
.L800ab654:
/* 0x800ab654 */ addu	$v0,$v0,$v1
.L800ab658:
/* 0x800ab658 */ bne	$s0,$v0,.L800ab688
.L800ab65c:
/* 0x800ab65c */ addu	$s2,$s2,$a0
.L800ab660:
/* 0x800ab660 */ mult	$a0,$v1
.L800ab664:
/* 0x800ab664 */ lhu	$v0,2($s5)
.L800ab668:
/* 0x800ab668 */ sll	$zero,$zero,0x0
.L800ab66c:
/* 0x800ab66c */ srl	$v0,$v0,0x1
.L800ab670:
/* 0x800ab670 */ addu	$s3,$s3,$v0
.L800ab674:
/* 0x800ab674 */ mflo	$v1
.L800ab678:
/* 0x800ab678 */ srl	$v0,$v1,0x1f
.L800ab67c:
/* 0x800ab67c */ addu	$v1,$v1,$v0
.L800ab680:
/* 0x800ab680 */ sra	$v1,$v1,0x1
.L800ab684:
/* 0x800ab684 */ addu	$s2,$s1,$v1
.L800ab688:
/* 0x800ab688 */ addiu	$s0,$s0,1
.L800ab68c:
/* 0x800ab68c */ slt	$v0,$t0,$s0
.L800ab690:
/* 0x800ab690 */ beq	$v0,$zero,.L800ab5fc
.L800ab694:
/* 0x800ab694 */ addu	$a0,$s2,$zero
.L800ab698:
/* 0x800ab698 */ sll	$a0,$s4,0x4
.L800ab69c:
/* 0x800ab69c */ subu	$a0,$a0,$s4
.L800ab6a0:
/* 0x800ab6a0 */ sll	$a0,$a0,0x4
.L800ab6a4:
/* 0x800ab6a4 */ negu	$a0,$a0
.L800ab6a8:
/* 0x800ab6a8 */ lui	$t1,0x8012
.L800ab6ac:
/* 0x800ab6ac */ addiu	$t1,$t1,-29160
.L800ab6b0:
/* 0x800ab6b0 */ lw	$a3,12($t1)
.L800ab6b4:
/* 0x800ab6b4 */ lw	$t1,100($sp)
.L800ab6b8:
/* 0x800ab6b8 */ lbu	$a2,3($s7)
.L800ab6bc:
/* 0x800ab6bc */ jal	0x800aaf38
.L800ab6c0:
/* 0x800ab6c0 */ addiu	$a1,$t1,29
.L800ab6c4:
/* 0x800ab6c4 */ addiu	$s7,$s7,1
.L800ab6c8:
/* 0x800ab6c8 */ lw	$t1,36($sp)
.L800ab6cc:
/* 0x800ab6cc */ ori	$v0,$zero,0x9284
.L800ab6d0:
/* 0x800ab6d0 */ addiu	$t1,$t1,4
.L800ab6d4:
/* 0x800ab6d4 */ sw	$t1,36($sp)
.L800ab6d8:
/* 0x800ab6d8 */ lw	$t1,40($sp)
.L800ab6dc:
/* 0x800ab6dc */ addiu	$s6,$s6,1
.L800ab6e0:
/* 0x800ab6e0 */ addu	$t1,$t1,$v0
.L800ab6e4:
/* 0x800ab6e4 */ slti	$v0,$s6,2
.L800ab6e8:
/* 0x800ab6e8 */ bne	$v0,$zero,.L800ab508
.L800ab6ec:
/* 0x800ab6ec */ sw	$t1,40($sp)
.L800ab6f0:
/* 0x800ab6f0 */ lw	$t1,108($sp)
.L800ab6f4:
/* 0x800ab6f4 */ sll	$zero,$zero,0x0
.L800ab6f8:
/* 0x800ab6f8 */ beq	$t1,$zero,.L800ab71c
.L800ab6fc:
/* 0x800ab6fc */ lui	$v0,0x800b
.L800ab700:
/* 0x800ab700 */ lw	$v0,-14104($v0)
.L800ab704:
/* 0x800ab704 */ sll	$zero,$zero,0x0
.L800ab708:
/* 0x800ab708 */ lbu	$v0,144($v0)
.L800ab70c:
/* 0x800ab70c */ sll	$zero,$zero,0x0
.L800ab710:
/* 0x800ab710 */ srl	$v0,$v0,0x2
.L800ab714:
/* 0x800ab714 */ j	.L800ab720
.L800ab718:
/* 0x800ab718 */ addiu	$a2,$v0,16
.L800ab71c:
/* 0x800ab71c */ addu	$a2,$zero,$zero
.L800ab720:
/* 0x800ab720 */ addiu	$a1,$zero,73
.L800ab724:
/* 0x800ab724 */ lw	$t1,100($sp)
.L800ab728:
/* 0x800ab728 */ addiu	$a3,$zero,10
.L800ab72c:
/* 0x800ab72c */ sll	$a0,$t1,0x10
.L800ab730:
/* 0x800ab730 */ jal	0x800a8488
.L800ab734:
/* 0x800ab734 */ sra	$a0,$a0,0x10
.L800ab738:
/* 0x800ab738 */ lw	$ra,92($sp)
.L800ab73c:
/* 0x800ab73c */ lw	$s8,88($sp)
.L800ab740:
/* 0x800ab740 */ lw	$s7,84($sp)
.L800ab744:
/* 0x800ab744 */ lw	$s6,80($sp)
.L800ab748:
/* 0x800ab748 */ lw	$s5,76($sp)
.L800ab74c:
/* 0x800ab74c */ lw	$s4,72($sp)
.L800ab750:
/* 0x800ab750 */ lw	$s3,68($sp)
.L800ab754:
/* 0x800ab754 */ lw	$s2,64($sp)
.L800ab758:
/* 0x800ab758 */ lw	$s1,60($sp)
.L800ab75c:
/* 0x800ab75c */ lw	$s0,56($sp)
.L800ab760:
/* 0x800ab760 */ jr	$ra
.L800ab764:
/* 0x800ab764 */ addiu	$sp,$sp,96
.size FUN_800ab408, .-FUN_800ab408
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ab768
.globl FUN_800ab768
.type FUN_800ab768, @function
FUN_800ab768:
.L800ab768:
/* 0x800ab768 */ lui	$v0,0x8012
.L800ab76c:
/* 0x800ab76c */ lw	$v1,-29988($v0)
.L800ab770:
/* 0x800ab770 */ addiu	$sp,$sp,-56
.L800ab774:
/* 0x800ab774 */ sw	$s5,44($sp)
.L800ab778:
/* 0x800ab778 */ addiu	$s5,$zero,50
.L800ab77c:
/* 0x800ab77c */ sw	$ra,52($sp)
.L800ab780:
/* 0x800ab780 */ sw	$s6,48($sp)
.L800ab784:
/* 0x800ab784 */ sw	$s4,40($sp)
.L800ab788:
/* 0x800ab788 */ sw	$s3,36($sp)
.L800ab78c:
/* 0x800ab78c */ sw	$s2,32($sp)
.L800ab790:
/* 0x800ab790 */ sw	$s1,28($sp)
.L800ab794:
/* 0x800ab794 */ slti	$v0,$v1,51
.L800ab798:
/* 0x800ab798 */ beq	$v0,$zero,.L800ab7a4
.L800ab79c:
/* 0x800ab79c */ sw	$s0,24($sp)
.L800ab7a0:
/* 0x800ab7a0 */ addu	$s5,$v1,$zero
.L800ab7a4:
/* 0x800ab7a4 */ lui	$a1,0x8012
.L800ab7a8:
/* 0x800ab7a8 */ addiu	$s0,$a1,-29160
.L800ab7ac:
/* 0x800ab7ac */ lw	$v0,4($s0)
.L800ab7b0:
/* 0x800ab7b0 */ sll	$zero,$zero,0x0
.L800ab7b4:
/* 0x800ab7b4 */ bne	$v0,$zero,.L800ab83c
.L800ab7b8:
/* 0x800ab7b8 */ lui	$a2,0x8012
.L800ab7bc:
/* 0x800ab7bc */ lui	$v0,0x800b
.L800ab7c0:
/* 0x800ab7c0 */ lw	$v0,-14104($v0)
.L800ab7c4:
/* 0x800ab7c4 */ sll	$zero,$zero,0x0
.L800ab7c8:
/* 0x800ab7c8 */ lw	$v1,80($v0)
.L800ab7cc:
/* 0x800ab7cc */ lw	$v0,96($v0)
.L800ab7d0:
/* 0x800ab7d0 */ sll	$zero,$zero,0x0
.L800ab7d4:
/* 0x800ab7d4 */ or	$a0,$v1,$v0
.L800ab7d8:
/* 0x800ab7d8 */ andi	$v0,$a0,0x4000
.L800ab7dc:
/* 0x800ab7dc */ beq	$v0,$zero,.L800ab808
.L800ab7e0:
/* 0x800ab7e0 */ addiu	$v1,$s5,-3
.L800ab7e4:
/* 0x800ab7e4 */ lw	$v0,-29160($a1)
.L800ab7e8:
/* 0x800ab7e8 */ sll	$zero,$zero,0x0
.L800ab7ec:
/* 0x800ab7ec */ slt	$v0,$v0,$v1
.L800ab7f0:
/* 0x800ab7f0 */ beq	$v0,$zero,.L800ab80c
.L800ab7f4:
/* 0x800ab7f4 */ andi	$v0,$a0,0x1000
.L800ab7f8:
/* 0x800ab7f8 */ jal	0x80026940
.L800ab7fc:
/* 0x800ab7fc */ addiu	$a0,$zero,794
.L800ab800:
/* 0x800ab800 */ j	.L800ab830
.L800ab804:
/* 0x800ab804 */ addiu	$v0,$zero,1
.L800ab808:
/* 0x800ab808 */ andi	$v0,$a0,0x1000
.L800ab80c:
/* 0x800ab80c */ beq	$v0,$zero,.L800ab838
.L800ab810:
/* 0x800ab810 */ lui	$v0,0x8012
.L800ab814:
/* 0x800ab814 */ lw	$v1,-29160($v0)
.L800ab818:
/* 0x800ab818 */ sll	$zero,$zero,0x0
.L800ab81c:
/* 0x800ab81c */ blez	$v1,.L800ab838
.L800ab820:
/* 0x800ab820 */ addiu	$s0,$v0,-29160
.L800ab824:
/* 0x800ab824 */ jal	0x80026940
.L800ab828:
/* 0x800ab828 */ addiu	$a0,$zero,794
.L800ab82c:
/* 0x800ab82c */ addiu	$v0,$zero,2
.L800ab830:
/* 0x800ab830 */ sw	$zero,8($s0)
.L800ab834:
/* 0x800ab834 */ sw	$v0,4($s0)
.L800ab838:
/* 0x800ab838 */ lui	$a2,0x8012
.L800ab83c:
/* 0x800ab83c */ addiu	$a1,$a2,-29160
.L800ab840:
/* 0x800ab840 */ lw	$v0,8($a1)
.L800ab844:
/* 0x800ab844 */ lw	$a0,4($a1)
.L800ab848:
/* 0x800ab848 */ addiu	$v1,$v0,1
.L800ab84c:
/* 0x800ab84c */ addiu	$v0,$zero,1
.L800ab850:
/* 0x800ab850 */ beq	$a0,$v0,.L800ab86c
.L800ab854:
/* 0x800ab854 */ sw	$v1,8($a1)
.L800ab858:
/* 0x800ab858 */ addiu	$v0,$zero,2
.L800ab85c:
/* 0x800ab85c */ beq	$a0,$v0,.L800ab8bc
.L800ab860:
/* 0x800ab860 */ addu	$s1,$zero,$zero
.L800ab864:
/* 0x800ab864 */ j	.L800ab904
.L800ab868:
/* 0x800ab868 */ sll	$zero,$zero,0x0
.L800ab86c:
/* 0x800ab86c */ slti	$v0,$v1,8
.L800ab870:
/* 0x800ab870 */ beq	$v0,$zero,.L800ab8a4
.L800ab874:
/* 0x800ab874 */ sll	$v0,$v1,0x3
.L800ab878:
/* 0x800ab878 */ addu	$v0,$v0,$v1
.L800ab87c:
/* 0x800ab87c */ sll	$v0,$v0,0x3
.L800ab880:
/* 0x800ab880 */ addu	$v0,$v0,$v1
.L800ab884:
/* 0x800ab884 */ bgez	$v0,.L800ab890
.L800ab888:
/* 0x800ab888 */ sll	$zero,$zero,0x0
.L800ab88c:
/* 0x800ab88c */ addiu	$v0,$v0,7
.L800ab890:
/* 0x800ab890 */ sra	$v0,$v0,0x3
.L800ab894:
/* 0x800ab894 */ negu	$v0,$v0
.L800ab898:
/* 0x800ab898 */ addiu	$v1,$zero,-2
.L800ab89c:
/* 0x800ab89c */ j	.L800ab904
.L800ab8a0:
/* 0x800ab8a0 */ and	$s1,$v0,$v1
.L800ab8a4:
/* 0x800ab8a4 */ lw	$v0,-29160($a2)
.L800ab8a8:
/* 0x800ab8a8 */ addu	$s1,$zero,$zero
.L800ab8ac:
/* 0x800ab8ac */ sw	$zero,4($a1)
.L800ab8b0:
/* 0x800ab8b0 */ addiu	$v0,$v0,1
.L800ab8b4:
/* 0x800ab8b4 */ j	.L800ab904
.L800ab8b8:
/* 0x800ab8b8 */ sw	$v0,-29160($a2)
.L800ab8bc:
/* 0x800ab8bc */ slti	$v0,$v1,8
.L800ab8c0:
/* 0x800ab8c0 */ beq	$v0,$zero,.L800ab8f0
.L800ab8c4:
/* 0x800ab8c4 */ sll	$v0,$v1,0x3
.L800ab8c8:
/* 0x800ab8c8 */ addu	$v0,$v0,$v1
.L800ab8cc:
/* 0x800ab8cc */ sll	$v0,$v0,0x3
.L800ab8d0:
/* 0x800ab8d0 */ addu	$v0,$v0,$v1
.L800ab8d4:
/* 0x800ab8d4 */ bgez	$v0,.L800ab8e4
.L800ab8d8:
/* 0x800ab8d8 */ sra	$v1,$v0,0x3
.L800ab8dc:
/* 0x800ab8dc */ addiu	$v0,$v0,7
.L800ab8e0:
/* 0x800ab8e0 */ sra	$v1,$v0,0x3
.L800ab8e4:
/* 0x800ab8e4 */ addiu	$v0,$zero,-2
.L800ab8e8:
/* 0x800ab8e8 */ j	.L800ab904
.L800ab8ec:
/* 0x800ab8ec */ and	$s1,$v1,$v0
.L800ab8f0:
/* 0x800ab8f0 */ lw	$v0,-29160($a2)
.L800ab8f4:
/* 0x800ab8f4 */ addu	$s1,$zero,$zero
.L800ab8f8:
/* 0x800ab8f8 */ sw	$zero,4($a1)
.L800ab8fc:
/* 0x800ab8fc */ addiu	$v0,$v0,-1
.L800ab900:
/* 0x800ab900 */ sw	$v0,-29160($a2)
.L800ab904:
/* 0x800ab904 */ jal	0x800a88ec
.L800ab908:
/* 0x800ab908 */ addiu	$a0,$zero,10
.L800ab90c:
/* 0x800ab90c */ jal	0x800a88ec
.L800ab910:
/* 0x800ab910 */ addiu	$a0,$zero,10
.L800ab914:
/* 0x800ab914 */ blez	$s5,.L800ab9f0
.L800ab918:
/* 0x800ab918 */ sll	$zero,$zero,0x0
.L800ab91c:
/* 0x800ab91c */ bgtz	$s1,.L800ab934
.L800ab920:
/* 0x800ab920 */ addiu	$s3,$zero,-1
.L800ab924:
/* 0x800ab924 */ bgez	$s1,.L800ab934
.L800ab928:
/* 0x800ab928 */ addu	$s3,$zero,$zero
.L800ab92c:
/* 0x800ab92c */ j	.L800ab938
.L800ab930:
/* 0x800ab930 */ addiu	$s2,$zero,3
.L800ab934:
/* 0x800ab934 */ addiu	$s2,$zero,2
.L800ab938:
/* 0x800ab938 */ blez	$s5,.L800ab9f0
.L800ab93c:
/* 0x800ab93c */ addu	$s0,$zero,$zero
.L800ab940:
/* 0x800ab940 */ lui	$s6,0x8012
.L800ab944:
/* 0x800ab944 */ addiu	$s4,$s6,-29992
.L800ab948:
/* 0x800ab948 */ lui	$v1,0x51eb
.L800ab94c:
/* 0x800ab94c */ ori	$v1,$v1,0x851f
.L800ab950:
/* 0x800ab950 */ lw	$a0,-29992($s6)
.L800ab954:
/* 0x800ab954 */ addiu	$v0,$s0,-50
.L800ab958:
/* 0x800ab958 */ subu	$a0,$a0,$v0
.L800ab95c:
/* 0x800ab95c */ mult	$a0,$v1
.L800ab960:
/* 0x800ab960 */ sra	$v0,$a0,0x1f
.L800ab964:
/* 0x800ab964 */ mfhi	$t0
.L800ab968:
/* 0x800ab968 */ sra	$v1,$t0,0x4
.L800ab96c:
/* 0x800ab96c */ subu	$a2,$v1,$v0
.L800ab970:
/* 0x800ab970 */ sll	$v0,$a2,0x1
.L800ab974:
/* 0x800ab974 */ addu	$v0,$v0,$a2
.L800ab978:
/* 0x800ab978 */ sll	$v0,$v0,0x3
.L800ab97c:
/* 0x800ab97c */ addu	$v0,$v0,$a2
.L800ab980:
/* 0x800ab980 */ sll	$v0,$v0,0x1
.L800ab984:
/* 0x800ab984 */ lui	$v1,0x8012
.L800ab988:
/* 0x800ab988 */ lw	$v1,-29160($v1)
.L800ab98c:
/* 0x800ab98c */ subu	$a2,$a0,$v0
.L800ab990:
/* 0x800ab990 */ subu	$v1,$s0,$v1
.L800ab994:
/* 0x800ab994 */ slt	$v0,$v1,$s3
.L800ab998:
/* 0x800ab998 */ bne	$v0,$zero,.L800ab9e0
.L800ab99c:
/* 0x800ab99c */ slt	$v0,$s2,$v1
.L800ab9a0:
/* 0x800ab9a0 */ bne	$v0,$zero,.L800ab9e0
.L800ab9a4:
/* 0x800ab9a4 */ sll	$a1,$v1,0x3
.L800ab9a8:
/* 0x800ab9a8 */ addu	$a1,$a1,$v1
.L800ab9ac:
/* 0x800ab9ac */ sll	$a1,$a1,0x3
.L800ab9b0:
/* 0x800ab9b0 */ addu	$a1,$a1,$v1
.L800ab9b4:
/* 0x800ab9b4 */ addiu	$v0,$s1,-116
.L800ab9b8:
/* 0x800ab9b8 */ addu	$a1,$a1,$v0
.L800ab9bc:
/* 0x800ab9bc */ sll	$v0,$a2,0x4
.L800ab9c0:
/* 0x800ab9c0 */ addiu	$a2,$s4,20
.L800ab9c4:
/* 0x800ab9c4 */ addu	$a2,$v0,$a2
.L800ab9c8:
/* 0x800ab9c8 */ lw	$a3,4($s4)
.L800ab9cc:
/* 0x800ab9cc */ lw	$v0,8($s4)
.L800ab9d0:
/* 0x800ab9d0 */ subu	$a0,$a3,$s0
.L800ab9d4:
/* 0x800ab9d4 */ subu	$a3,$a3,$v0
.L800ab9d8:
/* 0x800ab9d8 */ jal	0x800ab408
.L800ab9dc:
/* 0x800ab9dc */ slt	$a3,$s0,$a3
.L800ab9e0:
/* 0x800ab9e0 */ addiu	$s0,$s0,1
.L800ab9e4:
/* 0x800ab9e4 */ slt	$v0,$s0,$s5
.L800ab9e8:
/* 0x800ab9e8 */ bne	$v0,$zero,.L800ab94c
.L800ab9ec:
/* 0x800ab9ec */ lui	$v1,0x51eb
.L800ab9f0:
/* 0x800ab9f0 */ addiu	$a0,$zero,-320
.L800ab9f4:
/* 0x800ab9f4 */ addiu	$a1,$zero,-116
.L800ab9f8:
/* 0x800ab9f8 */ addiu	$a2,$zero,640
.L800ab9fc:
/* 0x800ab9fc */ addiu	$a3,$zero,220
.L800aba00:
/* 0x800aba00 */ addiu	$s0,$zero,10
.L800aba04:
/* 0x800aba04 */ jal	0x800a8848
.L800aba08:
/* 0x800aba08 */ sw	$s0,16($sp)
.L800aba0c:
/* 0x800aba0c */ addiu	$a0,$zero,-320
.L800aba10:
/* 0x800aba10 */ addiu	$a1,$zero,-116
.L800aba14:
/* 0x800aba14 */ addiu	$a2,$zero,640
.L800aba18:
/* 0x800aba18 */ addiu	$a3,$zero,219
.L800aba1c:
/* 0x800aba1c */ jal	0x800a8848
.L800aba20:
/* 0x800aba20 */ sw	$s0,16($sp)
.L800aba24:
/* 0x800aba24 */ lui	$v1,0x8012
.L800aba28:
/* 0x800aba28 */ addiu	$v1,$v1,-29160
.L800aba2c:
/* 0x800aba2c */ lw	$v0,12($v1)
.L800aba30:
/* 0x800aba30 */ sll	$zero,$zero,0x0
.L800aba34:
/* 0x800aba34 */ addiu	$v0,$v0,1
.L800aba38:
/* 0x800aba38 */ sw	$v0,12($v1)
.L800aba3c:
/* 0x800aba3c */ lw	$ra,52($sp)
.L800aba40:
/* 0x800aba40 */ lw	$s6,48($sp)
.L800aba44:
/* 0x800aba44 */ lw	$s5,44($sp)
.L800aba48:
/* 0x800aba48 */ lw	$s4,40($sp)
.L800aba4c:
/* 0x800aba4c */ lw	$s3,36($sp)
.L800aba50:
/* 0x800aba50 */ lw	$s2,32($sp)
.L800aba54:
/* 0x800aba54 */ lw	$s1,28($sp)
.L800aba58:
/* 0x800aba58 */ lw	$s0,24($sp)
.L800aba5c:
/* 0x800aba5c */ jr	$ra
.L800aba60:
/* 0x800aba60 */ addiu	$sp,$sp,56
.size FUN_800ab768, .-FUN_800ab768
