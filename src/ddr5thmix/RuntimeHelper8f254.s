.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008f254
.globl FUN_8008f254
.type FUN_8008f254, @function
FUN_8008f254:
/* Runtime resource and state helper. */
.L8008f254:
/* 0x8008f254 */ addiu	$sp,$sp,-112
.L8008f258:
/* 0x8008f258 */ sw	$s0,72($sp)
.L8008f25c:
/* 0x8008f25c */ lw	$s0,144($sp)
.L8008f260:
/* 0x8008f260 */ sw	$s2,80($sp)
.L8008f264:
/* 0x8008f264 */ lw	$s2,148($sp)
.L8008f268:
/* 0x8008f268 */ sw	$s8,104($sp)
.L8008f26c:
/* 0x8008f26c */ addu	$s8,$a1,$zero
.L8008f270:
/* 0x8008f270 */ sw	$s4,88($sp)
.L8008f274:
/* 0x8008f274 */ addu	$s4,$a2,$zero
.L8008f278:
/* 0x8008f278 */ sw	$s5,92($sp)
.L8008f27c:
/* 0x8008f27c */ addu	$s5,$a3,$zero
.L8008f280:
/* 0x8008f280 */ sw	$a0,112($sp)
.L8008f284:
/* 0x8008f284 */ addiu	$a0,$zero,103
.L8008f288:
/* 0x8008f288 */ sw	$ra,108($sp)
.L8008f28c:
/* 0x8008f28c */ sw	$s7,100($sp)
.L8008f290:
/* 0x8008f290 */ sw	$s6,96($sp)
.L8008f294:
/* 0x8008f294 */ sw	$s3,84($sp)
.L8008f298:
/* 0x8008f298 */ jal	0x80098880
.L8008f29c:
/* 0x8008f29c */ sw	$s1,76($sp)
.L8008f2a0:
/* 0x8008f2a0 */ addu	$s1,$v0,$zero
.L8008f2a4:
/* 0x8008f2a4 */ addiu	$v0,$s5,-1
.L8008f2a8:
/* 0x8008f2a8 */ sltiu	$v0,$v0,5
.L8008f2ac:
/* 0x8008f2ac */ bne	$v0,$zero,.L8008f2cc
.L8008f2b0:
/* 0x8008f2b0 */ sll	$zero,$zero,0x0
.L8008f2b4:
/* 0x8008f2b4 */ bltz	$s5,.L8008f2cc
.L8008f2b8:
/* 0x8008f2b8 */ addiu	$a0,$sp,40
.L8008f2bc:
/* 0x8008f2bc */ lui	$a1,0x8002
.L8008f2c0:
/* 0x8008f2c0 */ addiu	$a1,$a1,-6408
.L8008f2c4:
/* 0x8008f2c4 */ jal	0x800613f0
.L8008f2c8:
/* 0x8008f2c8 */ addu	$a2,$s5,$zero
.L8008f2cc:
/* 0x8008f2cc */ lw	$t0,128($sp)
.L8008f2d0:
/* 0x8008f2d0 */ slt	$v0,$s2,$s0
.L8008f2d4:
/* 0x8008f2d4 */ addiu	$s6,$t0,-3
.L8008f2d8:
/* 0x8008f2d8 */ sltiu	$a0,$s6,2
.L8008f2dc:
/* 0x8008f2dc */ beq	$v0,$zero,.L8008f2e8
.L8008f2e0:
/* 0x8008f2e0 */ addu	$s6,$a0,$zero
.L8008f2e4:
/* 0x8008f2e4 */ addu	$s0,$s2,$zero
.L8008f2e8:
/* 0x8008f2e8 */ bgez	$s0,.L8008f2f8
.L8008f2ec:
/* 0x8008f2ec */ sll	$v0,$s0,0x1
.L8008f2f0:
/* 0x8008f2f0 */ addu	$s0,$zero,$zero
.L8008f2f4:
/* 0x8008f2f4 */ sll	$v0,$s0,0x1
.L8008f2f8:
/* 0x8008f2f8 */ addu	$v0,$v0,$s0
.L8008f2fc:
/* 0x8008f2fc */ sll	$v0,$v0,0x4
.L8008f300:
/* 0x8008f300 */ div	$zero,$v0,$s2
.L8008f304:
/* 0x8008f304 */ mflo	$s7
.L8008f308:
/* 0x8008f308 */ blez	$s5,.L8008f4b4
.L8008f30c:
/* 0x8008f30c */ addiu	$s0,$zero,22
.L8008f310:
/* 0x8008f310 */ mult	$a0,$s0
.L8008f314:
/* 0x8008f314 */ addiu	$s3,$zero,24
.L8008f318:
/* 0x8008f318 */ addiu	$t0,$zero,7
.L8008f31c:
/* 0x8008f31c */ addiu	$v1,$s5,-1
.L8008f320:
/* 0x8008f320 */ sll	$v0,$v1,0x1
.L8008f324:
/* 0x8008f324 */ addu	$v0,$v0,$v1
.L8008f328:
/* 0x8008f328 */ sw	$t0,64($sp)
.L8008f32c:
/* 0x8008f32c */ lh	$v1,2($s1)
.L8008f330:
/* 0x8008f330 */ sll	$v0,$v0,0x3
.L8008f334:
/* 0x8008f334 */ addu	$a2,$v1,$v0
.L8008f338:
/* 0x8008f338 */ lh	$v1,4($s1)
.L8008f33c:
/* 0x8008f33c */ mflo	$t1
.L8008f340:
/* 0x8008f340 */ addiu	$v0,$t1,96
.L8008f344:
/* 0x8008f344 */ beq	$a0,$zero,.L8008f354
.L8008f348:
/* 0x8008f348 */ addu	$a3,$v1,$v0
.L8008f34c:
/* 0x8008f34c */ addiu	$t0,$zero,58
.L8008f350:
/* 0x8008f350 */ sw	$t0,64($sp)
.L8008f354:
/* 0x8008f354 */ beq	$a0,$zero,.L8008f360
.L8008f358:
/* 0x8008f358 */ addiu	$s2,$zero,4
.L8008f35c:
/* 0x8008f35c */ addiu	$s2,$zero,6
.L8008f360:
/* 0x8008f360 */ addiu	$v0,$s2,22
.L8008f364:
/* 0x8008f364 */ slt	$v0,$s7,$v0
.L8008f368:
/* 0x8008f368 */ beq	$v0,$zero,.L8008f374
.L8008f36c:
/* 0x8008f36c */ sll	$zero,$zero,0x0
.L8008f370:
/* 0x8008f370 */ subu	$s0,$s7,$s2
.L8008f374:
/* 0x8008f374 */ bgez	$s0,.L8008f380
.L8008f378:
/* 0x8008f378 */ addu	$a0,$s8,$zero
.L8008f37c:
/* 0x8008f37c */ addu	$s0,$zero,$zero
.L8008f380:
/* 0x8008f380 */ addu	$a1,$s4,$zero
.L8008f384:
/* 0x8008f384 */ sw	$s3,16($sp)
.L8008f388:
/* 0x8008f388 */ sw	$s0,20($sp)
.L8008f38c:
/* 0x8008f38c */ lh	$v1,10($s1)
.L8008f390:
/* 0x8008f390 */ addiu	$v0,$zero,-1
.L8008f394:
/* 0x8008f394 */ sw	$v0,28($sp)
.L8008f398:
/* 0x8008f398 */ jal	0x80048144
.L8008f39c:
/* 0x8008f39c */ sw	$v1,24($sp)
.L8008f3a0:
/* 0x8008f3a0 */ addu	$a0,$s8,$zero
.L8008f3a4:
/* 0x8008f3a4 */ lh	$a2,14($s1)
.L8008f3a8:
/* 0x8008f3a8 */ lh	$a3,16($s1)
.L8008f3ac:
/* 0x8008f3ac */ jal	0x80049208
.L8008f3b0:
/* 0x8008f3b0 */ addu	$a1,$s4,$zero
.L8008f3b4:
/* 0x8008f3b4 */ lw	$t1,132($sp)
.L8008f3b8:
/* 0x8008f3b8 */ lw	$t0,64($sp)
.L8008f3bc:
/* 0x8008f3bc */ addu	$a0,$s8,$zero
.L8008f3c0:
/* 0x8008f3c0 */ addu	$a2,$t1,$t0
.L8008f3c4:
/* 0x8008f3c4 */ lw	$t1,136($sp)
.L8008f3c8:
/* 0x8008f3c8 */ addu	$a1,$s4,$zero
.L8008f3cc:
/* 0x8008f3cc */ sw	$s3,16($sp)
.L8008f3d0:
/* 0x8008f3d0 */ sw	$s0,20($sp)
.L8008f3d4:
/* 0x8008f3d4 */ jal	0x80049364
.L8008f3d8:
/* 0x8008f3d8 */ addu	$a3,$t1,$s2
.L8008f3dc:
/* 0x8008f3dc */ addu	$a0,$s8,$zero
.L8008f3e0:
/* 0x8008f3e0 */ lw	$a2,140($sp)
.L8008f3e4:
/* 0x8008f3e4 */ addu	$a1,$s4,$zero
.L8008f3e8:
/* 0x8008f3e8 */ addu	$a3,$a2,$zero
.L8008f3ec:
/* 0x8008f3ec */ jal	0x800490f8
.L8008f3f0:
/* 0x8008f3f0 */ sw	$a3,16($sp)
.L8008f3f4:
/* 0x8008f3f4 */ addiu	$s3,$zero,87
.L8008f3f8:
/* 0x8008f3f8 */ mult	$s6,$s3
.L8008f3fc:
/* 0x8008f3fc */ addiu	$s4,$s4,1
.L8008f400:
/* 0x8008f400 */ addiu	$s0,$zero,48
.L8008f404:
/* 0x8008f404 */ lh	$v0,2($s1)
.L8008f408:
/* 0x8008f408 */ lh	$a3,4($s1)
.L8008f40c:
/* 0x8008f40c */ lw	$t1,128($sp)
.L8008f410:
/* 0x8008f410 */ mflo	$t0
.L8008f414:
/* 0x8008f414 */ addu	$a2,$v0,$t0
.L8008f418:
/* 0x8008f418 */ addiu	$v0,$zero,4
.L8008f41c:
/* 0x8008f41c */ beq	$t1,$v0,.L8008f430
.L8008f420:
/* 0x8008f420 */ addu	$v1,$zero,$zero
.L8008f424:
/* 0x8008f424 */ addiu	$v0,$zero,2
.L8008f428:
/* 0x8008f428 */ bne	$t1,$v0,.L8008f438
.L8008f42c:
/* 0x8008f42c */ mult	$s0,$v1
.L8008f430:
/* 0x8008f430 */ addiu	$v1,$zero,1
.L8008f434:
/* 0x8008f434 */ mult	$s0,$v1
.L8008f438:
/* 0x8008f438 */ addu	$s0,$s7,$zero
.L8008f43c:
/* 0x8008f43c */ addu	$a0,$s8,$zero
.L8008f440:
/* 0x8008f440 */ addu	$a1,$s4,$zero
.L8008f444:
/* 0x8008f444 */ sw	$s3,16($sp)
.L8008f448:
/* 0x8008f448 */ sw	$s0,20($sp)
.L8008f44c:
/* 0x8008f44c */ lh	$v1,10($s1)
.L8008f450:
/* 0x8008f450 */ addiu	$v0,$zero,-1
.L8008f454:
/* 0x8008f454 */ sw	$v0,28($sp)
.L8008f458:
/* 0x8008f458 */ sw	$v1,24($sp)
.L8008f45c:
/* 0x8008f45c */ mflo	$t0
.L8008f460:
/* 0x8008f460 */ jal	0x80048144
.L8008f464:
/* 0x8008f464 */ addu	$a3,$a3,$t0
.L8008f468:
/* 0x8008f468 */ addu	$a0,$s8,$zero
.L8008f46c:
/* 0x8008f46c */ lh	$a2,14($s1)
.L8008f470:
/* 0x8008f470 */ lh	$a3,16($s1)
.L8008f474:
/* 0x8008f474 */ jal	0x80049208
.L8008f478:
/* 0x8008f478 */ addu	$a1,$s4,$zero
.L8008f47c:
/* 0x8008f47c */ addu	$a0,$s8,$zero
.L8008f480:
/* 0x8008f480 */ lw	$a2,132($sp)
.L8008f484:
/* 0x8008f484 */ lw	$a3,136($sp)
.L8008f488:
/* 0x8008f488 */ addu	$a1,$s4,$zero
.L8008f48c:
/* 0x8008f48c */ sw	$s3,16($sp)
.L8008f490:
/* 0x8008f490 */ jal	0x80049364
.L8008f494:
/* 0x8008f494 */ sw	$s0,20($sp)
.L8008f498:
/* 0x8008f498 */ addu	$a0,$s8,$zero
.L8008f49c:
/* 0x8008f49c */ lw	$a2,140($sp)
.L8008f4a0:
/* 0x8008f4a0 */ addu	$a1,$s4,$zero
.L8008f4a4:
/* 0x8008f4a4 */ addu	$a3,$a2,$zero
.L8008f4a8:
/* 0x8008f4a8 */ jal	0x800490f8
.L8008f4ac:
/* 0x8008f4ac */ sw	$a2,16($sp)
.L8008f4b0:
/* 0x8008f4b0 */ addiu	$s4,$s4,1
.L8008f4b4:
/* 0x8008f4b4 */ jal	0x80098880
.L8008f4b8:
/* 0x8008f4b8 */ addiu	$a0,$zero,100
.L8008f4bc:
/* 0x8008f4bc */ addiu	$s3,$zero,87
.L8008f4c0:
/* 0x8008f4c0 */ addiu	$s0,$zero,100
.L8008f4c4:
/* 0x8008f4c4 */ lw	$t1,136($sp)
.L8008f4c8:
/* 0x8008f4c8 */ lw	$t0,132($sp)
.L8008f4cc:
/* 0x8008f4cc */ addiu	$a1,$zero,255
.L8008f4d0:
/* 0x8008f4d0 */ sw	$v0,20($sp)
.L8008f4d4:
/* 0x8008f4d4 */ addiu	$t1,$t1,-26
.L8008f4d8:
/* 0x8008f4d8 */ addiu	$v0,$t0,320
.L8008f4dc:
/* 0x8008f4dc */ sw	$t1,136($sp)
.L8008f4e0:
/* 0x8008f4e0 */ sw	$v0,24($sp)
.L8008f4e4:
/* 0x8008f4e4 */ addiu	$v0,$t1,240
.L8008f4e8:
/* 0x8008f4e8 */ sw	$t1,16($sp)
.L8008f4ec:
/* 0x8008f4ec */ lw	$t1,112($sp)
.L8008f4f0:
/* 0x8008f4f0 */ addiu	$a2,$zero,128
.L8008f4f4:
/* 0x8008f4f4 */ sw	$s3,32($sp)
.L8008f4f8:
/* 0x8008f4f8 */ sw	$s0,36($sp)
.L8008f4fc:
/* 0x8008f4fc */ sw	$v0,28($sp)
.L8008f500:
/* 0x8008f500 */ lw	$a0,0($t1)
.L8008f504:
/* 0x8008f504 */ jal	0x8004dab8
.L8008f508:
/* 0x8008f508 */ addu	$a3,$t0,$zero
.L8008f50c:
/* 0x8008f50c */ lw	$t0,112($sp)
.L8008f510:
/* 0x8008f510 */ sll	$zero,$zero,0x0
.L8008f514:
/* 0x8008f514 */ sw	$v0,0($t0)
.L8008f518:
/* 0x8008f518 */ addu	$v0,$s4,$zero
.L8008f51c:
/* 0x8008f51c */ lw	$ra,108($sp)
.L8008f520:
/* 0x8008f520 */ lw	$s8,104($sp)
.L8008f524:
/* 0x8008f524 */ lw	$s7,100($sp)
.L8008f528:
/* 0x8008f528 */ lw	$s6,96($sp)
.L8008f52c:
/* 0x8008f52c */ lw	$s5,92($sp)
.L8008f530:
/* 0x8008f530 */ lw	$s4,88($sp)
.L8008f534:
/* 0x8008f534 */ lw	$s3,84($sp)
.L8008f538:
/* 0x8008f538 */ lw	$s2,80($sp)
.L8008f53c:
/* 0x8008f53c */ lw	$s1,76($sp)
.L8008f540:
/* 0x8008f540 */ lw	$s0,72($sp)
.L8008f544:
/* 0x8008f544 */ jr	$ra
.L8008f548:
/* 0x8008f548 */ addiu	$sp,$sp,112
.size FUN_8008f254, .-FUN_8008f254
