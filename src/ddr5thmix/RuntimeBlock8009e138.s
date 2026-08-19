.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009e138
.globl FUN_8009e138
.type FUN_8009e138, @function
FUN_8009e138:
.L8009e138:
/* 0x8009e138 */ addiu	$sp,$sp,-32
.L8009e13c:
/* 0x8009e13c */ sw	$s1,20($sp)
.L8009e140:
/* 0x8009e140 */ addu	$s1,$a1,$zero
.L8009e144:
/* 0x8009e144 */ sw	$s0,16($sp)
.L8009e148:
/* 0x8009e148 */ addu	$s0,$a2,$zero
.L8009e14c:
/* 0x8009e14c */ sw	$ra,28($sp)
.L8009e150:
/* 0x8009e150 */ sw	$s2,24($sp)
.L8009e154:
/* 0x8009e154 */ lbu	$v0,0($a0)
.L8009e158:
/* 0x8009e158 */ lbu	$a0,1($a0)
.L8009e15c:
/* 0x8009e15c */ sll	$v0,$v0,0x8
.L8009e160:
/* 0x8009e160 */ jal	0x8003bc78
.L8009e164:
/* 0x8009e164 */ or	$a0,$a0,$v0
.L8009e168:
/* 0x8009e168 */ addu	$t2,$v0,$zero
.L8009e16c:
/* 0x8009e16c */ addiu	$v0,$zero,-1
.L8009e170:
/* 0x8009e170 */ beq	$t2,$v0,.L8009e2fc
.L8009e174:
/* 0x8009e174 */ addu	$s2,$s0,$zero
.L8009e178:
/* 0x8009e178 */ addu	$a1,$s1,$zero
.L8009e17c:
/* 0x8009e17c */ addu	$t1,$zero,$zero
.L8009e180:
/* 0x8009e180 */ addiu	$t4,$zero,3
.L8009e184:
/* 0x8009e184 */ andi	$t5,$s0,0x40
.L8009e188:
/* 0x8009e188 */ and	$a2,$s0,$t4
.L8009e18c:
/* 0x8009e18c */ addiu	$t6,$zero,1
.L8009e190:
/* 0x8009e190 */ addiu	$a3,$zero,7
.L8009e194:
/* 0x8009e194 */ andi	$t0,$a3,0x3
.L8009e198:
/* 0x8009e198 */ bne	$t0,$t4,.L8009e1a4
.L8009e19c:
/* 0x8009e19c */ sll	$zero,$zero,0x0
.L8009e1a0:
/* 0x8009e1a0 */ sh	$zero,0($a1)
.L8009e1a4:
/* 0x8009e1a4 */ lhu	$a0,0($t2)
.L8009e1a8:
/* 0x8009e1a8 */ sll	$v0,$a3,0x10
.L8009e1ac:
/* 0x8009e1ac */ sra	$v1,$v0,0x10
.L8009e1b0:
/* 0x8009e1b0 */ srav	$v0,$a0,$v1
.L8009e1b4:
/* 0x8009e1b4 */ andi	$v0,$v0,0x1
.L8009e1b8:
/* 0x8009e1b8 */ bne	$v0,$zero,.L8009e1dc
.L8009e1bc:
/* 0x8009e1bc */ sll	$zero,$zero,0x0
.L8009e1c0:
/* 0x8009e1c0 */ beq	$t5,$zero,.L8009e1fc
.L8009e1c4:
/* 0x8009e1c4 */ addiu	$v0,$v1,1
.L8009e1c8:
/* 0x8009e1c8 */ andi	$v0,$v0,0xf
.L8009e1cc:
/* 0x8009e1cc */ srav	$v0,$a0,$v0
.L8009e1d0:
/* 0x8009e1d0 */ andi	$v0,$v0,0x1
.L8009e1d4:
/* 0x8009e1d4 */ beq	$v0,$zero,.L8009e200
.L8009e1d8:
/* 0x8009e1d8 */ andi	$v0,$a3,0x3
.L8009e1dc:
/* 0x8009e1dc */ bne	$a2,$zero,.L8009e200
.L8009e1e0:
/* 0x8009e1e0 */ andi	$v0,$a3,0x3
.L8009e1e4:
/* 0x8009e1e4 */ subu	$v0,$t4,$t0
.L8009e1e8:
/* 0x8009e1e8 */ sll	$v0,$v0,0x2
.L8009e1ec:
/* 0x8009e1ec */ lhu	$v1,0($a1)
.L8009e1f0:
/* 0x8009e1f0 */ sllv	$v0,$t6,$v0
.L8009e1f4:
/* 0x8009e1f4 */ or	$v1,$v1,$v0
.L8009e1f8:
/* 0x8009e1f8 */ sh	$v1,0($a1)
.L8009e1fc:
/* 0x8009e1fc */ andi	$v0,$a3,0x3
.L8009e200:
/* 0x8009e200 */ bne	$v0,$zero,.L8009e20c
.L8009e204:
/* 0x8009e204 */ addiu	$v0,$a3,-1
.L8009e208:
/* 0x8009e208 */ addiu	$a1,$a1,2
.L8009e20c:
/* 0x8009e20c */ addu	$a3,$v0,$zero
.L8009e210:
/* 0x8009e210 */ sll	$v0,$v0,0x10
.L8009e214:
/* 0x8009e214 */ bgez	$v0,.L8009e198
.L8009e218:
/* 0x8009e218 */ andi	$t0,$a3,0x3
.L8009e21c:
/* 0x8009e21c */ addiu	$a3,$zero,15
.L8009e220:
/* 0x8009e220 */ andi	$t3,$s2,0x20
.L8009e224:
/* 0x8009e224 */ andi	$t0,$a3,0x3
.L8009e228:
/* 0x8009e228 */ bne	$t0,$t4,.L8009e234
.L8009e22c:
/* 0x8009e22c */ sll	$zero,$zero,0x0
.L8009e230:
/* 0x8009e230 */ sh	$zero,0($a1)
.L8009e234:
/* 0x8009e234 */ lhu	$a0,0($t2)
.L8009e238:
/* 0x8009e238 */ sll	$v0,$a3,0x10
.L8009e23c:
/* 0x8009e23c */ sra	$v1,$v0,0x10
.L8009e240:
/* 0x8009e240 */ srav	$v0,$a0,$v1
.L8009e244:
/* 0x8009e244 */ andi	$v0,$v0,0x1
.L8009e248:
/* 0x8009e248 */ bne	$v0,$zero,.L8009e26c
.L8009e24c:
/* 0x8009e24c */ sll	$zero,$zero,0x0
.L8009e250:
/* 0x8009e250 */ beq	$t3,$zero,.L8009e28c
.L8009e254:
/* 0x8009e254 */ addiu	$v0,$v1,1
.L8009e258:
/* 0x8009e258 */ andi	$v0,$v0,0xf
.L8009e25c:
/* 0x8009e25c */ srav	$v0,$a0,$v0
.L8009e260:
/* 0x8009e260 */ andi	$v0,$v0,0x1
.L8009e264:
/* 0x8009e264 */ beq	$v0,$zero,.L8009e290
.L8009e268:
/* 0x8009e268 */ andi	$v0,$a3,0x3
.L8009e26c:
/* 0x8009e26c */ bne	$a2,$zero,.L8009e290
.L8009e270:
/* 0x8009e270 */ andi	$v0,$a3,0x3
.L8009e274:
/* 0x8009e274 */ subu	$v0,$t4,$t0
.L8009e278:
/* 0x8009e278 */ sll	$v0,$v0,0x2
.L8009e27c:
/* 0x8009e27c */ lhu	$v1,0($a1)
.L8009e280:
/* 0x8009e280 */ sllv	$v0,$t6,$v0
.L8009e284:
/* 0x8009e284 */ or	$v1,$v1,$v0
.L8009e288:
/* 0x8009e288 */ sh	$v1,0($a1)
.L8009e28c:
/* 0x8009e28c */ andi	$v0,$a3,0x3
.L8009e290:
/* 0x8009e290 */ bne	$v0,$zero,.L8009e29c
.L8009e294:
/* 0x8009e294 */ addiu	$v0,$a3,-1
.L8009e298:
/* 0x8009e298 */ addiu	$a1,$a1,2
.L8009e29c:
/* 0x8009e29c */ addu	$a3,$v0,$zero
.L8009e2a0:
/* 0x8009e2a0 */ sll	$v0,$v0,0x10
.L8009e2a4:
/* 0x8009e2a4 */ sra	$v0,$v0,0x10
.L8009e2a8:
/* 0x8009e2a8 */ slti	$v0,$v0,8
.L8009e2ac:
/* 0x8009e2ac */ beq	$v0,$zero,.L8009e228
.L8009e2b0:
/* 0x8009e2b0 */ andi	$t0,$a3,0x3
.L8009e2b4:
/* 0x8009e2b4 */ addiu	$v0,$t1,1
.L8009e2b8:
/* 0x8009e2b8 */ addu	$t1,$v0,$zero
.L8009e2bc:
/* 0x8009e2bc */ sll	$v0,$v0,0x10
.L8009e2c0:
/* 0x8009e2c0 */ sra	$v0,$v0,0x10
.L8009e2c4:
/* 0x8009e2c4 */ slti	$v0,$v0,15
.L8009e2c8:
/* 0x8009e2c8 */ bne	$v0,$zero,.L8009e190
.L8009e2cc:
/* 0x8009e2cc */ addiu	$t2,$t2,2
.L8009e2d0:
/* 0x8009e2d0 */ addu	$t1,$zero,$zero
.L8009e2d4:
/* 0x8009e2d4 */ sh	$zero,0($a1)
.L8009e2d8:
/* 0x8009e2d8 */ addiu	$v0,$t1,1
.L8009e2dc:
/* 0x8009e2dc */ addu	$t1,$v0,$zero
.L8009e2e0:
/* 0x8009e2e0 */ sll	$v0,$v0,0x10
.L8009e2e4:
/* 0x8009e2e4 */ sra	$v0,$v0,0x10
.L8009e2e8:
/* 0x8009e2e8 */ slti	$v0,$v0,4
.L8009e2ec:
/* 0x8009e2ec */ bne	$v0,$zero,.L8009e2d4
.L8009e2f0:
/* 0x8009e2f0 */ addiu	$a1,$a1,2
.L8009e2f4:
/* 0x8009e2f4 */ j	.L8009e324
.L8009e2f8:
/* 0x8009e2f8 */ sll	$zero,$zero,0x0
.L8009e2fc:
/* 0x8009e2fc */ addu	$a1,$s1,$zero
.L8009e300:
/* 0x8009e300 */ addu	$t1,$zero,$zero
.L8009e304:
/* 0x8009e304 */ sh	$zero,0($a1)
.L8009e308:
/* 0x8009e308 */ addiu	$v0,$t1,1
.L8009e30c:
/* 0x8009e30c */ addu	$t1,$v0,$zero
.L8009e310:
/* 0x8009e310 */ sll	$v0,$v0,0x10
.L8009e314:
/* 0x8009e314 */ sra	$v0,$v0,0x10
.L8009e318:
/* 0x8009e318 */ slti	$v0,$v0,64
.L8009e31c:
/* 0x8009e31c */ bne	$v0,$zero,.L8009e304
.L8009e320:
/* 0x8009e320 */ addiu	$a1,$a1,2
.L8009e324:
/* 0x8009e324 */ lw	$ra,28($sp)
.L8009e328:
/* 0x8009e328 */ lw	$s2,24($sp)
.L8009e32c:
/* 0x8009e32c */ lw	$s1,20($sp)
.L8009e330:
/* 0x8009e330 */ lw	$s0,16($sp)
.L8009e334:
/* 0x8009e334 */ jr	$ra
.L8009e338:
/* 0x8009e338 */ addiu	$sp,$sp,32
.size FUN_8009e138, .-FUN_8009e138
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009e33c
.globl FUN_8009e33c
.type FUN_8009e33c, @function
FUN_8009e33c:
.L8009e33c:
/* 0x8009e33c */ addiu	$sp,$sp,-64
.L8009e340:
/* 0x8009e340 */ sw	$s1,28($sp)
.L8009e344:
/* 0x8009e344 */ addu	$s1,$a0,$zero
.L8009e348:
/* 0x8009e348 */ sw	$s0,24($sp)
.L8009e34c:
/* 0x8009e34c */ addu	$s0,$a3,$zero
.L8009e350:
/* 0x8009e350 */ sw	$s2,32($sp)
.L8009e354:
/* 0x8009e354 */ addu	$s2,$a1,$zero
.L8009e358:
/* 0x8009e358 */ sw	$s3,36($sp)
.L8009e35c:
/* 0x8009e35c */ addu	$s3,$a2,$zero
.L8009e360:
/* 0x8009e360 */ sll	$v0,$a1,0x10
.L8009e364:
/* 0x8009e364 */ sra	$v1,$v0,0x10
.L8009e368:
/* 0x8009e368 */ addu	$v0,$v1,$zero
.L8009e36c:
/* 0x8009e36c */ sw	$ra,56($sp)
.L8009e370:
/* 0x8009e370 */ sw	$s7,52($sp)
.L8009e374:
/* 0x8009e374 */ sw	$s6,48($sp)
.L8009e378:
/* 0x8009e378 */ sw	$s5,44($sp)
.L8009e37c:
/* 0x8009e37c */ bgez	$v1,.L8009e388
.L8009e380:
/* 0x8009e380 */ sw	$s4,40($sp)
.L8009e384:
/* 0x8009e384 */ addiu	$v0,$v1,63
.L8009e388:
/* 0x8009e388 */ sra	$v0,$v0,0x6
.L8009e38c:
/* 0x8009e38c */ sll	$v0,$v0,0x6
.L8009e390:
/* 0x8009e390 */ subu	$v0,$v1,$v0
.L8009e394:
/* 0x8009e394 */ subu	$v0,$a1,$v0
.L8009e398:
/* 0x8009e398 */ addu	$s7,$v0,$zero
.L8009e39c:
/* 0x8009e39c */ addiu	$s6,$v0,64
.L8009e3a0:
/* 0x8009e3a0 */ addiu	$s5,$zero,14
.L8009e3a4:
/* 0x8009e3a4 */ addiu	$s4,$zero,15
.L8009e3a8:
/* 0x8009e3a8 */ lbu	$v0,0($s1)
.L8009e3ac:
/* 0x8009e3ac */ sll	$zero,$zero,0x0
.L8009e3b0:
/* 0x8009e3b0 */ beq	$v0,$zero,.L8009e498
.L8009e3b4:
/* 0x8009e3b4 */ addu	$a0,$s1,$zero
.L8009e3b8:
/* 0x8009e3b8 */ addu	$a1,$s0,$zero
.L8009e3bc:
/* 0x8009e3bc */ jal	0x8009e138
.L8009e3c0:
/* 0x8009e3c0 */ addiu	$a2,$zero,96
.L8009e3c4:
/* 0x8009e3c4 */ addiu	$v0,$zero,4
.L8009e3c8:
/* 0x8009e3c8 */ sh	$v0,20($sp)
.L8009e3cc:
/* 0x8009e3cc */ addiu	$v0,$zero,16
.L8009e3d0:
/* 0x8009e3d0 */ sh	$s2,16($sp)
.L8009e3d4:
/* 0x8009e3d4 */ sh	$s3,18($sp)
.L8009e3d8:
/* 0x8009e3d8 */ sh	$v0,22($sp)
.L8009e3dc:
/* 0x8009e3dc */ lhu	$v1,0($s1)
.L8009e3e0:
/* 0x8009e3e0 */ ori	$v0,$zero,0xe689
.L8009e3e4:
/* 0x8009e3e4 */ bne	$v1,$v0,.L8009e460
.L8009e3e8:
/* 0x8009e3e8 */ addu	$a2,$zero,$zero
.L8009e3ec:
/* 0x8009e3ec */ andi	$v1,$a2,0xff
.L8009e3f0:
/* 0x8009e3f0 */ subu	$v0,$s5,$v1
.L8009e3f4:
/* 0x8009e3f4 */ sll	$v0,$v0,0x3
.L8009e3f8:
/* 0x8009e3f8 */ addu	$a1,$s0,$v0
.L8009e3fc:
/* 0x8009e3fc */ subu	$v1,$s4,$v1
.L8009e400:
/* 0x8009e400 */ sll	$v1,$v1,0x3
.L8009e404:
/* 0x8009e404 */ addu	$a0,$s0,$v1
.L8009e408:
/* 0x8009e408 */ addu	$v1,$zero,$zero
.L8009e40c:
/* 0x8009e40c */ lbu	$v0,0($a1)
.L8009e410:
/* 0x8009e410 */ addiu	$a1,$a1,1
.L8009e414:
/* 0x8009e414 */ addiu	$v1,$v1,1
.L8009e418:
/* 0x8009e418 */ sb	$v0,0($a0)
.L8009e41c:
/* 0x8009e41c */ andi	$v0,$v1,0xff
.L8009e420:
/* 0x8009e420 */ sltiu	$v0,$v0,8
.L8009e424:
/* 0x8009e424 */ bne	$v0,$zero,.L8009e40c
.L8009e428:
/* 0x8009e428 */ addiu	$a0,$a0,1
.L8009e42c:
/* 0x8009e42c */ addiu	$a2,$a2,1
.L8009e430:
/* 0x8009e430 */ andi	$v0,$a2,0xff
.L8009e434:
/* 0x8009e434 */ sltiu	$v0,$v0,15
.L8009e438:
/* 0x8009e438 */ bne	$v0,$zero,.L8009e3f0
.L8009e43c:
/* 0x8009e43c */ andi	$v1,$a2,0xff
.L8009e440:
/* 0x8009e440 */ addu	$a0,$s0,$zero
.L8009e444:
/* 0x8009e444 */ addu	$v1,$zero,$zero
.L8009e448:
/* 0x8009e448 */ sb	$zero,0($a0)
.L8009e44c:
/* 0x8009e44c */ addiu	$v1,$v1,1
.L8009e450:
/* 0x8009e450 */ andi	$v0,$v1,0xff
.L8009e454:
/* 0x8009e454 */ sltiu	$v0,$v0,8
.L8009e458:
/* 0x8009e458 */ bne	$v0,$zero,.L8009e448
.L8009e45c:
/* 0x8009e45c */ addiu	$a0,$a0,1
.L8009e460:
/* 0x8009e460 */ addiu	$a0,$sp,16
.L8009e464:
/* 0x8009e464 */ jal	0x80038810
.L8009e468:
/* 0x8009e468 */ addu	$a1,$s0,$zero
.L8009e46c:
/* 0x8009e46c */ addiu	$s1,$s1,2
.L8009e470:
/* 0x8009e470 */ addiu	$v0,$s2,4
.L8009e474:
/* 0x8009e474 */ addu	$s2,$v0,$zero
.L8009e478:
/* 0x8009e478 */ sll	$v0,$v0,0x10
.L8009e47c:
/* 0x8009e47c */ sll	$v1,$s6,0x10
.L8009e480:
/* 0x8009e480 */ slt	$v0,$v0,$v1
.L8009e484:
/* 0x8009e484 */ bne	$v0,$zero,.L8009e3a8
.L8009e488:
/* 0x8009e488 */ addiu	$s0,$s0,128
.L8009e48c:
/* 0x8009e48c */ addu	$s2,$s7,$zero
.L8009e490:
/* 0x8009e490 */ j	.L8009e3a8
.L8009e494:
/* 0x8009e494 */ addiu	$s3,$s3,16
.L8009e498:
/* 0x8009e498 */ jal	0x80038564
.L8009e49c:
/* 0x8009e49c */ addu	$a0,$zero,$zero
.L8009e4a0:
/* 0x8009e4a0 */ lw	$ra,56($sp)
.L8009e4a4:
/* 0x8009e4a4 */ lw	$s7,52($sp)
.L8009e4a8:
/* 0x8009e4a8 */ lw	$s6,48($sp)
.L8009e4ac:
/* 0x8009e4ac */ lw	$s5,44($sp)
.L8009e4b0:
/* 0x8009e4b0 */ lw	$s4,40($sp)
.L8009e4b4:
/* 0x8009e4b4 */ lw	$s3,36($sp)
.L8009e4b8:
/* 0x8009e4b8 */ lw	$s2,32($sp)
.L8009e4bc:
/* 0x8009e4bc */ lw	$s1,28($sp)
.L8009e4c0:
/* 0x8009e4c0 */ lw	$s0,24($sp)
.L8009e4c4:
/* 0x8009e4c4 */ jr	$ra
.L8009e4c8:
/* 0x8009e4c8 */ addiu	$sp,$sp,64
.size FUN_8009e33c, .-FUN_8009e33c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009e4cc
.globl FUN_8009e4cc
.type FUN_8009e4cc, @function
FUN_8009e4cc:
.L8009e4cc:
/* 0x8009e4cc */ addiu	$sp,$sp,-152
.L8009e4d0:
/* 0x8009e4d0 */ lui	$v0,0x800e
.L8009e4d4:
/* 0x8009e4d4 */ lw	$v0,2844($v0)
.L8009e4d8:
/* 0x8009e4d8 */ lbu	$t0,172($sp)
.L8009e4dc:
/* 0x8009e4dc */ sw	$s2,120($sp)
.L8009e4e0:
/* 0x8009e4e0 */ addu	$s2,$a3,$zero
.L8009e4e4:
/* 0x8009e4e4 */ sw	$ra,148($sp)
.L8009e4e8:
/* 0x8009e4e8 */ sw	$s8,144($sp)
.L8009e4ec:
/* 0x8009e4ec */ sw	$s7,140($sp)
.L8009e4f0:
/* 0x8009e4f0 */ sw	$s6,136($sp)
.L8009e4f4:
/* 0x8009e4f4 */ sw	$s5,132($sp)
.L8009e4f8:
/* 0x8009e4f8 */ sw	$s4,128($sp)
.L8009e4fc:
/* 0x8009e4fc */ sw	$s3,124($sp)
.L8009e500:
/* 0x8009e500 */ sw	$s1,116($sp)
.L8009e504:
/* 0x8009e504 */ sw	$s0,112($sp)
.L8009e508:
/* 0x8009e508 */ sb	$zero,64($sp)
.L8009e50c:
/* 0x8009e50c */ sh	$a1,40($sp)
.L8009e510:
/* 0x8009e510 */ sh	$a2,48($sp)
.L8009e514:
/* 0x8009e514 */ lbu	$v0,133($v0)
.L8009e518:
/* 0x8009e518 */ addiu	$v1,$zero,1
.L8009e51c:
/* 0x8009e51c */ bne	$v0,$v1,.L8009e5a4
.L8009e520:
/* 0x8009e520 */ sb	$t0,56($sp)
.L8009e524:
/* 0x8009e524 */ addu	$s3,$zero,$zero
.L8009e528:
/* 0x8009e528 */ lui	$v0,0x800e
.L8009e52c:
/* 0x8009e52c */ addiu	$s1,$v0,3660
.L8009e530:
/* 0x8009e530 */ lui	$s0,0x800e
.L8009e534:
/* 0x8009e534 */ lw	$v0,2844($s0)
.L8009e538:
/* 0x8009e538 */ andi	$a2,$s3,0xff
.L8009e53c:
/* 0x8009e53c */ lbu	$v1,132($v0)
.L8009e540:
/* 0x8009e540 */ sll	$v0,$a2,0x2
.L8009e544:
/* 0x8009e544 */ sll	$v1,$v1,0x4
.L8009e548:
/* 0x8009e548 */ addu	$v0,$v0,$v1
.L8009e54c:
/* 0x8009e54c */ addu	$v0,$v0,$s1
.L8009e550:
/* 0x8009e550 */ lw	$a0,0($v0)
.L8009e554:
/* 0x8009e554 */ addiu	$v0,$zero,-1
.L8009e558:
/* 0x8009e558 */ beq	$a0,$v0,.L8009e584
.L8009e55c:
/* 0x8009e55c */ sll	$a2,$a2,0x5
.L8009e560:
/* 0x8009e560 */ lhu	$t0,48($sp)
.L8009e564:
/* 0x8009e564 */ addu	$a2,$s2,$a2
.L8009e568:
/* 0x8009e568 */ sll	$a2,$a2,0x10
.L8009e56c:
/* 0x8009e56c */ sra	$a2,$a2,0x10
.L8009e570:
/* 0x8009e570 */ lui	$a3,0x801d
.L8009e574:
/* 0x8009e574 */ ori	$a3,$a3,0x3000
.L8009e578:
/* 0x8009e578 */ sll	$a1,$t0,0x10
.L8009e57c:
/* 0x8009e57c */ jal	0x8009e33c
.L8009e580:
/* 0x8009e580 */ sra	$a1,$a1,0x10
.L8009e584:
/* 0x8009e584 */ addiu	$s3,$s3,1
.L8009e588:
/* 0x8009e588 */ andi	$v0,$s3,0xff
.L8009e58c:
/* 0x8009e58c */ sltiu	$v0,$v0,4
.L8009e590:
/* 0x8009e590 */ bne	$v0,$zero,.L8009e530
.L8009e594:
/* 0x8009e594 */ sll	$zero,$zero,0x0
.L8009e598:
/* 0x8009e598 */ lw	$v0,2844($s0)
.L8009e59c:
/* 0x8009e59c */ sll	$zero,$zero,0x0
.L8009e5a0:
/* 0x8009e5a0 */ sb	$zero,133($v0)
.L8009e5a4:
/* 0x8009e5a4 */ lui	$v0,0x800e
.L8009e5a8:
/* 0x8009e5a8 */ lw	$v1,2844($v0)
.L8009e5ac:
/* 0x8009e5ac */ sll	$zero,$zero,0x0
.L8009e5b0:
/* 0x8009e5b0 */ lbu	$v0,132($v1)
.L8009e5b4:
/* 0x8009e5b4 */ sll	$zero,$zero,0x0
.L8009e5b8:
/* 0x8009e5b8 */ beq	$v0,$zero,.L8009e944
.L8009e5bc:
/* 0x8009e5bc */ lui	$v0,0x800e
.L8009e5c0:
/* 0x8009e5c0 */ addu	$s3,$zero,$zero
.L8009e5c4:
/* 0x8009e5c4 */ addiu	$a1,$v0,3660
.L8009e5c8:
/* 0x8009e5c8 */ sb	$zero,64($sp)
.L8009e5cc:
/* 0x8009e5cc */ lbu	$v0,132($v1)
.L8009e5d0:
/* 0x8009e5d0 */ addiu	$a0,$zero,-1
.L8009e5d4:
/* 0x8009e5d4 */ sll	$v1,$v0,0x4
.L8009e5d8:
/* 0x8009e5d8 */ andi	$v0,$s3,0xff
.L8009e5dc:
/* 0x8009e5dc */ sll	$v0,$v0,0x2
.L8009e5e0:
/* 0x8009e5e0 */ addu	$v0,$v0,$v1
.L8009e5e4:
/* 0x8009e5e4 */ addu	$v0,$v0,$a1
.L8009e5e8:
/* 0x8009e5e8 */ lw	$s1,0($v0)
.L8009e5ec:
/* 0x8009e5ec */ sll	$zero,$zero,0x0
.L8009e5f0:
/* 0x8009e5f0 */ beq	$s1,$a0,.L8009e608
.L8009e5f4:
/* 0x8009e5f4 */ sll	$zero,$zero,0x0
.L8009e5f8:
/* 0x8009e5f8 */ lbu	$t0,64($sp)
.L8009e5fc:
/* 0x8009e5fc */ sll	$zero,$zero,0x0
.L8009e600:
/* 0x8009e600 */ addiu	$t0,$t0,1
.L8009e604:
/* 0x8009e604 */ sb	$t0,64($sp)
.L8009e608:
/* 0x8009e608 */ addiu	$s3,$s3,1
.L8009e60c:
/* 0x8009e60c */ andi	$v0,$s3,0xff
.L8009e610:
/* 0x8009e610 */ sltiu	$v0,$v0,4
.L8009e614:
/* 0x8009e614 */ bne	$v0,$zero,.L8009e5dc
.L8009e618:
/* 0x8009e618 */ andi	$v0,$s3,0xff
.L8009e61c:
/* 0x8009e61c */ lbu	$v0,64($sp)
.L8009e620:
/* 0x8009e620 */ sll	$zero,$zero,0x0
.L8009e624:
/* 0x8009e624 */ sltiu	$v0,$v0,2
.L8009e628:
/* 0x8009e628 */ beq	$v0,$zero,.L8009e654
.L8009e62c:
/* 0x8009e62c */ lui	$v0,0x800e
.L8009e630:
/* 0x8009e630 */ lw	$v0,2844($v0)
.L8009e634:
/* 0x8009e634 */ lui	$v1,0x800e
.L8009e638:
/* 0x8009e638 */ lbu	$v0,132($v0)
.L8009e63c:
/* 0x8009e63c */ addiu	$v1,$v1,3660
.L8009e640:
/* 0x8009e640 */ sll	$v0,$v0,0x4
.L8009e644:
/* 0x8009e644 */ addu	$v0,$v0,$v1
.L8009e648:
/* 0x8009e648 */ lw	$a0,0($v0)
.L8009e64c:
/* 0x8009e64c */ jal	0x8003bab8
.L8009e650:
/* 0x8009e650 */ sll	$zero,$zero,0x0
.L8009e654:
/* 0x8009e654 */ addu	$s3,$zero,$zero
.L8009e658:
/* 0x8009e658 */ sh	$s2,72($sp)
.L8009e65c:
/* 0x8009e65c */ sll	$v0,$s2,0x10
.L8009e660:
/* 0x8009e660 */ lhu	$t0,48($sp)
.L8009e664:
/* 0x8009e664 */ sra	$v0,$v0,0x10
.L8009e668:
/* 0x8009e668 */ sw	$v0,80($sp)
.L8009e66c:
/* 0x8009e66c */ sll	$v0,$t0,0x10
.L8009e670:
/* 0x8009e670 */ sra	$v0,$v0,0x10
.L8009e674:
/* 0x8009e674 */ sw	$v0,96($sp)
.L8009e678:
/* 0x8009e678 */ andi	$v0,$t0,0x3ff
.L8009e67c:
/* 0x8009e67c */ sll	$v0,$v0,0x10
.L8009e680:
/* 0x8009e680 */ sw	$v0,100($sp)
.L8009e684:
/* 0x8009e684 */ lui	$v0,0x800e
.L8009e688:
/* 0x8009e688 */ lw	$a1,2844($v0)
.L8009e68c:
/* 0x8009e68c */ andi	$v0,$s3,0xff
.L8009e690:
/* 0x8009e690 */ sll	$v0,$v0,0x2
.L8009e694:
/* 0x8009e694 */ lui	$t0,0x800e
.L8009e698:
/* 0x8009e698 */ lbu	$v1,132($a1)
.L8009e69c:
/* 0x8009e69c */ addiu	$t0,$t0,3660
.L8009e6a0:
/* 0x8009e6a0 */ sll	$v1,$v1,0x4
.L8009e6a4:
/* 0x8009e6a4 */ addu	$v0,$v0,$v1
.L8009e6a8:
/* 0x8009e6a8 */ addu	$v0,$v0,$t0
.L8009e6ac:
/* 0x8009e6ac */ lw	$s1,0($v0)
.L8009e6b0:
/* 0x8009e6b0 */ addiu	$a0,$zero,-1
.L8009e6b4:
/* 0x8009e6b4 */ beq	$s1,$a0,.L8009e930
.L8009e6b8:
/* 0x8009e6b8 */ lui	$t0,0x800e
.L8009e6bc:
/* 0x8009e6bc */ addiu	$t0,$t0,3660
.L8009e6c0:
/* 0x8009e6c0 */ addu	$v0,$v1,$t0
.L8009e6c4:
/* 0x8009e6c4 */ lw	$v0,12($v0)
.L8009e6c8:
/* 0x8009e6c8 */ sll	$zero,$zero,0x0
.L8009e6cc:
/* 0x8009e6cc */ beq	$v0,$a0,.L8009e6e8
.L8009e6d0:
/* 0x8009e6d0 */ addiu	$s2,$zero,32
.L8009e6d4:
/* 0x8009e6d4 */ lbu	$v1,18($a1)
.L8009e6d8:
/* 0x8009e6d8 */ addiu	$v0,$zero,1
.L8009e6dc:
/* 0x8009e6dc */ bne	$v1,$v0,.L8009e6ec
.L8009e6e0:
/* 0x8009e6e0 */ addu	$s0,$s1,$zero
.L8009e6e4:
/* 0x8009e6e4 */ addiu	$s2,$zero,24
.L8009e6e8:
/* 0x8009e6e8 */ addu	$s0,$s1,$zero
.L8009e6ec:
/* 0x8009e6ec */ jal	0x8003bab8
.L8009e6f0:
/* 0x8009e6f0 */ addu	$a0,$s1,$zero
.L8009e6f4:
/* 0x8009e6f4 */ sra	$v0,$v0,0x1
.L8009e6f8:
/* 0x8009e6f8 */ sll	$v1,$v0,0x2
.L8009e6fc:
/* 0x8009e6fc */ addu	$v1,$v1,$v0
.L8009e700:
/* 0x8009e700 */ lbu	$v0,0($s1)
.L8009e704:
/* 0x8009e704 */ sll	$zero,$zero,0x0
.L8009e708:
/* 0x8009e708 */ beq	$v0,$zero,.L8009e728
.L8009e70c:
/* 0x8009e70c */ sll	$a0,$v1,0x2
.L8009e710:
/* 0x8009e710 */ addiu	$s0,$s0,1
.L8009e714:
/* 0x8009e714 */ lbu	$v0,0($s0)
.L8009e718:
/* 0x8009e718 */ sll	$zero,$zero,0x0
.L8009e71c:
/* 0x8009e71c */ bne	$v0,$zero,.L8009e714
.L8009e720:
/* 0x8009e720 */ addiu	$s0,$s0,1
.L8009e724:
/* 0x8009e724 */ addiu	$s0,$s0,-1
.L8009e728:
/* 0x8009e728 */ lbu	$v1,-2($s0)
.L8009e72c:
/* 0x8009e72c */ addiu	$v0,$zero,129
.L8009e730:
/* 0x8009e730 */ bne	$v1,$v0,.L8009e74c
.L8009e734:
/* 0x8009e734 */ andi	$a1,$s3,0xff
.L8009e738:
/* 0x8009e738 */ lbu	$v1,-1($s0)
.L8009e73c:
/* 0x8009e73c */ addiu	$v0,$zero,66
.L8009e740:
/* 0x8009e740 */ bne	$v1,$v0,.L8009e74c
.L8009e744:
/* 0x8009e744 */ sll	$zero,$zero,0x0
.L8009e748:
/* 0x8009e748 */ addiu	$a0,$a0,-10
.L8009e74c:
/* 0x8009e74c */ sll	$a0,$a0,0x10
.L8009e750:
/* 0x8009e750 */ sra	$a0,$a0,0x11
.L8009e754:
/* 0x8009e754 */ mult	$s2,$a1
.L8009e758:
/* 0x8009e758 */ lui	$v1,0x800e
.L8009e75c:
/* 0x8009e75c */ addiu	$v1,$v1,3632
.L8009e760:
/* 0x8009e760 */ negu	$a2,$a0
.L8009e764:
/* 0x8009e764 */ addu	$a0,$s1,$zero
.L8009e768:
/* 0x8009e768 */ lbu	$v0,64($sp)
.L8009e76c:
/* 0x8009e76c */ lhu	$t0,40($sp)
.L8009e770:
/* 0x8009e770 */ sll	$v0,$v0,0x2
.L8009e774:
/* 0x8009e774 */ addu	$v0,$v0,$v1
.L8009e778:
/* 0x8009e778 */ lhu	$v0,0($v0)
.L8009e77c:
/* 0x8009e77c */ sll	$a1,$a1,0x5
.L8009e780:
/* 0x8009e780 */ addu	$v0,$t0,$v0
.L8009e784:
/* 0x8009e784 */ mflo	$t0
.L8009e788:
/* 0x8009e788 */ addu	$a3,$v0,$t0
.L8009e78c:
/* 0x8009e78c */ lw	$t0,80($sp)
.L8009e790:
/* 0x8009e790 */ sll	$zero,$zero,0x0
.L8009e794:
/* 0x8009e794 */ slti	$v0,$t0,256
.L8009e798:
/* 0x8009e798 */ beq	$v0,$zero,.L8009e7a8
.L8009e79c:
/* 0x8009e79c */ addu	$v1,$a1,$zero
.L8009e7a0:
/* 0x8009e7a0 */ j	.L8009e7b0
.L8009e7a4:
/* 0x8009e7a4 */ addu	$v0,$t0,$a1
.L8009e7a8:
/* 0x8009e7a8 */ addiu	$v0,$v1,-256
.L8009e7ac:
/* 0x8009e7ac */ addu	$v0,$t0,$v0
.L8009e7b0:
/* 0x8009e7b0 */ addu	$s7,$a0,$zero
.L8009e7b4:
/* 0x8009e7b4 */ addu	$s6,$a2,$zero
.L8009e7b8:
/* 0x8009e7b8 */ addu	$s5,$v0,$zero
.L8009e7bc:
/* 0x8009e7bc */ lhu	$s2,72($sp)
.L8009e7c0:
/* 0x8009e7c0 */ lw	$v0,96($sp)
.L8009e7c4:
/* 0x8009e7c4 */ lw	$t0,176($sp)
.L8009e7c8:
/* 0x8009e7c8 */ addu	$s4,$zero,$zero
.L8009e7cc:
/* 0x8009e7cc */ sh	$a3,88($sp)
.L8009e7d0:
/* 0x8009e7d0 */ bgez	$v0,.L8009e7dc
.L8009e7d4:
/* 0x8009e7d4 */ addiu	$s8,$t0,-1
.L8009e7d8:
/* 0x8009e7d8 */ addiu	$v0,$v0,63
.L8009e7dc:
/* 0x8009e7dc */ sra	$v0,$v0,0x6
.L8009e7e0:
/* 0x8009e7e0 */ lw	$t0,96($sp)
.L8009e7e4:
/* 0x8009e7e4 */ sll	$v0,$v0,0x6
.L8009e7e8:
/* 0x8009e7e8 */ subu	$v0,$t0,$v0
.L8009e7ec:
/* 0x8009e7ec */ lhu	$t0,48($sp)
.L8009e7f0:
/* 0x8009e7f0 */ sll	$zero,$zero,0x0
.L8009e7f4:
/* 0x8009e7f4 */ subu	$v0,$t0,$v0
.L8009e7f8:
/* 0x8009e7f8 */ sll	$v0,$v0,0x10
.L8009e7fc:
/* 0x8009e7fc */ lw	$t0,96($sp)
.L8009e800:
/* 0x8009e800 */ sra	$v0,$v0,0x10
.L8009e804:
/* 0x8009e804 */ subu	$v0,$t0,$v0
.L8009e808:
/* 0x8009e808 */ bgez	$v0,.L8009e814
.L8009e80c:
/* 0x8009e80c */ sll	$zero,$zero,0x0
.L8009e810:
/* 0x8009e810 */ addiu	$v0,$v0,3
.L8009e814:
/* 0x8009e814 */ sra	$v0,$v0,0x2
.L8009e818:
/* 0x8009e818 */ lw	$t0,100($sp)
.L8009e81c:
/* 0x8009e81c */ sll	$s0,$v0,0x4
.L8009e820:
/* 0x8009e820 */ sra	$t0,$t0,0x16
.L8009e824:
/* 0x8009e824 */ sw	$t0,104($sp)
.L8009e828:
/* 0x8009e828 */ lbu	$v0,0($s7)
.L8009e82c:
/* 0x8009e82c */ sll	$zero,$zero,0x0
.L8009e830:
/* 0x8009e830 */ beq	$v0,$zero,.L8009e8f0
.L8009e834:
/* 0x8009e834 */ sll	$a0,$s6,0x10
.L8009e838:
/* 0x8009e838 */ sra	$a0,$a0,0x10
.L8009e83c:
/* 0x8009e83c */ addiu	$a2,$zero,16
.L8009e840:
/* 0x8009e840 */ addu	$a3,$a2,$zero
.L8009e844:
/* 0x8009e844 */ sllv	$v0,$s0,$a2
.L8009e848:
/* 0x8009e848 */ lhu	$t0,88($sp)
.L8009e84c:
/* 0x8009e84c */ srav	$v0,$v0,$a2
.L8009e850:
/* 0x8009e850 */ sw	$v0,16($sp)
.L8009e854:
/* 0x8009e854 */ addiu	$v0,$zero,960
.L8009e858:
/* 0x8009e858 */ sw	$v0,24($sp)
.L8009e85c:
/* 0x8009e85c */ addiu	$v0,$zero,112
.L8009e860:
/* 0x8009e860 */ sw	$v0,28($sp)
.L8009e864:
/* 0x8009e864 */ lbu	$v0,56($sp)
.L8009e868:
/* 0x8009e868 */ andi	$s1,$s5,0xff
.L8009e86c:
/* 0x8009e86c */ sw	$s1,20($sp)
.L8009e870:
/* 0x8009e870 */ sw	$s8,36($sp)
.L8009e874:
/* 0x8009e874 */ sll	$a1,$t0,0x10
.L8009e878:
/* 0x8009e878 */ sra	$a1,$a1,0x10
.L8009e87c:
/* 0x8009e87c */ jal	0x80023e9c
.L8009e880:
/* 0x8009e880 */ sw	$v0,32($sp)
.L8009e884:
/* 0x8009e884 */ addiu	$s4,$s4,1
.L8009e888:
/* 0x8009e888 */ addiu	$s7,$s7,2
.L8009e88c:
/* 0x8009e88c */ addiu	$s0,$s0,16
.L8009e890:
/* 0x8009e890 */ andi	$v0,$s0,0xffff
.L8009e894:
/* 0x8009e894 */ sltiu	$v0,$v0,256
.L8009e898:
/* 0x8009e898 */ bne	$v0,$zero,.L8009e828
.L8009e89c:
/* 0x8009e89c */ addiu	$s6,$s6,20
.L8009e8a0:
/* 0x8009e8a0 */ addiu	$s5,$s5,16
.L8009e8a4:
/* 0x8009e8a4 */ andi	$v0,$s5,0xff
.L8009e8a8:
/* 0x8009e8a8 */ sltu	$v0,$v0,$s1
.L8009e8ac:
/* 0x8009e8ac */ beq	$v0,$zero,.L8009e828
.L8009e8b0:
/* 0x8009e8b0 */ addu	$s0,$zero,$zero
.L8009e8b4:
/* 0x8009e8b4 */ andi	$v0,$s2,0x100
.L8009e8b8:
/* 0x8009e8b8 */ sll	$v0,$v0,0x10
.L8009e8bc:
/* 0x8009e8bc */ sra	$v0,$v0,0x14
.L8009e8c0:
/* 0x8009e8c0 */ lw	$t0,104($sp)
.L8009e8c4:
/* 0x8009e8c4 */ andi	$a0,$s2,0x200
.L8009e8c8:
/* 0x8009e8c8 */ sll	$a0,$a0,0x10
.L8009e8cc:
/* 0x8009e8cc */ sra	$a0,$a0,0x10
.L8009e8d0:
/* 0x8009e8d0 */ sll	$a0,$a0,0x2
.L8009e8d4:
/* 0x8009e8d4 */ addu	$a1,$s8,$zero
.L8009e8d8:
/* 0x8009e8d8 */ or	$v0,$v0,$t0
.L8009e8dc:
/* 0x8009e8dc */ jal	0x80023f68
.L8009e8e0:
/* 0x8009e8e0 */ or	$a0,$v0,$a0
.L8009e8e4:
/* 0x8009e8e4 */ addu	$s4,$s0,$zero
.L8009e8e8:
/* 0x8009e8e8 */ j	.L8009e828
.L8009e8ec:
/* 0x8009e8ec */ addiu	$s2,$s2,256
.L8009e8f0:
/* 0x8009e8f0 */ andi	$v0,$s4,0xff
.L8009e8f4:
/* 0x8009e8f4 */ beq	$v0,$zero,.L8009e930
.L8009e8f8:
/* 0x8009e8f8 */ addu	$a1,$s8,$zero
.L8009e8fc:
/* 0x8009e8fc */ andi	$a0,$s2,0x100
.L8009e900:
/* 0x8009e900 */ sll	$a0,$a0,0x10
.L8009e904:
/* 0x8009e904 */ sra	$a0,$a0,0x14
.L8009e908:
/* 0x8009e908 */ lw	$t0,100($sp)
.L8009e90c:
/* 0x8009e90c */ sll	$zero,$zero,0x0
.L8009e910:
/* 0x8009e910 */ sra	$v0,$t0,0x16
.L8009e914:
/* 0x8009e914 */ or	$a0,$a0,$v0
.L8009e918:
/* 0x8009e918 */ andi	$v0,$s2,0x200
.L8009e91c:
/* 0x8009e91c */ sll	$v0,$v0,0x10
.L8009e920:
/* 0x8009e920 */ sra	$v0,$v0,0x10
.L8009e924:
/* 0x8009e924 */ sll	$v0,$v0,0x2
.L8009e928:
/* 0x8009e928 */ jal	0x80023f68
.L8009e92c:
/* 0x8009e92c */ or	$a0,$a0,$v0
.L8009e930:
/* 0x8009e930 */ addiu	$s3,$s3,1
.L8009e934:
/* 0x8009e934 */ andi	$v0,$s3,0xff
.L8009e938:
/* 0x8009e938 */ sltiu	$v0,$v0,4
.L8009e93c:
/* 0x8009e93c */ bne	$v0,$zero,.L8009e688
.L8009e940:
/* 0x8009e940 */ lui	$v0,0x800e
.L8009e944:
/* 0x8009e944 */ lui	$v0,0x800e
.L8009e948:
/* 0x8009e948 */ lw	$v0,2844($v0)
.L8009e94c:
/* 0x8009e94c */ sll	$zero,$zero,0x0
.L8009e950:
/* 0x8009e950 */ lbu	$v1,18($v0)
.L8009e954:
/* 0x8009e954 */ addiu	$v0,$zero,1
.L8009e958:
/* 0x8009e958 */ bne	$v1,$v0,.L8009ea40
.L8009e95c:
/* 0x8009e95c */ addu	$s3,$zero,$zero
.L8009e960:
/* 0x8009e960 */ lui	$s1,0x800b
.L8009e964:
/* 0x8009e964 */ lbu	$s0,56($sp)
.L8009e968:
/* 0x8009e968 */ lw	$t0,176($sp)
.L8009e96c:
/* 0x8009e96c */ srlv	$s2,$s0,$v0
.L8009e970:
/* 0x8009e970 */ lui	$v0,0x800e
.L8009e974:
/* 0x8009e974 */ addiu	$s5,$v0,3628
.L8009e978:
/* 0x8009e978 */ lui	$v0,0x800e
.L8009e97c:
/* 0x8009e97c */ addiu	$s4,$v0,3632
.L8009e980:
/* 0x8009e980 */ lui	$v0,0x800b
.L8009e984:
/* 0x8009e984 */ lw	$v1,-14100($v0)
.L8009e988:
/* 0x8009e988 */ addiu	$v0,$t0,-1
.L8009e98c:
/* 0x8009e98c */ sh	$v0,8($v1)
.L8009e990:
/* 0x8009e990 */ lui	$v0,0x800e
.L8009e994:
/* 0x8009e994 */ lw	$v0,2844($v0)
.L8009e998:
/* 0x8009e998 */ sll	$zero,$zero,0x0
.L8009e99c:
/* 0x8009e99c */ lbu	$v1,14($v0)
.L8009e9a0:
/* 0x8009e9a0 */ andi	$v0,$s3,0xff
.L8009e9a4:
/* 0x8009e9a4 */ bne	$v1,$v0,.L8009e9d4
.L8009e9a8:
/* 0x8009e9a8 */ addu	$a3,$zero,$zero
.L8009e9ac:
/* 0x8009e9ac */ lw	$v1,-14104($s1)
.L8009e9b0:
/* 0x8009e9b0 */ sll	$zero,$zero,0x0
.L8009e9b4:
/* 0x8009e9b4 */ lbu	$v0,144($v1)
.L8009e9b8:
/* 0x8009e9b8 */ sll	$zero,$zero,0x0
.L8009e9bc:
/* 0x8009e9bc */ mult	$v0,$s0
.L8009e9c0:
/* 0x8009e9c0 */ addiu	$a3,$zero,1
.L8009e9c4:
/* 0x8009e9c4 */ mflo	$t0
.L8009e9c8:
/* 0x8009e9c8 */ sra	$v0,$t0,0x7
.L8009e9cc:
/* 0x8009e9cc */ j	.L8009e9e0
.L8009e9d0:
/* 0x8009e9d0 */ sb	$v0,23($v1)
.L8009e9d4:
/* 0x8009e9d4 */ lw	$v0,-14104($s1)
.L8009e9d8:
/* 0x8009e9d8 */ sll	$zero,$zero,0x0
.L8009e9dc:
/* 0x8009e9dc */ sb	$s2,23($v0)
.L8009e9e0:
/* 0x8009e9e0 */ ori	$a3,$a3,0xc000
.L8009e9e4:
/* 0x8009e9e4 */ andi	$a2,$s3,0xff
.L8009e9e8:
/* 0x8009e9e8 */ addiu	$s3,$s3,1
.L8009e9ec:
/* 0x8009e9ec */ sll	$v0,$a2,0x1
.L8009e9f0:
/* 0x8009e9f0 */ addu	$v0,$v0,$s5
.L8009e9f4:
/* 0x8009e9f4 */ lh	$a0,0($v0)
.L8009e9f8:
/* 0x8009e9f8 */ lui	$v0,0x800e
.L8009e9fc:
/* 0x8009e9fc */ addiu	$v0,$v0,3652
.L8009ea00:
/* 0x8009ea00 */ sll	$a2,$a2,0x2
.L8009ea04:
/* 0x8009ea04 */ addu	$a2,$a2,$v0
.L8009ea08:
/* 0x8009ea08 */ lbu	$v1,64($sp)
.L8009ea0c:
/* 0x8009ea0c */ lhu	$t0,40($sp)
.L8009ea10:
/* 0x8009ea10 */ sll	$v1,$v1,0x2
.L8009ea14:
/* 0x8009ea14 */ addu	$v1,$v1,$s4
.L8009ea18:
/* 0x8009ea18 */ lhu	$a1,2($v1)
.L8009ea1c:
/* 0x8009ea1c */ lw	$a2,0($a2)
.L8009ea20:
/* 0x8009ea20 */ addu	$a1,$t0,$a1
.L8009ea24:
/* 0x8009ea24 */ sll	$a1,$a1,0x10
.L8009ea28:
/* 0x8009ea28 */ jal	0x80021470
.L8009ea2c:
/* 0x8009ea2c */ sra	$a1,$a1,0x10
.L8009ea30:
/* 0x8009ea30 */ andi	$v0,$s3,0xff
.L8009ea34:
/* 0x8009ea34 */ sltiu	$v0,$v0,2
.L8009ea38:
/* 0x8009ea38 */ bne	$v0,$zero,.L8009e994
.L8009ea3c:
/* 0x8009ea3c */ lui	$v0,0x800e
.L8009ea40:
/* 0x8009ea40 */ lw	$t0,168($sp)
.L8009ea44:
/* 0x8009ea44 */ addiu	$v0,$zero,-1
.L8009ea48:
/* 0x8009ea48 */ beq	$t0,$v0,.L8009ea84
.L8009ea4c:
/* 0x8009ea4c */ addu	$a0,$t0,$zero
.L8009ea50:
/* 0x8009ea50 */ addiu	$a1,$zero,-230
.L8009ea54:
/* 0x8009ea54 */ addiu	$a3,$zero,460
.L8009ea58:
/* 0x8009ea58 */ lhu	$t0,40($sp)
.L8009ea5c:
/* 0x8009ea5c */ addiu	$v0,$zero,152
.L8009ea60:
/* 0x8009ea60 */ sw	$v0,16($sp)
.L8009ea64:
/* 0x8009ea64 */ lbu	$v0,56($sp)
.L8009ea68:
/* 0x8009ea68 */ addiu	$a2,$t0,50
.L8009ea6c:
/* 0x8009ea6c */ sll	$a2,$a2,0x10
.L8009ea70:
/* 0x8009ea70 */ lw	$t0,176($sp)
.L8009ea74:
/* 0x8009ea74 */ sra	$a2,$a2,0x10
.L8009ea78:
/* 0x8009ea78 */ sw	$v0,20($sp)
.L8009ea7c:
/* 0x8009ea7c */ jal	0x8009eab4
.L8009ea80:
/* 0x8009ea80 */ sw	$t0,24($sp)
.L8009ea84:
/* 0x8009ea84 */ lw	$ra,148($sp)
.L8009ea88:
/* 0x8009ea88 */ lw	$s8,144($sp)
.L8009ea8c:
/* 0x8009ea8c */ lw	$s7,140($sp)
.L8009ea90:
/* 0x8009ea90 */ lw	$s6,136($sp)
.L8009ea94:
/* 0x8009ea94 */ lw	$s5,132($sp)
.L8009ea98:
/* 0x8009ea98 */ lw	$s4,128($sp)
.L8009ea9c:
/* 0x8009ea9c */ lw	$s3,124($sp)
.L8009eaa0:
/* 0x8009eaa0 */ lw	$s2,120($sp)
.L8009eaa4:
/* 0x8009eaa4 */ lw	$s1,116($sp)
.L8009eaa8:
/* 0x8009eaa8 */ lw	$s0,112($sp)
.L8009eaac:
/* 0x8009eaac */ jr	$ra
.L8009eab0:
/* 0x8009eab0 */ addiu	$sp,$sp,152
.size FUN_8009e4cc, .-FUN_8009e4cc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009eab4
.globl FUN_8009eab4
.type FUN_8009eab4, @function
FUN_8009eab4:
.L8009eab4:
/* 0x8009eab4 */ addiu	$sp,$sp,-120
.L8009eab8:
/* 0x8009eab8 */ sw	$s1,84($sp)
.L8009eabc:
/* 0x8009eabc */ addu	$s1,$a0,$zero
.L8009eac0:
/* 0x8009eac0 */ sw	$s3,92($sp)
.L8009eac4:
/* 0x8009eac4 */ addu	$s3,$a1,$zero
.L8009eac8:
/* 0x8009eac8 */ sw	$s5,100($sp)
.L8009eacc:
/* 0x8009eacc */ addu	$s5,$a2,$zero
.L8009ead0:
/* 0x8009ead0 */ sw	$s8,112($sp)
.L8009ead4:
/* 0x8009ead4 */ addiu	$s8,$zero,10
.L8009ead8:
/* 0x8009ead8 */ sw	$s7,108($sp)
.L8009eadc:
/* 0x8009eadc */ addu	$s7,$s8,$zero
.L8009eae0:
/* 0x8009eae0 */ sw	$s0,80($sp)
.L8009eae4:
/* 0x8009eae4 */ addu	$s0,$zero,$zero
.L8009eae8:
/* 0x8009eae8 */ lw	$t9,144($sp)
.L8009eaec:
/* 0x8009eaec */ lw	$v0,136($sp)
.L8009eaf0:
/* 0x8009eaf0 */ addu	$a1,$a1,$a3
.L8009eaf4:
/* 0x8009eaf4 */ sw	$s2,88($sp)
.L8009eaf8:
/* 0x8009eaf8 */ lbu	$s2,140($sp)
.L8009eafc:
/* 0x8009eafc */ addiu	$a1,$a1,-10
.L8009eb00:
/* 0x8009eb00 */ sw	$ra,116($sp)
.L8009eb04:
/* 0x8009eb04 */ sw	$s6,104($sp)
.L8009eb08:
/* 0x8009eb08 */ sw	$s4,96($sp)
.L8009eb0c:
/* 0x8009eb0c */ sh	$a3,40($sp)
.L8009eb10:
/* 0x8009eb10 */ sw	$a1,56($sp)
.L8009eb14:
/* 0x8009eb14 */ addu	$a2,$a2,$v0
.L8009eb18:
/* 0x8009eb18 */ addiu	$a2,$a2,-10
.L8009eb1c:
/* 0x8009eb1c */ sh	$v0,48($sp)
.L8009eb20:
/* 0x8009eb20 */ sw	$a2,60($sp)
.L8009eb24:
/* 0x8009eb24 */ lbu	$s6,12($s1)
.L8009eb28:
/* 0x8009eb28 */ lbu	$s4,13($s1)
.L8009eb2c:
/* 0x8009eb2c */ addiu	$t5,$s6,88
.L8009eb30:
/* 0x8009eb30 */ sw	$t5,64($sp)
.L8009eb34:
/* 0x8009eb34 */ addiu	$t5,$s4,32
.L8009eb38:
/* 0x8009eb38 */ sw	$t5,68($sp)
.L8009eb3c:
/* 0x8009eb3c */ andi	$v1,$s0,0x1
.L8009eb40:
/* 0x8009eb40 */ beq	$v1,$zero,.L8009eb4c
.L8009eb44:
/* 0x8009eb44 */ addu	$a3,$s3,$zero
.L8009eb48:
/* 0x8009eb48 */ lhu	$a3,56($sp)
.L8009eb4c:
/* 0x8009eb4c */ sll	$v0,$s0,0x10
.L8009eb50:
/* 0x8009eb50 */ sra	$v0,$v0,0x10
.L8009eb54:
/* 0x8009eb54 */ slti	$v0,$v0,2
.L8009eb58:
/* 0x8009eb58 */ bne	$v0,$zero,.L8009eb64
.L8009eb5c:
/* 0x8009eb5c */ addu	$t0,$s5,$zero
.L8009eb60:
/* 0x8009eb60 */ lhu	$t0,60($sp)
.L8009eb64:
/* 0x8009eb64 */ beq	$v1,$zero,.L8009eb78
.L8009eb68:
/* 0x8009eb68 */ addu	$a0,$s6,$zero
.L8009eb6c:
/* 0x8009eb6c */ lw	$t5,64($sp)
.L8009eb70:
/* 0x8009eb70 */ sll	$zero,$zero,0x0
.L8009eb74:
/* 0x8009eb74 */ subu	$a0,$t5,$s8
.L8009eb78:
/* 0x8009eb78 */ sll	$v0,$s0,0x10
.L8009eb7c:
/* 0x8009eb7c */ sra	$v0,$v0,0x10
.L8009eb80:
/* 0x8009eb80 */ slti	$v0,$v0,2
.L8009eb84:
/* 0x8009eb84 */ bne	$v0,$zero,.L8009eb98
.L8009eb88:
/* 0x8009eb88 */ addu	$v1,$s4,$zero
.L8009eb8c:
/* 0x8009eb8c */ lw	$t5,68($sp)
.L8009eb90:
/* 0x8009eb90 */ sll	$zero,$zero,0x0
.L8009eb94:
/* 0x8009eb94 */ subu	$v1,$t5,$s7
.L8009eb98:
/* 0x8009eb98 */ andi	$v0,$a0,0xff
.L8009eb9c:
/* 0x8009eb9c */ andi	$v1,$v1,0xff
.L8009eba0:
/* 0x8009eba0 */ sll	$a0,$a3,0x10
.L8009eba4:
/* 0x8009eba4 */ sra	$a0,$a0,0x10
.L8009eba8:
/* 0x8009eba8 */ sll	$a1,$t0,0x10
.L8009ebac:
/* 0x8009ebac */ sra	$a1,$a1,0x10
.L8009ebb0:
/* 0x8009ebb0 */ addu	$a2,$s8,$zero
.L8009ebb4:
/* 0x8009ebb4 */ sw	$v0,16($sp)
.L8009ebb8:
/* 0x8009ebb8 */ sw	$v1,20($sp)
.L8009ebbc:
/* 0x8009ebbc */ lh	$v0,4($s1)
.L8009ebc0:
/* 0x8009ebc0 */ addu	$a3,$s7,$zero
.L8009ebc4:
/* 0x8009ebc4 */ sw	$v0,24($sp)
.L8009ebc8:
/* 0x8009ebc8 */ lh	$v1,6($s1)
.L8009ebcc:
/* 0x8009ebcc */ andi	$v0,$s2,0xff
.L8009ebd0:
/* 0x8009ebd0 */ sw	$v0,32($sp)
.L8009ebd4:
/* 0x8009ebd4 */ sw	$t9,36($sp)
.L8009ebd8:
/* 0x8009ebd8 */ sw	$t9,72($sp)
.L8009ebdc:
/* 0x8009ebdc */ jal	0x80023e9c
.L8009ebe0:
/* 0x8009ebe0 */ sw	$v1,28($sp)
.L8009ebe4:
/* 0x8009ebe4 */ addiu	$v0,$s0,1
.L8009ebe8:
/* 0x8009ebe8 */ addu	$s0,$v0,$zero
.L8009ebec:
/* 0x8009ebec */ sll	$v0,$v0,0x10
.L8009ebf0:
/* 0x8009ebf0 */ sra	$v0,$v0,0x10
.L8009ebf4:
/* 0x8009ebf4 */ slti	$v0,$v0,4
.L8009ebf8:
/* 0x8009ebf8 */ lw	$t9,72($sp)
.L8009ebfc:
/* 0x8009ebfc */ bne	$v0,$zero,.L8009eb40
.L8009ec00:
/* 0x8009ec00 */ andi	$v1,$s0,0x1
.L8009ec04:
/* 0x8009ec04 */ addu	$a1,$t9,$zero
.L8009ec08:
/* 0x8009ec08 */ addu	$s0,$zero,$zero
.L8009ec0c:
/* 0x8009ec0c */ lhu	$a0,2($s1)
.L8009ec10:
/* 0x8009ec10 */ lhu	$v0,0($s1)
.L8009ec14:
/* 0x8009ec14 */ andi	$v1,$a0,0x100
.L8009ec18:
/* 0x8009ec18 */ sll	$v1,$v1,0x10
.L8009ec1c:
/* 0x8009ec1c */ sra	$v1,$v1,0x14
.L8009ec20:
/* 0x8009ec20 */ andi	$v0,$v0,0x3ff
.L8009ec24:
/* 0x8009ec24 */ srl	$v0,$v0,0x6
.L8009ec28:
/* 0x8009ec28 */ or	$v1,$v1,$v0
.L8009ec2c:
/* 0x8009ec2c */ andi	$a0,$a0,0x200
.L8009ec30:
/* 0x8009ec30 */ sll	$a0,$a0,0x10
.L8009ec34:
/* 0x8009ec34 */ sra	$a0,$a0,0x10
.L8009ec38:
/* 0x8009ec38 */ sll	$a0,$a0,0x2
.L8009ec3c:
/* 0x8009ec3c */ jal	0x80023f68
.L8009ec40:
/* 0x8009ec40 */ or	$a0,$v1,$a0
.L8009ec44:
/* 0x8009ec44 */ addiu	$t8,$s6,10
.L8009ec48:
/* 0x8009ec48 */ lui	$t4,0x800e
.L8009ec4c:
/* 0x8009ec4c */ addiu	$s7,$s6,78
.L8009ec50:
/* 0x8009ec50 */ lui	$t2,0xff
.L8009ec54:
/* 0x8009ec54 */ ori	$t2,$t2,0xffff
.L8009ec58:
/* 0x8009ec58 */ lui	$t3,0xff00
.L8009ec5c:
/* 0x8009ec5c */ addiu	$t7,$s5,10
.L8009ec60:
/* 0x8009ec60 */ lhu	$t5,48($sp)
.L8009ec64:
/* 0x8009ec64 */ addiu	$t6,$s4,10
.L8009ec68:
/* 0x8009ec68 */ addu	$v0,$s5,$t5
.L8009ec6c:
/* 0x8009ec6c */ addiu	$s8,$v0,-10
.L8009ec70:
/* 0x8009ec70 */ addiu	$v0,$s5,-10
.L8009ec74:
/* 0x8009ec74 */ addu	$v0,$t5,$v0
.L8009ec78:
/* 0x8009ec78 */ sw	$v0,76($sp)
.L8009ec7c:
/* 0x8009ec7c */ lw	$t9,72($sp)
.L8009ec80:
/* 0x8009ec80 */ addu	$t0,$s5,$zero
.L8009ec84:
/* 0x8009ec84 */ sll	$v0,$s0,0x10
.L8009ec88:
/* 0x8009ec88 */ sra	$a3,$v0,0x10
.L8009ec8c:
/* 0x8009ec8c */ beq	$a3,$zero,.L8009ec98
.L8009ec90:
/* 0x8009ec90 */ addiu	$t1,$s3,10
.L8009ec94:
/* 0x8009ec94 */ addu	$t0,$s8,$zero
.L8009ec98:
/* 0x8009ec98 */ lw	$a2,22064($t4)
.L8009ec9c:
/* 0x8009ec9c */ sll	$zero,$zero,0x0
.L8009eca0:
/* 0x8009eca0 */ addiu	$v0,$a2,40
.L8009eca4:
/* 0x8009eca4 */ sw	$v0,22064($t4)
.L8009eca8:
/* 0x8009eca8 */ addiu	$v0,$zero,9
.L8009ecac:
/* 0x8009ecac */ sb	$v0,3($a2)
.L8009ecb0:
/* 0x8009ecb0 */ addiu	$v0,$zero,44
.L8009ecb4:
/* 0x8009ecb4 */ sb	$v0,7($a2)
.L8009ecb8:
/* 0x8009ecb8 */ lhu	$a0,2($s1)
.L8009ecbc:
/* 0x8009ecbc */ lhu	$v0,0($s1)
.L8009ecc0:
/* 0x8009ecc0 */ andi	$v1,$a0,0x100
.L8009ecc4:
/* 0x8009ecc4 */ sll	$v1,$v1,0x10
.L8009ecc8:
/* 0x8009ecc8 */ sra	$v1,$v1,0x14
.L8009eccc:
/* 0x8009eccc */ andi	$v0,$v0,0x3ff
.L8009ecd0:
/* 0x8009ecd0 */ srl	$v0,$v0,0x6
.L8009ecd4:
/* 0x8009ecd4 */ or	$v1,$v1,$v0
.L8009ecd8:
/* 0x8009ecd8 */ andi	$a0,$a0,0x200
.L8009ecdc:
/* 0x8009ecdc */ sll	$a0,$a0,0x2
.L8009ece0:
/* 0x8009ece0 */ or	$v1,$v1,$a0
.L8009ece4:
/* 0x8009ece4 */ sh	$v1,22($a2)
.L8009ece8:
/* 0x8009ece8 */ lhu	$a1,6($s1)
.L8009ecec:
/* 0x8009ecec */ lhu	$a0,4($s1)
.L8009ecf0:
/* 0x8009ecf0 */ sb	$s2,4($a2)
.L8009ecf4:
/* 0x8009ecf4 */ sb	$s2,5($a2)
.L8009ecf8:
/* 0x8009ecf8 */ sb	$s2,6($a2)
.L8009ecfc:
/* 0x8009ecfc */ sh	$t1,8($a2)
.L8009ed00:
/* 0x8009ed00 */ sh	$t0,10($a2)
.L8009ed04:
/* 0x8009ed04 */ lhu	$t5,40($sp)
.L8009ed08:
/* 0x8009ed08 */ addiu	$v1,$t0,10
.L8009ed0c:
/* 0x8009ed0c */ sh	$v1,26($a2)
.L8009ed10:
/* 0x8009ed10 */ sh	$v1,34($a2)
.L8009ed14:
/* 0x8009ed14 */ lw	$v1,0($a2)
.L8009ed18:
/* 0x8009ed18 */ addiu	$v0,$s3,-10
.L8009ed1c:
/* 0x8009ed1c */ sh	$t0,18($a2)
.L8009ed20:
/* 0x8009ed20 */ sh	$t1,24($a2)
.L8009ed24:
/* 0x8009ed24 */ sb	$t8,12($a2)
.L8009ed28:
/* 0x8009ed28 */ sb	$s7,20($a2)
.L8009ed2c:
/* 0x8009ed2c */ sb	$t8,28($a2)
.L8009ed30:
/* 0x8009ed30 */ sb	$s7,36($a2)
.L8009ed34:
/* 0x8009ed34 */ addu	$v0,$t5,$v0
.L8009ed38:
/* 0x8009ed38 */ sh	$v0,16($a2)
.L8009ed3c:
/* 0x8009ed3c */ sh	$v0,32($a2)
.L8009ed40:
/* 0x8009ed40 */ sll	$v0,$a3,0x1
.L8009ed44:
/* 0x8009ed44 */ addu	$v0,$v0,$a3
.L8009ed48:
/* 0x8009ed48 */ sll	$v0,$v0,0x2
.L8009ed4c:
/* 0x8009ed4c */ subu	$v0,$v0,$a3
.L8009ed50:
/* 0x8009ed50 */ sll	$v0,$v0,0x1
.L8009ed54:
/* 0x8009ed54 */ addu	$v0,$s4,$v0
.L8009ed58:
/* 0x8009ed58 */ sb	$v0,13($a2)
.L8009ed5c:
/* 0x8009ed5c */ sb	$v0,21($a2)
.L8009ed60:
/* 0x8009ed60 */ addiu	$v0,$v0,10
.L8009ed64:
/* 0x8009ed64 */ sll	$a1,$a1,0x6
.L8009ed68:
/* 0x8009ed68 */ srl	$a0,$a0,0x4
.L8009ed6c:
/* 0x8009ed6c */ andi	$a0,$a0,0x3f
.L8009ed70:
/* 0x8009ed70 */ or	$a1,$a1,$a0
.L8009ed74:
/* 0x8009ed74 */ sb	$v0,29($a2)
.L8009ed78:
/* 0x8009ed78 */ sb	$v0,37($a2)
.L8009ed7c:
/* 0x8009ed7c */ lui	$v0,0x800e
.L8009ed80:
/* 0x8009ed80 */ lw	$v0,10984($v0)
.L8009ed84:
/* 0x8009ed84 */ sll	$a0,$t9,0x2
.L8009ed88:
/* 0x8009ed88 */ sh	$a1,14($a2)
.L8009ed8c:
/* 0x8009ed8c */ addu	$a0,$a0,$v0
.L8009ed90:
/* 0x8009ed90 */ lw	$v0,0($a0)
.L8009ed94:
/* 0x8009ed94 */ and	$v1,$v1,$t3
.L8009ed98:
/* 0x8009ed98 */ and	$v0,$v0,$t2
.L8009ed9c:
/* 0x8009ed9c */ or	$v1,$v1,$v0
.L8009eda0:
/* 0x8009eda0 */ sw	$v1,0($a2)
.L8009eda4:
/* 0x8009eda4 */ lw	$v0,0($a0)
.L8009eda8:
/* 0x8009eda8 */ and	$v1,$a2,$t2
.L8009edac:
/* 0x8009edac */ and	$v0,$v0,$t3
.L8009edb0:
/* 0x8009edb0 */ or	$v0,$v0,$v1
.L8009edb4:
/* 0x8009edb4 */ beq	$a3,$zero,.L8009edc8
.L8009edb8:
/* 0x8009edb8 */ sw	$v0,0($a0)
.L8009edbc:
/* 0x8009edbc */ addu	$v0,$s3,$t5
.L8009edc0:
/* 0x8009edc0 */ j	.L8009edcc
.L8009edc4:
/* 0x8009edc4 */ addiu	$a3,$v0,-10
.L8009edc8:
/* 0x8009edc8 */ addu	$a3,$s3,$zero
.L8009edcc:
/* 0x8009edcc */ lw	$a2,22064($t4)
.L8009edd0:
/* 0x8009edd0 */ sll	$zero,$zero,0x0
.L8009edd4:
/* 0x8009edd4 */ addiu	$v0,$a2,40
.L8009edd8:
/* 0x8009edd8 */ sw	$v0,22064($t4)
.L8009eddc:
/* 0x8009eddc */ addiu	$v0,$zero,9
.L8009ede0:
/* 0x8009ede0 */ sb	$v0,3($a2)
.L8009ede4:
/* 0x8009ede4 */ addiu	$v0,$zero,44
.L8009ede8:
/* 0x8009ede8 */ sb	$v0,7($a2)
.L8009edec:
/* 0x8009edec */ lhu	$a0,2($s1)
.L8009edf0:
/* 0x8009edf0 */ lhu	$v0,0($s1)
.L8009edf4:
/* 0x8009edf4 */ andi	$v1,$a0,0x100
.L8009edf8:
/* 0x8009edf8 */ sll	$v1,$v1,0x10
.L8009edfc:
/* 0x8009edfc */ sra	$v1,$v1,0x14
.L8009ee00:
/* 0x8009ee00 */ andi	$v0,$v0,0x3ff
.L8009ee04:
/* 0x8009ee04 */ srl	$v0,$v0,0x6
.L8009ee08:
/* 0x8009ee08 */ or	$v1,$v1,$v0
.L8009ee0c:
/* 0x8009ee0c */ andi	$a0,$a0,0x200
.L8009ee10:
/* 0x8009ee10 */ sll	$a0,$a0,0x2
.L8009ee14:
/* 0x8009ee14 */ or	$v1,$v1,$a0
.L8009ee18:
/* 0x8009ee18 */ sh	$v1,22($a2)
.L8009ee1c:
/* 0x8009ee1c */ lhu	$a1,6($s1)
.L8009ee20:
/* 0x8009ee20 */ lhu	$a0,4($s1)
.L8009ee24:
/* 0x8009ee24 */ addiu	$v0,$a3,10
.L8009ee28:
/* 0x8009ee28 */ sb	$s2,4($a2)
.L8009ee2c:
/* 0x8009ee2c */ sb	$s2,5($a2)
.L8009ee30:
/* 0x8009ee30 */ sb	$s2,6($a2)
.L8009ee34:
/* 0x8009ee34 */ sh	$a3,8($a2)
.L8009ee38:
/* 0x8009ee38 */ sh	$t7,10($a2)
.L8009ee3c:
/* 0x8009ee3c */ sh	$v0,16($a2)
.L8009ee40:
/* 0x8009ee40 */ sh	$t7,18($a2)
.L8009ee44:
/* 0x8009ee44 */ sh	$a3,24($a2)
.L8009ee48:
/* 0x8009ee48 */ sll	$v1,$s0,0x10
.L8009ee4c:
/* 0x8009ee4c */ lhu	$t5,76($sp)
.L8009ee50:
/* 0x8009ee50 */ sra	$v1,$v1,0x10
.L8009ee54:
/* 0x8009ee54 */ sh	$v0,32($a2)
.L8009ee58:
/* 0x8009ee58 */ sll	$v0,$v1,0x2
.L8009ee5c:
/* 0x8009ee5c */ addu	$v0,$v0,$v1
.L8009ee60:
/* 0x8009ee60 */ sll	$v0,$v0,0x3
.L8009ee64:
/* 0x8009ee64 */ subu	$v0,$v0,$v1
.L8009ee68:
/* 0x8009ee68 */ sll	$v0,$v0,0x1
.L8009ee6c:
/* 0x8009ee6c */ addu	$v0,$s6,$v0
.L8009ee70:
/* 0x8009ee70 */ addiu	$v1,$v0,10
.L8009ee74:
/* 0x8009ee74 */ sh	$t5,26($a2)
.L8009ee78:
/* 0x8009ee78 */ lhu	$t5,76($sp)
.L8009ee7c:
/* 0x8009ee7c */ sb	$v0,12($a2)
.L8009ee80:
/* 0x8009ee80 */ sb	$v0,28($a2)
.L8009ee84:
/* 0x8009ee84 */ addiu	$v0,$s4,22
.L8009ee88:
/* 0x8009ee88 */ sll	$a1,$a1,0x6
.L8009ee8c:
/* 0x8009ee8c */ srl	$a0,$a0,0x4
.L8009ee90:
/* 0x8009ee90 */ andi	$a0,$a0,0x3f
.L8009ee94:
/* 0x8009ee94 */ or	$a1,$a1,$a0
.L8009ee98:
/* 0x8009ee98 */ sb	$v0,29($a2)
.L8009ee9c:
/* 0x8009ee9c */ sb	$v0,37($a2)
.L8009eea0:
/* 0x8009eea0 */ lui	$v0,0x800e
.L8009eea4:
/* 0x8009eea4 */ sh	$a1,14($a2)
.L8009eea8:
/* 0x8009eea8 */ sll	$a1,$t9,0x2
.L8009eeac:
/* 0x8009eeac */ sb	$t6,13($a2)
.L8009eeb0:
/* 0x8009eeb0 */ sb	$v1,20($a2)
.L8009eeb4:
/* 0x8009eeb4 */ sb	$t6,21($a2)
.L8009eeb8:
/* 0x8009eeb8 */ sb	$v1,36($a2)
.L8009eebc:
/* 0x8009eebc */ lw	$v0,10984($v0)
.L8009eec0:
/* 0x8009eec0 */ lw	$v1,0($a2)
.L8009eec4:
/* 0x8009eec4 */ addu	$a1,$a1,$v0
.L8009eec8:
/* 0x8009eec8 */ sh	$t5,34($a2)
.L8009eecc:
/* 0x8009eecc */ lw	$v0,0($a1)
.L8009eed0:
/* 0x8009eed0 */ and	$v1,$v1,$t3
.L8009eed4:
/* 0x8009eed4 */ and	$v0,$v0,$t2
.L8009eed8:
/* 0x8009eed8 */ or	$v1,$v1,$v0
.L8009eedc:
/* 0x8009eedc */ sw	$v1,0($a2)
.L8009eee0:
/* 0x8009eee0 */ addiu	$v1,$s0,1
.L8009eee4:
/* 0x8009eee4 */ addu	$s0,$v1,$zero
.L8009eee8:
/* 0x8009eee8 */ and	$v0,$a2,$t2
.L8009eeec:
/* 0x8009eeec */ sll	$v1,$v1,0x10
.L8009eef0:
/* 0x8009eef0 */ sra	$v1,$v1,0x10
.L8009eef4:
/* 0x8009eef4 */ lw	$a0,0($a1)
.L8009eef8:
/* 0x8009eef8 */ slti	$v1,$v1,2
.L8009eefc:
/* 0x8009eefc */ and	$a0,$a0,$t3
.L8009ef00:
/* 0x8009ef00 */ or	$a0,$a0,$v0
.L8009ef04:
/* 0x8009ef04 */ bne	$v1,$zero,.L8009ec80
.L8009ef08:
/* 0x8009ef08 */ sw	$a0,0($a1)
.L8009ef0c:
/* 0x8009ef0c */ addiu	$a0,$s3,10
.L8009ef10:
/* 0x8009ef10 */ sll	$a0,$a0,0x10
.L8009ef14:
/* 0x8009ef14 */ sra	$a0,$a0,0x10
.L8009ef18:
/* 0x8009ef18 */ addiu	$a1,$s5,10
.L8009ef1c:
/* 0x8009ef1c */ sll	$a1,$a1,0x10
.L8009ef20:
/* 0x8009ef20 */ lhu	$t5,40($sp)
.L8009ef24:
/* 0x8009ef24 */ sra	$a1,$a1,0x10
.L8009ef28:
/* 0x8009ef28 */ sw	$zero,16($sp)
.L8009ef2c:
/* 0x8009ef2c */ sw	$zero,20($sp)
.L8009ef30:
/* 0x8009ef30 */ sw	$zero,24($sp)
.L8009ef34:
/* 0x8009ef34 */ sw	$zero,28($sp)
.L8009ef38:
/* 0x8009ef38 */ sw	$t9,32($sp)
.L8009ef3c:
/* 0x8009ef3c */ addiu	$a2,$t5,-20
.L8009ef40:
/* 0x8009ef40 */ sll	$a2,$a2,0x10
.L8009ef44:
/* 0x8009ef44 */ lhu	$t5,48($sp)
.L8009ef48:
/* 0x8009ef48 */ sra	$a2,$a2,0x10
.L8009ef4c:
/* 0x8009ef4c */ addiu	$a3,$t5,-20
.L8009ef50:
/* 0x8009ef50 */ sll	$a3,$a3,0x10
.L8009ef54:
/* 0x8009ef54 */ jal	0x80023dbc
.L8009ef58:
/* 0x8009ef58 */ sra	$a3,$a3,0x10
.L8009ef5c:
/* 0x8009ef5c */ lw	$ra,116($sp)
.L8009ef60:
/* 0x8009ef60 */ lw	$s8,112($sp)
.L8009ef64:
/* 0x8009ef64 */ lw	$s7,108($sp)
.L8009ef68:
/* 0x8009ef68 */ lw	$s6,104($sp)
.L8009ef6c:
/* 0x8009ef6c */ lw	$s5,100($sp)
.L8009ef70:
/* 0x8009ef70 */ lw	$s4,96($sp)
.L8009ef74:
/* 0x8009ef74 */ lw	$s3,92($sp)
.L8009ef78:
/* 0x8009ef78 */ lw	$s2,88($sp)
.L8009ef7c:
/* 0x8009ef7c */ lw	$s1,84($sp)
.L8009ef80:
/* 0x8009ef80 */ lw	$s0,80($sp)
.L8009ef84:
/* 0x8009ef84 */ jr	$ra
.L8009ef88:
/* 0x8009ef88 */ addiu	$sp,$sp,120
.size FUN_8009eab4, .-FUN_8009eab4
