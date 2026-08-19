.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009a108
.globl FUN_8009a108
.type FUN_8009a108, @function
FUN_8009a108:
.L8009a108:
/* 0x8009a108 */ addiu	$sp,$sp,-32
.L8009a10c:
/* 0x8009a10c */ sw	$s0,16($sp)
.L8009a110:
/* 0x8009a110 */ addu	$s0,$zero,$zero
.L8009a114:
/* 0x8009a114 */ addu	$a0,$s0,$zero
.L8009a118:
/* 0x8009a118 */ sw	$s1,20($sp)
.L8009a11c:
/* 0x8009a11c */ lui	$s1,0x800e
.L8009a120:
/* 0x8009a120 */ sw	$s2,24($sp)
.L8009a124:
/* 0x8009a124 */ addiu	$s2,$zero,1
.L8009a128:
/* 0x8009a128 */ sw	$ra,28($sp)
.L8009a12c:
/* 0x8009a12c */ lui	$v1,0x800b
.L8009a130:
/* 0x8009a130 */ andi	$v0,$a0,0xff
.L8009a134:
/* 0x8009a134 */ lw	$v1,-14104($v1)
.L8009a138:
/* 0x8009a138 */ sll	$v0,$v0,0x4
.L8009a13c:
/* 0x8009a13c */ addu	$v1,$v1,$v0
.L8009a140:
/* 0x8009a140 */ lw	$v1,84($v1)
.L8009a144:
/* 0x8009a144 */ sll	$zero,$zero,0x0
.L8009a148:
/* 0x8009a148 */ andi	$v0,$v1,0x40
.L8009a14c:
/* 0x8009a14c */ beq	$v0,$zero,.L8009a164
.L8009a150:
/* 0x8009a150 */ andi	$v0,$v1,0x820
.L8009a154:
/* 0x8009a154 */ jal	0x800a2210
.L8009a158:
/* 0x8009a158 */ addiu	$s0,$zero,3
.L8009a15c:
/* 0x8009a15c */ j	.L8009a238
.L8009a160:
/* 0x8009a160 */ sll	$zero,$zero,0x0
.L8009a164:
/* 0x8009a164 */ beq	$v0,$zero,.L8009a1bc
.L8009a168:
/* 0x8009a168 */ andi	$v0,$v1,0x8000
.L8009a16c:
/* 0x8009a16c */ lw	$v1,2844($s1)
.L8009a170:
/* 0x8009a170 */ sll	$zero,$zero,0x0
.L8009a174:
/* 0x8009a174 */ lbu	$v0,14($v1)
.L8009a178:
/* 0x8009a178 */ sll	$zero,$zero,0x0
.L8009a17c:
/* 0x8009a17c */ bne	$v0,$s2,.L8009a1ac
.L8009a180:
/* 0x8009a180 */ sll	$zero,$zero,0x0
.L8009a184:
/* 0x8009a184 */ lbu	$v0,21($v1)
.L8009a188:
/* 0x8009a188 */ sll	$zero,$zero,0x0
.L8009a18c:
/* 0x8009a18c */ bne	$v0,$s2,.L8009a238
.L8009a190:
/* 0x8009a190 */ addiu	$s0,$zero,1
.L8009a194:
/* 0x8009a194 */ jal	0x800a21f0
.L8009a198:
/* 0x8009a198 */ sll	$zero,$zero,0x0
.L8009a19c:
/* 0x8009a19c */ jal	0x800a242c
.L8009a1a0:
/* 0x8009a1a0 */ sll	$zero,$zero,0x0
.L8009a1a4:
/* 0x8009a1a4 */ j	.L8009a238
.L8009a1a8:
/* 0x8009a1a8 */ sll	$zero,$zero,0x0
.L8009a1ac:
/* 0x8009a1ac */ jal	0x800a2210
.L8009a1b0:
/* 0x8009a1b0 */ addiu	$s0,$zero,2
.L8009a1b4:
/* 0x8009a1b4 */ j	.L8009a238
.L8009a1b8:
/* 0x8009a1b8 */ sll	$zero,$zero,0x0
.L8009a1bc:
/* 0x8009a1bc */ beq	$v0,$zero,.L8009a1f0
.L8009a1c0:
/* 0x8009a1c0 */ andi	$v0,$v1,0x2000
.L8009a1c4:
/* 0x8009a1c4 */ lw	$v0,2844($s1)
.L8009a1c8:
/* 0x8009a1c8 */ sll	$zero,$zero,0x0
.L8009a1cc:
/* 0x8009a1cc */ lbu	$v0,14($v0)
.L8009a1d0:
/* 0x8009a1d0 */ sll	$zero,$zero,0x0
.L8009a1d4:
/* 0x8009a1d4 */ beq	$v0,$s2,.L8009a238
.L8009a1d8:
/* 0x8009a1d8 */ sll	$zero,$zero,0x0
.L8009a1dc:
/* 0x8009a1dc */ jal	0x800a21d0
.L8009a1e0:
/* 0x8009a1e0 */ sll	$zero,$zero,0x0
.L8009a1e4:
/* 0x8009a1e4 */ lw	$v0,2844($s1)
.L8009a1e8:
/* 0x8009a1e8 */ j	.L8009a238
.L8009a1ec:
/* 0x8009a1ec */ sb	$s2,14($v0)
.L8009a1f0:
/* 0x8009a1f0 */ beq	$v0,$zero,.L8009a224
.L8009a1f4:
/* 0x8009a1f4 */ sll	$zero,$zero,0x0
.L8009a1f8:
/* 0x8009a1f8 */ lw	$v0,2844($s1)
.L8009a1fc:
/* 0x8009a1fc */ sll	$zero,$zero,0x0
.L8009a200:
/* 0x8009a200 */ lbu	$v0,14($v0)
.L8009a204:
/* 0x8009a204 */ sll	$zero,$zero,0x0
.L8009a208:
/* 0x8009a208 */ beq	$v0,$zero,.L8009a238
.L8009a20c:
/* 0x8009a20c */ sll	$zero,$zero,0x0
.L8009a210:
/* 0x8009a210 */ jal	0x800a21d0
.L8009a214:
/* 0x8009a214 */ sll	$zero,$zero,0x0
.L8009a218:
/* 0x8009a218 */ lw	$v0,2844($s1)
.L8009a21c:
/* 0x8009a21c */ j	.L8009a238
.L8009a220:
/* 0x8009a220 */ sb	$zero,14($v0)
.L8009a224:
/* 0x8009a224 */ addiu	$a0,$a0,1
.L8009a228:
/* 0x8009a228 */ andi	$v0,$a0,0xff
.L8009a22c:
/* 0x8009a22c */ sltiu	$v0,$v0,2
.L8009a230:
/* 0x8009a230 */ bne	$v0,$zero,.L8009a130
.L8009a234:
/* 0x8009a234 */ lui	$v1,0x800b
.L8009a238:
/* 0x8009a238 */ beq	$s0,$zero,.L8009a24c
.L8009a23c:
/* 0x8009a23c */ lui	$v0,0x800e
.L8009a240:
/* 0x8009a240 */ lw	$v0,2844($v0)
.L8009a244:
/* 0x8009a244 */ sll	$zero,$zero,0x0
.L8009a248:
/* 0x8009a248 */ sb	$zero,18($v0)
.L8009a24c:
/* 0x8009a24c */ addu	$v0,$s0,$zero
.L8009a250:
/* 0x8009a250 */ lw	$ra,28($sp)
.L8009a254:
/* 0x8009a254 */ lw	$s2,24($sp)
.L8009a258:
/* 0x8009a258 */ lw	$s1,20($sp)
.L8009a25c:
/* 0x8009a25c */ lw	$s0,16($sp)
.L8009a260:
/* 0x8009a260 */ jr	$ra
.L8009a264:
/* 0x8009a264 */ addiu	$sp,$sp,32
.size FUN_8009a108, .-FUN_8009a108
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009a268
.globl FUN_8009a268
.type FUN_8009a268, @function
FUN_8009a268:
.L8009a268:
/* 0x8009a268 */ addiu	$sp,$sp,-24
.L8009a26c:
/* 0x8009a26c */ sw	$s0,16($sp)
.L8009a270:
/* 0x8009a270 */ lui	$s0,0x800e
.L8009a274:
/* 0x8009a274 */ lw	$v0,2844($s0)
.L8009a278:
/* 0x8009a278 */ sw	$ra,20($sp)
.L8009a27c:
/* 0x8009a27c */ sb	$a0,6($v0)
.L8009a280:
/* 0x8009a280 */ andi	$a0,$a0,0xff
.L8009a284:
/* 0x8009a284 */ addiu	$v0,$zero,5
.L8009a288:
/* 0x8009a288 */ beq	$a0,$v0,.L8009a40c
.L8009a28c:
/* 0x8009a28c */ slti	$v0,$a0,6
.L8009a290:
/* 0x8009a290 */ beq	$v0,$zero,.L8009a2d4
.L8009a294:
/* 0x8009a294 */ addiu	$v0,$zero,2
.L8009a298:
/* 0x8009a298 */ beq	$a0,$v0,.L8009a36c
.L8009a29c:
/* 0x8009a29c */ slti	$v0,$a0,3
.L8009a2a0:
/* 0x8009a2a0 */ beq	$v0,$zero,.L8009a2b8
.L8009a2a4:
/* 0x8009a2a4 */ addiu	$v0,$zero,1
.L8009a2a8:
/* 0x8009a2a8 */ beq	$a0,$v0,.L8009a314
.L8009a2ac:
/* 0x8009a2ac */ sll	$zero,$zero,0x0
.L8009a2b0:
/* 0x8009a2b0 */ j	.L8009a4cc
.L8009a2b4:
/* 0x8009a2b4 */ sll	$zero,$zero,0x0
.L8009a2b8:
/* 0x8009a2b8 */ addiu	$v0,$zero,3
.L8009a2bc:
/* 0x8009a2bc */ beq	$a0,$v0,.L8009a3c4
.L8009a2c0:
/* 0x8009a2c0 */ addiu	$v0,$zero,4
.L8009a2c4:
/* 0x8009a2c4 */ beq	$a0,$v0,.L8009a3f0
.L8009a2c8:
/* 0x8009a2c8 */ sll	$zero,$zero,0x0
.L8009a2cc:
/* 0x8009a2cc */ j	.L8009a4cc
.L8009a2d0:
/* 0x8009a2d0 */ sll	$zero,$zero,0x0
.L8009a2d4:
/* 0x8009a2d4 */ addiu	$v0,$zero,242
.L8009a2d8:
/* 0x8009a2d8 */ beq	$a0,$v0,.L8009a438
.L8009a2dc:
/* 0x8009a2dc */ slti	$v0,$a0,243
.L8009a2e0:
/* 0x8009a2e0 */ beq	$v0,$zero,.L8009a2f8
.L8009a2e4:
/* 0x8009a2e4 */ addiu	$v0,$zero,241
.L8009a2e8:
/* 0x8009a2e8 */ beq	$a0,$v0,.L8009a46c
.L8009a2ec:
/* 0x8009a2ec */ sll	$zero,$zero,0x0
.L8009a2f0:
/* 0x8009a2f0 */ j	.L8009a4cc
.L8009a2f4:
/* 0x8009a2f4 */ sll	$zero,$zero,0x0
.L8009a2f8:
/* 0x8009a2f8 */ addiu	$v0,$zero,243
.L8009a2fc:
/* 0x8009a2fc */ beq	$a0,$v0,.L8009a46c
.L8009a300:
/* 0x8009a300 */ addiu	$v0,$zero,244
.L8009a304:
/* 0x8009a304 */ beq	$a0,$v0,.L8009a490
.L8009a308:
/* 0x8009a308 */ sll	$zero,$zero,0x0
.L8009a30c:
/* 0x8009a30c */ j	.L8009a4cc
.L8009a310:
/* 0x8009a310 */ sll	$zero,$zero,0x0
.L8009a314:
/* 0x8009a314 */ lw	$v0,2844($s0)
.L8009a318:
/* 0x8009a318 */ sll	$zero,$zero,0x0
.L8009a31c:
/* 0x8009a31c */ sb	$zero,14($v0)
.L8009a320:
/* 0x8009a320 */ lw	$v0,2844($s0)
.L8009a324:
/* 0x8009a324 */ sll	$zero,$zero,0x0
.L8009a328:
/* 0x8009a328 */ sb	$a0,18($v0)
.L8009a32c:
/* 0x8009a32c */ lw	$v0,2844($s0)
.L8009a330:
/* 0x8009a330 */ sll	$zero,$zero,0x0
.L8009a334:
/* 0x8009a334 */ sb	$a0,21($v0)
.L8009a338:
/* 0x8009a338 */ lw	$v0,2844($s0)
.L8009a33c:
/* 0x8009a33c */ sll	$zero,$zero,0x0
.L8009a340:
/* 0x8009a340 */ lbu	$a0,12($v0)
.L8009a344:
/* 0x8009a344 */ jal	0x8002d518
.L8009a348:
/* 0x8009a348 */ sll	$zero,$zero,0x0
.L8009a34c:
/* 0x8009a34c */ lw	$v1,2844($s0)
.L8009a350:
/* 0x8009a350 */ sll	$zero,$zero,0x0
.L8009a354:
/* 0x8009a354 */ lbu	$v0,20($v1)
.L8009a358:
/* 0x8009a358 */ sll	$zero,$zero,0x0
.L8009a35c:
/* 0x8009a35c */ bne	$v0,$zero,.L8009a4b8
.L8009a360:
/* 0x8009a360 */ addiu	$v0,$zero,55
.L8009a364:
/* 0x8009a364 */ j	.L8009a4b8
.L8009a368:
/* 0x8009a368 */ addiu	$v0,$zero,23
.L8009a36c:
/* 0x8009a36c */ lw	$v0,2844($s0)
.L8009a370:
/* 0x8009a370 */ sll	$zero,$zero,0x0
.L8009a374:
/* 0x8009a374 */ sb	$zero,14($v0)
.L8009a378:
/* 0x8009a378 */ lw	$v0,2844($s0)
.L8009a37c:
/* 0x8009a37c */ addiu	$v1,$zero,1
.L8009a380:
/* 0x8009a380 */ sb	$v1,18($v0)
.L8009a384:
/* 0x8009a384 */ lw	$v0,2844($s0)
.L8009a388:
/* 0x8009a388 */ sll	$zero,$zero,0x0
.L8009a38c:
/* 0x8009a38c */ sb	$v1,21($v0)
.L8009a390:
/* 0x8009a390 */ lw	$v0,2844($s0)
.L8009a394:
/* 0x8009a394 */ sll	$zero,$zero,0x0
.L8009a398:
/* 0x8009a398 */ lbu	$a0,12($v0)
.L8009a39c:
/* 0x8009a39c */ jal	0x8002d518
.L8009a3a0:
/* 0x8009a3a0 */ sll	$zero,$zero,0x0
.L8009a3a4:
/* 0x8009a3a4 */ lw	$v1,2844($s0)
.L8009a3a8:
/* 0x8009a3a8 */ sll	$zero,$zero,0x0
.L8009a3ac:
/* 0x8009a3ac */ lbu	$v0,20($v1)
.L8009a3b0:
/* 0x8009a3b0 */ sll	$zero,$zero,0x0
.L8009a3b4:
/* 0x8009a3b4 */ bne	$v0,$zero,.L8009a4b8
.L8009a3b8:
/* 0x8009a3b8 */ addiu	$v0,$zero,56
.L8009a3bc:
/* 0x8009a3bc */ j	.L8009a4b8
.L8009a3c0:
/* 0x8009a3c0 */ addiu	$v0,$zero,29
.L8009a3c4:
/* 0x8009a3c4 */ lw	$v0,2844($s0)
.L8009a3c8:
/* 0x8009a3c8 */ sll	$zero,$zero,0x0
.L8009a3cc:
/* 0x8009a3cc */ sb	$zero,18($v0)
.L8009a3d0:
/* 0x8009a3d0 */ lw	$v1,2844($s0)
.L8009a3d4:
/* 0x8009a3d4 */ sll	$zero,$zero,0x0
.L8009a3d8:
/* 0x8009a3d8 */ lbu	$v0,20($v1)
.L8009a3dc:
/* 0x8009a3dc */ sll	$zero,$zero,0x0
.L8009a3e0:
/* 0x8009a3e0 */ bne	$v0,$zero,.L8009a4b8
.L8009a3e4:
/* 0x8009a3e4 */ addiu	$v0,$zero,57
.L8009a3e8:
/* 0x8009a3e8 */ j	.L8009a4b8
.L8009a3ec:
/* 0x8009a3ec */ addiu	$v0,$zero,26
.L8009a3f0:
/* 0x8009a3f0 */ lw	$v0,2844($s0)
.L8009a3f4:
/* 0x8009a3f4 */ sll	$zero,$zero,0x0
.L8009a3f8:
/* 0x8009a3f8 */ lbu	$a0,12($v0)
.L8009a3fc:
/* 0x8009a3fc */ jal	0x8002d5c0
.L8009a400:
/* 0x8009a400 */ sll	$zero,$zero,0x0
.L8009a404:
/* 0x8009a404 */ j	.L8009a4cc
.L8009a408:
/* 0x8009a408 */ sll	$zero,$zero,0x0
.L8009a40c:
/* 0x8009a40c */ lw	$v0,2844($s0)
.L8009a410:
/* 0x8009a410 */ sll	$zero,$zero,0x0
.L8009a414:
/* 0x8009a414 */ sb	$zero,0($v0)
.L8009a418:
/* 0x8009a418 */ lw	$v0,2844($s0)
.L8009a41c:
/* 0x8009a41c */ sll	$zero,$zero,0x0
.L8009a420:
/* 0x8009a420 */ sb	$zero,1($v0)
.L8009a424:
/* 0x8009a424 */ lw	$v0,2844($s0)
.L8009a428:
/* 0x8009a428 */ sll	$zero,$zero,0x0
.L8009a42c:
/* 0x8009a42c */ sw	$zero,136($v0)
.L8009a430:
/* 0x8009a430 */ j	.L8009a4cc
.L8009a434:
/* 0x8009a434 */ sw	$zero,140($v0)
.L8009a438:
/* 0x8009a438 */ lw	$v1,2844($s0)
.L8009a43c:
/* 0x8009a43c */ sll	$zero,$zero,0x0
.L8009a440:
/* 0x8009a440 */ lbu	$v0,23($v1)
.L8009a444:
/* 0x8009a444 */ sll	$zero,$zero,0x0
.L8009a448:
/* 0x8009a448 */ bne	$v0,$zero,.L8009a4cc
.L8009a44c:
/* 0x8009a44c */ addiu	$v0,$zero,27
.L8009a450:
/* 0x8009a450 */ sb	$zero,18($v1)
.L8009a454:
/* 0x8009a454 */ lw	$v1,2844($s0)
.L8009a458:
/* 0x8009a458 */ sll	$zero,$zero,0x0
.L8009a45c:
/* 0x8009a45c */ sb	$v0,132($v1)
.L8009a460:
/* 0x8009a460 */ lw	$v1,2844($s0)
.L8009a464:
/* 0x8009a464 */ j	.L8009a4c8
.L8009a468:
/* 0x8009a468 */ addiu	$v0,$zero,1
.L8009a46c:
/* 0x8009a46c */ lw	$v0,2844($s0)
.L8009a470:
/* 0x8009a470 */ sll	$zero,$zero,0x0
.L8009a474:
/* 0x8009a474 */ sb	$zero,18($v0)
.L8009a478:
/* 0x8009a478 */ lw	$v0,2844($s0)
.L8009a47c:
/* 0x8009a47c */ sll	$zero,$zero,0x0
.L8009a480:
/* 0x8009a480 */ sb	$zero,132($v0)
.L8009a484:
/* 0x8009a484 */ lw	$v0,2844($s0)
.L8009a488:
/* 0x8009a488 */ j	.L8009a4cc
.L8009a48c:
/* 0x8009a48c */ sb	$zero,133($v0)
.L8009a490:
/* 0x8009a490 */ lw	$v0,2844($s0)
.L8009a494:
/* 0x8009a494 */ sll	$zero,$zero,0x0
.L8009a498:
/* 0x8009a498 */ sb	$zero,18($v0)
.L8009a49c:
/* 0x8009a49c */ lw	$v1,2844($s0)
.L8009a4a0:
/* 0x8009a4a0 */ sll	$zero,$zero,0x0
.L8009a4a4:
/* 0x8009a4a4 */ lbu	$v0,20($v1)
.L8009a4a8:
/* 0x8009a4a8 */ sll	$zero,$zero,0x0
.L8009a4ac:
/* 0x8009a4ac */ bne	$v0,$zero,.L8009a4b8
.L8009a4b0:
/* 0x8009a4b0 */ addiu	$v0,$zero,54
.L8009a4b4:
/* 0x8009a4b4 */ addiu	$v0,$zero,2
.L8009a4b8:
/* 0x8009a4b8 */ sb	$v0,132($v1)
.L8009a4bc:
/* 0x8009a4bc */ lui	$v0,0x800e
.L8009a4c0:
/* 0x8009a4c0 */ lw	$v1,2844($v0)
.L8009a4c4:
/* 0x8009a4c4 */ addiu	$v0,$zero,1
.L8009a4c8:
/* 0x8009a4c8 */ sb	$v0,133($v1)
.L8009a4cc:
/* 0x8009a4cc */ lw	$ra,20($sp)
.L8009a4d0:
/* 0x8009a4d0 */ lw	$s0,16($sp)
.L8009a4d4:
/* 0x8009a4d4 */ jr	$ra
.L8009a4d8:
/* 0x8009a4d8 */ addiu	$sp,$sp,24
.size FUN_8009a268, .-FUN_8009a268
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009a4dc
.globl FUN_8009a4dc
.type FUN_8009a4dc, @function
FUN_8009a4dc:
.L8009a4dc:
/* 0x8009a4dc */ lui	$v0,0x800e
.L8009a4e0:
/* 0x8009a4e0 */ lw	$v0,2844($v0)
.L8009a4e4:
/* 0x8009a4e4 */ addiu	$sp,$sp,-32
.L8009a4e8:
/* 0x8009a4e8 */ sw	$s1,20($sp)
.L8009a4ec:
/* 0x8009a4ec */ sw	$ra,24($sp)
.L8009a4f0:
/* 0x8009a4f0 */ sw	$s0,16($sp)
.L8009a4f4:
/* 0x8009a4f4 */ lbu	$v1,6($v0)
.L8009a4f8:
/* 0x8009a4f8 */ addiu	$v0,$zero,4
.L8009a4fc:
/* 0x8009a4fc */ beq	$v1,$v0,.L8009a650
.L8009a500:
/* 0x8009a500 */ addu	$s1,$zero,$zero
.L8009a504:
/* 0x8009a504 */ slti	$v0,$v1,5
.L8009a508:
/* 0x8009a508 */ beq	$v0,$zero,.L8009a548
.L8009a50c:
/* 0x8009a50c */ addiu	$s0,$zero,1
.L8009a510:
/* 0x8009a510 */ beq	$v1,$s0,.L8009a590
.L8009a514:
/* 0x8009a514 */ slti	$v0,$v1,2
.L8009a518:
/* 0x8009a518 */ beq	$v0,$zero,.L8009a530
.L8009a51c:
/* 0x8009a51c */ addiu	$v0,$zero,2
.L8009a520:
/* 0x8009a520 */ beq	$v1,$zero,.L8009a630
.L8009a524:
/* 0x8009a524 */ addu	$v0,$s1,$zero
.L8009a528:
/* 0x8009a528 */ j	.L8009a718
.L8009a52c:
/* 0x8009a52c */ sll	$zero,$zero,0x0
.L8009a530:
/* 0x8009a530 */ beq	$v1,$v0,.L8009a5e8
.L8009a534:
/* 0x8009a534 */ addiu	$v0,$zero,3
.L8009a538:
/* 0x8009a538 */ beq	$v1,$v0,.L8009a640
.L8009a53c:
/* 0x8009a53c */ addu	$v0,$s1,$zero
.L8009a540:
/* 0x8009a540 */ j	.L8009a718
.L8009a544:
/* 0x8009a544 */ sll	$zero,$zero,0x0
.L8009a548:
/* 0x8009a548 */ addiu	$v0,$zero,242
.L8009a54c:
/* 0x8009a54c */ beq	$v1,$v0,.L8009a700
.L8009a550:
/* 0x8009a550 */ slti	$v0,$v1,243
.L8009a554:
/* 0x8009a554 */ beq	$v0,$zero,.L8009a574
.L8009a558:
/* 0x8009a558 */ addiu	$v0,$zero,5
.L8009a55c:
/* 0x8009a55c */ beq	$v1,$v0,.L8009a694
.L8009a560:
/* 0x8009a560 */ addiu	$v0,$zero,241
.L8009a564:
/* 0x8009a564 */ beq	$v1,$v0,.L8009a6f8
.L8009a568:
/* 0x8009a568 */ addu	$v0,$s1,$zero
.L8009a56c:
/* 0x8009a56c */ j	.L8009a718
.L8009a570:
/* 0x8009a570 */ sll	$zero,$zero,0x0
.L8009a574:
/* 0x8009a574 */ addiu	$v0,$zero,243
.L8009a578:
/* 0x8009a578 */ beq	$v1,$v0,.L8009a708
.L8009a57c:
/* 0x8009a57c */ addiu	$v0,$zero,244
.L8009a580:
/* 0x8009a580 */ beq	$v1,$v0,.L8009a710
.L8009a584:
/* 0x8009a584 */ addu	$v0,$s1,$zero
.L8009a588:
/* 0x8009a588 */ j	.L8009a718
.L8009a58c:
/* 0x8009a58c */ sll	$zero,$zero,0x0
.L8009a590:
/* 0x8009a590 */ jal	0x8002d52c
.L8009a594:
/* 0x8009a594 */ sll	$zero,$zero,0x0
.L8009a598:
/* 0x8009a598 */ beq	$v0,$s0,.L8009a6d8
.L8009a59c:
/* 0x8009a59c */ sll	$zero,$zero,0x0
.L8009a5a0:
/* 0x8009a5a0 */ jal	0x8009a108
.L8009a5a4:
/* 0x8009a5a4 */ sll	$zero,$zero,0x0
.L8009a5a8:
/* 0x8009a5a8 */ addu	$v1,$v0,$zero
.L8009a5ac:
/* 0x8009a5ac */ bne	$v1,$s0,.L8009a5c4
.L8009a5b0:
/* 0x8009a5b0 */ slti	$v0,$v1,2
.L8009a5b4:
/* 0x8009a5b4 */ jal	0x8009a268
.L8009a5b8:
/* 0x8009a5b8 */ addiu	$a0,$zero,3
.L8009a5bc:
/* 0x8009a5bc */ j	.L8009a718
.L8009a5c0:
/* 0x8009a5c0 */ addu	$v0,$s1,$zero
.L8009a5c4:
/* 0x8009a5c4 */ bne	$v0,$zero,.L8009a718
.L8009a5c8:
/* 0x8009a5c8 */ addu	$v0,$s1,$zero
.L8009a5cc:
/* 0x8009a5cc */ slti	$v0,$v1,4
.L8009a5d0:
/* 0x8009a5d0 */ beq	$v0,$zero,.L8009a718
.L8009a5d4:
/* 0x8009a5d4 */ addu	$v0,$s1,$zero
.L8009a5d8:
/* 0x8009a5d8 */ jal	0x8009a268
.L8009a5dc:
/* 0x8009a5dc */ addiu	$a0,$zero,2
.L8009a5e0:
/* 0x8009a5e0 */ j	.L8009a718
.L8009a5e4:
/* 0x8009a5e4 */ addu	$v0,$s1,$zero
.L8009a5e8:
/* 0x8009a5e8 */ jal	0x8002d52c
.L8009a5ec:
/* 0x8009a5ec */ sll	$zero,$zero,0x0
.L8009a5f0:
/* 0x8009a5f0 */ beq	$v0,$s0,.L8009a6d8
.L8009a5f4:
/* 0x8009a5f4 */ sll	$zero,$zero,0x0
.L8009a5f8:
/* 0x8009a5f8 */ jal	0x8009a108
.L8009a5fc:
/* 0x8009a5fc */ sll	$zero,$zero,0x0
.L8009a600:
/* 0x8009a600 */ addu	$v1,$v0,$zero
.L8009a604:
/* 0x8009a604 */ bne	$v1,$s0,.L8009a61c
.L8009a608:
/* 0x8009a608 */ slti	$v0,$v1,2
.L8009a60c:
/* 0x8009a60c */ jal	0x8009a268
.L8009a610:
/* 0x8009a610 */ addiu	$a0,$zero,243
.L8009a614:
/* 0x8009a614 */ j	.L8009a718
.L8009a618:
/* 0x8009a618 */ addu	$v0,$s1,$zero
.L8009a61c:
/* 0x8009a61c */ bne	$v0,$zero,.L8009a718
.L8009a620:
/* 0x8009a620 */ addu	$v0,$s1,$zero
.L8009a624:
/* 0x8009a624 */ slti	$v0,$v1,4
.L8009a628:
/* 0x8009a628 */ beq	$v0,$zero,.L8009a718
.L8009a62c:
/* 0x8009a62c */ addu	$v0,$s1,$zero
.L8009a630:
/* 0x8009a630 */ jal	0x8009a268
.L8009a634:
/* 0x8009a634 */ addiu	$a0,$zero,1
.L8009a638:
/* 0x8009a638 */ j	.L8009a718
.L8009a63c:
/* 0x8009a63c */ addu	$v0,$s1,$zero
.L8009a640:
/* 0x8009a640 */ jal	0x8009a268
.L8009a644:
/* 0x8009a644 */ addiu	$a0,$zero,4
.L8009a648:
/* 0x8009a648 */ j	.L8009a718
.L8009a64c:
/* 0x8009a64c */ addu	$v0,$s1,$zero
.L8009a650:
/* 0x8009a650 */ jal	0x8002d5d4
.L8009a654:
/* 0x8009a654 */ sll	$zero,$zero,0x0
.L8009a658:
/* 0x8009a658 */ addu	$v1,$v0,$zero
.L8009a65c:
/* 0x8009a65c */ addiu	$v0,$zero,1
.L8009a660:
/* 0x8009a660 */ beq	$v1,$v0,.L8009a684
.L8009a664:
/* 0x8009a664 */ slti	$v0,$v1,2
.L8009a668:
/* 0x8009a668 */ bne	$v0,$zero,.L8009a718
.L8009a66c:
/* 0x8009a66c */ addu	$v0,$s1,$zero
.L8009a670:
/* 0x8009a670 */ addiu	$v0,$zero,2
.L8009a674:
/* 0x8009a674 */ beq	$v1,$v0,.L8009a6e8
.L8009a678:
/* 0x8009a678 */ addu	$v0,$s1,$zero
.L8009a67c:
/* 0x8009a67c */ j	.L8009a718
.L8009a680:
/* 0x8009a680 */ sll	$zero,$zero,0x0
.L8009a684:
/* 0x8009a684 */ jal	0x8009a268
.L8009a688:
/* 0x8009a688 */ addiu	$a0,$zero,5
.L8009a68c:
/* 0x8009a68c */ j	.L8009a718
.L8009a690:
/* 0x8009a690 */ addu	$v0,$s1,$zero
.L8009a694:
/* 0x8009a694 */ jal	0x80099edc
.L8009a698:
/* 0x8009a698 */ sll	$zero,$zero,0x0
.L8009a69c:
/* 0x8009a69c */ addu	$v1,$v0,$zero
.L8009a6a0:
/* 0x8009a6a0 */ sltiu	$v0,$v1,6
.L8009a6a4:
/* 0x8009a6a4 */ beq	$v0,$zero,.L8009a714
.L8009a6a8:
/* 0x8009a6a8 */ lui	$v0,0x8002
.L8009a6ac:
/* 0x8009a6ac */ addiu	$v0,$v0,-3164
.L8009a6b0:
/* 0x8009a6b0 */ sll	$v1,$v1,0x2
.L8009a6b4:
/* 0x8009a6b4 */ addu	$v1,$v1,$v0
.L8009a6b8:
/* 0x8009a6b8 */ lw	$v0,0($v1)
.L8009a6bc:
/* 0x8009a6bc */ sll	$zero,$zero,0x0
.L8009a6c0:
/* 0x8009a6c0 */ jr	$v0
.L8009a6c4:
/* 0x8009a6c4 */ sll	$zero,$zero,0x0
.L8009a6c8:
/* 0x8009a6c8 */ jal	0x8009a268
.L8009a6cc:
/* 0x8009a6cc */ addiu	$a0,$zero,241
.L8009a6d0:
/* 0x8009a6d0 */ j	.L8009a718
.L8009a6d4:
/* 0x8009a6d4 */ addu	$v0,$s1,$zero
.L8009a6d8:
/* 0x8009a6d8 */ jal	0x8009a268
.L8009a6dc:
/* 0x8009a6dc */ addiu	$a0,$zero,244
.L8009a6e0:
/* 0x8009a6e0 */ j	.L8009a718
.L8009a6e4:
/* 0x8009a6e4 */ addu	$v0,$s1,$zero
.L8009a6e8:
/* 0x8009a6e8 */ jal	0x8009a268
.L8009a6ec:
/* 0x8009a6ec */ addiu	$a0,$zero,242
.L8009a6f0:
/* 0x8009a6f0 */ j	.L8009a718
.L8009a6f4:
/* 0x8009a6f4 */ addu	$v0,$s1,$zero
.L8009a6f8:
/* 0x8009a6f8 */ j	.L8009a714
.L8009a6fc:
/* 0x8009a6fc */ addiu	$s1,$zero,1
.L8009a700:
/* 0x8009a700 */ j	.L8009a714
.L8009a704:
/* 0x8009a704 */ addiu	$s1,$zero,2
.L8009a708:
/* 0x8009a708 */ j	.L8009a714
.L8009a70c:
/* 0x8009a70c */ addiu	$s1,$zero,3
.L8009a710:
/* 0x8009a710 */ addiu	$s1,$zero,4
.L8009a714:
/* 0x8009a714 */ addu	$v0,$s1,$zero
.L8009a718:
/* 0x8009a718 */ lw	$ra,24($sp)
.L8009a71c:
/* 0x8009a71c */ lw	$s1,20($sp)
.L8009a720:
/* 0x8009a720 */ lw	$s0,16($sp)
.L8009a724:
/* 0x8009a724 */ jr	$ra
.L8009a728:
/* 0x8009a728 */ addiu	$sp,$sp,32
.size FUN_8009a4dc, .-FUN_8009a4dc
