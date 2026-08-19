.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c0f0
.globl FUN_8004c0f0
.type FUN_8004c0f0, @function
FUN_8004c0f0:
.L8004c0f0:
/* 0x8004c0f0 */ addiu	$sp,$sp,-24
.L8004c0f4:
/* 0x8004c0f4 */ sw	$ra,16($sp)
.L8004c0f8:
/* 0x8004c0f8 */ jal	0x80053830
.L8004c0fc:
/* 0x8004c0fc */ sll	$zero,$zero,0x0
.L8004c100:
/* 0x8004c100 */ jal	0x80025b18
.L8004c104:
/* 0x8004c104 */ addiu	$a0,$zero,6
.L8004c108:
/* 0x8004c108 */ lw	$ra,16($sp)
.L8004c10c:
/* 0x8004c10c */ lui	$v0,0x800f
.L8004c110:
/* 0x8004c110 */ sw	$zero,10492($v0)
.L8004c114:
/* 0x8004c114 */ jr	$ra
.L8004c118:
/* 0x8004c118 */ addiu	$sp,$sp,24
.size FUN_8004c0f0, .-FUN_8004c0f0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c11c
.globl FUN_8004c11c
.type FUN_8004c11c, @function
FUN_8004c11c:
.L8004c11c:
/* 0x8004c11c */ lui	$v0,0x800b
.L8004c120:
/* 0x8004c120 */ lw	$v0,-14100($v0)
.L8004c124:
/* 0x8004c124 */ addiu	$sp,$sp,-24
.L8004c128:
/* 0x8004c128 */ sw	$ra,16($sp)
.L8004c12c:
/* 0x8004c12c */ jal	0x80052534
.L8004c130:
/* 0x8004c130 */ sb	$zero,4($v0)
.L8004c134:
/* 0x8004c134 */ addu	$v1,$v0,$zero
.L8004c138:
/* 0x8004c138 */ bne	$v1,$zero,.L8004c144
.L8004c13c:
/* 0x8004c13c */ addiu	$v0,$zero,11
.L8004c140:
/* 0x8004c140 */ addiu	$v0,$zero,10
.L8004c144:
/* 0x8004c144 */ lw	$ra,16($sp)
.L8004c148:
/* 0x8004c148 */ sll	$zero,$zero,0x0
.L8004c14c:
/* 0x8004c14c */ jr	$ra
.L8004c150:
/* 0x8004c150 */ addiu	$sp,$sp,24
.size FUN_8004c11c, .-FUN_8004c11c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c154
.globl FUN_8004c154
.type FUN_8004c154, @function
FUN_8004c154:
.L8004c154:
/* 0x8004c154 */ jr	$ra
.L8004c158:
/* 0x8004c158 */ sll	$zero,$zero,0x0
.size FUN_8004c154, .-FUN_8004c154
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c15c
.globl FUN_8004c15c
.type FUN_8004c15c, @function
FUN_8004c15c:
.L8004c15c:
/* 0x8004c15c */ addiu	$sp,$sp,-24
.L8004c160:
/* 0x8004c160 */ sw	$ra,16($sp)
.L8004c164:
/* 0x8004c164 */ jal	0x80099e3c
.L8004c168:
/* 0x8004c168 */ sll	$zero,$zero,0x0
.L8004c16c:
/* 0x8004c16c */ jal	0x80025b18
.L8004c170:
/* 0x8004c170 */ addiu	$a0,$zero,6
.L8004c174:
/* 0x8004c174 */ lw	$ra,16($sp)
.L8004c178:
/* 0x8004c178 */ sll	$zero,$zero,0x0
.L8004c17c:
/* 0x8004c17c */ jr	$ra
.L8004c180:
/* 0x8004c180 */ addiu	$sp,$sp,24
.size FUN_8004c15c, .-FUN_8004c15c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c184
.globl FUN_8004c184
.type FUN_8004c184, @function
FUN_8004c184:
.L8004c184:
/* 0x8004c184 */ addiu	$sp,$sp,-24
.L8004c188:
/* 0x8004c188 */ sw	$ra,16($sp)
.L8004c18c:
/* 0x8004c18c */ jal	0x80099b40
.L8004c190:
/* 0x8004c190 */ sll	$zero,$zero,0x0
.L8004c194:
/* 0x8004c194 */ addu	$v1,$v0,$zero
.L8004c198:
/* 0x8004c198 */ bgtz	$v1,.L8004c1a4
.L8004c19c:
/* 0x8004c19c */ addiu	$v0,$zero,1
.L8004c1a0:
/* 0x8004c1a0 */ addiu	$v0,$zero,11
.L8004c1a4:
/* 0x8004c1a4 */ lw	$ra,16($sp)
.L8004c1a8:
/* 0x8004c1a8 */ sll	$zero,$zero,0x0
.L8004c1ac:
/* 0x8004c1ac */ jr	$ra
.L8004c1b0:
/* 0x8004c1b0 */ addiu	$sp,$sp,24
.size FUN_8004c184, .-FUN_8004c184
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c1b4
.globl FUN_8004c1b4
.type FUN_8004c1b4, @function
FUN_8004c1b4:
.L8004c1b4:
/* 0x8004c1b4 */ jr	$ra
.L8004c1b8:
/* 0x8004c1b8 */ sll	$zero,$zero,0x0
.size FUN_8004c1b4, .-FUN_8004c1b4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004c27c
.globl FUN_8004c27c
.type FUN_8004c27c, @function
FUN_8004c27c:
.L8004c27c:
/* 0x8004c27c */ addiu	$sp,$sp,-184
.L8004c280:
/* 0x8004c280 */ sw	$s8,176($sp)
.L8004c284:
/* 0x8004c284 */ addu	$s8,$zero,$zero
.L8004c288:
/* 0x8004c288 */ sw	$s6,168($sp)
.L8004c28c:
/* 0x8004c28c */ addu	$s6,$s8,$zero
.L8004c290:
/* 0x8004c290 */ addiu	$v1,$sp,64
.L8004c294:
/* 0x8004c294 */ lui	$v0,0x8002
.L8004c298:
/* 0x8004c298 */ addiu	$v0,$v0,-16908
.L8004c29c:
/* 0x8004c29c */ addiu	$a0,$v0,48
.L8004c2a0:
/* 0x8004c2a0 */ sw	$ra,180($sp)
.L8004c2a4:
/* 0x8004c2a4 */ sw	$s7,172($sp)
.L8004c2a8:
/* 0x8004c2a8 */ sw	$s5,164($sp)
.L8004c2ac:
/* 0x8004c2ac */ sw	$s4,160($sp)
.L8004c2b0:
/* 0x8004c2b0 */ sw	$s3,156($sp)
.L8004c2b4:
/* 0x8004c2b4 */ sw	$s2,152($sp)
.L8004c2b8:
/* 0x8004c2b8 */ sw	$s1,148($sp)
.L8004c2bc:
/* 0x8004c2bc */ sw	$s0,144($sp)
.L8004c2c0:
/* 0x8004c2c0 */ lw	$t0,0($v0)
.L8004c2c4:
/* 0x8004c2c4 */ lw	$t1,4($v0)
.L8004c2c8:
/* 0x8004c2c8 */ lw	$t2,8($v0)
.L8004c2cc:
/* 0x8004c2cc */ lw	$t3,12($v0)
.L8004c2d0:
/* 0x8004c2d0 */ sw	$t0,0($v1)
.L8004c2d4:
/* 0x8004c2d4 */ sw	$t1,4($v1)
.L8004c2d8:
/* 0x8004c2d8 */ sw	$t2,8($v1)
.L8004c2dc:
/* 0x8004c2dc */ sw	$t3,12($v1)
.L8004c2e0:
/* 0x8004c2e0 */ addiu	$v0,$v0,16
.L8004c2e4:
/* 0x8004c2e4 */ bne	$v0,$a0,.L8004c2c0
.L8004c2e8:
/* 0x8004c2e8 */ addiu	$v1,$v1,16
.L8004c2ec:
/* 0x8004c2ec */ addiu	$t0,$zero,-1
.L8004c2f0:
/* 0x8004c2f0 */ addu	$t1,$t0,$zero
.L8004c2f4:
/* 0x8004c2f4 */ sw	$zero,124($sp)
.L8004c2f8:
/* 0x8004c2f8 */ sw	$t0,128($sp)
.L8004c2fc:
/* 0x8004c2fc */ sw	$t1,132($sp)
.L8004c300:
/* 0x8004c300 */ lw	$t2,0($v0)
.L8004c304:
/* 0x8004c304 */ lw	$t3,4($v0)
.L8004c308:
/* 0x8004c308 */ sw	$t2,0($v1)
.L8004c30c:
/* 0x8004c30c */ sw	$t3,4($v1)
.L8004c310:
/* 0x8004c310 */ lui	$v0,0x800f
.L8004c314:
/* 0x8004c314 */ addiu	$s0,$v0,10376
.L8004c318:
/* 0x8004c318 */ lw	$v0,116($s0)
.L8004c31c:
/* 0x8004c31c */ sw	$zero,136($sp)
.L8004c320:
/* 0x8004c320 */ sll	$v0,$v0,0x3
.L8004c324:
/* 0x8004c324 */ sw	$v0,120($sp)
.L8004c328:
/* 0x8004c328 */ slti	$v0,$v0,129
.L8004c32c:
/* 0x8004c32c */ bne	$v0,$zero,.L8004c33c
.L8004c330:
/* 0x8004c330 */ addu	$a0,$zero,$zero
.L8004c334:
/* 0x8004c334 */ addiu	$t2,$zero,128
.L8004c338:
/* 0x8004c338 */ sw	$t2,120($sp)
.L8004c33c:
/* 0x8004c33c */ jal	0x80043134
.L8004c340:
/* 0x8004c340 */ addiu	$a1,$zero,15
.L8004c344:
/* 0x8004c344 */ addu	$a0,$zero,$zero
.L8004c348:
/* 0x8004c348 */ jal	0x80048c3c
.L8004c34c:
/* 0x8004c34c */ addiu	$a1,$zero,-1
.L8004c350:
/* 0x8004c350 */ addu	$a0,$zero,$zero
.L8004c354:
/* 0x8004c354 */ jal	0x80048e80
.L8004c358:
/* 0x8004c358 */ addiu	$a1,$zero,252
.L8004c35c:
/* 0x8004c35c */ lw	$a0,116($s0)
.L8004c360:
/* 0x8004c360 */ sll	$zero,$zero,0x0
.L8004c364:
/* 0x8004c364 */ sll	$v1,$a0,0x9
.L8004c368:
/* 0x8004c368 */ bgez	$v1,.L8004c374
.L8004c36c:
/* 0x8004c36c */ addiu	$v0,$a0,-16
.L8004c370:
/* 0x8004c370 */ addiu	$v1,$v1,15
.L8004c374:
/* 0x8004c374 */ addiu	$t0,$zero,320
.L8004c378:
/* 0x8004c378 */ mult	$v0,$t0
.L8004c37c:
/* 0x8004c37c */ mflo	$v0
.L8004c380:
/* 0x8004c380 */ bgez	$v0,.L8004c38c
.L8004c384:
/* 0x8004c384 */ sra	$s7,$v1,0x4
.L8004c388:
/* 0x8004c388 */ addiu	$v0,$v0,15
.L8004c38c:
/* 0x8004c38c */ sra	$s5,$v0,0x4
.L8004c390:
/* 0x8004c390 */ addiu	$t1,$zero,512
.L8004c394:
/* 0x8004c394 */ slt	$v0,$t1,$s7
.L8004c398:
/* 0x8004c398 */ beq	$v0,$zero,.L8004c3a4
.L8004c39c:
/* 0x8004c39c */ sll	$zero,$zero,0x0
.L8004c3a0:
/* 0x8004c3a0 */ addu	$s7,$t1,$zero
.L8004c3a4:
/* 0x8004c3a4 */ bgez	$s5,.L8004c3b0
.L8004c3a8:
/* 0x8004c3a8 */ addiu	$t2,$zero,320
.L8004c3ac:
/* 0x8004c3ac */ addu	$s5,$zero,$zero
.L8004c3b0:
/* 0x8004c3b0 */ slt	$v0,$t2,$s5
.L8004c3b4:
/* 0x8004c3b4 */ beq	$v0,$zero,.L8004c3c0
.L8004c3b8:
/* 0x8004c3b8 */ addiu	$s3,$a0,-1
.L8004c3bc:
/* 0x8004c3bc */ addu	$s5,$t2,$zero
.L8004c3c0:
/* 0x8004c3c0 */ addu	$s4,$zero,$zero
.L8004c3c4:
/* 0x8004c3c4 */ addiu	$t3,$zero,320
.L8004c3c8:
/* 0x8004c3c8 */ subu	$v0,$t3,$s5
.L8004c3cc:
/* 0x8004c3cc */ srl	$v1,$v0,0x1f
.L8004c3d0:
/* 0x8004c3d0 */ addu	$v0,$v0,$v1
.L8004c3d4:
/* 0x8004c3d4 */ sra	$v0,$v0,0x1
.L8004c3d8:
/* 0x8004c3d8 */ sw	$v0,140($sp)
.L8004c3dc:
/* 0x8004c3dc */ addiu	$s2,$sp,64
.L8004c3e0:
/* 0x8004c3e0 */ bne	$s3,$zero,.L8004c434
.L8004c3e4:
/* 0x8004c3e4 */ sll	$zero,$zero,0x0
.L8004c3e8:
/* 0x8004c3e8 */ lw	$a0,0($s2)
.L8004c3ec:
/* 0x8004c3ec */ sll	$zero,$zero,0x0
.L8004c3f0:
/* 0x8004c3f0 */ bltz	$a0,.L8004c434
.L8004c3f4:
/* 0x8004c3f4 */ sll	$zero,$zero,0x0
.L8004c3f8:
/* 0x8004c3f8 */ jal	0x8004d564
.L8004c3fc:
/* 0x8004c3fc */ sll	$zero,$zero,0x0
.L8004c400:
/* 0x8004c400 */ lw	$v1,0($s2)
.L8004c404:
/* 0x8004c404 */ addiu	$v0,$zero,123
.L8004c408:
/* 0x8004c408 */ bne	$v1,$v0,.L8004c424
.L8004c40c:
/* 0x8004c40c */ addiu	$v0,$zero,125
.L8004c410:
/* 0x8004c410 */ addiu	$a0,$zero,1
.L8004c414:
/* 0x8004c414 */ jal	0x800280c8
.L8004c418:
/* 0x8004c418 */ addu	$a1,$zero,$zero
.L8004c41c:
/* 0x8004c41c */ lw	$v1,0($s2)
.L8004c420:
/* 0x8004c420 */ addiu	$v0,$zero,125
.L8004c424:
/* 0x8004c424 */ bne	$v1,$v0,.L8004c434
.L8004c428:
/* 0x8004c428 */ addiu	$a0,$zero,75
.L8004c42c:
/* 0x8004c42c */ jal	0x800280c8
.L8004c430:
/* 0x8004c430 */ addu	$a1,$zero,$zero
.L8004c434:
/* 0x8004c434 */ bltz	$s3,.L8004c674
.L8004c438:
/* 0x8004c438 */ sll	$zero,$zero,0x0
.L8004c43c:
/* 0x8004c43c */ lw	$t0,120($sp)
.L8004c440:
/* 0x8004c440 */ sll	$zero,$zero,0x0
.L8004c444:
/* 0x8004c444 */ mult	$t0,$s3
.L8004c448:
/* 0x8004c448 */ mflo	$v1
.L8004c44c:
/* 0x8004c44c */ bgez	$v1,.L8004c458
.L8004c450:
/* 0x8004c450 */ sll	$zero,$zero,0x0
.L8004c454:
/* 0x8004c454 */ addiu	$v1,$v1,15
.L8004c458:
/* 0x8004c458 */ lw	$t1,120($sp)
.L8004c45c:
/* 0x8004c45c */ sra	$s1,$v1,0x4
.L8004c460:
/* 0x8004c460 */ slt	$v0,$t1,$s1
.L8004c464:
/* 0x8004c464 */ beq	$v0,$zero,.L8004c470
.L8004c468:
/* 0x8004c468 */ sll	$zero,$zero,0x0
.L8004c46c:
/* 0x8004c46c */ addu	$s1,$t1,$zero
.L8004c470:
/* 0x8004c470 */ lw	$a0,0($s2)
.L8004c474:
/* 0x8004c474 */ sll	$zero,$zero,0x0
.L8004c478:
/* 0x8004c478 */ bgez	$a0,.L8004c534
.L8004c47c:
/* 0x8004c47c */ lui	$v0,0x8011
.L8004c480:
/* 0x8004c480 */ addiu	$s0,$v0,27696
.L8004c484:
/* 0x8004c484 */ slti	$v0,$s3,65
.L8004c488:
/* 0x8004c488 */ bne	$v0,$zero,.L8004c4a4
.L8004c48c:
/* 0x8004c48c */ addiu	$s1,$zero,8
.L8004c490:
/* 0x8004c490 */ addiu	$s1,$zero,128
.L8004c494:
/* 0x8004c494 */ addiu	$v1,$zero,-1
.L8004c498:
/* 0x8004c498 */ addiu	$t2,$zero,1
.L8004c49c:
/* 0x8004c49c */ j	.L8004c4a8
.L8004c4a0:
/* 0x8004c4a0 */ sw	$t2,136($sp)
.L8004c4a4:
/* 0x8004c4a4 */ addiu	$v1,$zero,1
.L8004c4a8:
/* 0x8004c4a8 */ addu	$a0,$zero,$zero
.L8004c4ac:
/* 0x8004c4ac */ addu	$a1,$s6,$zero
.L8004c4b0:
/* 0x8004c4b0 */ lh	$a2,2($s0)
.L8004c4b4:
/* 0x8004c4b4 */ lh	$a3,4($s0)
.L8004c4b8:
/* 0x8004c4b8 */ addiu	$v0,$zero,1
.L8004c4bc:
/* 0x8004c4bc */ sw	$v0,16($sp)
.L8004c4c0:
/* 0x8004c4c0 */ sw	$v0,20($sp)
.L8004c4c4:
/* 0x8004c4c4 */ lh	$v0,10($s0)
.L8004c4c8:
/* 0x8004c4c8 */ addiu	$t3,$zero,1
.L8004c4cc:
/* 0x8004c4cc */ sw	$t3,124($sp)
.L8004c4d0:
/* 0x8004c4d0 */ sw	$v1,28($sp)
.L8004c4d4:
/* 0x8004c4d4 */ jal	0x80048144
.L8004c4d8:
/* 0x8004c4d8 */ sw	$v0,24($sp)
.L8004c4dc:
/* 0x8004c4dc */ addu	$a0,$zero,$zero
.L8004c4e0:
/* 0x8004c4e0 */ lh	$a2,14($s0)
.L8004c4e4:
/* 0x8004c4e4 */ lh	$a3,16($s0)
.L8004c4e8:
/* 0x8004c4e8 */ jal	0x80049208
.L8004c4ec:
/* 0x8004c4ec */ addu	$a1,$s6,$zero
.L8004c4f0:
/* 0x8004c4f0 */ addu	$a0,$zero,$zero
.L8004c4f4:
/* 0x8004c4f4 */ addu	$a1,$s6,$zero
.L8004c4f8:
/* 0x8004c4f8 */ addiu	$a2,$zero,-320
.L8004c4fc:
/* 0x8004c4fc */ addiu	$a3,$zero,-240
.L8004c500:
/* 0x8004c500 */ addiu	$v0,$zero,640
.L8004c504:
/* 0x8004c504 */ sw	$v0,16($sp)
.L8004c508:
/* 0x8004c508 */ addiu	$v0,$zero,480
.L8004c50c:
/* 0x8004c50c */ jal	0x80049364
.L8004c510:
/* 0x8004c510 */ sw	$v0,20($sp)
.L8004c514:
/* 0x8004c514 */ addu	$a0,$zero,$zero
.L8004c518:
/* 0x8004c518 */ addu	$a1,$s6,$zero
.L8004c51c:
/* 0x8004c51c */ addu	$a2,$s1,$zero
.L8004c520:
/* 0x8004c520 */ addu	$a3,$a2,$zero
.L8004c524:
/* 0x8004c524 */ jal	0x800490f8
.L8004c528:
/* 0x8004c528 */ sw	$a2,16($sp)
.L8004c52c:
/* 0x8004c52c */ j	.L8004c68c
.L8004c530:
/* 0x8004c530 */ addiu	$s6,$s6,1
.L8004c534:
/* 0x8004c534 */ lw	$v1,4($s2)
.L8004c538:
/* 0x8004c538 */ sll	$zero,$zero,0x0
.L8004c53c:
/* 0x8004c53c */ slt	$v0,$s3,$v1
.L8004c540:
/* 0x8004c540 */ beq	$v0,$zero,.L8004c5e4
.L8004c544:
/* 0x8004c544 */ addiu	$v0,$v1,16
.L8004c548:
/* 0x8004c548 */ jal	0x80098880
.L8004c54c:
/* 0x8004c54c */ sll	$zero,$zero,0x0
.L8004c550:
/* 0x8004c550 */ addu	$s0,$v0,$zero
.L8004c554:
/* 0x8004c554 */ addu	$a0,$s8,$zero
.L8004c558:
/* 0x8004c558 */ addiu	$a1,$zero,250
.L8004c55c:
/* 0x8004c55c */ addu	$a2,$s1,$zero
.L8004c560:
/* 0x8004c560 */ lh	$v1,8($s0)
.L8004c564:
/* 0x8004c564 */ lw	$t0,140($sp)
.L8004c568:
/* 0x8004c568 */ addiu	$a3,$zero,-256
.L8004c56c:
/* 0x8004c56c */ sw	$s0,20($sp)
.L8004c570:
/* 0x8004c570 */ sw	$zero,24($sp)
.L8004c574:
/* 0x8004c574 */ sw	$s7,32($sp)
.L8004c578:
/* 0x8004c578 */ sw	$s5,36($sp)
.L8004c57c:
/* 0x8004c57c */ subu	$v1,$v1,$s5
.L8004c580:
/* 0x8004c580 */ srl	$v0,$v1,0x1f
.L8004c584:
/* 0x8004c584 */ addu	$v1,$v1,$v0
.L8004c588:
/* 0x8004c588 */ sra	$v1,$v1,0x1
.L8004c58c:
/* 0x8004c58c */ addiu	$v1,$v1,-160
.L8004c590:
/* 0x8004c590 */ sw	$t0,28($sp)
.L8004c594:
/* 0x8004c594 */ jal	0x8004dab8
.L8004c598:
/* 0x8004c598 */ sw	$v1,16($sp)
.L8004c59c:
/* 0x8004c59c */ addu	$s8,$v0,$zero
.L8004c5a0:
/* 0x8004c5a0 */ lw	$v1,0($s2)
.L8004c5a4:
/* 0x8004c5a4 */ addiu	$v0,$zero,124
.L8004c5a8:
/* 0x8004c5a8 */ beq	$v1,$v0,.L8004c674
.L8004c5ac:
/* 0x8004c5ac */ addiu	$t1,$s3,-16
.L8004c5b0:
/* 0x8004c5b0 */ lw	$v0,4($s2)
.L8004c5b4:
/* 0x8004c5b4 */ sw	$t1,128($sp)
.L8004c5b8:
/* 0x8004c5b8 */ addiu	$v0,$v0,-16
.L8004c5bc:
/* 0x8004c5bc */ sw	$v0,132($sp)
.L8004c5c0:
/* 0x8004c5c0 */ lui	$v0,0x800f
.L8004c5c4:
/* 0x8004c5c4 */ addiu	$v0,$v0,10376
.L8004c5c8:
/* 0x8004c5c8 */ lw	$a0,112($v0)
.L8004c5cc:
/* 0x8004c5cc */ lw	$v0,116($v0)
.L8004c5d0:
/* 0x8004c5d0 */ addu	$a0,$s4,$a0
.L8004c5d4:
/* 0x8004c5d4 */ jal	0x8004d638
.L8004c5d8:
/* 0x8004c5d8 */ subu	$a0,$a0,$v0
.L8004c5dc:
/* 0x8004c5dc */ j	.L8004c674
.L8004c5e0:
/* 0x8004c5e0 */ sll	$zero,$zero,0x0
.L8004c5e4:
/* 0x8004c5e4 */ slt	$v0,$s3,$v0
.L8004c5e8:
/* 0x8004c5e8 */ beq	$v0,$zero,.L8004c674
.L8004c5ec:
/* 0x8004c5ec */ addiu	$v0,$zero,124
.L8004c5f0:
/* 0x8004c5f0 */ beq	$a0,$v0,.L8004c674
.L8004c5f4:
/* 0x8004c5f4 */ subu	$v0,$s3,$v1
.L8004c5f8:
/* 0x8004c5f8 */ sll	$v0,$v0,0x3
.L8004c5fc:
/* 0x8004c5fc */ addiu	$v1,$zero,128
.L8004c600:
/* 0x8004c600 */ subu	$s1,$v1,$v0
.L8004c604:
/* 0x8004c604 */ blez	$s1,.L8004c674
.L8004c608:
/* 0x8004c608 */ addiu	$t2,$zero,1
.L8004c60c:
/* 0x8004c60c */ jal	0x80098880
.L8004c610:
/* 0x8004c610 */ sw	$t2,124($sp)
.L8004c614:
/* 0x8004c614 */ addu	$s0,$v0,$zero
.L8004c618:
/* 0x8004c618 */ addu	$a0,$s8,$zero
.L8004c61c:
/* 0x8004c61c */ addiu	$a1,$zero,249
.L8004c620:
/* 0x8004c620 */ addiu	$a2,$zero,1
.L8004c624:
/* 0x8004c624 */ addiu	$v0,$zero,-256
.L8004c628:
/* 0x8004c628 */ sw	$s1,16($sp)
.L8004c62c:
/* 0x8004c62c */ sw	$s1,20($sp)
.L8004c630:
/* 0x8004c630 */ sw	$v0,24($sp)
.L8004c634:
/* 0x8004c634 */ lh	$v1,8($s0)
.L8004c638:
/* 0x8004c638 */ lw	$t3,140($sp)
.L8004c63c:
/* 0x8004c63c */ addu	$a3,$s1,$zero
.L8004c640:
/* 0x8004c640 */ sw	$s0,32($sp)
.L8004c644:
/* 0x8004c644 */ sw	$zero,36($sp)
.L8004c648:
/* 0x8004c648 */ sw	$s7,44($sp)
.L8004c64c:
/* 0x8004c64c */ sw	$s5,48($sp)
.L8004c650:
/* 0x8004c650 */ subu	$v1,$v1,$s5
.L8004c654:
/* 0x8004c654 */ srl	$v0,$v1,0x1f
.L8004c658:
/* 0x8004c658 */ addu	$v1,$v1,$v0
.L8004c65c:
/* 0x8004c65c */ srav	$v1,$v1,$a2
.L8004c660:
/* 0x8004c660 */ addiu	$v1,$v1,-160
.L8004c664:
/* 0x8004c664 */ sw	$t3,40($sp)
.L8004c668:
/* 0x8004c668 */ jal	0x8004eb5c
.L8004c66c:
/* 0x8004c66c */ sw	$v1,28($sp)
.L8004c670:
/* 0x8004c670 */ addu	$s8,$v0,$zero
.L8004c674:
/* 0x8004c674 */ lw	$v0,4($s2)
.L8004c678:
/* 0x8004c678 */ addiu	$s4,$s4,1
.L8004c67c:
/* 0x8004c67c */ subu	$s3,$s3,$v0
.L8004c680:
/* 0x8004c680 */ sltiu	$v0,$s4,7
.L8004c684:
/* 0x8004c684 */ bne	$v0,$zero,.L8004c3e0
.L8004c688:
/* 0x8004c688 */ addiu	$s2,$s2,8
.L8004c68c:
/* 0x8004c68c */ lw	$t0,124($sp)
.L8004c690:
/* 0x8004c690 */ sll	$zero,$zero,0x0
.L8004c694:
/* 0x8004c694 */ bne	$t0,$zero,.L8004c968
.L8004c698:
/* 0x8004c698 */ addu	$a0,$zero,$zero
.L8004c69c:
/* 0x8004c69c */ jal	0x80098880
.L8004c6a0:
/* 0x8004c6a0 */ addiu	$a0,$zero,62
.L8004c6a4:
/* 0x8004c6a4 */ addu	$a0,$zero,$zero
.L8004c6a8:
/* 0x8004c6a8 */ addu	$a1,$s6,$zero
.L8004c6ac:
/* 0x8004c6ac */ addiu	$t1,$zero,512
.L8004c6b0:
/* 0x8004c6b0 */ subu	$a2,$t1,$s7
.L8004c6b4:
/* 0x8004c6b4 */ srl	$v1,$a2,0x1f
.L8004c6b8:
/* 0x8004c6b8 */ addu	$a2,$a2,$v1
.L8004c6bc:
/* 0x8004c6bc */ sra	$a2,$a2,0x1
.L8004c6c0:
/* 0x8004c6c0 */ addiu	$a2,$a2,-264
.L8004c6c4:
/* 0x8004c6c4 */ addiu	$t2,$zero,320
.L8004c6c8:
/* 0x8004c6c8 */ subu	$a3,$t2,$s5
.L8004c6cc:
/* 0x8004c6cc */ srl	$v1,$a3,0x1f
.L8004c6d0:
/* 0x8004c6d0 */ addu	$a3,$a3,$v1
.L8004c6d4:
/* 0x8004c6d4 */ sra	$a3,$a3,0x1
.L8004c6d8:
/* 0x8004c6d8 */ addiu	$a3,$a3,-192
.L8004c6dc:
/* 0x8004c6dc */ lw	$t3,120($sp)
.L8004c6e0:
/* 0x8004c6e0 */ addiu	$v1,$s7,-56
.L8004c6e4:
/* 0x8004c6e4 */ sw	$v0,28($sp)
.L8004c6e8:
/* 0x8004c6e8 */ addiu	$v0,$zero,36
.L8004c6ec:
/* 0x8004c6ec */ sw	$v1,16($sp)
.L8004c6f0:
/* 0x8004c6f0 */ addiu	$v1,$zero,4
.L8004c6f4:
/* 0x8004c6f4 */ sw	$v0,40($sp)
.L8004c6f8:
/* 0x8004c6f8 */ sw	$v0,48($sp)
.L8004c6fc:
/* 0x8004c6fc */ addiu	$v0,$zero,32
.L8004c700:
/* 0x8004c700 */ sw	$s5,20($sp)
.L8004c704:
/* 0x8004c704 */ sw	$zero,32($sp)
.L8004c708:
/* 0x8004c708 */ sw	$zero,36($sp)
.L8004c70c:
/* 0x8004c70c */ sw	$v1,44($sp)
.L8004c710:
/* 0x8004c710 */ sw	$v0,52($sp)
.L8004c714:
/* 0x8004c714 */ sw	$v1,56($sp)
.L8004c718:
/* 0x8004c718 */ sw	$v0,60($sp)
.L8004c71c:
/* 0x8004c71c */ jal	0x8004eee0
.L8004c720:
/* 0x8004c720 */ sw	$t3,24($sp)
.L8004c724:
/* 0x8004c724 */ lw	$t0,132($sp)
.L8004c728:
/* 0x8004c728 */ sll	$zero,$zero,0x0
.L8004c72c:
/* 0x8004c72c */ blez	$t0,.L8004c88c
.L8004c730:
/* 0x8004c730 */ addu	$s6,$v0,$zero
.L8004c734:
/* 0x8004c734 */ addu	$s2,$zero,$zero
.L8004c738:
/* 0x8004c738 */ srl	$v0,$t0,0x1f
.L8004c73c:
/* 0x8004c73c */ addu	$v0,$t0,$v0
.L8004c740:
/* 0x8004c740 */ sra	$s3,$v0,0x1
.L8004c744:
/* 0x8004c744 */ addiu	$s7,$zero,2
.L8004c748:
/* 0x8004c748 */ lw	$t1,132($sp)
.L8004c74c:
/* 0x8004c74c */ sll	$zero,$zero,0x0
.L8004c750:
/* 0x8004c750 */ subu	$v0,$t1,$s3
.L8004c754:
/* 0x8004c754 */ mult	$v0,$s2
.L8004c758:
/* 0x8004c758 */ lw	$t0,128($sp)
.L8004c75c:
/* 0x8004c75c */ mflo	$v0
.L8004c760:
/* 0x8004c760 */ srl	$v1,$v0,0x1f
.L8004c764:
/* 0x8004c764 */ addu	$v0,$v0,$v1
.L8004c768:
/* 0x8004c768 */ sra	$v0,$v0,0x1
.L8004c76c:
/* 0x8004c76c */ subu	$s0,$t0,$v0
.L8004c770:
/* 0x8004c770 */ sll	$v0,$s0,0x4
.L8004c774:
/* 0x8004c774 */ subu	$v0,$v0,$s0
.L8004c778:
/* 0x8004c778 */ sll	$v0,$v0,0x7
.L8004c77c:
/* 0x8004c77c */ div	$zero,$v0,$s3
.L8004c780:
/* 0x8004c780 */ mflo	$v0
.L8004c784:
/* 0x8004c784 */ addiu	$v1,$zero,320
.L8004c788:
/* 0x8004c788 */ jal	0x8004d628
.L8004c78c:
/* 0x8004c78c */ subu	$s5,$v1,$v0
.L8004c790:
/* 0x8004c790 */ addiu	$v1,$zero,146
.L8004c794:
/* 0x8004c794 */ div	$zero,$v0,$v1
.L8004c798:
/* 0x8004c798 */ mfhi	$a0
.L8004c79c:
/* 0x8004c79c */ sll	$zero,$zero,0x0
.L8004c7a0:
/* 0x8004c7a0 */ sll	$zero,$zero,0x0
.L8004c7a4:
/* 0x8004c7a4 */ mult	$s2,$v1
.L8004c7a8:
/* 0x8004c7a8 */ mflo	$v1
.L8004c7ac:
/* 0x8004c7ac */ addiu	$a0,$a0,-224
.L8004c7b0:
/* 0x8004c7b0 */ blez	$s0,.L8004c87c
.L8004c7b4:
/* 0x8004c7b4 */ addu	$s4,$v1,$a0
.L8004c7b8:
/* 0x8004c7b8 */ slt	$v0,$s0,$s3
.L8004c7bc:
/* 0x8004c7bc */ beq	$v0,$zero,.L8004c87c
.L8004c7c0:
/* 0x8004c7c0 */ sll	$zero,$zero,0x0
.L8004c7c4:
/* 0x8004c7c4 */ jal	0x80098880
.L8004c7c8:
/* 0x8004c7c8 */ addiu	$a0,$zero,62
.L8004c7cc:
/* 0x8004c7cc */ lw	$t0,120($sp)
.L8004c7d0:
/* 0x8004c7d0 */ sll	$zero,$zero,0x0
.L8004c7d4:
/* 0x8004c7d4 */ sll	$v1,$t0,0x1
.L8004c7d8:
/* 0x8004c7d8 */ addu	$v1,$v1,$t0
.L8004c7dc:
/* 0x8004c7dc */ sll	$v1,$v1,0x4
.L8004c7e0:
/* 0x8004c7e0 */ addu	$v1,$v1,$t0
.L8004c7e4:
/* 0x8004c7e4 */ sll	$s0,$v1,0x1
.L8004c7e8:
/* 0x8004c7e8 */ bgez	$s0,.L8004c7f4
.L8004c7ec:
/* 0x8004c7ec */ addu	$s1,$v0,$zero
.L8004c7f0:
/* 0x8004c7f0 */ addiu	$s0,$s0,127
.L8004c7f4:
/* 0x8004c7f4 */ addu	$a0,$zero,$zero
.L8004c7f8:
/* 0x8004c7f8 */ lh	$a2,2($s1)
.L8004c7fc:
/* 0x8004c7fc */ lh	$a3,4($s1)
.L8004c800:
/* 0x8004c800 */ addiu	$v0,$zero,128
.L8004c804:
/* 0x8004c804 */ sw	$v0,16($sp)
.L8004c808:
/* 0x8004c808 */ addiu	$v0,$zero,1
.L8004c80c:
/* 0x8004c80c */ addu	$a1,$s6,$zero
.L8004c810:
/* 0x8004c810 */ sw	$v0,20($sp)
.L8004c814:
/* 0x8004c814 */ lh	$v1,10($s1)
.L8004c818:
/* 0x8004c818 */ sra	$s0,$s0,0x7
.L8004c81c:
/* 0x8004c81c */ sw	$v0,28($sp)
.L8004c820:
/* 0x8004c820 */ addiu	$a3,$a3,78
.L8004c824:
/* 0x8004c824 */ jal	0x80048144
.L8004c828:
/* 0x8004c828 */ sw	$v1,24($sp)
.L8004c82c:
/* 0x8004c82c */ addu	$a0,$zero,$zero
.L8004c830:
/* 0x8004c830 */ lh	$a2,14($s1)
.L8004c834:
/* 0x8004c834 */ lh	$a3,16($s1)
.L8004c838:
/* 0x8004c838 */ jal	0x80049208
.L8004c83c:
/* 0x8004c83c */ addu	$a1,$s6,$zero
.L8004c840:
/* 0x8004c840 */ addu	$a0,$zero,$zero
.L8004c844:
/* 0x8004c844 */ addu	$a1,$s6,$zero
.L8004c848:
/* 0x8004c848 */ addu	$a2,$s5,$zero
.L8004c84c:
/* 0x8004c84c */ addu	$a3,$s4,$zero
.L8004c850:
/* 0x8004c850 */ addiu	$t1,$zero,640
.L8004c854:
/* 0x8004c854 */ sw	$t1,16($sp)
.L8004c858:
/* 0x8004c858 */ jal	0x80049364
.L8004c85c:
/* 0x8004c85c */ sw	$s7,20($sp)
.L8004c860:
/* 0x8004c860 */ addu	$a0,$zero,$zero
.L8004c864:
/* 0x8004c864 */ addu	$a1,$s6,$zero
.L8004c868:
/* 0x8004c868 */ addu	$a2,$s0,$zero
.L8004c86c:
/* 0x8004c86c */ addu	$a3,$a2,$zero
.L8004c870:
/* 0x8004c870 */ jal	0x800490f8
.L8004c874:
/* 0x8004c874 */ sw	$a2,16($sp)
.L8004c878:
/* 0x8004c878 */ addiu	$s6,$s6,1
.L8004c87c:
/* 0x8004c87c */ addiu	$s2,$s2,1
.L8004c880:
/* 0x8004c880 */ slti	$v0,$s2,3
.L8004c884:
/* 0x8004c884 */ bne	$v0,$zero,.L8004c748
.L8004c888:
/* 0x8004c888 */ sll	$zero,$zero,0x0
.L8004c88c:
/* 0x8004c88c */ jal	0x80098880
.L8004c890:
/* 0x8004c890 */ addiu	$a0,$zero,61
.L8004c894:
/* 0x8004c894 */ addu	$s0,$v0,$zero
.L8004c898:
/* 0x8004c898 */ addu	$s4,$zero,$zero
.L8004c89c:
/* 0x8004c89c */ addiu	$s7,$zero,64
.L8004c8a0:
/* 0x8004c8a0 */ addiu	$s3,$zero,-240
.L8004c8a4:
/* 0x8004c8a4 */ addiu	$s1,$zero,-320
.L8004c8a8:
/* 0x8004c8a8 */ addu	$s2,$s1,$zero
.L8004c8ac:
/* 0x8004c8ac */ lui	$t2,0x800f
.L8004c8b0:
/* 0x8004c8b0 */ addiu	$t2,$t2,10376
.L8004c8b4:
/* 0x8004c8b4 */ lw	$v0,116($t2)
.L8004c8b8:
/* 0x8004c8b8 */ sll	$zero,$zero,0x0
.L8004c8bc:
/* 0x8004c8bc */ slti	$v0,$v0,32
.L8004c8c0:
/* 0x8004c8c0 */ bne	$v0,$zero,.L8004c8d8
.L8004c8c4:
/* 0x8004c8c4 */ addiu	$s5,$zero,480
.L8004c8c8:
/* 0x8004c8c8 */ beq	$s4,$zero,.L8004c8d8
.L8004c8cc:
/* 0x8004c8cc */ addiu	$v0,$zero,9
.L8004c8d0:
/* 0x8004c8d0 */ bne	$s4,$v0,.L8004c8f0
.L8004c8d4:
/* 0x8004c8d4 */ addu	$a0,$s8,$zero
.L8004c8d8:
/* 0x8004c8d8 */ addu	$a0,$s8,$zero
.L8004c8dc:
/* 0x8004c8dc */ addiu	$a1,$zero,255
.L8004c8e0:
/* 0x8004c8e0 */ lw	$a2,120($sp)
.L8004c8e4:
/* 0x8004c8e4 */ addu	$a3,$s2,$zero
.L8004c8e8:
/* 0x8004c8e8 */ j	.L8004c934
.L8004c8ec:
/* 0x8004c8ec */ sw	$s3,16($sp)
.L8004c8f0:
/* 0x8004c8f0 */ addiu	$s5,$zero,80
.L8004c8f4:
/* 0x8004c8f4 */ addiu	$a1,$zero,255
.L8004c8f8:
/* 0x8004c8f8 */ lw	$a2,120($sp)
.L8004c8fc:
/* 0x8004c8fc */ addu	$a3,$s1,$zero
.L8004c900:
/* 0x8004c900 */ sw	$s3,16($sp)
.L8004c904:
/* 0x8004c904 */ sw	$s0,20($sp)
.L8004c908:
/* 0x8004c908 */ sw	$zero,24($sp)
.L8004c90c:
/* 0x8004c90c */ sw	$zero,28($sp)
.L8004c910:
/* 0x8004c910 */ sw	$s7,32($sp)
.L8004c914:
/* 0x8004c914 */ jal	0x8004dab8
.L8004c918:
/* 0x8004c918 */ sw	$s5,36($sp)
.L8004c91c:
/* 0x8004c91c */ addu	$a0,$v0,$zero
.L8004c920:
/* 0x8004c920 */ addiu	$a1,$zero,255
.L8004c924:
/* 0x8004c924 */ addu	$a3,$s1,$zero
.L8004c928:
/* 0x8004c928 */ lw	$a2,120($sp)
.L8004c92c:
/* 0x8004c92c */ addiu	$v0,$zero,160
.L8004c930:
/* 0x8004c930 */ sw	$v0,16($sp)
.L8004c934:
/* 0x8004c934 */ sw	$s0,20($sp)
.L8004c938:
/* 0x8004c938 */ sw	$zero,24($sp)
.L8004c93c:
/* 0x8004c93c */ sw	$zero,28($sp)
.L8004c940:
/* 0x8004c940 */ sw	$s7,32($sp)
.L8004c944:
/* 0x8004c944 */ jal	0x8004dab8
.L8004c948:
/* 0x8004c948 */ sw	$s5,36($sp)
.L8004c94c:
/* 0x8004c94c */ addu	$s8,$v0,$zero
.L8004c950:
/* 0x8004c950 */ addiu	$s1,$s1,64
.L8004c954:
/* 0x8004c954 */ addiu	$s4,$s4,1
.L8004c958:
/* 0x8004c958 */ slti	$v0,$s4,10
.L8004c95c:
/* 0x8004c95c */ bne	$v0,$zero,.L8004c8ac
.L8004c960:
/* 0x8004c960 */ addu	$s2,$s2,$s7
.L8004c964:
/* 0x8004c964 */ addu	$a0,$zero,$zero
.L8004c968:
/* 0x8004c968 */ jal	0x80048aa8
.L8004c96c:
/* 0x8004c96c */ addu	$a1,$s6,$zero
.L8004c970:
/* 0x8004c970 */ jal	0x80043344
.L8004c974:
/* 0x8004c974 */ addu	$a0,$zero,$zero
.L8004c978:
/* 0x8004c978 */ lw	$t3,136($sp)
.L8004c97c:
/* 0x8004c97c */ sll	$zero,$zero,0x0
.L8004c980:
/* 0x8004c980 */ beq	$t3,$zero,.L8004c98c
.L8004c984:
/* 0x8004c984 */ addiu	$v0,$zero,1
.L8004c988:
/* 0x8004c988 */ addiu	$v0,$zero,4
.L8004c98c:
/* 0x8004c98c */ lw	$ra,180($sp)
.L8004c990:
/* 0x8004c990 */ lw	$s8,176($sp)
.L8004c994:
/* 0x8004c994 */ lw	$s7,172($sp)
.L8004c998:
/* 0x8004c998 */ lw	$s6,168($sp)
.L8004c99c:
/* 0x8004c99c */ lw	$s5,164($sp)
.L8004c9a0:
/* 0x8004c9a0 */ lw	$s4,160($sp)
.L8004c9a4:
/* 0x8004c9a4 */ lw	$s3,156($sp)
.L8004c9a8:
/* 0x8004c9a8 */ lw	$s2,152($sp)
.L8004c9ac:
/* 0x8004c9ac */ lw	$s1,148($sp)
.L8004c9b0:
/* 0x8004c9b0 */ lw	$s0,144($sp)
.L8004c9b4:
/* 0x8004c9b4 */ jr	$ra
.L8004c9b8:
/* 0x8004c9b8 */ addiu	$sp,$sp,184
.size FUN_8004c27c, .-FUN_8004c27c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004cbac
.globl FUN_8004cbac
.type FUN_8004cbac, @function
FUN_8004cbac:
.L8004cbac:
/* 0x8004cbac */ addiu	$sp,$sp,-88
.L8004cbb0:
/* 0x8004cbb0 */ sw	$s3,68($sp)
.L8004cbb4:
/* 0x8004cbb4 */ addu	$s3,$a0,$zero
.L8004cbb8:
/* 0x8004cbb8 */ sw	$s1,60($sp)
.L8004cbbc:
/* 0x8004cbbc */ addu	$s1,$a1,$zero
.L8004cbc0:
/* 0x8004cbc0 */ sw	$s2,64($sp)
.L8004cbc4:
/* 0x8004cbc4 */ addu	$s2,$zero,$zero
.L8004cbc8:
/* 0x8004cbc8 */ addiu	$a0,$zero,1
.L8004cbcc:
/* 0x8004cbcc */ addiu	$a1,$zero,15
.L8004cbd0:
/* 0x8004cbd0 */ sw	$ra,80($sp)
.L8004cbd4:
/* 0x8004cbd4 */ sw	$s5,76($sp)
.L8004cbd8:
/* 0x8004cbd8 */ sw	$s4,72($sp)
.L8004cbdc:
/* 0x8004cbdc */ jal	0x80043134
.L8004cbe0:
/* 0x8004cbe0 */ sw	$s0,56($sp)
.L8004cbe4:
/* 0x8004cbe4 */ addiu	$a0,$zero,1
.L8004cbe8:
/* 0x8004cbe8 */ jal	0x80048c3c
.L8004cbec:
/* 0x8004cbec */ addiu	$a1,$zero,-1
.L8004cbf0:
/* 0x8004cbf0 */ addiu	$a0,$zero,1
.L8004cbf4:
/* 0x8004cbf4 */ addiu	$a1,$zero,254
.L8004cbf8:
/* 0x8004cbf8 */ addu	$s5,$a0,$zero
.L8004cbfc:
/* 0x8004cbfc */ jal	0x80048e80
.L8004cc00:
/* 0x8004cc00 */ addu	$s4,$s2,$zero
.L8004cc04:
/* 0x8004cc04 */ bne	$s3,$zero,.L8004cc24
.L8004cc08:
/* 0x8004cc08 */ lui	$v0,0x800f
.L8004cc0c:
/* 0x8004cc0c */ lw	$v1,10492($v0)
.L8004cc10:
/* 0x8004cc10 */ sll	$zero,$zero,0x0
.L8004cc14:
/* 0x8004cc14 */ slti	$v0,$v1,32
.L8004cc18:
/* 0x8004cc18 */ beq	$v0,$zero,.L8004cc24
.L8004cc1c:
/* 0x8004cc1c */ sll	$zero,$zero,0x0
.L8004cc20:
/* 0x8004cc20 */ sll	$s1,$v1,0x2
.L8004cc24:
/* 0x8004cc24 */ bgez	$s1,.L8004cc34
.L8004cc28:
/* 0x8004cc28 */ slti	$v0,$s1,129
.L8004cc2c:
/* 0x8004cc2c */ addu	$s1,$zero,$zero
.L8004cc30:
/* 0x8004cc30 */ slti	$v0,$s1,129
.L8004cc34:
/* 0x8004cc34 */ bne	$v0,$zero,.L8004cc40
.L8004cc38:
/* 0x8004cc38 */ sll	$zero,$zero,0x0
.L8004cc3c:
/* 0x8004cc3c */ addiu	$s1,$zero,128
.L8004cc40:
/* 0x8004cc40 */ jal	0x80098880
.L8004cc44:
/* 0x8004cc44 */ addiu	$a0,$zero,130
.L8004cc48:
/* 0x8004cc48 */ bne	$s3,$zero,.L8004cc68
.L8004cc4c:
/* 0x8004cc4c */ addu	$t0,$v0,$zero
.L8004cc50:
/* 0x8004cc50 */ lui	$v0,0x800f
.L8004cc54:
/* 0x8004cc54 */ lw	$v0,10492($v0)
.L8004cc58:
/* 0x8004cc58 */ sll	$zero,$zero,0x0
.L8004cc5c:
/* 0x8004cc5c */ slti	$v0,$v0,32
.L8004cc60:
/* 0x8004cc60 */ bne	$v0,$zero,.L8004cc84
.L8004cc64:
/* 0x8004cc64 */ addiu	$v0,$zero,128
.L8004cc68:
/* 0x8004cc68 */ addu	$a0,$s4,$zero
.L8004cc6c:
/* 0x8004cc6c */ addiu	$a1,$zero,255
.L8004cc70:
/* 0x8004cc70 */ addu	$a2,$s1,$zero
.L8004cc74:
/* 0x8004cc74 */ jal	0x8004e064
.L8004cc78:
/* 0x8004cc78 */ addu	$a3,$t0,$zero
.L8004cc7c:
/* 0x8004cc7c */ j	.L8004cd00
.L8004cc80:
/* 0x8004cc80 */ sll	$zero,$zero,0x0
.L8004cc84:
/* 0x8004cc84 */ subu	$v0,$v0,$s1
.L8004cc88:
/* 0x8004cc88 */ sll	$s0,$v0,0x1
.L8004cc8c:
/* 0x8004cc8c */ addiu	$v1,$zero,255
.L8004cc90:
/* 0x8004cc90 */ slt	$v0,$s0,$v1
.L8004cc94:
/* 0x8004cc94 */ beq	$v0,$zero,.L8004cca0
.L8004cc98:
/* 0x8004cc98 */ sll	$zero,$zero,0x0
.L8004cc9c:
/* 0x8004cc9c */ addu	$v1,$s0,$zero
.L8004cca0:
/* 0x8004cca0 */ addu	$s0,$v1,$zero
.L8004cca4:
/* 0x8004cca4 */ addu	$a0,$s4,$zero
.L8004cca8:
/* 0x8004cca8 */ addiu	$a1,$zero,255
.L8004ccac:
/* 0x8004ccac */ addiu	$a2,$zero,1
.L8004ccb0:
/* 0x8004ccb0 */ addu	$a3,$s1,$zero
.L8004ccb4:
/* 0x8004ccb4 */ addiu	$v0,$zero,-320
.L8004ccb8:
/* 0x8004ccb8 */ sw	$v0,24($sp)
.L8004ccbc:
/* 0x8004ccbc */ addiu	$v0,$zero,-240
.L8004ccc0:
/* 0x8004ccc0 */ sw	$v0,28($sp)
.L8004ccc4:
/* 0x8004ccc4 */ addiu	$v0,$zero,-1
.L8004ccc8:
/* 0x8004ccc8 */ sw	$s1,16($sp)
.L8004cccc:
/* 0x8004cccc */ sw	$s1,20($sp)
.L8004ccd0:
/* 0x8004ccd0 */ sw	$t0,32($sp)
.L8004ccd4:
/* 0x8004ccd4 */ sw	$zero,36($sp)
.L8004ccd8:
/* 0x8004ccd8 */ sw	$zero,40($sp)
.L8004ccdc:
/* 0x8004ccdc */ sw	$v0,44($sp)
.L8004cce0:
/* 0x8004cce0 */ jal	0x8004eb5c
.L8004cce4:
/* 0x8004cce4 */ sw	$v0,48($sp)
.L8004cce8:
/* 0x8004cce8 */ andi	$a0,$s0,0xff
.L8004ccec:
/* 0x8004ccec */ addu	$a1,$a0,$zero
.L8004ccf0:
/* 0x8004ccf0 */ lui	$v0,0x800e
.L8004ccf4:
/* 0x8004ccf4 */ lw	$a3,10964($v0)
.L8004ccf8:
/* 0x8004ccf8 */ jal	0x80036b70
.L8004ccfc:
/* 0x8004ccfc */ addu	$a2,$a0,$zero
.L8004cd00:
/* 0x8004cd00 */ beq	$s3,$zero,.L8004cd6c
.L8004cd04:
/* 0x8004cd04 */ addu	$a0,$s5,$zero
.L8004cd08:
/* 0x8004cd08 */ blez	$s1,.L8004cd6c
.L8004cd0c:
/* 0x8004cd0c */ lui	$v0,0x800f
.L8004cd10:
/* 0x8004cd10 */ lw	$v0,10484($v0)
.L8004cd14:
/* 0x8004cd14 */ sll	$zero,$zero,0x0
.L8004cd18:
/* 0x8004cd18 */ srl	$v0,$v0,0x3
.L8004cd1c:
/* 0x8004cd1c */ andi	$v0,$v0,0x1
.L8004cd20:
/* 0x8004cd20 */ beq	$v0,$zero,.L8004cd2c
.L8004cd24:
/* 0x8004cd24 */ addiu	$s0,$zero,64
.L8004cd28:
/* 0x8004cd28 */ addiu	$s0,$zero,128
.L8004cd2c:
/* 0x8004cd2c */ mult	$s1,$s0
.L8004cd30:
/* 0x8004cd30 */ mflo	$v0
.L8004cd34:
/* 0x8004cd34 */ bgez	$v0,.L8004cd40
.L8004cd38:
/* 0x8004cd38 */ sll	$zero,$zero,0x0
.L8004cd3c:
/* 0x8004cd3c */ addiu	$v0,$v0,127
.L8004cd40:
/* 0x8004cd40 */ addu	$a0,$s5,$zero
.L8004cd44:
/* 0x8004cd44 */ addu	$a1,$s2,$zero
.L8004cd48:
/* 0x8004cd48 */ addu	$a2,$zero,$zero
.L8004cd4c:
/* 0x8004cd4c */ sra	$a3,$v0,0x7
.L8004cd50:
/* 0x8004cd50 */ addiu	$v0,$zero,-160
.L8004cd54:
/* 0x8004cd54 */ sw	$v0,16($sp)
.L8004cd58:
/* 0x8004cd58 */ addiu	$v0,$zero,160
.L8004cd5c:
/* 0x8004cd5c */ jal	0x80085ff8
.L8004cd60:
/* 0x8004cd60 */ sw	$v0,20($sp)
.L8004cd64:
/* 0x8004cd64 */ addu	$s2,$v0,$zero
.L8004cd68:
/* 0x8004cd68 */ addu	$a0,$s5,$zero
.L8004cd6c:
/* 0x8004cd6c */ jal	0x80048aa8
.L8004cd70:
/* 0x8004cd70 */ addu	$a1,$s2,$zero
.L8004cd74:
/* 0x8004cd74 */ jal	0x80043344
.L8004cd78:
/* 0x8004cd78 */ addu	$a0,$s5,$zero
.L8004cd7c:
/* 0x8004cd7c */ lw	$ra,80($sp)
.L8004cd80:
/* 0x8004cd80 */ lw	$s5,76($sp)
.L8004cd84:
/* 0x8004cd84 */ lw	$s4,72($sp)
.L8004cd88:
/* 0x8004cd88 */ lw	$s3,68($sp)
.L8004cd8c:
/* 0x8004cd8c */ lw	$s2,64($sp)
.L8004cd90:
/* 0x8004cd90 */ lw	$s1,60($sp)
.L8004cd94:
/* 0x8004cd94 */ lw	$s0,56($sp)
.L8004cd98:
/* 0x8004cd98 */ jr	$ra
.L8004cd9c:
/* 0x8004cd9c */ addiu	$sp,$sp,88
.size FUN_8004cbac, .-FUN_8004cbac
