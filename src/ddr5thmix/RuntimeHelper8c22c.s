.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008c22c
.globl FUN_8008c22c
.type FUN_8008c22c, @function
FUN_8008c22c:
/* Runtime resource and state coordinator. */
.L8008c22c:
/* 0x8008c22c */ addiu	$sp,$sp,-152
.L8008c230:
/* 0x8008c230 */ sw	$s2,120($sp)
.L8008c234:
/* 0x8008c234 */ addu	$s2,$a2,$zero
.L8008c238:
/* 0x8008c238 */ lw	$a2,168($sp)
.L8008c23c:
/* 0x8008c23c */ sw	$s3,124($sp)
.L8008c240:
/* 0x8008c240 */ addu	$s3,$a0,$zero
.L8008c244:
/* 0x8008c244 */ sw	$s7,140($sp)
.L8008c248:
/* 0x8008c248 */ addu	$s7,$a1,$zero
.L8008c24c:
/* 0x8008c24c */ sw	$ra,148($sp)
.L8008c250:
/* 0x8008c250 */ sw	$s8,144($sp)
.L8008c254:
/* 0x8008c254 */ sw	$s6,136($sp)
.L8008c258:
/* 0x8008c258 */ sw	$s5,132($sp)
.L8008c25c:
/* 0x8008c25c */ sw	$s4,128($sp)
.L8008c260:
/* 0x8008c260 */ sw	$s1,116($sp)
.L8008c264:
/* 0x8008c264 */ slt	$v0,$a2,$a3
.L8008c268:
/* 0x8008c268 */ bne	$v0,$zero,.L8008c284
.L8008c26c:
/* 0x8008c26c */ sw	$s0,112($sp)
.L8008c270:
/* 0x8008c270 */ sll	$v0,$a3,0x7
.L8008c274:
/* 0x8008c274 */ div	$zero,$v0,$a2
.L8008c278:
/* 0x8008c278 */ mflo	$s5
.L8008c27c:
/* 0x8008c27c */ j	0x8008c288
.L8008c280:
/* 0x8008c280 */ sll	$zero,$zero,0x0
.L8008c284:
/* 0x8008c284 */ addiu	$s5,$zero,128
.L8008c288:
/* 0x8008c288 */ jal	0x80098880
.L8008c28c:
/* 0x8008c28c */ addiu	$a0,$zero,91
.L8008c290:
/* 0x8008c290 */ addiu	$a0,$zero,92
.L8008c294:
/* 0x8008c294 */ jal	0x80098880
.L8008c298:
/* 0x8008c298 */ addu	$s0,$v0,$zero
.L8008c29c:
/* 0x8008c29c */ addu	$s1,$v0,$zero
.L8008c2a0:
/* 0x8008c2a0 */ addiu	$v1,$sp,40
.L8008c2a4:
/* 0x8008c2a4 */ lui	$v0,0x8002
.L8008c2a8:
/* 0x8008c2a8 */ addiu	$v0,$v0,-6536
.L8008c2ac:
/* 0x8008c2ac */ addiu	$a0,$v0,64
.L8008c2b0:
/* 0x8008c2b0 */ lw	$t0,0($v0)
.L8008c2b4:
/* 0x8008c2b4 */ lw	$t1,4($v0)
.L8008c2b8:
/* 0x8008c2b8 */ lw	$t2,8($v0)
.L8008c2bc:
/* 0x8008c2bc */ lw	$t3,12($v0)
.L8008c2c0:
/* 0x8008c2c0 */ sw	$t0,0($v1)
.L8008c2c4:
/* 0x8008c2c4 */ sw	$t1,4($v1)
.L8008c2c8:
/* 0x8008c2c8 */ sw	$t2,8($v1)
.L8008c2cc:
/* 0x8008c2cc */ sw	$t3,12($v1)
.L8008c2d0:
/* 0x8008c2d0 */ addiu	$v0,$v0,16
.L8008c2d4:
/* 0x8008c2d4 */ bne	$v0,$a0,.L8008c2b0
.L8008c2d8:
/* 0x8008c2d8 */ addiu	$v1,$v1,16
.L8008c2dc:
/* 0x8008c2dc */ addiu	$a1,$zero,255
.L8008c2e0:
/* 0x8008c2e0 */ addiu	$a2,$zero,128
.L8008c2e4:
/* 0x8008c2e4 */ addiu	$a3,$zero,-24
.L8008c2e8:
/* 0x8008c2e8 */ addu	$s4,$zero,$zero
.L8008c2ec:
/* 0x8008c2ec */ lw	$t0,0($v0)
.L8008c2f0:
/* 0x8008c2f0 */ lw	$t1,4($v0)
.L8008c2f4:
/* 0x8008c2f4 */ sw	$t0,0($v1)
.L8008c2f8:
/* 0x8008c2f8 */ sw	$t1,4($v1)
.L8008c2fc:
/* 0x8008c2fc */ addiu	$v0,$zero,-192
.L8008c300:
/* 0x8008c300 */ sw	$v0,16($sp)
.L8008c304:
/* 0x8008c304 */ addiu	$v0,$zero,296
.L8008c308:
/* 0x8008c308 */ sw	$v0,24($sp)
.L8008c30c:
/* 0x8008c30c */ addiu	$v0,$zero,48
.L8008c310:
/* 0x8008c310 */ sw	$v0,28($sp)
.L8008c314:
/* 0x8008c314 */ addiu	$v0,$zero,83
.L8008c318:
/* 0x8008c318 */ sw	$v0,32($sp)
.L8008c31c:
/* 0x8008c31c */ addiu	$v0,$zero,384
.L8008c320:
/* 0x8008c320 */ sw	$s0,20($sp)
.L8008c324:
/* 0x8008c324 */ sw	$v0,36($sp)
.L8008c328:
/* 0x8008c328 */ lw	$a0,1892($s3)
.L8008c32c:
/* 0x8008c32c */ jal	0x8004dab8
.L8008c330:
/* 0x8008c330 */ addiu	$s6,$zero,-168
.L8008c334:
/* 0x8008c334 */ sw	$v0,1892($s3)
.L8008c338:
/* 0x8008c338 */ lw	$v0,76($sp)
.L8008c33c:
/* 0x8008c33c */ sll	$zero,$zero,0x0
.L8008c340:
/* 0x8008c340 */ addu	$v0,$v0,$s6
.L8008c344:
/* 0x8008c344 */ addiu	$s3,$v0,-250
.L8008c348:
/* 0x8008c348 */ addiu	$v0,$v0,-208
.L8008c34c:
/* 0x8008c34c */ slti	$v0,$v0,192
.L8008c350:
/* 0x8008c350 */ bne	$v0,$zero,.L8008c360
.L8008c354:
/* 0x8008c354 */ addiu	$s0,$zero,42
.L8008c358:
/* 0x8008c358 */ addiu	$v0,$zero,192
.L8008c35c:
/* 0x8008c35c */ subu	$s0,$v0,$s3
.L8008c360:
/* 0x8008c360 */ addu	$a0,$s7,$zero
.L8008c364:
/* 0x8008c364 */ addu	$a1,$s2,$zero
.L8008c368:
/* 0x8008c368 */ addiu	$s6,$s6,42
.L8008c36c:
/* 0x8008c36c */ lh	$a2,2($s1)
.L8008c370:
/* 0x8008c370 */ lh	$a3,4($s1)
.L8008c374:
/* 0x8008c374 */ addiu	$v0,$zero,159
.L8008c378:
/* 0x8008c378 */ sw	$v0,16($sp)
.L8008c37c:
/* 0x8008c37c */ sw	$s0,20($sp)
.L8008c380:
/* 0x8008c380 */ lh	$v0,10($s1)
.L8008c384:
/* 0x8008c384 */ addiu	$s8,$zero,-1
.L8008c388:
/* 0x8008c388 */ sw	$s8,28($sp)
.L8008c38c:
/* 0x8008c38c */ addiu	$a2,$a2,160
.L8008c390:
/* 0x8008c390 */ addiu	$a3,$a3,198
.L8008c394:
/* 0x8008c394 */ jal	0x80048144
.L8008c398:
/* 0x8008c398 */ sw	$v0,24($sp)
.L8008c39c:
/* 0x8008c39c */ addu	$a0,$s7,$zero
.L8008c3a0:
/* 0x8008c3a0 */ lh	$a2,14($s1)
.L8008c3a4:
/* 0x8008c3a4 */ lh	$a3,16($s1)
.L8008c3a8:
/* 0x8008c3a8 */ jal	0x80049208
.L8008c3ac:
/* 0x8008c3ac */ addu	$a1,$s2,$zero
.L8008c3b0:
/* 0x8008c3b0 */ addu	$a0,$s7,$zero
.L8008c3b4:
/* 0x8008c3b4 */ addu	$a1,$s2,$zero
.L8008c3b8:
/* 0x8008c3b8 */ addu	$a3,$s3,$zero
.L8008c3bc:
/* 0x8008c3bc */ sll	$v0,$s4,0x3
.L8008c3c0:
/* 0x8008c3c0 */ addiu	$s4,$s4,1
.L8008c3c4:
/* 0x8008c3c4 */ addu	$v0,$sp,$v0
.L8008c3c8:
/* 0x8008c3c8 */ lw	$a2,40($v0)
.L8008c3cc:
/* 0x8008c3cc */ addiu	$v0,$zero,318
.L8008c3d0:
/* 0x8008c3d0 */ sw	$v0,16($sp)
.L8008c3d4:
/* 0x8008c3d4 */ sw	$s0,20($sp)
.L8008c3d8:
/* 0x8008c3d8 */ jal	0x80049364
.L8008c3dc:
/* 0x8008c3dc */ addiu	$a2,$a2,-320
.L8008c3e0:
/* 0x8008c3e0 */ addu	$a0,$s7,$zero
.L8008c3e4:
/* 0x8008c3e4 */ addu	$a1,$s2,$zero
.L8008c3e8:
/* 0x8008c3e8 */ addu	$a2,$s5,$zero
.L8008c3ec:
/* 0x8008c3ec */ addu	$a3,$s5,$zero
.L8008c3f0:
/* 0x8008c3f0 */ jal	0x800490f8
.L8008c3f4:
/* 0x8008c3f4 */ sw	$s5,16($sp)
.L8008c3f8:
/* 0x8008c3f8 */ slti	$v0,$s4,9
.L8008c3fc:
/* 0x8008c3fc */ bne	$v0,$zero,.L8008c338
.L8008c400:
/* 0x8008c400 */ addiu	$s2,$s2,1
.L8008c404:
/* 0x8008c404 */ addu	$a0,$s7,$zero
.L8008c408:
/* 0x8008c408 */ lui	$s0,0x8011
.L8008c40c:
/* 0x8008c40c */ addiu	$s0,$s0,27696
.L8008c410:
/* 0x8008c410 */ lh	$a2,2($s0)
.L8008c414:
/* 0x8008c414 */ addiu	$s1,$zero,1
.L8008c418:
/* 0x8008c418 */ sw	$s1,16($sp)
.L8008c41c:
/* 0x8008c41c */ sw	$s1,20($sp)
.L8008c420:
/* 0x8008c420 */ sw	$s8,28($sp)
.L8008c424:
/* 0x8008c424 */ lh	$a3,4($s0)
.L8008c428:
/* 0x8008c428 */ lh	$v0,10($s0)
.L8008c42c:
/* 0x8008c42c */ addu	$a1,$s2,$zero
.L8008c430:
/* 0x8008c430 */ jal	0x80048144
.L8008c434:
/* 0x8008c434 */ sw	$v0,24($sp)
.L8008c438:
/* 0x8008c438 */ addu	$a0,$s7,$zero
.L8008c43c:
/* 0x8008c43c */ lh	$a2,14($s0)
.L8008c440:
/* 0x8008c440 */ lh	$a3,16($s0)
.L8008c444:
/* 0x8008c444 */ jal	0x80049208
.L8008c448:
/* 0x8008c448 */ addu	$a1,$s2,$zero
.L8008c44c:
/* 0x8008c44c */ addu	$a0,$s7,$zero
.L8008c450:
/* 0x8008c450 */ addu	$a1,$s2,$zero
.L8008c454:
/* 0x8008c454 */ addiu	$a2,$zero,59
.L8008c458:
/* 0x8008c458 */ addiu	$a3,$zero,-192
.L8008c45c:
/* 0x8008c45c */ addiu	$v0,$zero,261
.L8008c460:
/* 0x8008c460 */ sw	$v0,16($sp)
.L8008c464:
/* 0x8008c464 */ addiu	$v0,$zero,6
.L8008c468:
/* 0x8008c468 */ jal	0x80049364
.L8008c46c:
/* 0x8008c46c */ sw	$v0,20($sp)
.L8008c470:
/* 0x8008c470 */ addu	$a0,$s7,$zero
.L8008c474:
/* 0x8008c474 */ addu	$a1,$s2,$zero
.L8008c478:
/* 0x8008c478 */ addu	$a2,$zero,$zero
.L8008c47c:
/* 0x8008c47c */ addu	$a3,$a2,$zero
.L8008c480:
/* 0x8008c480 */ jal	0x800490f8
.L8008c484:
/* 0x8008c484 */ sw	$zero,16($sp)
.L8008c488:
/* 0x8008c488 */ addu	$s2,$s2,$s1
.L8008c48c:
/* 0x8008c48c */ lh	$a2,2($s0)
.L8008c490:
/* 0x8008c490 */ addu	$a0,$s7,$zero
.L8008c494:
/* 0x8008c494 */ sw	$s1,16($sp)
.L8008c498:
/* 0x8008c498 */ sw	$s1,20($sp)
.L8008c49c:
/* 0x8008c49c */ sw	$s8,28($sp)
.L8008c4a0:
/* 0x8008c4a0 */ lh	$a3,4($s0)
.L8008c4a4:
/* 0x8008c4a4 */ lh	$v0,10($s0)
.L8008c4a8:
/* 0x8008c4a8 */ addu	$a1,$s2,$zero
.L8008c4ac:
/* 0x8008c4ac */ jal	0x80048144
.L8008c4b0:
/* 0x8008c4b0 */ sw	$v0,24($sp)
.L8008c4b4:
/* 0x8008c4b4 */ addu	$a0,$s7,$zero
.L8008c4b8:
/* 0x8008c4b8 */ lh	$a2,14($s0)
.L8008c4bc:
/* 0x8008c4bc */ lh	$a3,16($s0)
.L8008c4c0:
/* 0x8008c4c0 */ jal	0x80049208
.L8008c4c4:
/* 0x8008c4c4 */ addu	$a1,$s2,$zero
.L8008c4c8:
/* 0x8008c4c8 */ addu	$a0,$s7,$zero
.L8008c4cc:
/* 0x8008c4cc */ addu	$a1,$s2,$zero
.L8008c4d0:
/* 0x8008c4d0 */ addiu	$a2,$zero,298
.L8008c4d4:
/* 0x8008c4d4 */ addiu	$a3,$zero,-67
.L8008c4d8:
/* 0x8008c4d8 */ addiu	$v0,$zero,22
.L8008c4dc:
/* 0x8008c4dc */ sw	$v0,16($sp)
.L8008c4e0:
/* 0x8008c4e0 */ addiu	$v0,$zero,139
.L8008c4e4:
/* 0x8008c4e4 */ jal	0x80049364
.L8008c4e8:
/* 0x8008c4e8 */ sw	$v0,20($sp)
.L8008c4ec:
/* 0x8008c4ec */ addu	$a0,$s7,$zero
.L8008c4f0:
/* 0x8008c4f0 */ addu	$a1,$s2,$zero
.L8008c4f4:
/* 0x8008c4f4 */ addu	$a2,$zero,$zero
.L8008c4f8:
/* 0x8008c4f8 */ addu	$a3,$a2,$zero
.L8008c4fc:
/* 0x8008c4fc */ jal	0x800490f8
.L8008c500:
/* 0x8008c500 */ sw	$zero,16($sp)
.L8008c504:
/* 0x8008c504 */ addu	$v0,$s2,$s1
.L8008c508:
/* 0x8008c508 */ lw	$ra,148($sp)
.L8008c50c:
/* 0x8008c50c */ lw	$s8,144($sp)
.L8008c510:
/* 0x8008c510 */ lw	$s7,140($sp)
.L8008c514:
/* 0x8008c514 */ lw	$s6,136($sp)
.L8008c518:
/* 0x8008c518 */ lw	$s5,132($sp)
.L8008c51c:
/* 0x8008c51c */ lw	$s4,128($sp)
.L8008c520:
/* 0x8008c520 */ lw	$s3,124($sp)
.L8008c524:
/* 0x8008c524 */ lw	$s2,120($sp)
.L8008c528:
/* 0x8008c528 */ lw	$s1,116($sp)
.L8008c52c:
/* 0x8008c52c */ lw	$s0,112($sp)
.L8008c530:
/* 0x8008c530 */ jr	$ra
.L8008c534:
/* 0x8008c534 */ addiu	$sp,$sp,152
.size FUN_8008c22c, .-FUN_8008c22c
