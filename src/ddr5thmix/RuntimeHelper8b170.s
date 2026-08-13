.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008b170
.globl FUN_8008b170
.type FUN_8008b170, @function
FUN_8008b170:
/* Runtime resource, timing, and state coordinator. */
.L8008b170:
/* 0x8008b170 */ addiu	$sp,$sp,-336
.L8008b174:
/* 0x8008b174 */ sw	$s6,320($sp)
.L8008b178:
/* 0x8008b178 */ addu	$s6,$a2,$zero
.L8008b17c:
/* 0x8008b17c */ sw	$a0,336($sp)
.L8008b180:
/* 0x8008b180 */ addiu	$a0,$zero,92
.L8008b184:
/* 0x8008b184 */ sw	$ra,332($sp)
.L8008b188:
/* 0x8008b188 */ sw	$s8,328($sp)
.L8008b18c:
/* 0x8008b18c */ sw	$s7,324($sp)
.L8008b190:
/* 0x8008b190 */ sw	$s5,316($sp)
.L8008b194:
/* 0x8008b194 */ sw	$s4,312($sp)
.L8008b198:
/* 0x8008b198 */ sw	$s3,308($sp)
.L8008b19c:
/* 0x8008b19c */ sw	$s2,304($sp)
.L8008b1a0:
/* 0x8008b1a0 */ sw	$s1,300($sp)
.L8008b1a4:
/* 0x8008b1a4 */ sw	$s0,296($sp)
.L8008b1a8:
/* 0x8008b1a8 */ sw	$a1,340($sp)
.L8008b1ac:
/* 0x8008b1ac */ jal	0x80098880
.L8008b1b0:
/* 0x8008b1b0 */ sw	$a3,348($sp)
.L8008b1b4:
/* 0x8008b1b4 */ lw	$t0,336($sp)
.L8008b1b8:
/* 0x8008b1b8 */ sw	$v0,248($sp)
.L8008b1bc:
/* 0x8008b1bc */ lw	$v1,1888($t0)
.L8008b1c0:
/* 0x8008b1c0 */ addiu	$v0,$zero,-1
.L8008b1c4:
/* 0x8008b1c4 */ beq	$v1,$v0,.L8008b208
.L8008b1c8:
/* 0x8008b1c8 */ lui	$v0,0x800f
.L8008b1cc:
/* 0x8008b1cc */ lw	$v0,10488($v0)
.L8008b1d0:
/* 0x8008b1d0 */ sll	$zero,$zero,0x0
.L8008b1d4:
/* 0x8008b1d4 */ subu	$v1,$v0,$v1
.L8008b1d8:
/* 0x8008b1d8 */ slti	$v0,$v1,60
.L8008b1dc:
/* 0x8008b1dc */ beq	$v0,$zero,.L8008b1f8
.L8008b1e0:
/* 0x8008b1e0 */ addiu	$v0,$zero,60
.L8008b1e4:
/* 0x8008b1e4 */ subu	$v0,$v0,$v1
.L8008b1e8:
/* 0x8008b1e8 */ addiu	$t1,$zero,60
.L8008b1ec:
/* 0x8008b1ec */ sw	$v0,348($sp)
.L8008b1f0:
/* 0x8008b1f0 */ j	0x8008b208
.L8008b1f4:
/* 0x8008b1f4 */ sw	$t1,352($sp)
.L8008b1f8:
/* 0x8008b1f8 */ addiu	$v1,$v1,-60
.L8008b1fc:
/* 0x8008b1fc */ sw	$v1,348($sp)
.L8008b200:
/* 0x8008b200 */ addiu	$t0,$zero,60
.L8008b204:
/* 0x8008b204 */ sw	$t0,352($sp)
.L8008b208:
/* 0x8008b208 */ lw	$t1,352($sp)
.L8008b20c:
/* 0x8008b20c */ lw	$t0,348($sp)
.L8008b210:
/* 0x8008b210 */ sll	$zero,$zero,0x0
.L8008b214:
/* 0x8008b214 */ slt	$v0,$t1,$t0
.L8008b218:
/* 0x8008b218 */ beq	$v0,$zero,.L8008b228
.L8008b21c:
/* 0x8008b21c */ sll	$zero,$zero,0x0
.L8008b220:
/* 0x8008b220 */ sw	$t1,348($sp)
.L8008b224:
/* 0x8008b224 */ lw	$t0,348($sp)
.L8008b228:
/* 0x8008b228 */ sll	$zero,$zero,0x0
.L8008b22c:
/* 0x8008b22c */ bgez	$t0,.L8008b238
.L8008b230:
/* 0x8008b230 */ sll	$zero,$zero,0x0
.L8008b234:
/* 0x8008b234 */ sw	$zero,348($sp)
.L8008b238:
/* 0x8008b238 */ lw	$t1,336($sp)
.L8008b23c:
/* 0x8008b23c */ sll	$zero,$zero,0x0
.L8008b240:
/* 0x8008b240 */ lbu	$v0,1968($t1)
.L8008b244:
/* 0x8008b244 */ sll	$zero,$zero,0x0
.L8008b248:
/* 0x8008b248 */ bne	$v0,$zero,.L8008b270
.L8008b24c:
/* 0x8008b24c */ lui	$v0,0x800f
.L8008b250:
/* 0x8008b250 */ addiu	$v0,$zero,2
.L8008b254:
/* 0x8008b254 */ sw	$v0,16($sp)
.L8008b258:
/* 0x8008b258 */ addu	$a0,$t1,$zero
.L8008b25c:
/* 0x8008b25c */ addiu	$a1,$zero,11
.L8008b260:
/* 0x8008b260 */ addiu	$a2,$sp,48
.L8008b264:
/* 0x8008b264 */ jal	0x8008ac3c
.L8008b268:
/* 0x8008b268 */ addiu	$a3,$sp,96
.L8008b26c:
/* 0x8008b26c */ lui	$v0,0x800f
.L8008b270:
/* 0x8008b270 */ lw	$a0,10488($v0)
.L8008b274:
/* 0x8008b274 */ jal	0x8004964c
.L8008b278:
/* 0x8008b278 */ sll	$a0,$a0,0x6
.L8008b27c:
/* 0x8008b27c */ sll	$v1,$v0,0x1
.L8008b280:
/* 0x8008b280 */ addu	$v1,$v1,$v0
.L8008b284:
/* 0x8008b284 */ sll	$v0,$v1,0x4
.L8008b288:
/* 0x8008b288 */ bgez	$v0,.L8008b294
.L8008b28c:
/* 0x8008b28c */ sll	$zero,$zero,0x0
.L8008b290:
/* 0x8008b290 */ addiu	$v0,$v0,4095
.L8008b294:
/* 0x8008b294 */ sra	$v0,$v0,0xc
.L8008b298:
/* 0x8008b298 */ lw	$t0,352($sp)
.L8008b29c:
/* 0x8008b29c */ lw	$t1,348($sp)
.L8008b2a0:
/* 0x8008b2a0 */ addiu	$s0,$v0,48
.L8008b2a4:
/* 0x8008b2a4 */ slt	$v0,$t0,$t1
.L8008b2a8:
/* 0x8008b2a8 */ bne	$v0,$zero,.L8008b2d0
.L8008b2ac:
/* 0x8008b2ac */ addiu	$s4,$zero,128
.L8008b2b0:
/* 0x8008b2b0 */ sll	$v1,$t1,0x7
.L8008b2b4:
/* 0x8008b2b4 */ srl	$v0,$t0,0x1f
.L8008b2b8:
/* 0x8008b2b8 */ addu	$v0,$t0,$v0
.L8008b2bc:
/* 0x8008b2bc */ sra	$v0,$v0,0x1
.L8008b2c0:
/* 0x8008b2c0 */ div	$zero,$v1,$v0
.L8008b2c4:
/* 0x8008b2c4 */ mflo	$s4
.L8008b2c8:
/* 0x8008b2c8 */ j	0x8008b2d4
.L8008b2cc:
/* 0x8008b2cc */ slti	$v0,$s4,129
.L8008b2d0:
/* 0x8008b2d0 */ slti	$v0,$s4,129
.L8008b2d4:
/* 0x8008b2d4 */ bne	$v0,$zero,.L8008b2e0
.L8008b2d8:
/* 0x8008b2d8 */ sll	$zero,$zero,0x0
.L8008b2dc:
/* 0x8008b2dc */ addiu	$s4,$zero,128
.L8008b2e0:
/* 0x8008b2e0 */ lw	$t0,336($sp)
.L8008b2e4:
/* 0x8008b2e4 */ sll	$zero,$zero,0x0
.L8008b2e8:
/* 0x8008b2e8 */ lw	$a0,1868($t0)
.L8008b2ec:
/* 0x8008b2ec */ sll	$zero,$zero,0x0
.L8008b2f0:
/* 0x8008b2f0 */ bgez	$a0,.L8008b32c
.L8008b2f4:
/* 0x8008b2f4 */ negu	$v0,$a0
.L8008b2f8:
/* 0x8008b2f8 */ lw	$v1,4($t0)
.L8008b2fc:
/* 0x8008b2fc */ sll	$zero,$zero,0x0
.L8008b300:
/* 0x8008b300 */ sll	$v1,$v1,0xc
.L8008b304:
/* 0x8008b304 */ div	$zero,$v0,$v1
.L8008b308:
/* 0x8008b308 */ mfhi	$a0
.L8008b30c:
/* 0x8008b30c */ sll	$zero,$zero,0x0
.L8008b310:
/* 0x8008b310 */ subu	$a0,$v1,$a0
.L8008b314:
/* 0x8008b314 */ div	$zero,$a0,$v1
.L8008b318:
/* 0x8008b318 */ mfhi	$v0
.L8008b31c:
/* 0x8008b31c */ sll	$zero,$zero,0x0
.L8008b320:
/* 0x8008b320 */ sra	$v0,$v0,0xc
.L8008b324:
/* 0x8008b324 */ j	0x8008b350
.L8008b328:
/* 0x8008b328 */ sll	$v1,$v0,0x1
.L8008b32c:
/* 0x8008b32c */ lw	$v0,4($t0)
.L8008b330:
/* 0x8008b330 */ sll	$zero,$zero,0x0
.L8008b334:
/* 0x8008b334 */ sll	$v0,$v0,0xc
.L8008b338:
/* 0x8008b338 */ div	$zero,$a0,$v0
.L8008b33c:
/* 0x8008b33c */ mfhi	$v1
.L8008b340:
/* 0x8008b340 */ sll	$zero,$zero,0x0
.L8008b344:
/* 0x8008b344 */ sra	$v1,$v1,0xc
.L8008b348:
/* 0x8008b348 */ sll	$v1,$v1,0x1
.L8008b34c:
/* 0x8008b34c */ lw	$t0,336($sp)
.L8008b350:
/* 0x8008b350 */ sll	$zero,$zero,0x0
.L8008b354:
/* 0x8008b354 */ addu	$v1,$t0,$v1
.L8008b358:
/* 0x8008b358 */ lw	$v0,1868($t0)
.L8008b35c:
/* 0x8008b35c */ lh	$a1,22($v1)
.L8008b360:
/* 0x8008b360 */ addiu	$a0,$v0,4096
.L8008b364:
/* 0x8008b364 */ bgez	$a0,.L8008b3a0
.L8008b368:
/* 0x8008b368 */ negu	$v0,$a0
.L8008b36c:
/* 0x8008b36c */ lw	$v1,4($t0)
.L8008b370:
/* 0x8008b370 */ sll	$zero,$zero,0x0
.L8008b374:
/* 0x8008b374 */ sll	$v1,$v1,0xc
.L8008b378:
/* 0x8008b378 */ div	$zero,$v0,$v1
.L8008b37c:
/* 0x8008b37c */ mfhi	$a0
.L8008b380:
/* 0x8008b380 */ sll	$zero,$zero,0x0
.L8008b384:
/* 0x8008b384 */ subu	$a0,$v1,$a0
.L8008b388:
/* 0x8008b388 */ div	$zero,$a0,$v1
.L8008b38c:
/* 0x8008b38c */ mfhi	$v0
.L8008b390:
/* 0x8008b390 */ sll	$zero,$zero,0x0
.L8008b394:
/* 0x8008b394 */ sra	$v0,$v0,0xc
.L8008b398:
/* 0x8008b398 */ j	0x8008b3c0
.L8008b39c:
/* 0x8008b39c */ sll	$v0,$v0,0x1
.L8008b3a0:
/* 0x8008b3a0 */ lw	$v0,4($t0)
.L8008b3a4:
/* 0x8008b3a4 */ sll	$zero,$zero,0x0
.L8008b3a8:
/* 0x8008b3a8 */ sll	$v0,$v0,0xc
.L8008b3ac:
/* 0x8008b3ac */ div	$zero,$a0,$v0
.L8008b3b0:
/* 0x8008b3b0 */ mfhi	$v1
.L8008b3b4:
/* 0x8008b3b4 */ sll	$zero,$zero,0x0
.L8008b3b8:
/* 0x8008b3b8 */ sra	$v1,$v1,0xc
.L8008b3bc:
/* 0x8008b3bc */ sll	$v0,$v1,0x1
.L8008b3c0:
/* 0x8008b3c0 */ lw	$t0,336($sp)
.L8008b3c4:
/* 0x8008b3c4 */ sll	$zero,$zero,0x0
.L8008b3c8:
/* 0x8008b3c8 */ addu	$v0,$t0,$v0
.L8008b3cc:
/* 0x8008b3cc */ lbu	$v1,1968($t0)
.L8008b3d0:
/* 0x8008b3d0 */ lh	$s1,22($v0)
.L8008b3d4:
/* 0x8008b3d4 */ bne	$v1,$zero,.L8008b430
.L8008b3d8:
/* 0x8008b3d8 */ mult	$s0,$s4
.L8008b3dc:
/* 0x8008b3dc */ slti	$v0,$a1,160
.L8008b3e0:
/* 0x8008b3e0 */ beq	$v0,$zero,.L8008b430
.L8008b3e4:
/* 0x8008b3e4 */ sll	$zero,$zero,0x0
.L8008b3e8:
/* 0x8008b3e8 */ jal	0x8007ee38
.L8008b3ec:
/* 0x8008b3ec */ addu	$a0,$a1,$zero
.L8008b3f0:
/* 0x8008b3f0 */ lw	$v0,12($v0)
.L8008b3f4:
/* 0x8008b3f4 */ sll	$zero,$zero,0x0
.L8008b3f8:
/* 0x8008b3f8 */ andi	$v0,$v0,0x100
.L8008b3fc:
/* 0x8008b3fc */ beq	$v0,$zero,.L8008b42c
.L8008b400:
/* 0x8008b400 */ addiu	$v0,$s0,79
.L8008b404:
/* 0x8008b404 */ mult	$v0,$s4
.L8008b408:
/* 0x8008b408 */ mflo	$v1
.L8008b40c:
/* 0x8008b40c */ sll	$zero,$zero,0x0
.L8008b410:
/* 0x8008b410 */ sll	$zero,$zero,0x0
.L8008b414:
/* 0x8008b414 */ mult	$s0,$s4
.L8008b418:
/* 0x8008b418 */ sra	$s8,$v1,0x7
.L8008b41c:
/* 0x8008b41c */ mflo	$v0
.L8008b420:
/* 0x8008b420 */ sra	$s7,$v0,0x7
.L8008b424:
/* 0x8008b424 */ j	0x8008b450
.L8008b428:
/* 0x8008b428 */ addu	$s5,$s7,$zero
.L8008b42c:
/* 0x8008b42c */ mult	$s0,$s4
.L8008b430:
/* 0x8008b430 */ mflo	$v1
.L8008b434:
/* 0x8008b434 */ addiu	$v0,$s0,79
.L8008b438:
/* 0x8008b438 */ sll	$zero,$zero,0x0
.L8008b43c:
/* 0x8008b43c */ mult	$v0,$s4
.L8008b440:
/* 0x8008b440 */ sra	$s5,$v1,0x7
.L8008b444:
/* 0x8008b444 */ addu	$s8,$s5,$zero
.L8008b448:
/* 0x8008b448 */ mflo	$v0
.L8008b44c:
/* 0x8008b44c */ sra	$s7,$v0,0x7
.L8008b450:
/* 0x8008b450 */ lw	$t0,336($sp)
.L8008b454:
/* 0x8008b454 */ sll	$zero,$zero,0x0
.L8008b458:
/* 0x8008b458 */ lbu	$v0,1968($t0)
.L8008b45c:
/* 0x8008b45c */ sll	$zero,$zero,0x0
.L8008b460:
/* 0x8008b460 */ bne	$v0,$zero,.L8008b4bc
.L8008b464:
/* 0x8008b464 */ mult	$s0,$s4
.L8008b468:
/* 0x8008b468 */ slti	$v0,$s1,160
.L8008b46c:
/* 0x8008b46c */ beq	$v0,$zero,.L8008b4bc
.L8008b470:
/* 0x8008b470 */ sll	$zero,$zero,0x0
.L8008b474:
/* 0x8008b474 */ jal	0x8007ee38
.L8008b478:
/* 0x8008b478 */ addu	$a0,$s1,$zero
.L8008b47c:
/* 0x8008b47c */ lw	$v0,12($v0)
.L8008b480:
/* 0x8008b480 */ sll	$zero,$zero,0x0
.L8008b484:
/* 0x8008b484 */ andi	$v0,$v0,0x100
.L8008b488:
/* 0x8008b488 */ beq	$v0,$zero,.L8008b4b8
.L8008b48c:
/* 0x8008b48c */ addiu	$v0,$s0,79
.L8008b490:
/* 0x8008b490 */ mult	$v0,$s4
.L8008b494:
/* 0x8008b494 */ mflo	$t2
.L8008b498:
/* 0x8008b498 */ sll	$zero,$zero,0x0
.L8008b49c:
/* 0x8008b49c */ sll	$zero,$zero,0x0
.L8008b4a0:
/* 0x8008b4a0 */ mult	$s0,$s4
.L8008b4a4:
/* 0x8008b4a4 */ sra	$v0,$t2,0x7
.L8008b4a8:
/* 0x8008b4a8 */ mflo	$v1
.L8008b4ac:
/* 0x8008b4ac */ sra	$a1,$v1,0x7
.L8008b4b0:
/* 0x8008b4b0 */ j	0x8008b4dc
.L8008b4b4:
/* 0x8008b4b4 */ addu	$a0,$a1,$zero
.L8008b4b8:
/* 0x8008b4b8 */ mult	$s0,$s4
.L8008b4bc:
/* 0x8008b4bc */ mflo	$t2
.L8008b4c0:
/* 0x8008b4c0 */ addiu	$v0,$s0,79
.L8008b4c4:
/* 0x8008b4c4 */ sll	$zero,$zero,0x0
.L8008b4c8:
/* 0x8008b4c8 */ mult	$v0,$s4
.L8008b4cc:
/* 0x8008b4cc */ sra	$a0,$t2,0x7
.L8008b4d0:
/* 0x8008b4d0 */ addu	$v0,$a0,$zero
.L8008b4d4:
/* 0x8008b4d4 */ mflo	$v1
.L8008b4d8:
/* 0x8008b4d8 */ sra	$a1,$v1,0x7
.L8008b4dc:
/* 0x8008b4dc */ lw	$t0,336($sp)
.L8008b4e0:
/* 0x8008b4e0 */ sll	$zero,$zero,0x0
.L8008b4e4:
/* 0x8008b4e4 */ lw	$v1,1868($t0)
.L8008b4e8:
/* 0x8008b4e8 */ subu	$v0,$v0,$s8
.L8008b4ec:
/* 0x8008b4ec */ andi	$v1,$v1,0xfff
.L8008b4f0:
/* 0x8008b4f0 */ mult	$v0,$v1
.L8008b4f4:
/* 0x8008b4f4 */ mflo	$t2
.L8008b4f8:
/* 0x8008b4f8 */ addiu	$s0,$zero,4096
.L8008b4fc:
/* 0x8008b4fc */ sll	$zero,$zero,0x0
.L8008b500:
/* 0x8008b500 */ div	$zero,$t2,$s0
.L8008b504:
/* 0x8008b504 */ mflo	$s2
.L8008b508:
/* 0x8008b508 */ subu	$v0,$a0,$s5
.L8008b50c:
/* 0x8008b50c */ sll	$zero,$zero,0x0
.L8008b510:
/* 0x8008b510 */ mult	$v0,$v1
.L8008b514:
/* 0x8008b514 */ mflo	$t2
.L8008b518:
/* 0x8008b518 */ sll	$zero,$zero,0x0
.L8008b51c:
/* 0x8008b51c */ sll	$zero,$zero,0x0
.L8008b520:
/* 0x8008b520 */ div	$zero,$t2,$s0
.L8008b524:
/* 0x8008b524 */ mflo	$s1
.L8008b528:
/* 0x8008b528 */ subu	$v0,$a1,$s7
.L8008b52c:
/* 0x8008b52c */ sll	$zero,$zero,0x0
.L8008b530:
/* 0x8008b530 */ mult	$v0,$v1
.L8008b534:
/* 0x8008b534 */ mflo	$v1
.L8008b538:
/* 0x8008b538 */ sll	$zero,$zero,0x0
.L8008b53c:
/* 0x8008b53c */ sll	$zero,$zero,0x0
.L8008b540:
/* 0x8008b540 */ div	$zero,$v1,$s0
.L8008b544:
/* 0x8008b544 */ mflo	$s0
.L8008b548:
/* 0x8008b548 */ addiu	$t0,$zero,-43
.L8008b54c:
/* 0x8008b54c */ sw	$t0,276($sp)
.L8008b550:
/* 0x8008b550 */ addiu	$t0,$zero,-20480
.L8008b554:
/* 0x8008b554 */ sw	$t0,284($sp)
.L8008b558:
/* 0x8008b558 */ lw	$t0,248($sp)
.L8008b55c:
/* 0x8008b55c */ addiu	$t1,$zero,-1
.L8008b560:
/* 0x8008b560 */ sw	$t1,280($sp)
.L8008b564:
/* 0x8008b564 */ addiu	$t1,$zero,-5
.L8008b568:
/* 0x8008b568 */ sw	$zero,252($sp)
.L8008b56c:
/* 0x8008b56c */ sw	$t1,288($sp)
.L8008b570:
/* 0x8008b570 */ lh	$a2,2($t0)
.L8008b574:
/* 0x8008b574 */ lh	$a3,4($t0)
.L8008b578:
/* 0x8008b578 */ addiu	$s3,$zero,42
.L8008b57c:
/* 0x8008b57c */ sw	$s3,20($sp)
.L8008b580:
/* 0x8008b580 */ addiu	$a3,$a3,198
.L8008b584:
/* 0x8008b584 */ lw	$a0,340($sp)
.L8008b588:
/* 0x8008b588 */ addu	$a1,$s6,$zero
.L8008b58c:
/* 0x8008b58c */ addiu	$v0,$zero,160
.L8008b590:
/* 0x8008b590 */ sw	$v0,16($sp)
.L8008b594:
/* 0x8008b594 */ lh	$v1,10($t0)
.L8008b598:
/* 0x8008b598 */ addiu	$v0,$zero,1
.L8008b59c:
/* 0x8008b59c */ sw	$v0,28($sp)
.L8008b5a0:
/* 0x8008b5a0 */ sw	$v1,24($sp)
.L8008b5a4:
/* 0x8008b5a4 */ addu	$s2,$s8,$s2
.L8008b5a8:
/* 0x8008b5a8 */ addu	$s1,$s5,$s1
.L8008b5ac:
/* 0x8008b5ac */ jal	0x80048144
.L8008b5b0:
/* 0x8008b5b0 */ addu	$s0,$s7,$s0
.L8008b5b4:
/* 0x8008b5b4 */ lw	$t1,248($sp)
.L8008b5b8:
/* 0x8008b5b8 */ lw	$a0,340($sp)
.L8008b5bc:
/* 0x8008b5bc */ lh	$a2,14($t1)
.L8008b5c0:
/* 0x8008b5c0 */ lh	$a3,16($t1)
.L8008b5c4:
/* 0x8008b5c4 */ jal	0x80049208
.L8008b5c8:
/* 0x8008b5c8 */ addu	$a1,$s6,$zero
.L8008b5cc:
/* 0x8008b5cc */ addu	$a1,$s6,$zero
.L8008b5d0:
/* 0x8008b5d0 */ addiu	$a2,$zero,-19
.L8008b5d4:
/* 0x8008b5d4 */ addiu	$a3,$zero,-18
.L8008b5d8:
/* 0x8008b5d8 */ lw	$a0,340($sp)
.L8008b5dc:
/* 0x8008b5dc */ addiu	$v0,$zero,320
.L8008b5e0:
/* 0x8008b5e0 */ sw	$v0,16($sp)
.L8008b5e4:
/* 0x8008b5e4 */ jal	0x80049364
.L8008b5e8:
/* 0x8008b5e8 */ sw	$s3,20($sp)
.L8008b5ec:
/* 0x8008b5ec */ addu	$a1,$s6,$zero
.L8008b5f0:
/* 0x8008b5f0 */ addu	$a2,$s2,$zero
.L8008b5f4:
/* 0x8008b5f4 */ lw	$a0,340($sp)
.L8008b5f8:
/* 0x8008b5f8 */ addu	$a3,$s1,$zero
.L8008b5fc:
/* 0x8008b5fc */ jal	0x800490f8
.L8008b600:
/* 0x8008b600 */ sw	$s0,16($sp)
.L8008b604:
/* 0x8008b604 */ addiu	$s6,$s6,1
.L8008b608:
/* 0x8008b608 */ lw	$t0,336($sp)
.L8008b60c:
/* 0x8008b60c */ sll	$zero,$zero,0x0
.L8008b610:
/* 0x8008b610 */ lw	$v0,1868($t0)
.L8008b614:
/* 0x8008b614 */ lw	$t1,284($sp)
.L8008b618:
/* 0x8008b618 */ andi	$v1,$v0,0xfff
.L8008b61c:
/* 0x8008b61c */ sll	$v0,$v1,0x1
.L8008b620:
/* 0x8008b620 */ addu	$v0,$v0,$v1
.L8008b624:
/* 0x8008b624 */ sll	$v0,$v0,0x2
.L8008b628:
/* 0x8008b628 */ subu	$v0,$v0,$v1
.L8008b62c:
/* 0x8008b62c */ sll	$v0,$v0,0x2
.L8008b630:
/* 0x8008b630 */ subu	$v0,$v1,$v0
.L8008b634:
/* 0x8008b634 */ sra	$v0,$v0,0xc
.L8008b638:
/* 0x8008b638 */ subu	$a2,$t1,$v1
.L8008b63c:
/* 0x8008b63c */ bltz	$a2,.L8008b650
.L8008b640:
/* 0x8008b640 */ sw	$v0,256($sp)
.L8008b644:
/* 0x8008b644 */ addiu	$v0,$zero,20480
.L8008b648:
/* 0x8008b648 */ j	0x8008b660
.L8008b64c:
/* 0x8008b64c */ subu	$s7,$v0,$a2
.L8008b650:
/* 0x8008b650 */ lw	$t0,284($sp)
.L8008b654:
/* 0x8008b654 */ addiu	$v0,$zero,20480
.L8008b658:
/* 0x8008b658 */ subu	$v1,$v1,$t0
.L8008b65c:
/* 0x8008b65c */ subu	$s7,$v0,$v1
.L8008b660:
/* 0x8008b660 */ lui	$v1,0x5555
.L8008b664:
/* 0x8008b664 */ ori	$v1,$v1,0x5556
.L8008b668:
/* 0x8008b668 */ sll	$v0,$s7,0x3
.L8008b66c:
/* 0x8008b66c */ addu	$v0,$v0,$s7
.L8008b670:
/* 0x8008b670 */ sll	$v0,$v0,0x2
.L8008b674:
/* 0x8008b674 */ subu	$v0,$v0,$s7
.L8008b678:
/* 0x8008b678 */ sll	$v0,$v0,0x1
.L8008b67c:
/* 0x8008b67c */ mult	$v0,$v1
.L8008b680:
/* 0x8008b680 */ sra	$v0,$v0,0x1f
.L8008b684:
/* 0x8008b684 */ mfhi	$t0
.L8008b688:
/* 0x8008b688 */ subu	$v0,$t0,$v0
.L8008b68c:
/* 0x8008b68c */ sra	$v0,$v0,0xc
.L8008b690:
/* 0x8008b690 */ addiu	$s7,$v0,50
.L8008b694:
/* 0x8008b694 */ slti	$v0,$s7,129
.L8008b698:
/* 0x8008b698 */ bne	$v0,$zero,.L8008b6a4
.L8008b69c:
/* 0x8008b69c */ sll	$zero,$zero,0x0
.L8008b6a0:
/* 0x8008b6a0 */ addiu	$s7,$zero,128
.L8008b6a4:
/* 0x8008b6a4 */ lw	$t1,288($sp)
.L8008b6a8:
/* 0x8008b6a8 */ lw	$t0,256($sp)
.L8008b6ac:
/* 0x8008b6ac */ sll	$a0,$t1,0x1
.L8008b6b0:
/* 0x8008b6b0 */ addu	$a0,$a0,$t1
.L8008b6b4:
/* 0x8008b6b4 */ sll	$a0,$a0,0x2
.L8008b6b8:
/* 0x8008b6b8 */ subu	$a0,$a0,$t1
.L8008b6bc:
/* 0x8008b6bc */ sll	$a0,$a0,0x2
.L8008b6c0:
/* 0x8008b6c0 */ subu	$a0,$a0,$t1
.L8008b6c4:
/* 0x8008b6c4 */ addu	$a0,$a0,$t0
.L8008b6c8:
/* 0x8008b6c8 */ sll	$v0,$a0,0x2
.L8008b6cc:
/* 0x8008b6cc */ jal	0x8004971c
.L8008b6d0:
/* 0x8008b6d0 */ addu	$a0,$v0,$a0
.L8008b6d4:
/* 0x8008b6d4 */ addiu	$v1,$zero,4096
.L8008b6d8:
/* 0x8008b6d8 */ subu	$v1,$v1,$v0
.L8008b6dc:
/* 0x8008b6dc */ sll	$v0,$v1,0x2
.L8008b6e0:
/* 0x8008b6e0 */ addu	$v0,$v0,$v1
.L8008b6e4:
/* 0x8008b6e4 */ sll	$v0,$v0,0x4
.L8008b6e8:
/* 0x8008b6e8 */ bgez	$v0,.L8008b6f4
.L8008b6ec:
/* 0x8008b6ec */ sll	$zero,$zero,0x0
.L8008b6f0:
/* 0x8008b6f0 */ addiu	$v0,$v0,4095
.L8008b6f4:
/* 0x8008b6f4 */ sra	$v0,$v0,0xc
.L8008b6f8:
/* 0x8008b6f8 */ sw	$v0,260($sp)
.L8008b6fc:
/* 0x8008b6fc */ lw	$v0,288($sp)
.L8008b700:
/* 0x8008b700 */ sll	$zero,$zero,0x0
.L8008b704:
/* 0x8008b704 */ bgez	$v0,.L8008b718
.L8008b708:
/* 0x8008b708 */ addiu	$v1,$zero,5
.L8008b70c:
/* 0x8008b70c */ lw	$t1,252($sp)
.L8008b710:
/* 0x8008b710 */ sll	$zero,$zero,0x0
.L8008b714:
/* 0x8008b714 */ subu	$v0,$v1,$t1
.L8008b718:
/* 0x8008b718 */ sll	$a2,$v0,0x2
.L8008b71c:
/* 0x8008b71c */ lw	$t0,348($sp)
.L8008b720:
/* 0x8008b720 */ lw	$t1,352($sp)
.L8008b724:
/* 0x8008b724 */ subu	$a1,$t0,$a2
.L8008b728:
/* 0x8008b728 */ srl	$v0,$t1,0x1f
.L8008b72c:
/* 0x8008b72c */ addu	$v0,$t1,$v0
.L8008b730:
/* 0x8008b730 */ sra	$v0,$v0,0x1
.L8008b734:
/* 0x8008b734 */ addiu	$a0,$v0,-16
.L8008b738:
/* 0x8008b738 */ slt	$v0,$a0,$a1
.L8008b73c:
/* 0x8008b73c */ beq	$v0,$zero,.L8008b748
.L8008b740:
/* 0x8008b740 */ sll	$zero,$zero,0x0
.L8008b744:
/* 0x8008b744 */ addu	$a1,$a0,$zero
.L8008b748:
/* 0x8008b748 */ bgez	$a1,.L8008b758
.L8008b74c:
/* 0x8008b74c */ subu	$v1,$a0,$a1
.L8008b750:
/* 0x8008b750 */ addu	$a1,$zero,$zero
.L8008b754:
/* 0x8008b754 */ subu	$v1,$a0,$a1
.L8008b758:
/* 0x8008b758 */ sll	$v0,$v1,0x1
.L8008b75c:
/* 0x8008b75c */ addu	$v0,$v0,$v1
.L8008b760:
/* 0x8008b760 */ sll	$v0,$v0,0x3
.L8008b764:
/* 0x8008b764 */ addu	$v0,$v0,$v1
.L8008b768:
/* 0x8008b768 */ sll	$v0,$v0,0x3
.L8008b76c:
/* 0x8008b76c */ mult	$v1,$v0
.L8008b770:
/* 0x8008b770 */ mflo	$v1
.L8008b774:
/* 0x8008b774 */ sll	$zero,$zero,0x0
.L8008b778:
/* 0x8008b778 */ sll	$zero,$zero,0x0
.L8008b77c:
/* 0x8008b77c */ div	$zero,$v1,$a0
.L8008b780:
/* 0x8008b780 */ mflo	$v1
.L8008b784:
/* 0x8008b784 */ sll	$zero,$zero,0x0
.L8008b788:
/* 0x8008b788 */ sll	$zero,$zero,0x0
.L8008b78c:
/* 0x8008b78c */ div	$zero,$v1,$a0
.L8008b790:
/* 0x8008b790 */ mflo	$v1
.L8008b794:
/* 0x8008b794 */ sll	$zero,$zero,0x0
.L8008b798:
/* 0x8008b798 */ sll	$zero,$zero,0x0
.L8008b79c:
/* 0x8008b79c */ mult	$s7,$a1
.L8008b7a0:
/* 0x8008b7a0 */ lw	$t0,348($sp)
.L8008b7a4:
/* 0x8008b7a4 */ sll	$zero,$zero,0x0
.L8008b7a8:
/* 0x8008b7a8 */ subu	$v0,$t0,$a2
.L8008b7ac:
/* 0x8008b7ac */ mflo	$t2
.L8008b7b0:
/* 0x8008b7b0 */ subu	$a1,$v0,$a0
.L8008b7b4:
/* 0x8008b7b4 */ lw	$t0,260($sp)
.L8008b7b8:
/* 0x8008b7b8 */ div	$zero,$t2,$a0
.L8008b7bc:
/* 0x8008b7bc */ mflo	$s7
.L8008b7c0:
/* 0x8008b7c0 */ slt	$v0,$a0,$a1
.L8008b7c4:
/* 0x8008b7c4 */ addu	$t0,$t0,$v1
.L8008b7c8:
/* 0x8008b7c8 */ beq	$v0,$zero,.L8008b7d4
.L8008b7cc:
/* 0x8008b7cc */ sw	$t0,260($sp)
.L8008b7d0:
/* 0x8008b7d0 */ addu	$a1,$a0,$zero
.L8008b7d4:
/* 0x8008b7d4 */ bgez	$a1,.L8008b7e0
.L8008b7d8:
/* 0x8008b7d8 */ addu	$s1,$zero,$zero
.L8008b7dc:
/* 0x8008b7dc */ addu	$a1,$zero,$zero
.L8008b7e0:
/* 0x8008b7e0 */ addu	$s0,$s1,$zero
.L8008b7e4:
/* 0x8008b7e4 */ sll	$v0,$a1,0x7
.L8008b7e8:
/* 0x8008b7e8 */ lw	$t0,256($sp)
.L8008b7ec:
/* 0x8008b7ec */ lw	$t1,276($sp)
.L8008b7f0:
/* 0x8008b7f0 */ div	$zero,$v0,$a0
.L8008b7f4:
/* 0x8008b7f4 */ mflo	$s4
.L8008b7f8:
/* 0x8008b7f8 */ sw	$zero,264($sp)
.L8008b7fc:
/* 0x8008b7fc */ addiu	$v0,$t0,-185
.L8008b800:
/* 0x8008b800 */ addu	$s5,$t1,$v0
.L8008b804:
/* 0x8008b804 */ slti	$v0,$s5,-224
.L8008b808:
/* 0x8008b808 */ bne	$v0,$zero,.L8008c1b4
.L8008b80c:
/* 0x8008b80c */ sw	$zero,268($sp)
.L8008b810:
/* 0x8008b810 */ slti	$v0,$s5,-192
.L8008b814:
/* 0x8008b814 */ beq	$v0,$zero,.L8008b82c
.L8008b818:
/* 0x8008b818 */ addiu	$v0,$zero,-192
.L8008b81c:
/* 0x8008b81c */ subu	$v0,$v0,$s5
.L8008b820:
/* 0x8008b820 */ sw	$v0,268($sp)
.L8008b824:
/* 0x8008b824 */ negu	$t0,$v0
.L8008b828:
/* 0x8008b828 */ sw	$t0,264($sp)
.L8008b82c:
/* 0x8008b82c */ addiu	$v1,$s5,-10
.L8008b830:
/* 0x8008b830 */ slti	$v0,$v1,-192
.L8008b834:
/* 0x8008b834 */ beq	$v0,$zero,.L8008b844
.L8008b838:
/* 0x8008b838 */ slti	$v0,$s5,192
.L8008b83c:
/* 0x8008b83c */ addiu	$s0,$s5,182
.L8008b840:
/* 0x8008b840 */ negu	$s1,$s0
.L8008b844:
/* 0x8008b844 */ beq	$v0,$zero,.L8008c1b4
.L8008b848:
/* 0x8008b848 */ slti	$v0,$s5,160
.L8008b84c:
/* 0x8008b84c */ bne	$v0,$zero,.L8008b864
.L8008b850:
/* 0x8008b850 */ slti	$v0,$v1,176
.L8008b854:
/* 0x8008b854 */ addiu	$v0,$zero,159
.L8008b858:
/* 0x8008b858 */ subu	$v0,$v0,$s5
.L8008b85c:
/* 0x8008b85c */ sw	$v0,264($sp)
.L8008b860:
/* 0x8008b860 */ slti	$v0,$v1,176
.L8008b864:
/* 0x8008b864 */ bne	$v0,$zero,.L8008b870
.L8008b868:
/* 0x8008b868 */ addiu	$v0,$zero,185
.L8008b86c:
/* 0x8008b86c */ subu	$s0,$v0,$s5
.L8008b870:
/* 0x8008b870 */ lw	$t1,336($sp)
.L8008b874:
/* 0x8008b874 */ sll	$zero,$zero,0x0
.L8008b878:
/* 0x8008b878 */ lbu	$v0,1968($t1)
.L8008b87c:
/* 0x8008b87c */ sll	$zero,$zero,0x0
.L8008b880:
/* 0x8008b880 */ beq	$v0,$zero,.L8008ba0c
.L8008b884:
/* 0x8008b884 */ sll	$zero,$zero,0x0
.L8008b888:
/* 0x8008b888 */ lw	$v0,1868($t1)
.L8008b88c:
/* 0x8008b88c */ lw	$t0,284($sp)
.L8008b890:
/* 0x8008b890 */ sll	$zero,$zero,0x0
.L8008b894:
/* 0x8008b894 */ addu	$v1,$v0,$t0
.L8008b898:
/* 0x8008b898 */ bgez	$v1,.L8008b8cc
.L8008b89c:
/* 0x8008b89c */ negu	$v0,$v1
.L8008b8a0:
/* 0x8008b8a0 */ lw	$a0,4($t1)
.L8008b8a4:
/* 0x8008b8a4 */ sll	$zero,$zero,0x0
.L8008b8a8:
/* 0x8008b8a8 */ sll	$a0,$a0,0xc
.L8008b8ac:
/* 0x8008b8ac */ div	$zero,$v0,$a0
.L8008b8b0:
/* 0x8008b8b0 */ mfhi	$v1
.L8008b8b4:
/* 0x8008b8b4 */ sll	$zero,$zero,0x0
.L8008b8b8:
/* 0x8008b8b8 */ subu	$v1,$a0,$v1
.L8008b8bc:
/* 0x8008b8bc */ div	$zero,$v1,$a0
.L8008b8c0:
/* 0x8008b8c0 */ mfhi	$v0
.L8008b8c4:
/* 0x8008b8c4 */ j	0x8008b8f0
.L8008b8c8:
/* 0x8008b8c8 */ sra	$v0,$v0,0xc
.L8008b8cc:
/* 0x8008b8cc */ lw	$t0,336($sp)
.L8008b8d0:
/* 0x8008b8d0 */ sll	$zero,$zero,0x0
.L8008b8d4:
/* 0x8008b8d4 */ lw	$v0,4($t0)
.L8008b8d8:
/* 0x8008b8d8 */ sll	$zero,$zero,0x0
.L8008b8dc:
/* 0x8008b8dc */ sll	$v0,$v0,0xc
.L8008b8e0:
/* 0x8008b8e0 */ div	$zero,$v1,$v0
.L8008b8e4:
/* 0x8008b8e4 */ mfhi	$v1
.L8008b8e8:
/* 0x8008b8e8 */ sll	$zero,$zero,0x0
.L8008b8ec:
/* 0x8008b8ec */ sra	$v0,$v1,0xc
.L8008b8f0:
/* 0x8008b8f0 */ lw	$t0,336($sp)
.L8008b8f4:
/* 0x8008b8f4 */ sll	$v0,$v0,0x1
.L8008b8f8:
/* 0x8008b8f8 */ addu	$v0,$t0,$v0
.L8008b8fc:
/* 0x8008b8fc */ lh	$a0,22($v0)
.L8008b900:
/* 0x8008b900 */ addiu	$t1,$zero,-1
.L8008b904:
/* 0x8008b904 */ bne	$a0,$t1,.L8008b92c
.L8008b908:
/* 0x8008b908 */ addiu	$s0,$zero,14
.L8008b90c:
/* 0x8008b90c */ addiu	$a0,$sp,144
.L8008b910:
/* 0x8008b910 */ lui	$a1,0x8002
.L8008b914:
/* 0x8008b914 */ addiu	$a1,$a1,-6576
.L8008b918:
/* 0x8008b918 */ lui	$a2,0x8002
.L8008b91c:
/* 0x8008b91c */ jal	0x800613f0
.L8008b920:
/* 0x8008b920 */ addiu	$a2,$a2,-6592
.L8008b924:
/* 0x8008b924 */ j	0x8008b9b4
.L8008b928:
/* 0x8008b928 */ lui	$v1,0x14
.L8008b92c:
/* 0x8008b92c */ bne	$a0,$zero,.L8008b958
.L8008b930:
/* 0x8008b930 */ addiu	$v1,$a0,-1
.L8008b934:
/* 0x8008b934 */ addiu	$s0,$zero,1
.L8008b938:
/* 0x8008b938 */ addiu	$a0,$sp,144
.L8008b93c:
/* 0x8008b93c */ lui	$a1,0x8002
.L8008b940:
/* 0x8008b940 */ addiu	$a1,$a1,-6576
.L8008b944:
/* 0x8008b944 */ lui	$a2,0x8002
.L8008b948:
/* 0x8008b948 */ jal	0x800613f0
.L8008b94c:
/* 0x8008b94c */ addiu	$a2,$a2,-6572
.L8008b950:
/* 0x8008b950 */ j	0x8008b9b4
.L8008b954:
/* 0x8008b954 */ lui	$v1,0x14
.L8008b958:
/* 0x8008b958 */ sltiu	$v0,$v1,30
.L8008b95c:
/* 0x8008b95c */ beq	$v0,$zero,.L8008b97c
.L8008b960:
/* 0x8008b960 */ addiu	$s0,$zero,4
.L8008b964:
/* 0x8008b964 */ jal	0x8009649c
.L8008b968:
/* 0x8008b968 */ addu	$a0,$v1,$zero
.L8008b96c:
/* 0x8008b96c */ addiu	$a0,$sp,144
.L8008b970:
/* 0x8008b970 */ lui	$a1,0x8002
.L8008b974:
/* 0x8008b974 */ j	0x8008b9a0
.L8008b978:
/* 0x8008b978 */ addiu	$a1,$a1,-6556
.L8008b97c:
/* 0x8008b97c */ slti	$v0,$a0,31
.L8008b980:
/* 0x8008b980 */ bne	$v0,$zero,.L8008b9b0
.L8008b984:
/* 0x8008b984 */ addiu	$s0,$zero,1
.L8008b988:
/* 0x8008b988 */ addiu	$s0,$zero,3
.L8008b98c:
/* 0x8008b98c */ jal	0x8002a8b0
.L8008b990:
/* 0x8008b990 */ addiu	$a0,$a0,-31
.L8008b994:
/* 0x8008b994 */ addiu	$a0,$sp,144
.L8008b998:
/* 0x8008b998 */ lui	$a1,0x8002
.L8008b99c:
/* 0x8008b99c */ addiu	$a1,$a1,-6548
.L8008b9a0:
/* 0x8008b9a0 */ jal	0x800613f0
.L8008b9a4:
/* 0x8008b9a4 */ addu	$a2,$v0,$zero
.L8008b9a8:
/* 0x8008b9a8 */ j	0x8008b9b4
.L8008b9ac:
/* 0x8008b9ac */ lui	$v1,0x14
.L8008b9b0:
/* 0x8008b9b0 */ lui	$v1,0x14
.L8008b9b4:
/* 0x8008b9b4 */ ori	$v1,$v1,0xcc1
.L8008b9b8:
/* 0x8008b9b8 */ addu	$a1,$s6,$zero
.L8008b9bc:
/* 0x8008b9bc */ addiu	$v0,$sp,144
.L8008b9c0:
/* 0x8008b9c0 */ sw	$v0,16($sp)
.L8008b9c4:
/* 0x8008b9c4 */ sll	$v0,$s0,0x18
.L8008b9c8:
/* 0x8008b9c8 */ lw	$a0,340($sp)
.L8008b9cc:
/* 0x8008b9cc */ lw	$t0,260($sp)
.L8008b9d0:
/* 0x8008b9d0 */ lw	$t1,256($sp)
.L8008b9d4:
/* 0x8008b9d4 */ or	$v0,$v0,$v1
.L8008b9d8:
/* 0x8008b9d8 */ sw	$v0,20($sp)
.L8008b9dc:
/* 0x8008b9dc */ addiu	$v0,$zero,-192
.L8008b9e0:
/* 0x8008b9e0 */ sw	$v0,28($sp)
.L8008b9e4:
/* 0x8008b9e4 */ addiu	$a2,$t0,15
.L8008b9e8:
/* 0x8008b9e8 */ lw	$t0,276($sp)
.L8008b9ec:
/* 0x8008b9ec */ addiu	$v0,$zero,191
.L8008b9f0:
/* 0x8008b9f0 */ sw	$s7,24($sp)
.L8008b9f4:
/* 0x8008b9f4 */ sw	$v0,32($sp)
.L8008b9f8:
/* 0x8008b9f8 */ addu	$a3,$t1,$t0
.L8008b9fc:
/* 0x8008b9fc */ jal	0x80042a70
.L8008ba00:
/* 0x8008ba00 */ addiu	$a3,$a3,-178
.L8008ba04:
/* 0x8008ba04 */ j	0x8008c1b4
.L8008ba08:
/* 0x8008ba08 */ addu	$s6,$v0,$zero
.L8008ba0c:
/* 0x8008ba0c */ lw	$t1,252($sp)
.L8008ba10:
/* 0x8008ba10 */ sll	$zero,$zero,0x0
.L8008ba14:
/* 0x8008ba14 */ sll	$v1,$t1,0x2
.L8008ba18:
/* 0x8008ba18 */ addu	$v0,$sp,$v1
.L8008ba1c:
/* 0x8008ba1c */ lw	$s3,48($v0)
.L8008ba20:
/* 0x8008ba20 */ lw	$s8,96($v0)
.L8008ba24:
/* 0x8008ba24 */ jal	0x8007ee38
.L8008ba28:
/* 0x8008ba28 */ addu	$a0,$s3,$zero
.L8008ba2c:
/* 0x8008ba2c */ addu	$v1,$v0,$zero
.L8008ba30:
/* 0x8008ba30 */ slti	$v0,$s3,160
.L8008ba34:
/* 0x8008ba34 */ beq	$v0,$zero,.L8008bda0
.L8008ba38:
/* 0x8008ba38 */ slti	$v0,$s3,200
.L8008ba3c:
/* 0x8008ba3c */ lw	$v0,12($v1)
.L8008ba40:
/* 0x8008ba40 */ sll	$zero,$zero,0x0
.L8008ba44:
/* 0x8008ba44 */ andi	$v0,$v0,0x100
.L8008ba48:
/* 0x8008ba48 */ beq	$v0,$zero,.L8008baf0
.L8008ba4c:
/* 0x8008ba4c */ slti	$v0,$s1,16
.L8008ba50:
/* 0x8008ba50 */ beq	$v0,$zero,.L8008baf0
.L8008ba54:
/* 0x8008ba54 */ addu	$a1,$s6,$zero
.L8008ba58:
/* 0x8008ba58 */ addiu	$s0,$s0,16
.L8008ba5c:
/* 0x8008ba5c */ addiu	$a3,$s1,12
.L8008ba60:
/* 0x8008ba60 */ lw	$t0,248($sp)
.L8008ba64:
/* 0x8008ba64 */ lw	$a0,340($sp)
.L8008ba68:
/* 0x8008ba68 */ lh	$a2,2($t0)
.L8008ba6c:
/* 0x8008ba6c */ lh	$v0,4($t0)
.L8008ba70:
/* 0x8008ba70 */ addiu	$t1,$zero,192
.L8008ba74:
/* 0x8008ba74 */ addiu	$t0,$zero,1
.L8008ba78:
/* 0x8008ba78 */ sw	$t1,16($sp)
.L8008ba7c:
/* 0x8008ba7c */ addu	$t1,$t0,$zero
.L8008ba80:
/* 0x8008ba80 */ sw	$s0,20($sp)
.L8008ba84:
/* 0x8008ba84 */ sw	$t0,24($sp)
.L8008ba88:
/* 0x8008ba88 */ sw	$t1,28($sp)
.L8008ba8c:
/* 0x8008ba8c */ jal	0x80048144
.L8008ba90:
/* 0x8008ba90 */ addu	$a3,$v0,$a3
.L8008ba94:
/* 0x8008ba94 */ lw	$t0,248($sp)
.L8008ba98:
/* 0x8008ba98 */ lw	$a0,340($sp)
.L8008ba9c:
/* 0x8008ba9c */ lh	$a2,14($t0)
.L8008baa0:
/* 0x8008baa0 */ lh	$a3,16($t0)
.L8008baa4:
/* 0x8008baa4 */ jal	0x80049208
.L8008baa8:
/* 0x8008baa8 */ addu	$a1,$s6,$zero
.L8008baac:
/* 0x8008baac */ addu	$a1,$s6,$zero
.L8008bab0:
/* 0x8008bab0 */ addiu	$a3,$s1,-10
.L8008bab4:
/* 0x8008bab4 */ addu	$a3,$s5,$a3
.L8008bab8:
/* 0x8008bab8 */ lw	$a0,340($sp)
.L8008babc:
/* 0x8008babc */ lw	$t1,260($sp)
.L8008bac0:
/* 0x8008bac0 */ addiu	$t0,$zero,192
.L8008bac4:
/* 0x8008bac4 */ sw	$t0,16($sp)
.L8008bac8:
/* 0x8008bac8 */ sw	$s0,20($sp)
.L8008bacc:
/* 0x8008bacc */ jal	0x80049364
.L8008bad0:
/* 0x8008bad0 */ addiu	$a2,$t1,15
.L8008bad4:
/* 0x8008bad4 */ addu	$a1,$s6,$zero
.L8008bad8:
/* 0x8008bad8 */ addu	$a2,$s7,$zero
.L8008badc:
/* 0x8008badc */ lw	$a0,340($sp)
.L8008bae0:
/* 0x8008bae0 */ addu	$a3,$s7,$zero
.L8008bae4:
/* 0x8008bae4 */ jal	0x800490f8
.L8008bae8:
/* 0x8008bae8 */ sw	$s7,16($sp)
.L8008baec:
/* 0x8008baec */ addiu	$s6,$s6,1
.L8008baf0:
/* 0x8008baf0 */ slti	$v0,$s3,160
.L8008baf4:
/* 0x8008baf4 */ beq	$v0,$zero,.L8008bda0
.L8008baf8:
/* 0x8008baf8 */ slti	$v0,$s3,200
.L8008bafc:
/* 0x8008bafc */ blez	$s4,.L8008bda0
.L8008bb00:
/* 0x8008bb00 */ addiu	$s1,$zero,-1
.L8008bb04:
/* 0x8008bb04 */ lw	$t1,248($sp)
.L8008bb08:
/* 0x8008bb08 */ lw	$t0,336($sp)
.L8008bb0c:
/* 0x8008bb0c */ lh	$v0,4($t1)
.L8008bb10:
/* 0x8008bb10 */ lw	$v1,1868($t0)
.L8008bb14:
/* 0x8008bb14 */ lw	$t1,284($sp)
.L8008bb18:
/* 0x8008bb18 */ addiu	$v0,$v0,132
.L8008bb1c:
/* 0x8008bb1c */ addu	$v1,$v1,$t1
.L8008bb20:
/* 0x8008bb20 */ bgez	$v1,.L8008bb54
.L8008bb24:
/* 0x8008bb24 */ sw	$v0,272($sp)
.L8008bb28:
/* 0x8008bb28 */ lw	$a0,4($t0)
.L8008bb2c:
/* 0x8008bb2c */ negu	$v0,$v1
.L8008bb30:
/* 0x8008bb30 */ sll	$a0,$a0,0xc
.L8008bb34:
/* 0x8008bb34 */ div	$zero,$v0,$a0
.L8008bb38:
/* 0x8008bb38 */ mfhi	$v1
.L8008bb3c:
/* 0x8008bb3c */ sll	$zero,$zero,0x0
.L8008bb40:
/* 0x8008bb40 */ subu	$v1,$a0,$v1
.L8008bb44:
/* 0x8008bb44 */ div	$zero,$v1,$a0
.L8008bb48:
/* 0x8008bb48 */ mfhi	$v0
.L8008bb4c:
/* 0x8008bb4c */ j	0x8008bb78
.L8008bb50:
/* 0x8008bb50 */ sra	$s2,$v0,0xc
.L8008bb54:
/* 0x8008bb54 */ lw	$t0,336($sp)
.L8008bb58:
/* 0x8008bb58 */ sll	$zero,$zero,0x0
.L8008bb5c:
/* 0x8008bb5c */ lw	$v0,4($t0)
.L8008bb60:
/* 0x8008bb60 */ sll	$zero,$zero,0x0
.L8008bb64:
/* 0x8008bb64 */ sll	$v0,$v0,0xc
.L8008bb68:
/* 0x8008bb68 */ div	$zero,$v1,$v0
.L8008bb6c:
/* 0x8008bb6c */ mfhi	$v1
.L8008bb70:
/* 0x8008bb70 */ sll	$zero,$zero,0x0
.L8008bb74:
/* 0x8008bb74 */ sra	$s2,$v1,0xc
.L8008bb78:
/* 0x8008bb78 */ addiu	$s5,$zero,36
.L8008bb7c:
/* 0x8008bb7c */ jal	0x800866f0
.L8008bb80:
/* 0x8008bb80 */ addu	$a0,$s3,$zero
.L8008bb84:
/* 0x8008bb84 */ beq	$v0,$zero,.L8008bba0
.L8008bb88:
/* 0x8008bb88 */ sll	$zero,$zero,0x0
.L8008bb8c:
/* 0x8008bb8c */ lw	$t0,248($sp)
.L8008bb90:
/* 0x8008bb90 */ sll	$zero,$zero,0x0
.L8008bb94:
/* 0x8008bb94 */ lh	$v0,2($t0)
.L8008bb98:
/* 0x8008bb98 */ sll	$zero,$zero,0x0
.L8008bb9c:
/* 0x8008bb9c */ addiu	$s1,$v0,132
.L8008bba0:
/* 0x8008bba0 */ jal	0x8007ee38
.L8008bba4:
/* 0x8008bba4 */ addu	$a0,$s3,$zero
.L8008bba8:
/* 0x8008bba8 */ lhu	$a0,0($v0)
.L8008bbac:
/* 0x8008bbac */ jal	0x80096478
.L8008bbb0:
/* 0x8008bbb0 */ sll	$zero,$zero,0x0
.L8008bbb4:
/* 0x8008bbb4 */ beq	$v0,$zero,.L8008bc5c
.L8008bbb8:
/* 0x8008bbb8 */ lui	$v0,0x8888
.L8008bbbc:
/* 0x8008bbbc */ lw	$t1,252($sp)
.L8008bbc0:
/* 0x8008bbc0 */ ori	$v0,$v0,0x8889
.L8008bbc4:
/* 0x8008bbc4 */ sll	$v1,$t1,0xc
.L8008bbc8:
/* 0x8008bbc8 */ mult	$v1,$v0
.L8008bbcc:
/* 0x8008bbcc */ lw	$t0,248($sp)
.L8008bbd0:
/* 0x8008bbd0 */ lui	$t1,0x800f
.L8008bbd4:
/* 0x8008bbd4 */ addiu	$t1,$t1,10376
.L8008bbd8:
/* 0x8008bbd8 */ lh	$v0,2($t0)
.L8008bbdc:
/* 0x8008bbdc */ lw	$a0,112($t1)
.L8008bbe0:
/* 0x8008bbe0 */ addiu	$s1,$v0,96
.L8008bbe4:
/* 0x8008bbe4 */ sll	$a0,$a0,0x7
.L8008bbe8:
/* 0x8008bbe8 */ mfhi	$t0
.L8008bbec:
/* 0x8008bbec */ addu	$v0,$t0,$v1
.L8008bbf0:
/* 0x8008bbf0 */ sra	$v0,$v0,0x3
.L8008bbf4:
/* 0x8008bbf4 */ sra	$v1,$v1,0x1f
.L8008bbf8:
/* 0x8008bbf8 */ subu	$s0,$v0,$v1
.L8008bbfc:
/* 0x8008bbfc */ jal	0x8004964c
.L8008bc00:
/* 0x8008bc00 */ addu	$a0,$a0,$s0
.L8008bc04:
/* 0x8008bc04 */ bltz	$v0,.L8008bc2c
.L8008bc08:
/* 0x8008bc08 */ lui	$t1,0x800f
.L8008bc0c:
/* 0x8008bc0c */ addiu	$t1,$t1,10376
.L8008bc10:
/* 0x8008bc10 */ lw	$a0,112($t1)
.L8008bc14:
/* 0x8008bc14 */ sll	$zero,$zero,0x0
.L8008bc18:
/* 0x8008bc18 */ sll	$a0,$a0,0x7
.L8008bc1c:
/* 0x8008bc1c */ jal	0x8004964c
.L8008bc20:
/* 0x8008bc20 */ addu	$a0,$a0,$s0
.L8008bc24:
/* 0x8008bc24 */ j	0x8008bc50
.L8008bc28:
/* 0x8008bc28 */ sll	$v1,$v0,0x3
.L8008bc2c:
/* 0x8008bc2c */ lui	$t0,0x800f
.L8008bc30:
/* 0x8008bc30 */ addiu	$t0,$t0,10376
.L8008bc34:
/* 0x8008bc34 */ lw	$a0,112($t0)
.L8008bc38:
/* 0x8008bc38 */ sll	$zero,$zero,0x0
.L8008bc3c:
/* 0x8008bc3c */ sll	$a0,$a0,0x7
.L8008bc40:
/* 0x8008bc40 */ jal	0x8004964c
.L8008bc44:
/* 0x8008bc44 */ addu	$a0,$a0,$s0
.L8008bc48:
/* 0x8008bc48 */ negu	$v0,$v0
.L8008bc4c:
/* 0x8008bc4c */ sll	$v1,$v0,0x3
.L8008bc50:
/* 0x8008bc50 */ addu	$v1,$v1,$v0
.L8008bc54:
/* 0x8008bc54 */ sll	$v1,$v1,0x2
.L8008bc58:
/* 0x8008bc58 */ sra	$s5,$v1,0xc
.L8008bc5c:
/* 0x8008bc5c */ lui	$t1,0x800f
.L8008bc60:
/* 0x8008bc60 */ addiu	$t1,$t1,10504
.L8008bc64:
/* 0x8008bc64 */ lb	$v1,26($t1)
.L8008bc68:
/* 0x8008bc68 */ addiu	$v0,$zero,4
.L8008bc6c:
/* 0x8008bc6c */ bne	$v1,$v0,.L8008bcd4
.L8008bc70:
/* 0x8008bc70 */ addiu	$t0,$zero,-1
.L8008bc74:
/* 0x8008bc74 */ slti	$v0,$s2,3
.L8008bc78:
/* 0x8008bc78 */ beq	$v0,$zero,.L8008bcd0
.L8008bc7c:
/* 0x8008bc7c */ lui	$t0,0x800f
.L8008bc80:
/* 0x8008bc80 */ addiu	$t0,$t0,10376
.L8008bc84:
/* 0x8008bc84 */ lw	$v1,112($t0)
.L8008bc88:
/* 0x8008bc88 */ lui	$v0,0x8888
.L8008bc8c:
/* 0x8008bc8c */ ori	$v0,$v0,0x8889
.L8008bc90:
/* 0x8008bc90 */ multu	$v1,$v0
.L8008bc94:
/* 0x8008bc94 */ mfhi	$t0
.L8008bc98:
/* 0x8008bc98 */ srl	$v0,$t0,0x4
.L8008bc9c:
/* 0x8008bc9c */ andi	$v0,$v0,0x1
.L8008bca0:
/* 0x8008bca0 */ beq	$v0,$zero,.L8008bcd0
.L8008bca4:
/* 0x8008bca4 */ sll	$v0,$s2,0x3
.L8008bca8:
/* 0x8008bca8 */ addiu	$s5,$zero,36
.L8008bcac:
/* 0x8008bcac */ addu	$v0,$v0,$s2
.L8008bcb0:
/* 0x8008bcb0 */ sll	$v0,$v0,0x2
.L8008bcb4:
/* 0x8008bcb4 */ lw	$t1,248($sp)
.L8008bcb8:
/* 0x8008bcb8 */ addiu	$v0,$v0,200
.L8008bcbc:
/* 0x8008bcbc */ lh	$v1,2($t1)
.L8008bcc0:
/* 0x8008bcc0 */ lh	$a0,4($t1)
.L8008bcc4:
/* 0x8008bcc4 */ addu	$s1,$v1,$v0
.L8008bcc8:
/* 0x8008bcc8 */ addiu	$a0,$a0,140
.L8008bccc:
/* 0x8008bccc */ sw	$a0,272($sp)
.L8008bcd0:
/* 0x8008bcd0 */ addiu	$t0,$zero,-1
.L8008bcd4:
/* 0x8008bcd4 */ beq	$s1,$t0,.L8008bd9c
.L8008bcd8:
/* 0x8008bcd8 */ addu	$a1,$s6,$zero
.L8008bcdc:
/* 0x8008bcdc */ addu	$a2,$s1,$zero
.L8008bce0:
/* 0x8008bce0 */ mult	$s4,$s7
.L8008bce4:
/* 0x8008bce4 */ lw	$t0,272($sp)
.L8008bce8:
/* 0x8008bce8 */ lw	$t1,268($sp)
.L8008bcec:
/* 0x8008bcec */ lw	$a0,340($sp)
.L8008bcf0:
/* 0x8008bcf0 */ addu	$a3,$t0,$t1
.L8008bcf4:
/* 0x8008bcf4 */ lw	$t1,264($sp)
.L8008bcf8:
/* 0x8008bcf8 */ addiu	$t0,$zero,36
.L8008bcfc:
/* 0x8008bcfc */ sw	$t0,16($sp)
.L8008bd00:
/* 0x8008bd00 */ addiu	$t0,$zero,1
.L8008bd04:
/* 0x8008bd04 */ sw	$t0,24($sp)
.L8008bd08:
/* 0x8008bd08 */ addiu	$s0,$t1,32
.L8008bd0c:
/* 0x8008bd0c */ addiu	$t1,$zero,-1
.L8008bd10:
/* 0x8008bd10 */ sw	$s0,20($sp)
.L8008bd14:
/* 0x8008bd14 */ sw	$t1,28($sp)
.L8008bd18:
/* 0x8008bd18 */ mflo	$t0
.L8008bd1c:
/* 0x8008bd1c */ jal	0x80048144
.L8008bd20:
/* 0x8008bd20 */ sra	$s1,$t0,0x7
.L8008bd24:
/* 0x8008bd24 */ lw	$t1,248($sp)
.L8008bd28:
/* 0x8008bd28 */ lw	$a0,340($sp)
.L8008bd2c:
/* 0x8008bd2c */ lh	$a2,14($t1)
.L8008bd30:
/* 0x8008bd30 */ lh	$a3,16($t1)
.L8008bd34:
/* 0x8008bd34 */ jal	0x80049208
.L8008bd38:
/* 0x8008bd38 */ addu	$a1,$s6,$zero
.L8008bd3c:
/* 0x8008bd3c */ addu	$a1,$s6,$zero
.L8008bd40:
/* 0x8008bd40 */ srl	$a2,$s5,0x1f
.L8008bd44:
/* 0x8008bd44 */ addu	$a2,$s5,$a2
.L8008bd48:
/* 0x8008bd48 */ sra	$a2,$a2,0x1
.L8008bd4c:
/* 0x8008bd4c */ lw	$a0,340($sp)
.L8008bd50:
/* 0x8008bd50 */ lw	$t0,260($sp)
.L8008bd54:
/* 0x8008bd54 */ lw	$t1,256($sp)
.L8008bd58:
/* 0x8008bd58 */ addiu	$a2,$a2,3
.L8008bd5c:
/* 0x8008bd5c */ sw	$s5,16($sp)
.L8008bd60:
/* 0x8008bd60 */ sw	$s0,20($sp)
.L8008bd64:
/* 0x8008bd64 */ subu	$a2,$t0,$a2
.L8008bd68:
/* 0x8008bd68 */ addiu	$a3,$t1,-185
.L8008bd6c:
/* 0x8008bd6c */ lw	$t0,276($sp)
.L8008bd70:
/* 0x8008bd70 */ lw	$t1,268($sp)
.L8008bd74:
/* 0x8008bd74 */ addu	$a3,$t0,$a3
.L8008bd78:
/* 0x8008bd78 */ jal	0x80049364
.L8008bd7c:
/* 0x8008bd7c */ addu	$a3,$a3,$t1
.L8008bd80:
/* 0x8008bd80 */ addu	$a1,$s6,$zero
.L8008bd84:
/* 0x8008bd84 */ addu	$a2,$s1,$zero
.L8008bd88:
/* 0x8008bd88 */ lw	$a0,340($sp)
.L8008bd8c:
/* 0x8008bd8c */ addu	$a3,$a2,$zero
.L8008bd90:
/* 0x8008bd90 */ jal	0x800490f8
.L8008bd94:
/* 0x8008bd94 */ sw	$a2,16($sp)
.L8008bd98:
/* 0x8008bd98 */ addiu	$s6,$s6,1
.L8008bd9c:
/* 0x8008bd9c */ slti	$v0,$s3,200
.L8008bda0:
/* 0x8008bda0 */ bne	$v0,$zero,.L8008be00
.L8008bda4:
/* 0x8008bda4 */ addu	$a2,$s6,$zero
.L8008bda8:
/* 0x8008bda8 */ lw	$a0,336($sp)
.L8008bdac:
/* 0x8008bdac */ lw	$a1,340($sp)
.L8008bdb0:
/* 0x8008bdb0 */ lw	$t0,260($sp)
.L8008bdb4:
/* 0x8008bdb4 */ lw	$t1,256($sp)
.L8008bdb8:
/* 0x8008bdb8 */ addiu	$a3,$t0,15
.L8008bdbc:
/* 0x8008bdbc */ addiu	$v0,$t1,-185
.L8008bdc0:
/* 0x8008bdc0 */ lw	$t0,276($sp)
.L8008bdc4:
/* 0x8008bdc4 */ addiu	$t1,$zero,192
.L8008bdc8:
/* 0x8008bdc8 */ sw	$t1,20($sp)
.L8008bdcc:
/* 0x8008bdcc */ lw	$t1,264($sp)
.L8008bdd0:
/* 0x8008bdd0 */ addu	$v0,$t0,$v0
.L8008bdd4:
/* 0x8008bdd4 */ lw	$t0,268($sp)
.L8008bdd8:
/* 0x8008bdd8 */ sw	$s3,36($sp)
.L8008bddc:
/* 0x8008bddc */ sw	$s7,40($sp)
.L8008bde0:
/* 0x8008bde0 */ sw	$v0,16($sp)
.L8008bde4:
/* 0x8008bde4 */ addiu	$v0,$zero,32
.L8008bde8:
/* 0x8008bde8 */ sw	$v0,24($sp)
.L8008bdec:
/* 0x8008bdec */ sw	$t1,32($sp)
.L8008bdf0:
/* 0x8008bdf0 */ jal	0x80087188
.L8008bdf4:
/* 0x8008bdf4 */ sw	$t0,28($sp)
.L8008bdf8:
/* 0x8008bdf8 */ j	0x8008c1b4
.L8008bdfc:
/* 0x8008bdfc */ addu	$s6,$v0,$zero
.L8008be00:
/* 0x8008be00 */ blez	$s7,.L8008c1b4
.L8008be04:
/* 0x8008be04 */ lui	$v0,0x1
.L8008be08:
/* 0x8008be08 */ lui	$t0,0x800f
.L8008be0c:
/* 0x8008be0c */ addiu	$t0,$t0,10504
.L8008be10:
/* 0x8008be10 */ addu	$v0,$t0,$v0
.L8008be14:
/* 0x8008be14 */ lbu	$v0,10107($v0)
.L8008be18:
/* 0x8008be18 */ sll	$zero,$zero,0x0
.L8008be1c:
/* 0x8008be1c */ bne	$v0,$zero,.L8008bf94
.L8008be20:
/* 0x8008be20 */ sll	$zero,$zero,0x0
.L8008be24:
/* 0x8008be24 */ addu	$s0,$zero,$zero
.L8008be28:
/* 0x8008be28 */ lui	$s2,0x800f
.L8008be2c:
/* 0x8008be2c */ addiu	$s2,$s2,10504
.L8008be30:
/* 0x8008be30 */ lw	$t1,264($sp)
.L8008be34:
/* 0x8008be34 */ lw	$s5,280($sp)
.L8008be38:
/* 0x8008be38 */ addiu	$s4,$t1,32
.L8008be3c:
/* 0x8008be3c */ jal	0x800848cc
.L8008be40:
/* 0x8008be40 */ addu	$a0,$s0,$zero
.L8008be44:
/* 0x8008be44 */ addiu	$t0,$zero,-1
.L8008be48:
/* 0x8008be48 */ beq	$v0,$t0,.L8008bf7c
.L8008be4c:
/* 0x8008be4c */ sll	$v1,$s3,0x1
.L8008be50:
/* 0x8008be50 */ addu	$v1,$v1,$s3
.L8008be54:
/* 0x8008be54 */ sll	$v1,$v1,0x2
.L8008be58:
/* 0x8008be58 */ lbu	$v0,144($s2)
.L8008be5c:
/* 0x8008be5c */ lw	$t1,336($sp)
.L8008be60:
/* 0x8008be60 */ addu	$v0,$v0,$t0
.L8008be64:
/* 0x8008be64 */ sll	$v0,$v0,0x1
.L8008be68:
/* 0x8008be68 */ addu	$v0,$v0,$v1
.L8008be6c:
/* 0x8008be6c */ addu	$v0,$t1,$v0
.L8008be70:
/* 0x8008be70 */ lb	$v1,1980($v0)
.L8008be74:
/* 0x8008be74 */ sll	$zero,$zero,0x0
.L8008be78:
/* 0x8008be78 */ addu	$v0,$v1,$t0
.L8008be7c:
/* 0x8008be7c */ sltiu	$v0,$v0,7
.L8008be80:
/* 0x8008be80 */ beq	$v0,$zero,.L8008be8c
.L8008be84:
/* 0x8008be84 */ addu	$a0,$zero,$zero
.L8008be88:
/* 0x8008be88 */ addu	$a0,$v1,$zero
.L8008be8c:
/* 0x8008be8c */ sll	$v0,$a0,0x3
.L8008be90:
/* 0x8008be90 */ addu	$v0,$v0,$a0
.L8008be94:
/* 0x8008be94 */ sll	$v0,$v0,0x2
.L8008be98:
/* 0x8008be98 */ lw	$t0,260($sp)
.L8008be9c:
/* 0x8008be9c */ lw	$t1,248($sp)
.L8008bea0:
/* 0x8008bea0 */ addiu	$s1,$t0,210
.L8008bea4:
/* 0x8008bea4 */ lh	$v1,2($t1)
.L8008bea8:
/* 0x8008bea8 */ addiu	$t0,$zero,1
.L8008beac:
/* 0x8008beac */ bne	$s0,$t0,.L8008bec0
.L8008beb0:
/* 0x8008beb0 */ addu	$a2,$v1,$v0
.L8008beb4:
/* 0x8008beb4 */ lw	$t1,260($sp)
.L8008beb8:
/* 0x8008beb8 */ sll	$zero,$zero,0x0
.L8008bebc:
/* 0x8008bebc */ addiu	$s1,$t1,246
.L8008bec0:
/* 0x8008bec0 */ addu	$a1,$s6,$zero
.L8008bec4:
/* 0x8008bec4 */ lw	$t0,248($sp)
.L8008bec8:
/* 0x8008bec8 */ lw	$a0,340($sp)
.L8008becc:
/* 0x8008becc */ lh	$v0,4($t0)
.L8008bed0:
/* 0x8008bed0 */ addiu	$t0,$zero,1
.L8008bed4:
/* 0x8008bed4 */ sw	$t0,24($sp)
.L8008bed8:
/* 0x8008bed8 */ lw	$t0,268($sp)
.L8008bedc:
/* 0x8008bedc */ addiu	$t1,$zero,36
.L8008bee0:
/* 0x8008bee0 */ sw	$t1,16($sp)
.L8008bee4:
/* 0x8008bee4 */ addiu	$t1,$zero,-1
.L8008bee8:
/* 0x8008bee8 */ sw	$s4,20($sp)
.L8008beec:
/* 0x8008beec */ sw	$t1,28($sp)
.L8008bef0:
/* 0x8008bef0 */ addiu	$a3,$t0,28
.L8008bef4:
/* 0x8008bef4 */ jal	0x80048144
.L8008bef8:
/* 0x8008bef8 */ addu	$a3,$v0,$a3
.L8008befc:
/* 0x8008befc */ lw	$t1,248($sp)
.L8008bf00:
/* 0x8008bf00 */ lw	$a0,340($sp)
.L8008bf04:
/* 0x8008bf04 */ lh	$a2,14($t1)
.L8008bf08:
/* 0x8008bf08 */ lh	$a3,16($t1)
.L8008bf0c:
/* 0x8008bf0c */ jal	0x80049208
.L8008bf10:
/* 0x8008bf10 */ addu	$a1,$s6,$zero
.L8008bf14:
/* 0x8008bf14 */ addu	$a1,$s6,$zero
.L8008bf18:
/* 0x8008bf18 */ addu	$a2,$s1,$zero
.L8008bf1c:
/* 0x8008bf1c */ sll	$a3,$s5,0x1
.L8008bf20:
/* 0x8008bf20 */ addu	$a3,$a3,$s5
.L8008bf24:
/* 0x8008bf24 */ sll	$a3,$a3,0x2
.L8008bf28:
/* 0x8008bf28 */ subu	$a3,$a3,$s5
.L8008bf2c:
/* 0x8008bf2c */ sll	$a3,$a3,0x2
.L8008bf30:
/* 0x8008bf30 */ lw	$a0,340($sp)
.L8008bf34:
/* 0x8008bf34 */ lw	$t0,256($sp)
.L8008bf38:
/* 0x8008bf38 */ lw	$t1,268($sp)
.L8008bf3c:
/* 0x8008bf3c */ subu	$a3,$a3,$s5
.L8008bf40:
/* 0x8008bf40 */ sw	$s4,20($sp)
.L8008bf44:
/* 0x8008bf44 */ addiu	$v0,$t0,-185
.L8008bf48:
/* 0x8008bf48 */ addu	$a3,$a3,$v0
.L8008bf4c:
/* 0x8008bf4c */ addu	$a3,$a3,$t1
.L8008bf50:
/* 0x8008bf50 */ addiu	$t0,$zero,36
.L8008bf54:
/* 0x8008bf54 */ jal	0x80049364
.L8008bf58:
/* 0x8008bf58 */ sw	$t0,16($sp)
.L8008bf5c:
/* 0x8008bf5c */ addu	$a1,$s6,$zero
.L8008bf60:
/* 0x8008bf60 */ addu	$a2,$s0,$zero
.L8008bf64:
/* 0x8008bf64 */ lw	$a0,340($sp)
.L8008bf68:
/* 0x8008bf68 */ addu	$a3,$s7,$zero
.L8008bf6c:
/* 0x8008bf6c */ sw	$s7,16($sp)
.L8008bf70:
/* 0x8008bf70 */ jal	0x800862bc
.L8008bf74:
/* 0x8008bf74 */ sw	$s7,20($sp)
.L8008bf78:
/* 0x8008bf78 */ addiu	$s6,$s6,1
.L8008bf7c:
/* 0x8008bf7c */ ori	$v0,$zero,0x9284
.L8008bf80:
/* 0x8008bf80 */ addu	$s2,$s2,$v0
.L8008bf84:
/* 0x8008bf84 */ addiu	$s0,$s0,1
.L8008bf88:
/* 0x8008bf88 */ slti	$v0,$s0,2
.L8008bf8c:
/* 0x8008bf8c */ bne	$v0,$zero,.L8008be3c
.L8008bf90:
/* 0x8008bf90 */ sll	$zero,$zero,0x0
.L8008bf94:
/* 0x8008bf94 */ blez	$s7,.L8008c1b4
.L8008bf98:
/* 0x8008bf98 */ slti	$v0,$s8,4
.L8008bf9c:
/* 0x8008bf9c */ beq	$v0,$zero,.L8008c0e0
.L8008bfa0:
/* 0x8008bfa0 */ sll	$zero,$zero,0x0
.L8008bfa4:
/* 0x8008bfa4 */ bgez	$s8,.L8008bfb0
.L8008bfa8:
/* 0x8008bfa8 */ addu	$s0,$s8,$zero
.L8008bfac:
/* 0x8008bfac */ addiu	$s0,$s8,3
.L8008bfb0:
/* 0x8008bfb0 */ addu	$a1,$s6,$zero
.L8008bfb4:
/* 0x8008bfb4 */ sra	$s0,$s0,0x2
.L8008bfb8:
/* 0x8008bfb8 */ sll	$s1,$s0,0x1
.L8008bfbc:
/* 0x8008bfbc */ addu	$s1,$s1,$s0
.L8008bfc0:
/* 0x8008bfc0 */ sll	$s1,$s1,0x6
.L8008bfc4:
/* 0x8008bfc4 */ addiu	$s1,$s1,3200
.L8008bfc8:
/* 0x8008bfc8 */ addu	$a2,$s1,$zero
.L8008bfcc:
/* 0x8008bfcc */ sll	$s0,$s0,0x2
.L8008bfd0:
/* 0x8008bfd0 */ subu	$s0,$s8,$s0
.L8008bfd4:
/* 0x8008bfd4 */ sll	$s0,$s0,0x5
.L8008bfd8:
/* 0x8008bfd8 */ lw	$a0,340($sp)
.L8008bfdc:
/* 0x8008bfdc */ lw	$t1,268($sp)
.L8008bfe0:
/* 0x8008bfe0 */ lw	$t0,264($sp)
.L8008bfe4:
/* 0x8008bfe4 */ addiu	$s5,$zero,128
.L8008bfe8:
/* 0x8008bfe8 */ sw	$s5,16($sp)
.L8008bfec:
/* 0x8008bfec */ sw	$zero,24($sp)
.L8008bff0:
/* 0x8008bff0 */ addiu	$v0,$t1,128
.L8008bff4:
/* 0x8008bff4 */ addu	$s0,$s0,$v0
.L8008bff8:
/* 0x8008bff8 */ addu	$a3,$s0,$zero
.L8008bffc:
/* 0x8008bffc */ addiu	$s4,$t0,32
.L8008c000:
/* 0x8008c000 */ addiu	$t1,$zero,-1
.L8008c004:
/* 0x8008c004 */ sw	$s4,20($sp)
.L8008c008:
/* 0x8008c008 */ jal	0x80048144
.L8008c00c:
/* 0x8008c00c */ sw	$t1,28($sp)
.L8008c010:
/* 0x8008c010 */ addu	$a1,$s6,$zero
.L8008c014:
/* 0x8008c014 */ addiu	$a2,$zero,896
.L8008c018:
/* 0x8008c018 */ andi	$s3,$s8,0xf
.L8008c01c:
/* 0x8008c01c */ addiu	$s3,$s3,496
.L8008c020:
/* 0x8008c020 */ lw	$a0,340($sp)
.L8008c024:
/* 0x8008c024 */ jal	0x80049208
.L8008c028:
/* 0x8008c028 */ addu	$a3,$s3,$zero
.L8008c02c:
/* 0x8008c02c */ lw	$a0,340($sp)
.L8008c030:
/* 0x8008c030 */ lw	$t0,260($sp)
.L8008c034:
/* 0x8008c034 */ lw	$t1,256($sp)
.L8008c038:
/* 0x8008c038 */ addu	$a1,$s6,$zero
.L8008c03c:
/* 0x8008c03c */ sw	$s5,16($sp)
.L8008c040:
/* 0x8008c040 */ sw	$s4,20($sp)
.L8008c044:
/* 0x8008c044 */ addiu	$a2,$t0,15
.L8008c048:
/* 0x8008c048 */ addiu	$s2,$t1,-185
.L8008c04c:
/* 0x8008c04c */ lw	$t0,276($sp)
.L8008c050:
/* 0x8008c050 */ lw	$t1,268($sp)
.L8008c054:
/* 0x8008c054 */ addu	$s2,$t0,$s2
.L8008c058:
/* 0x8008c058 */ addu	$s2,$s2,$t1
.L8008c05c:
/* 0x8008c05c */ jal	0x80049364
.L8008c060:
/* 0x8008c060 */ addu	$a3,$s2,$zero
.L8008c064:
/* 0x8008c064 */ addu	$a1,$s6,$zero
.L8008c068:
/* 0x8008c068 */ addu	$a2,$s7,$zero
.L8008c06c:
/* 0x8008c06c */ lw	$a0,340($sp)
.L8008c070:
/* 0x8008c070 */ addu	$a3,$s7,$zero
.L8008c074:
/* 0x8008c074 */ jal	0x800490f8
.L8008c078:
/* 0x8008c078 */ sw	$s7,16($sp)
.L8008c07c:
/* 0x8008c07c */ addiu	$s6,$s6,1
.L8008c080:
/* 0x8008c080 */ addu	$a1,$s6,$zero
.L8008c084:
/* 0x8008c084 */ addu	$a2,$s1,$s5
.L8008c088:
/* 0x8008c088 */ addu	$a3,$s0,$zero
.L8008c08c:
/* 0x8008c08c */ addiu	$s0,$zero,64
.L8008c090:
/* 0x8008c090 */ lw	$a0,340($sp)
.L8008c094:
/* 0x8008c094 */ addiu	$t0,$zero,-1
.L8008c098:
/* 0x8008c098 */ sw	$s0,16($sp)
.L8008c09c:
/* 0x8008c09c */ sw	$s4,20($sp)
.L8008c0a0:
/* 0x8008c0a0 */ sw	$zero,24($sp)
.L8008c0a4:
/* 0x8008c0a4 */ jal	0x80048144
.L8008c0a8:
/* 0x8008c0a8 */ sw	$t0,28($sp)
.L8008c0ac:
/* 0x8008c0ac */ addu	$a1,$s6,$zero
.L8008c0b0:
/* 0x8008c0b0 */ addiu	$a2,$zero,896
.L8008c0b4:
/* 0x8008c0b4 */ lw	$a0,340($sp)
.L8008c0b8:
/* 0x8008c0b8 */ jal	0x80049208
.L8008c0bc:
/* 0x8008c0bc */ addu	$a3,$s3,$zero
.L8008c0c0:
/* 0x8008c0c0 */ addu	$a1,$s6,$zero
.L8008c0c4:
/* 0x8008c0c4 */ lw	$a0,340($sp)
.L8008c0c8:
/* 0x8008c0c8 */ lw	$t1,260($sp)
.L8008c0cc:
/* 0x8008c0cc */ addu	$a3,$s2,$zero
.L8008c0d0:
/* 0x8008c0d0 */ sw	$s0,16($sp)
.L8008c0d4:
/* 0x8008c0d4 */ sw	$s4,20($sp)
.L8008c0d8:
/* 0x8008c0d8 */ j	0x8008c190
.L8008c0dc:
/* 0x8008c0dc */ addiu	$a2,$t1,143
.L8008c0e0:
/* 0x8008c0e0 */ bgez	$s8,.L8008c0ec
.L8008c0e4:
/* 0x8008c0e4 */ addu	$a3,$s8,$zero
.L8008c0e8:
/* 0x8008c0e8 */ addiu	$a3,$s8,3
.L8008c0ec:
/* 0x8008c0ec */ addu	$a1,$s6,$zero
.L8008c0f0:
/* 0x8008c0f0 */ sra	$a3,$a3,0x2
.L8008c0f4:
/* 0x8008c0f4 */ sll	$a2,$a3,0x1
.L8008c0f8:
/* 0x8008c0f8 */ addu	$a2,$a2,$a3
.L8008c0fc:
/* 0x8008c0fc */ sll	$a2,$a2,0x6
.L8008c100:
/* 0x8008c100 */ addiu	$a2,$a2,3200
.L8008c104:
/* 0x8008c104 */ sll	$a3,$a3,0x2
.L8008c108:
/* 0x8008c108 */ subu	$a3,$s8,$a3
.L8008c10c:
/* 0x8008c10c */ sll	$a3,$a3,0x5
.L8008c110:
/* 0x8008c110 */ lw	$a0,340($sp)
.L8008c114:
/* 0x8008c114 */ lw	$t0,268($sp)
.L8008c118:
/* 0x8008c118 */ addiu	$t1,$zero,192
.L8008c11c:
/* 0x8008c11c */ sw	$t1,16($sp)
.L8008c120:
/* 0x8008c120 */ addiu	$t1,$zero,-1
.L8008c124:
/* 0x8008c124 */ sw	$zero,24($sp)
.L8008c128:
/* 0x8008c128 */ sw	$t1,28($sp)
.L8008c12c:
/* 0x8008c12c */ addiu	$v0,$t0,128
.L8008c130:
/* 0x8008c130 */ lw	$t0,264($sp)
.L8008c134:
/* 0x8008c134 */ addu	$a3,$a3,$v0
.L8008c138:
/* 0x8008c138 */ addiu	$s0,$t0,32
.L8008c13c:
/* 0x8008c13c */ jal	0x80048144
.L8008c140:
/* 0x8008c140 */ sw	$s0,20($sp)
.L8008c144:
/* 0x8008c144 */ addu	$a1,$s6,$zero
.L8008c148:
/* 0x8008c148 */ addiu	$a2,$zero,896
.L8008c14c:
/* 0x8008c14c */ andi	$a3,$s8,0xf
.L8008c150:
/* 0x8008c150 */ lw	$a0,340($sp)
.L8008c154:
/* 0x8008c154 */ jal	0x80049208
.L8008c158:
/* 0x8008c158 */ ori	$a3,$a3,0x1f0
.L8008c15c:
/* 0x8008c15c */ lw	$a0,340($sp)
.L8008c160:
/* 0x8008c160 */ lw	$t0,260($sp)
.L8008c164:
/* 0x8008c164 */ lw	$t1,256($sp)
.L8008c168:
/* 0x8008c168 */ addu	$a1,$s6,$zero
.L8008c16c:
/* 0x8008c16c */ sw	$s0,20($sp)
.L8008c170:
/* 0x8008c170 */ addiu	$a2,$t0,15
.L8008c174:
/* 0x8008c174 */ addiu	$a3,$t1,-185
.L8008c178:
/* 0x8008c178 */ lw	$t0,276($sp)
.L8008c17c:
/* 0x8008c17c */ lw	$t1,268($sp)
.L8008c180:
/* 0x8008c180 */ addu	$a3,$t0,$a3
.L8008c184:
/* 0x8008c184 */ addu	$a3,$a3,$t1
.L8008c188:
/* 0x8008c188 */ addiu	$t0,$zero,192
.L8008c18c:
/* 0x8008c18c */ sw	$t0,16($sp)
.L8008c190:
/* 0x8008c190 */ jal	0x80049364
.L8008c194:
/* 0x8008c194 */ sll	$zero,$zero,0x0
.L8008c198:
/* 0x8008c198 */ addu	$a1,$s6,$zero
.L8008c19c:
/* 0x8008c19c */ addu	$a2,$s7,$zero
.L8008c1a0:
/* 0x8008c1a0 */ lw	$a0,340($sp)
.L8008c1a4:
/* 0x8008c1a4 */ addu	$a3,$a2,$zero
.L8008c1a8:
/* 0x8008c1a8 */ jal	0x800490f8
.L8008c1ac:
/* 0x8008c1ac */ sw	$a2,16($sp)
.L8008c1b0:
/* 0x8008c1b0 */ addiu	$s6,$s6,1
.L8008c1b4:
/* 0x8008c1b4 */ lw	$t1,276($sp)
.L8008c1b8:
/* 0x8008c1b8 */ lw	$t0,280($sp)
.L8008c1bc:
/* 0x8008c1bc */ addiu	$t1,$t1,43
.L8008c1c0:
/* 0x8008c1c0 */ sw	$t1,276($sp)
.L8008c1c4:
/* 0x8008c1c4 */ lw	$t1,284($sp)
.L8008c1c8:
/* 0x8008c1c8 */ addiu	$t0,$t0,1
.L8008c1cc:
/* 0x8008c1cc */ sw	$t0,280($sp)
.L8008c1d0:
/* 0x8008c1d0 */ lw	$t0,288($sp)
.L8008c1d4:
/* 0x8008c1d4 */ addiu	$t1,$t1,4096
.L8008c1d8:
/* 0x8008c1d8 */ sw	$t1,284($sp)
.L8008c1dc:
/* 0x8008c1dc */ lw	$t1,252($sp)
.L8008c1e0:
/* 0x8008c1e0 */ addiu	$t0,$t0,1
.L8008c1e4:
/* 0x8008c1e4 */ sw	$t0,288($sp)
.L8008c1e8:
/* 0x8008c1e8 */ addiu	$t1,$t1,1
.L8008c1ec:
/* 0x8008c1ec */ slti	$v0,$t1,11
.L8008c1f0:
/* 0x8008c1f0 */ bne	$v0,$zero,.L8008b608
.L8008c1f4:
/* 0x8008c1f4 */ sw	$t1,252($sp)
.L8008c1f8:
/* 0x8008c1f8 */ addu	$v0,$s6,$zero
.L8008c1fc:
/* 0x8008c1fc */ lw	$ra,332($sp)
.L8008c200:
/* 0x8008c200 */ lw	$s8,328($sp)
.L8008c204:
/* 0x8008c204 */ lw	$s7,324($sp)
.L8008c208:
/* 0x8008c208 */ lw	$s6,320($sp)
.L8008c20c:
/* 0x8008c20c */ lw	$s5,316($sp)
.L8008c210:
/* 0x8008c210 */ lw	$s4,312($sp)
.L8008c214:
/* 0x8008c214 */ lw	$s3,308($sp)
.L8008c218:
/* 0x8008c218 */ lw	$s2,304($sp)
.L8008c21c:
/* 0x8008c21c */ lw	$s1,300($sp)
.L8008c220:
/* 0x8008c220 */ lw	$s0,296($sp)
.L8008c224:
/* 0x8008c224 */ jr	$ra
.L8008c228:
/* 0x8008c228 */ addiu	$sp,$sp,336
.size FUN_8008b170, .-FUN_8008b170
