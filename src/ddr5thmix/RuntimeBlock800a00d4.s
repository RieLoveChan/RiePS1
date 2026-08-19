.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a00d4
.globl FUN_800a00d4
.type FUN_800a00d4, @function
FUN_800a00d4:
.L800a00d4:
/* 0x800a00d4 */ lui	$v0,0x800b
.L800a00d8:
/* 0x800a00d8 */ lw	$a1,-14100($v0)
.L800a00dc:
/* 0x800a00dc */ addiu	$sp,$sp,-32
.L800a00e0:
/* 0x800a00e0 */ sw	$s1,20($sp)
.L800a00e4:
/* 0x800a00e4 */ addu	$s1,$zero,$zero
.L800a00e8:
/* 0x800a00e8 */ sw	$ra,24($sp)
.L800a00ec:
/* 0x800a00ec */ sw	$s0,16($sp)
.L800a00f0:
/* 0x800a00f0 */ lbu	$v1,64($a1)
.L800a00f4:
/* 0x800a00f4 */ sll	$zero,$zero,0x0
.L800a00f8:
/* 0x800a00f8 */ sltiu	$v0,$v1,12
.L800a00fc:
/* 0x800a00fc */ beq	$v0,$zero,.L800a0620
.L800a0100:
/* 0x800a0100 */ addu	$a0,$s1,$zero
.L800a0104:
/* 0x800a0104 */ lui	$v0,0x8002
.L800a0108:
/* 0x800a0108 */ addiu	$v0,$v0,796
.L800a010c:
/* 0x800a010c */ sll	$v1,$v1,0x2
.L800a0110:
/* 0x800a0110 */ addu	$v1,$v1,$v0
.L800a0114:
/* 0x800a0114 */ lw	$v0,0($v1)
.L800a0118:
/* 0x800a0118 */ sll	$zero,$zero,0x0
.L800a011c:
/* 0x800a011c */ jr	$v0
.L800a0120:
/* 0x800a0120 */ sll	$zero,$zero,0x0
.L800a0124:
/* 0x800a0124 */ lui	$s0,0x800b
.L800a0128:
/* 0x800a0128 */ lw	$v0,-14100($s0)
.L800a012c:
/* 0x800a012c */ jal	0x8009fe58
.L800a0130:
/* 0x800a0130 */ sb	$zero,0($v0)
.L800a0134:
/* 0x800a0134 */ lw	$v1,-14100($s0)
.L800a0138:
/* 0x800a0138 */ addiu	$v0,$zero,1
.L800a013c:
/* 0x800a013c */ sb	$v0,64($v1)
.L800a0140:
/* 0x800a0140 */ lui	$v0,0x800e
.L800a0144:
/* 0x800a0144 */ sb	$zero,5528($v0)
.L800a0148:
/* 0x800a0148 */ lui	$v0,0x800b
.L800a014c:
/* 0x800a014c */ lw	$v0,-14100($v0)
.L800a0150:
/* 0x800a0150 */ sll	$zero,$zero,0x0
.L800a0154:
/* 0x800a0154 */ lbu	$v1,81($v0)
.L800a0158:
/* 0x800a0158 */ sll	$zero,$zero,0x0
.L800a015c:
/* 0x800a015c */ sll	$v0,$v1,0x3
.L800a0160:
/* 0x800a0160 */ subu	$v0,$v0,$v1
.L800a0164:
/* 0x800a0164 */ sll	$v0,$v0,0x2
.L800a0168:
/* 0x800a0168 */ lui	$v1,0x800e
.L800a016c:
/* 0x800a016c */ addiu	$v1,$v1,5136
.L800a0170:
/* 0x800a0170 */ addu	$v0,$v0,$v1
.L800a0174:
/* 0x800a0174 */ lbu	$v0,25($v0)
.L800a0178:
/* 0x800a0178 */ lui	$v1,0x8012
.L800a017c:
/* 0x800a017c */ sw	$zero,-30380($v1)
.L800a0180:
/* 0x800a0180 */ lui	$v1,0x8012
.L800a0184:
/* 0x800a0184 */ xori	$v0,$v0,0x1
.L800a0188:
/* 0x800a0188 */ sltiu	$v0,$v0,1
.L800a018c:
/* 0x800a018c */ jal	0x8009fe58
.L800a0190:
/* 0x800a0190 */ sb	$v0,-30376($v1)
.L800a0194:
/* 0x800a0194 */ jal	0x800a1160
.L800a0198:
/* 0x800a0198 */ sll	$zero,$zero,0x0
.L800a019c:
/* 0x800a019c */ j	.L800a062c
.L800a01a0:
/* 0x800a01a0 */ addu	$v0,$s1,$zero
.L800a01a4:
/* 0x800a01a4 */ lui	$v1,0x8012
.L800a01a8:
/* 0x800a01a8 */ lw	$v0,-30380($v1)
.L800a01ac:
/* 0x800a01ac */ sll	$zero,$zero,0x0
.L800a01b0:
/* 0x800a01b0 */ addiu	$a0,$v0,1
.L800a01b4:
/* 0x800a01b4 */ lui	$v0,0x8012
.L800a01b8:
/* 0x800a01b8 */ sw	$a0,-30380($v1)
.L800a01bc:
/* 0x800a01bc */ lbu	$v1,-30376($v0)
.L800a01c0:
/* 0x800a01c0 */ addiu	$v0,$zero,1
.L800a01c4:
/* 0x800a01c4 */ beq	$v1,$v0,.L800a01d4
.L800a01c8:
/* 0x800a01c8 */ sltiu	$v0,$a0,241
.L800a01cc:
/* 0x800a01cc */ bne	$v0,$zero,.L800a0228
.L800a01d0:
/* 0x800a01d0 */ sll	$zero,$zero,0x0
.L800a01d4:
/* 0x800a01d4 */ lui	$v0,0x800b
.L800a01d8:
/* 0x800a01d8 */ lui	$a0,0x800b
.L800a01dc:
/* 0x800a01dc */ lw	$v0,-14100($v0)
.L800a01e0:
/* 0x800a01e0 */ lw	$v1,-14104($a0)
.L800a01e4:
/* 0x800a01e4 */ addiu	$a1,$zero,190
.L800a01e8:
/* 0x800a01e8 */ sh	$zero,8($v0)
.L800a01ec:
/* 0x800a01ec */ lbu	$v0,144($v1)
.L800a01f0:
/* 0x800a01f0 */ lui	$a2,0x8002
.L800a01f4:
/* 0x800a01f4 */ sb	$v0,23($v1)
.L800a01f8:
/* 0x800a01f8 */ lw	$v0,-14104($a0)
.L800a01fc:
/* 0x800a01fc */ addiu	$a2,$a2,780
.L800a0200:
/* 0x800a0200 */ lhu	$a0,12($v0)
.L800a0204:
/* 0x800a0204 */ ori	$a3,$zero,0xc100
.L800a0208:
/* 0x800a0208 */ negu	$a0,$a0
.L800a020c:
/* 0x800a020c */ srl	$v0,$a0,0x1f
.L800a0210:
/* 0x800a0210 */ addu	$a0,$a0,$v0
.L800a0214:
/* 0x800a0214 */ sra	$a0,$a0,0x1
.L800a0218:
/* 0x800a0218 */ addiu	$a0,$a0,24
.L800a021c:
/* 0x800a021c */ sll	$a0,$a0,0x10
.L800a0220:
/* 0x800a0220 */ jal	0x80021470
.L800a0224:
/* 0x800a0224 */ sra	$a0,$a0,0x10
.L800a0228:
/* 0x800a0228 */ jal	0x8009fe58
.L800a022c:
/* 0x800a022c */ sll	$zero,$zero,0x0
.L800a0230:
/* 0x800a0230 */ jal	0x800a1208
.L800a0234:
/* 0x800a0234 */ sll	$zero,$zero,0x0
.L800a0238:
/* 0x800a0238 */ j	.L800a062c
.L800a023c:
/* 0x800a023c */ addu	$v0,$s1,$zero
.L800a0240:
/* 0x800a0240 */ lui	$v1,0x8012
.L800a0244:
/* 0x800a0244 */ lw	$v0,-30380($v1)
.L800a0248:
/* 0x800a0248 */ sll	$zero,$zero,0x0
.L800a024c:
/* 0x800a024c */ addiu	$a0,$v0,1
.L800a0250:
/* 0x800a0250 */ lui	$v0,0x8012
.L800a0254:
/* 0x800a0254 */ sw	$a0,-30380($v1)
.L800a0258:
/* 0x800a0258 */ lbu	$v1,-30376($v0)
.L800a025c:
/* 0x800a025c */ addiu	$v0,$zero,1
.L800a0260:
/* 0x800a0260 */ beq	$v1,$v0,.L800a0270
.L800a0264:
/* 0x800a0264 */ sltiu	$v0,$a0,241
.L800a0268:
/* 0x800a0268 */ bne	$v0,$zero,.L800a02c4
.L800a026c:
/* 0x800a026c */ sll	$zero,$zero,0x0
.L800a0270:
/* 0x800a0270 */ lui	$v0,0x800b
.L800a0274:
/* 0x800a0274 */ lui	$a0,0x800b
.L800a0278:
/* 0x800a0278 */ lw	$v0,-14100($v0)
.L800a027c:
/* 0x800a027c */ lw	$v1,-14104($a0)
.L800a0280:
/* 0x800a0280 */ addiu	$a1,$zero,190
.L800a0284:
/* 0x800a0284 */ sh	$zero,8($v0)
.L800a0288:
/* 0x800a0288 */ lbu	$v0,144($v1)
.L800a028c:
/* 0x800a028c */ lui	$a2,0x8002
.L800a0290:
/* 0x800a0290 */ sb	$v0,23($v1)
.L800a0294:
/* 0x800a0294 */ lw	$v0,-14104($a0)
.L800a0298:
/* 0x800a0298 */ addiu	$a2,$a2,780
.L800a029c:
/* 0x800a029c */ lhu	$a0,12($v0)
.L800a02a0:
/* 0x800a02a0 */ ori	$a3,$zero,0xc100
.L800a02a4:
/* 0x800a02a4 */ negu	$a0,$a0
.L800a02a8:
/* 0x800a02a8 */ srl	$v0,$a0,0x1f
.L800a02ac:
/* 0x800a02ac */ addu	$a0,$a0,$v0
.L800a02b0:
/* 0x800a02b0 */ sra	$a0,$a0,0x1
.L800a02b4:
/* 0x800a02b4 */ addiu	$a0,$a0,24
.L800a02b8:
/* 0x800a02b8 */ sll	$a0,$a0,0x10
.L800a02bc:
/* 0x800a02bc */ jal	0x80021470
.L800a02c0:
/* 0x800a02c0 */ sra	$a0,$a0,0x10
.L800a02c4:
/* 0x800a02c4 */ jal	0x8009fe58
.L800a02c8:
/* 0x800a02c8 */ sll	$zero,$zero,0x0
.L800a02cc:
/* 0x800a02cc */ jal	0x800a12e0
.L800a02d0:
/* 0x800a02d0 */ sll	$zero,$zero,0x0
.L800a02d4:
/* 0x800a02d4 */ j	.L800a062c
.L800a02d8:
/* 0x800a02d8 */ addu	$v0,$s1,$zero
.L800a02dc:
/* 0x800a02dc */ lui	$v1,0x8012
.L800a02e0:
/* 0x800a02e0 */ lw	$v0,-30380($v1)
.L800a02e4:
/* 0x800a02e4 */ sll	$zero,$zero,0x0
.L800a02e8:
/* 0x800a02e8 */ addiu	$a0,$v0,1
.L800a02ec:
/* 0x800a02ec */ lui	$v0,0x8012
.L800a02f0:
/* 0x800a02f0 */ sw	$a0,-30380($v1)
.L800a02f4:
/* 0x800a02f4 */ lbu	$v1,-30376($v0)
.L800a02f8:
/* 0x800a02f8 */ addiu	$v0,$zero,1
.L800a02fc:
/* 0x800a02fc */ beq	$v1,$v0,.L800a030c
.L800a0300:
/* 0x800a0300 */ sltiu	$v0,$a0,241
.L800a0304:
/* 0x800a0304 */ bne	$v0,$zero,.L800a0360
.L800a0308:
/* 0x800a0308 */ sll	$zero,$zero,0x0
.L800a030c:
/* 0x800a030c */ lui	$v0,0x800b
.L800a0310:
/* 0x800a0310 */ lui	$a0,0x800b
.L800a0314:
/* 0x800a0314 */ lw	$v0,-14100($v0)
.L800a0318:
/* 0x800a0318 */ lw	$v1,-14104($a0)
.L800a031c:
/* 0x800a031c */ addiu	$a1,$zero,190
.L800a0320:
/* 0x800a0320 */ sh	$zero,8($v0)
.L800a0324:
/* 0x800a0324 */ lbu	$v0,144($v1)
.L800a0328:
/* 0x800a0328 */ lui	$a2,0x8002
.L800a032c:
/* 0x800a032c */ sb	$v0,23($v1)
.L800a0330:
/* 0x800a0330 */ lw	$v0,-14104($a0)
.L800a0334:
/* 0x800a0334 */ addiu	$a2,$a2,780
.L800a0338:
/* 0x800a0338 */ lhu	$a0,12($v0)
.L800a033c:
/* 0x800a033c */ ori	$a3,$zero,0xc100
.L800a0340:
/* 0x800a0340 */ negu	$a0,$a0
.L800a0344:
/* 0x800a0344 */ srl	$v0,$a0,0x1f
.L800a0348:
/* 0x800a0348 */ addu	$a0,$a0,$v0
.L800a034c:
/* 0x800a034c */ sra	$a0,$a0,0x1
.L800a0350:
/* 0x800a0350 */ addiu	$a0,$a0,24
.L800a0354:
/* 0x800a0354 */ sll	$a0,$a0,0x10
.L800a0358:
/* 0x800a0358 */ jal	0x80021470
.L800a035c:
/* 0x800a035c */ sra	$a0,$a0,0x10
.L800a0360:
/* 0x800a0360 */ jal	0x8009fe58
.L800a0364:
/* 0x800a0364 */ sll	$zero,$zero,0x0
.L800a0368:
/* 0x800a0368 */ jal	0x800a10bc
.L800a036c:
/* 0x800a036c */ sll	$zero,$zero,0x0
.L800a0370:
/* 0x800a0370 */ j	.L800a062c
.L800a0374:
/* 0x800a0374 */ addu	$v0,$s1,$zero
.L800a0378:
/* 0x800a0378 */ lui	$v1,0x8012
.L800a037c:
/* 0x800a037c */ lw	$v0,-30380($v1)
.L800a0380:
/* 0x800a0380 */ sll	$zero,$zero,0x0
.L800a0384:
/* 0x800a0384 */ addiu	$a0,$v0,1
.L800a0388:
/* 0x800a0388 */ lui	$v0,0x8012
.L800a038c:
/* 0x800a038c */ sw	$a0,-30380($v1)
.L800a0390:
/* 0x800a0390 */ lbu	$v1,-30376($v0)
.L800a0394:
/* 0x800a0394 */ addiu	$v0,$zero,1
.L800a0398:
/* 0x800a0398 */ beq	$v1,$v0,.L800a03a8
.L800a039c:
/* 0x800a039c */ sltiu	$v0,$a0,241
.L800a03a0:
/* 0x800a03a0 */ bne	$v0,$zero,.L800a03fc
.L800a03a4:
/* 0x800a03a4 */ sll	$zero,$zero,0x0
.L800a03a8:
/* 0x800a03a8 */ lui	$v0,0x800b
.L800a03ac:
/* 0x800a03ac */ lui	$a0,0x800b
.L800a03b0:
/* 0x800a03b0 */ lw	$v0,-14100($v0)
.L800a03b4:
/* 0x800a03b4 */ lw	$v1,-14104($a0)
.L800a03b8:
/* 0x800a03b8 */ addiu	$a1,$zero,190
.L800a03bc:
/* 0x800a03bc */ sh	$zero,8($v0)
.L800a03c0:
/* 0x800a03c0 */ lbu	$v0,144($v1)
.L800a03c4:
/* 0x800a03c4 */ lui	$a2,0x8002
.L800a03c8:
/* 0x800a03c8 */ sb	$v0,23($v1)
.L800a03cc:
/* 0x800a03cc */ lw	$v0,-14104($a0)
.L800a03d0:
/* 0x800a03d0 */ addiu	$a2,$a2,780
.L800a03d4:
/* 0x800a03d4 */ lhu	$a0,12($v0)
.L800a03d8:
/* 0x800a03d8 */ ori	$a3,$zero,0xc100
.L800a03dc:
/* 0x800a03dc */ negu	$a0,$a0
.L800a03e0:
/* 0x800a03e0 */ srl	$v0,$a0,0x1f
.L800a03e4:
/* 0x800a03e4 */ addu	$a0,$a0,$v0
.L800a03e8:
/* 0x800a03e8 */ sra	$a0,$a0,0x1
.L800a03ec:
/* 0x800a03ec */ addiu	$a0,$a0,24
.L800a03f0:
/* 0x800a03f0 */ sll	$a0,$a0,0x10
.L800a03f4:
/* 0x800a03f4 */ jal	0x80021470
.L800a03f8:
/* 0x800a03f8 */ sra	$a0,$a0,0x10
.L800a03fc:
/* 0x800a03fc */ jal	0x8009fe58
.L800a0400:
/* 0x800a0400 */ sll	$zero,$zero,0x0
.L800a0404:
/* 0x800a0404 */ jal	0x800a076c
.L800a0408:
/* 0x800a0408 */ sll	$zero,$zero,0x0
.L800a040c:
/* 0x800a040c */ j	.L800a062c
.L800a0410:
/* 0x800a0410 */ addu	$v0,$s1,$zero
.L800a0414:
/* 0x800a0414 */ lui	$v1,0x8012
.L800a0418:
/* 0x800a0418 */ lw	$v0,-30380($v1)
.L800a041c:
/* 0x800a041c */ sll	$zero,$zero,0x0
.L800a0420:
/* 0x800a0420 */ addiu	$a0,$v0,1
.L800a0424:
/* 0x800a0424 */ lui	$v0,0x8012
.L800a0428:
/* 0x800a0428 */ sw	$a0,-30380($v1)
.L800a042c:
/* 0x800a042c */ lbu	$v1,-30376($v0)
.L800a0430:
/* 0x800a0430 */ addiu	$v0,$zero,1
.L800a0434:
/* 0x800a0434 */ beq	$v1,$v0,.L800a0444
.L800a0438:
/* 0x800a0438 */ sltiu	$v0,$a0,241
.L800a043c:
/* 0x800a043c */ bne	$v0,$zero,.L800a0498
.L800a0440:
/* 0x800a0440 */ sll	$zero,$zero,0x0
.L800a0444:
/* 0x800a0444 */ lui	$v0,0x800b
.L800a0448:
/* 0x800a0448 */ lui	$a0,0x800b
.L800a044c:
/* 0x800a044c */ lw	$v0,-14100($v0)
.L800a0450:
/* 0x800a0450 */ lw	$v1,-14104($a0)
.L800a0454:
/* 0x800a0454 */ addiu	$a1,$zero,190
.L800a0458:
/* 0x800a0458 */ sh	$zero,8($v0)
.L800a045c:
/* 0x800a045c */ lbu	$v0,144($v1)
.L800a0460:
/* 0x800a0460 */ lui	$a2,0x8002
.L800a0464:
/* 0x800a0464 */ sb	$v0,23($v1)
.L800a0468:
/* 0x800a0468 */ lw	$v0,-14104($a0)
.L800a046c:
/* 0x800a046c */ addiu	$a2,$a2,780
.L800a0470:
/* 0x800a0470 */ lhu	$a0,12($v0)
.L800a0474:
/* 0x800a0474 */ ori	$a3,$zero,0xc100
.L800a0478:
/* 0x800a0478 */ negu	$a0,$a0
.L800a047c:
/* 0x800a047c */ srl	$v0,$a0,0x1f
.L800a0480:
/* 0x800a0480 */ addu	$a0,$a0,$v0
.L800a0484:
/* 0x800a0484 */ sra	$a0,$a0,0x1
.L800a0488:
/* 0x800a0488 */ addiu	$a0,$a0,24
.L800a048c:
/* 0x800a048c */ sll	$a0,$a0,0x10
.L800a0490:
/* 0x800a0490 */ jal	0x80021470
.L800a0494:
/* 0x800a0494 */ sra	$a0,$a0,0x10
.L800a0498:
/* 0x800a0498 */ jal	0x8009fe58
.L800a049c:
/* 0x800a049c */ sll	$zero,$zero,0x0
.L800a04a0:
/* 0x800a04a0 */ jal	0x800a13a8
.L800a04a4:
/* 0x800a04a4 */ sll	$zero,$zero,0x0
.L800a04a8:
/* 0x800a04a8 */ j	.L800a062c
.L800a04ac:
/* 0x800a04ac */ addu	$v0,$s1,$zero
.L800a04b0:
/* 0x800a04b0 */ jal	0x8009fe58
.L800a04b4:
/* 0x800a04b4 */ sll	$zero,$zero,0x0
.L800a04b8:
/* 0x800a04b8 */ jal	0x800a0930
.L800a04bc:
/* 0x800a04bc */ sll	$zero,$zero,0x0
.L800a04c0:
/* 0x800a04c0 */ j	.L800a062c
.L800a04c4:
/* 0x800a04c4 */ addu	$v0,$s1,$zero
.L800a04c8:
/* 0x800a04c8 */ jal	0x8009fe58
.L800a04cc:
/* 0x800a04cc */ sll	$zero,$zero,0x0
.L800a04d0:
/* 0x800a04d0 */ jal	0x800a1410
.L800a04d4:
/* 0x800a04d4 */ sll	$zero,$zero,0x0
.L800a04d8:
/* 0x800a04d8 */ j	.L800a062c
.L800a04dc:
/* 0x800a04dc */ addu	$v0,$s1,$zero
.L800a04e0:
/* 0x800a04e0 */ lui	$v0,0x800b
.L800a04e4:
/* 0x800a04e4 */ lw	$v0,-14100($v0)
.L800a04e8:
/* 0x800a04e8 */ sll	$zero,$zero,0x0
.L800a04ec:
/* 0x800a04ec */ lbu	$v1,81($v0)
.L800a04f0:
/* 0x800a04f0 */ sll	$zero,$zero,0x0
.L800a04f4:
/* 0x800a04f4 */ sltiu	$v0,$v1,14
.L800a04f8:
/* 0x800a04f8 */ beq	$v0,$zero,.L800a05cc
.L800a04fc:
/* 0x800a04fc */ lui	$v0,0x8002
.L800a0500:
/* 0x800a0500 */ addiu	$v0,$v0,844
.L800a0504:
/* 0x800a0504 */ sll	$v1,$v1,0x2
.L800a0508:
/* 0x800a0508 */ addu	$v1,$v1,$v0
.L800a050c:
/* 0x800a050c */ lw	$v0,0($v1)
.L800a0510:
/* 0x800a0510 */ sll	$zero,$zero,0x0
.L800a0514:
/* 0x800a0514 */ jr	$v0
.L800a0518:
/* 0x800a0518 */ sll	$zero,$zero,0x0
.L800a051c:
/* 0x800a051c */ jal	0x80175618
.L800a0520:
/* 0x800a0520 */ sll	$zero,$zero,0x0
.L800a0524:
/* 0x800a0524 */ j	.L800a05dc
.L800a0528:
/* 0x800a0528 */ addu	$a0,$v0,$zero
.L800a052c:
/* 0x800a052c */ jal	0x80175844
.L800a0530:
/* 0x800a0530 */ sll	$zero,$zero,0x0
.L800a0534:
/* 0x800a0534 */ j	.L800a05dc
.L800a0538:
/* 0x800a0538 */ addu	$a0,$v0,$zero
.L800a053c:
/* 0x800a053c */ jal	0x8017568c
.L800a0540:
/* 0x800a0540 */ sll	$zero,$zero,0x0
.L800a0544:
/* 0x800a0544 */ j	.L800a05dc
.L800a0548:
/* 0x800a0548 */ addu	$a0,$v0,$zero
.L800a054c:
/* 0x800a054c */ jal	0x80174de4
.L800a0550:
/* 0x800a0550 */ sll	$zero,$zero,0x0
.L800a0554:
/* 0x800a0554 */ j	.L800a05dc
.L800a0558:
/* 0x800a0558 */ addu	$a0,$v0,$zero
.L800a055c:
/* 0x800a055c */ jal	0x801322b0
.L800a0560:
/* 0x800a0560 */ sll	$zero,$zero,0x0
.L800a0564:
/* 0x800a0564 */ j	.L800a05dc
.L800a0568:
/* 0x800a0568 */ addu	$a0,$v0,$zero
.L800a056c:
/* 0x800a056c */ jal	0x80130de0
.L800a0570:
/* 0x800a0570 */ sll	$zero,$zero,0x0
.L800a0574:
/* 0x800a0574 */ j	.L800a05dc
.L800a0578:
/* 0x800a0578 */ addu	$a0,$v0,$zero
.L800a057c:
/* 0x800a057c */ jal	0x801305b0
.L800a0580:
/* 0x800a0580 */ sll	$zero,$zero,0x0
.L800a0584:
/* 0x800a0584 */ j	.L800a05dc
.L800a0588:
/* 0x800a0588 */ addu	$a0,$v0,$zero
.L800a058c:
/* 0x800a058c */ jal	0x8017d904
.L800a0590:
/* 0x800a0590 */ sll	$zero,$zero,0x0
.L800a0594:
/* 0x800a0594 */ j	.L800a05dc
.L800a0598:
/* 0x800a0598 */ addu	$a0,$v0,$zero
.L800a059c:
/* 0x800a059c */ jal	0x801306a0
.L800a05a0:
/* 0x800a05a0 */ sll	$zero,$zero,0x0
.L800a05a4:
/* 0x800a05a4 */ j	.L800a05dc
.L800a05a8:
/* 0x800a05a8 */ addu	$a0,$v0,$zero
.L800a05ac:
/* 0x800a05ac */ jal	0x80132660
.L800a05b0:
/* 0x800a05b0 */ sll	$zero,$zero,0x0
.L800a05b4:
/* 0x800a05b4 */ j	.L800a05dc
.L800a05b8:
/* 0x800a05b8 */ addu	$a0,$v0,$zero
.L800a05bc:
/* 0x800a05bc */ jal	0x8013da68
.L800a05c0:
/* 0x800a05c0 */ sll	$zero,$zero,0x0
.L800a05c4:
/* 0x800a05c4 */ j	.L800a05dc
.L800a05c8:
/* 0x800a05c8 */ addu	$a0,$v0,$zero
.L800a05cc:
/* 0x800a05cc */ lui	$v0,0x800b
.L800a05d0:
/* 0x800a05d0 */ lw	$v1,-14100($v0)
.L800a05d4:
/* 0x800a05d4 */ addiu	$v0,$zero,1
.L800a05d8:
/* 0x800a05d8 */ sb	$v0,0($v1)
.L800a05dc:
/* 0x800a05dc */ blez	$a0,.L800a0628
.L800a05e0:
/* 0x800a05e0 */ lui	$v0,0x800b
.L800a05e4:
/* 0x800a05e4 */ lw	$v1,-14100($v0)
.L800a05e8:
/* 0x800a05e8 */ addiu	$v0,$zero,10
.L800a05ec:
/* 0x800a05ec */ j	.L800a0614
.L800a05f0:
/* 0x800a05f0 */ sb	$v0,64($v1)
.L800a05f4:
/* 0x800a05f4 */ jal	0x800a0a2c
.L800a05f8:
/* 0x800a05f8 */ sll	$zero,$zero,0x0
.L800a05fc:
/* 0x800a05fc */ j	.L800a062c
.L800a0600:
/* 0x800a0600 */ addu	$v0,$s1,$zero
.L800a0604:
/* 0x800a0604 */ lui	$v0,0x800b
.L800a0608:
/* 0x800a0608 */ lw	$v0,-14100($v0)
.L800a060c:
/* 0x800a060c */ addiu	$s1,$zero,1
.L800a0610:
/* 0x800a0610 */ sb	$zero,64($v0)
.L800a0614:
/* 0x800a0614 */ lui	$v0,0x800e
.L800a0618:
/* 0x800a0618 */ j	.L800a0628
.L800a061c:
/* 0x800a061c */ sb	$zero,5528($v0)
.L800a0620:
/* 0x800a0620 */ addiu	$v0,$zero,1
.L800a0624:
/* 0x800a0624 */ sb	$v0,0($a1)
.L800a0628:
/* 0x800a0628 */ addu	$v0,$s1,$zero
.L800a062c:
/* 0x800a062c */ lw	$ra,24($sp)
.L800a0630:
/* 0x800a0630 */ lw	$s1,20($sp)
.L800a0634:
/* 0x800a0634 */ lw	$s0,16($sp)
.L800a0638:
/* 0x800a0638 */ jr	$ra
.L800a063c:
/* 0x800a063c */ addiu	$sp,$sp,32
.size FUN_800a00d4, .-FUN_800a00d4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0640
.globl FUN_800a0640
.type FUN_800a0640, @function
FUN_800a0640:
.L800a0640:
/* 0x800a0640 */ addu	$a2,$zero,$zero
.L800a0644:
/* 0x800a0644 */ lui	$v0,0x800b
.L800a0648:
/* 0x800a0648 */ lui	$v1,0x800f
.L800a064c:
/* 0x800a064c */ lw	$v0,-14100($v0)
.L800a0650:
/* 0x800a0650 */ addiu	$t0,$v1,10504
.L800a0654:
/* 0x800a0654 */ lbu	$v0,81($v0)
.L800a0658:
/* 0x800a0658 */ addiu	$a3,$zero,-1
.L800a065c:
/* 0x800a065c */ sll	$v1,$v0,0x3
.L800a0660:
/* 0x800a0660 */ subu	$v1,$v1,$v0
.L800a0664:
/* 0x800a0664 */ sll	$v1,$v1,0x2
.L800a0668:
/* 0x800a0668 */ lui	$v0,0x800e
.L800a066c:
/* 0x800a066c */ addiu	$v0,$v0,5136
.L800a0670:
/* 0x800a0670 */ addu	$v1,$v1,$v0
.L800a0674:
/* 0x800a0674 */ addiu	$v0,$zero,1
.L800a0678:
/* 0x800a0678 */ beq	$a2,$v0,.L800a06e4
.L800a067c:
/* 0x800a067c */ slti	$v0,$a2,2
.L800a0680:
/* 0x800a0680 */ beq	$v0,$zero,.L800a0698
.L800a0684:
/* 0x800a0684 */ addiu	$v0,$zero,2
.L800a0688:
/* 0x800a0688 */ beq	$a2,$zero,.L800a06a8
.L800a068c:
/* 0x800a068c */ sll	$zero,$zero,0x0
.L800a0690:
/* 0x800a0690 */ j	.L800a0758
.L800a0694:
/* 0x800a0694 */ addiu	$a2,$a2,1
.L800a0698:
/* 0x800a0698 */ beq	$a2,$v0,.L800a0720
.L800a069c:
/* 0x800a069c */ sll	$zero,$zero,0x0
.L800a06a0:
/* 0x800a06a0 */ j	.L800a0758
.L800a06a4:
/* 0x800a06a4 */ addiu	$a2,$a2,1
.L800a06a8:
/* 0x800a06a8 */ lw	$v0,8($v1)
.L800a06ac:
/* 0x800a06ac */ sll	$zero,$zero,0x0
.L800a06b0:
/* 0x800a06b0 */ andi	$v0,$v0,0x1
.L800a06b4:
/* 0x800a06b4 */ beq	$v0,$zero,.L800a0754
.L800a06b8:
/* 0x800a06b8 */ ori	$v0,$zero,0x9284
.L800a06bc:
/* 0x800a06bc */ addiu	$a0,$zero,1
.L800a06c0:
/* 0x800a06c0 */ addu	$a1,$t0,$v0
.L800a06c4:
/* 0x800a06c4 */ sb	$a3,42($a1)
.L800a06c8:
/* 0x800a06c8 */ lui	$v0,0xffff
.L800a06cc:
/* 0x800a06cc */ ori	$v0,$v0,0x6d7c
.L800a06d0:
/* 0x800a06d0 */ addiu	$a0,$a0,-1
.L800a06d4:
/* 0x800a06d4 */ bgez	$a0,.L800a06c4
.L800a06d8:
/* 0x800a06d8 */ addu	$a1,$a1,$v0
.L800a06dc:
/* 0x800a06dc */ j	.L800a0758
.L800a06e0:
/* 0x800a06e0 */ addiu	$a2,$a2,1
.L800a06e4:
/* 0x800a06e4 */ lw	$v0,8($v1)
.L800a06e8:
/* 0x800a06e8 */ sll	$zero,$zero,0x0
.L800a06ec:
/* 0x800a06ec */ andi	$v0,$v0,0x2
.L800a06f0:
/* 0x800a06f0 */ beq	$v0,$zero,.L800a0754
.L800a06f4:
/* 0x800a06f4 */ ori	$v0,$zero,0x9284
.L800a06f8:
/* 0x800a06f8 */ addiu	$a0,$zero,1
.L800a06fc:
/* 0x800a06fc */ addu	$a1,$t0,$v0
.L800a0700:
/* 0x800a0700 */ sb	$a3,40($a1)
.L800a0704:
/* 0x800a0704 */ lui	$v0,0xffff
.L800a0708:
/* 0x800a0708 */ ori	$v0,$v0,0x6d7c
.L800a070c:
/* 0x800a070c */ addiu	$a0,$a0,-1
.L800a0710:
/* 0x800a0710 */ bgez	$a0,.L800a0700
.L800a0714:
/* 0x800a0714 */ addu	$a1,$a1,$v0
.L800a0718:
/* 0x800a0718 */ j	.L800a0758
.L800a071c:
/* 0x800a071c */ addiu	$a2,$a2,1
.L800a0720:
/* 0x800a0720 */ lw	$v0,8($v1)
.L800a0724:
/* 0x800a0724 */ sll	$zero,$zero,0x0
.L800a0728:
/* 0x800a0728 */ andi	$v0,$v0,0x4
.L800a072c:
/* 0x800a072c */ beq	$v0,$zero,.L800a0754
.L800a0730:
/* 0x800a0730 */ ori	$v0,$zero,0x9284
.L800a0734:
/* 0x800a0734 */ addiu	$a0,$zero,1
.L800a0738:
/* 0x800a0738 */ addu	$a1,$t0,$v0
.L800a073c:
/* 0x800a073c */ sb	$a3,41($a1)
.L800a0740:
/* 0x800a0740 */ lui	$v0,0xffff
.L800a0744:
/* 0x800a0744 */ ori	$v0,$v0,0x6d7c
.L800a0748:
/* 0x800a0748 */ addiu	$a0,$a0,-1
.L800a074c:
/* 0x800a074c */ bgez	$a0,.L800a073c
.L800a0750:
/* 0x800a0750 */ addu	$a1,$a1,$v0
.L800a0754:
/* 0x800a0754 */ addiu	$a2,$a2,1
.L800a0758:
/* 0x800a0758 */ slti	$v0,$a2,3
.L800a075c:
/* 0x800a075c */ bne	$v0,$zero,.L800a0678
.L800a0760:
/* 0x800a0760 */ addiu	$v0,$zero,1
.L800a0764:
/* 0x800a0764 */ jr	$ra
.L800a0768:
/* 0x800a0768 */ sll	$zero,$zero,0x0
.size FUN_800a0640, .-FUN_800a0640
