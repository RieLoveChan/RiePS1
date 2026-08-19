.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009b0a8
.globl FUN_8009b0a8
.type FUN_8009b0a8, @function
FUN_8009b0a8:
.L8009b0a8:
/* 0x8009b0a8 */ addiu	$sp,$sp,-24
.L8009b0ac:
/* 0x8009b0ac */ lui	$a3,0x800e
.L8009b0b0:
/* 0x8009b0b0 */ lw	$v1,2840($a3)
.L8009b0b4:
/* 0x8009b0b4 */ lui	$a0,0x800e
.L8009b0b8:
/* 0x8009b0b8 */ sw	$ra,16($sp)
.L8009b0bc:
/* 0x8009b0bc */ lbu	$v0,112($v1)
.L8009b0c0:
/* 0x8009b0c0 */ sll	$zero,$zero,0x0
.L8009b0c4:
/* 0x8009b0c4 */ sltiu	$v0,$v0,2
.L8009b0c8:
/* 0x8009b0c8 */ bne	$v0,$zero,.L8009b0dc
.L8009b0cc:
/* 0x8009b0cc */ addiu	$a2,$a0,2848
.L8009b0d0:
/* 0x8009b0d0 */ lbu	$v0,2848($a0)
.L8009b0d4:
/* 0x8009b0d4 */ sll	$zero,$zero,0x0
.L8009b0d8:
/* 0x8009b0d8 */ sb	$v0,112($v1)
.L8009b0dc:
/* 0x8009b0dc */ lw	$v1,2840($a3)
.L8009b0e0:
/* 0x8009b0e0 */ sll	$zero,$zero,0x0
.L8009b0e4:
/* 0x8009b0e4 */ lbu	$v0,113($v1)
.L8009b0e8:
/* 0x8009b0e8 */ sll	$zero,$zero,0x0
.L8009b0ec:
/* 0x8009b0ec */ sltiu	$v0,$v0,3
.L8009b0f0:
/* 0x8009b0f0 */ bne	$v0,$zero,.L8009b108
.L8009b0f4:
/* 0x8009b0f4 */ sll	$zero,$zero,0x0
.L8009b0f8:
/* 0x8009b0f8 */ lbu	$v0,1($a2)
.L8009b0fc:
/* 0x8009b0fc */ sll	$zero,$zero,0x0
.L8009b100:
/* 0x8009b100 */ sb	$v0,113($v1)
.L8009b104:
/* 0x8009b104 */ lw	$v1,2840($a3)
.L8009b108:
/* 0x8009b108 */ sll	$zero,$zero,0x0
.L8009b10c:
/* 0x8009b10c */ lbu	$v0,114($v1)
.L8009b110:
/* 0x8009b110 */ sll	$zero,$zero,0x0
.L8009b114:
/* 0x8009b114 */ addiu	$v0,$v0,8
.L8009b118:
/* 0x8009b118 */ andi	$v0,$v0,0xff
.L8009b11c:
/* 0x8009b11c */ sltiu	$v0,$v0,17
.L8009b120:
/* 0x8009b120 */ bne	$v0,$zero,.L8009b134
.L8009b124:
/* 0x8009b124 */ sll	$zero,$zero,0x0
.L8009b128:
/* 0x8009b128 */ lbu	$v0,2($a2)
.L8009b12c:
/* 0x8009b12c */ sll	$zero,$zero,0x0
.L8009b130:
/* 0x8009b130 */ sb	$v0,114($v1)
.L8009b134:
/* 0x8009b134 */ lw	$v1,2840($a3)
.L8009b138:
/* 0x8009b138 */ sll	$zero,$zero,0x0
.L8009b13c:
/* 0x8009b13c */ lbu	$v0,116($v1)
.L8009b140:
/* 0x8009b140 */ sll	$zero,$zero,0x0
.L8009b144:
/* 0x8009b144 */ sltiu	$v0,$v0,4
.L8009b148:
/* 0x8009b148 */ bne	$v0,$zero,.L8009b160
.L8009b14c:
/* 0x8009b14c */ sll	$zero,$zero,0x0
.L8009b150:
/* 0x8009b150 */ lbu	$v0,4($a2)
.L8009b154:
/* 0x8009b154 */ sll	$zero,$zero,0x0
.L8009b158:
/* 0x8009b158 */ sb	$v0,116($v1)
.L8009b15c:
/* 0x8009b15c */ lw	$v1,2840($a3)
.L8009b160:
/* 0x8009b160 */ sll	$zero,$zero,0x0
.L8009b164:
/* 0x8009b164 */ lbu	$v0,117($v1)
.L8009b168:
/* 0x8009b168 */ sll	$zero,$zero,0x0
.L8009b16c:
/* 0x8009b16c */ sltiu	$v0,$v0,3
.L8009b170:
/* 0x8009b170 */ bne	$v0,$zero,.L8009b184
.L8009b174:
/* 0x8009b174 */ addu	$a1,$zero,$zero
.L8009b178:
/* 0x8009b178 */ lbu	$v0,5($a2)
.L8009b17c:
/* 0x8009b17c */ sll	$zero,$zero,0x0
.L8009b180:
/* 0x8009b180 */ sb	$v0,117($v1)
.L8009b184:
/* 0x8009b184 */ andi	$v1,$a1,0xff
.L8009b188:
/* 0x8009b188 */ lw	$v0,2840($a3)
.L8009b18c:
/* 0x8009b18c */ addiu	$v1,$v1,2
.L8009b190:
/* 0x8009b190 */ addiu	$v0,$v0,112
.L8009b194:
/* 0x8009b194 */ addu	$a0,$v0,$v1
.L8009b198:
/* 0x8009b198 */ lbu	$v0,4($a0)
.L8009b19c:
/* 0x8009b19c */ sll	$zero,$zero,0x0
.L8009b1a0:
/* 0x8009b1a0 */ sltiu	$v0,$v0,2
.L8009b1a4:
/* 0x8009b1a4 */ bne	$v0,$zero,.L8009b1b8
.L8009b1a8:
/* 0x8009b1a8 */ addu	$v0,$a2,$v1
.L8009b1ac:
/* 0x8009b1ac */ lbu	$v0,4($v0)
.L8009b1b0:
/* 0x8009b1b0 */ sll	$zero,$zero,0x0
.L8009b1b4:
/* 0x8009b1b4 */ sb	$v0,4($a0)
.L8009b1b8:
/* 0x8009b1b8 */ addiu	$a1,$a1,1
.L8009b1bc:
/* 0x8009b1bc */ andi	$v0,$a1,0xff
.L8009b1c0:
/* 0x8009b1c0 */ sltiu	$v0,$v0,2
.L8009b1c4:
/* 0x8009b1c4 */ bne	$v0,$zero,.L8009b188
.L8009b1c8:
/* 0x8009b1c8 */ andi	$v1,$a1,0xff
.L8009b1cc:
/* 0x8009b1cc */ lui	$a0,0x800e
.L8009b1d0:
/* 0x8009b1d0 */ lw	$v1,2840($a0)
.L8009b1d4:
/* 0x8009b1d4 */ sll	$zero,$zero,0x0
.L8009b1d8:
/* 0x8009b1d8 */ lbu	$v0,120($v1)
.L8009b1dc:
/* 0x8009b1dc */ sll	$zero,$zero,0x0
.L8009b1e0:
/* 0x8009b1e0 */ sltiu	$v0,$v0,4
.L8009b1e4:
/* 0x8009b1e4 */ bne	$v0,$zero,.L8009b1fc
.L8009b1e8:
/* 0x8009b1e8 */ addiu	$a1,$a0,2840
.L8009b1ec:
/* 0x8009b1ec */ lbu	$v0,8($a2)
.L8009b1f0:
/* 0x8009b1f0 */ sll	$zero,$zero,0x0
.L8009b1f4:
/* 0x8009b1f4 */ sb	$v0,120($v1)
.L8009b1f8:
/* 0x8009b1f8 */ lw	$v1,2840($a0)
.L8009b1fc:
/* 0x8009b1fc */ sll	$zero,$zero,0x0
.L8009b200:
/* 0x8009b200 */ lbu	$v0,121($v1)
.L8009b204:
/* 0x8009b204 */ sll	$zero,$zero,0x0
.L8009b208:
/* 0x8009b208 */ sltiu	$v0,$v0,2
.L8009b20c:
/* 0x8009b20c */ bne	$v0,$zero,.L8009b224
.L8009b210:
/* 0x8009b210 */ sll	$zero,$zero,0x0
.L8009b214:
/* 0x8009b214 */ lbu	$v0,9($a2)
.L8009b218:
/* 0x8009b218 */ sll	$zero,$zero,0x0
.L8009b21c:
/* 0x8009b21c */ sb	$v0,121($v1)
.L8009b220:
/* 0x8009b220 */ lw	$v1,2840($a0)
.L8009b224:
/* 0x8009b224 */ sll	$zero,$zero,0x0
.L8009b228:
/* 0x8009b228 */ lbu	$v0,124($v1)
.L8009b22c:
/* 0x8009b22c */ sll	$zero,$zero,0x0
.L8009b230:
/* 0x8009b230 */ sltiu	$v0,$v0,2
.L8009b234:
/* 0x8009b234 */ bne	$v0,$zero,.L8009b248
.L8009b238:
/* 0x8009b238 */ sll	$zero,$zero,0x0
.L8009b23c:
/* 0x8009b23c */ lbu	$v0,12($a2)
.L8009b240:
/* 0x8009b240 */ sll	$zero,$zero,0x0
.L8009b244:
/* 0x8009b244 */ sb	$v0,124($v1)
.L8009b248:
/* 0x8009b248 */ lw	$v1,2840($a0)
.L8009b24c:
/* 0x8009b24c */ sll	$zero,$zero,0x0
.L8009b250:
/* 0x8009b250 */ lbu	$v0,125($v1)
.L8009b254:
/* 0x8009b254 */ sll	$zero,$zero,0x0
.L8009b258:
/* 0x8009b258 */ sltiu	$v0,$v0,2
.L8009b25c:
/* 0x8009b25c */ bne	$v0,$zero,.L8009b274
.L8009b260:
/* 0x8009b260 */ sll	$zero,$zero,0x0
.L8009b264:
/* 0x8009b264 */ lbu	$v0,13($a2)
.L8009b268:
/* 0x8009b268 */ sll	$zero,$zero,0x0
.L8009b26c:
/* 0x8009b26c */ sb	$v0,125($v1)
.L8009b270:
/* 0x8009b270 */ lw	$v1,2840($a0)
.L8009b274:
/* 0x8009b274 */ sll	$zero,$zero,0x0
.L8009b278:
/* 0x8009b278 */ lbu	$v0,128($v1)
.L8009b27c:
/* 0x8009b27c */ sll	$zero,$zero,0x0
.L8009b280:
/* 0x8009b280 */ sltiu	$v0,$v0,8
.L8009b284:
/* 0x8009b284 */ bne	$v0,$zero,.L8009b298
.L8009b288:
/* 0x8009b288 */ sll	$zero,$zero,0x0
.L8009b28c:
/* 0x8009b28c */ lbu	$v0,16($a2)
.L8009b290:
/* 0x8009b290 */ sll	$zero,$zero,0x0
.L8009b294:
/* 0x8009b294 */ sb	$v0,128($v1)
.L8009b298:
/* 0x8009b298 */ lw	$v1,2840($a0)
.L8009b29c:
/* 0x8009b29c */ sll	$zero,$zero,0x0
.L8009b2a0:
/* 0x8009b2a0 */ lbu	$v0,130($v1)
.L8009b2a4:
/* 0x8009b2a4 */ sll	$zero,$zero,0x0
.L8009b2a8:
/* 0x8009b2a8 */ addiu	$v0,$v0,-2
.L8009b2ac:
/* 0x8009b2ac */ sltiu	$v0,$v0,3
.L8009b2b0:
/* 0x8009b2b0 */ bne	$v0,$zero,.L8009b2c8
.L8009b2b4:
/* 0x8009b2b4 */ sll	$zero,$zero,0x0
.L8009b2b8:
/* 0x8009b2b8 */ lbu	$v0,18($a2)
.L8009b2bc:
/* 0x8009b2bc */ sll	$zero,$zero,0x0
.L8009b2c0:
/* 0x8009b2c0 */ sb	$v0,130($v1)
.L8009b2c4:
/* 0x8009b2c4 */ lw	$v1,2840($a0)
.L8009b2c8:
/* 0x8009b2c8 */ sll	$zero,$zero,0x0
.L8009b2cc:
/* 0x8009b2cc */ lbu	$v0,131($v1)
.L8009b2d0:
/* 0x8009b2d0 */ sll	$zero,$zero,0x0
.L8009b2d4:
/* 0x8009b2d4 */ addiu	$v0,$v0,-1
.L8009b2d8:
/* 0x8009b2d8 */ sltiu	$v0,$v0,4
.L8009b2dc:
/* 0x8009b2dc */ bne	$v0,$zero,.L8009b2f0
.L8009b2e0:
/* 0x8009b2e0 */ sll	$zero,$zero,0x0
.L8009b2e4:
/* 0x8009b2e4 */ lbu	$v0,19($a2)
.L8009b2e8:
/* 0x8009b2e8 */ sll	$zero,$zero,0x0
.L8009b2ec:
/* 0x8009b2ec */ sb	$v0,131($v1)
.L8009b2f0:
/* 0x8009b2f0 */ lw	$v1,2840($a0)
.L8009b2f4:
/* 0x8009b2f4 */ sll	$zero,$zero,0x0
.L8009b2f8:
/* 0x8009b2f8 */ lbu	$v0,132($v1)
.L8009b2fc:
/* 0x8009b2fc */ sll	$zero,$zero,0x0
.L8009b300:
/* 0x8009b300 */ sltiu	$v0,$v0,2
.L8009b304:
/* 0x8009b304 */ bne	$v0,$zero,.L8009b31c
.L8009b308:
/* 0x8009b308 */ sll	$zero,$zero,0x0
.L8009b30c:
/* 0x8009b30c */ lbu	$v0,20($a2)
.L8009b310:
/* 0x8009b310 */ sll	$zero,$zero,0x0
.L8009b314:
/* 0x8009b314 */ sb	$v0,132($v1)
.L8009b318:
/* 0x8009b318 */ lw	$v1,2840($a0)
.L8009b31c:
/* 0x8009b31c */ sll	$zero,$zero,0x0
.L8009b320:
/* 0x8009b320 */ lbu	$v0,133($v1)
.L8009b324:
/* 0x8009b324 */ sll	$zero,$zero,0x0
.L8009b328:
/* 0x8009b328 */ sltiu	$v0,$v0,2
.L8009b32c:
/* 0x8009b32c */ bne	$v0,$zero,.L8009b340
.L8009b330:
/* 0x8009b330 */ sll	$zero,$zero,0x0
.L8009b334:
/* 0x8009b334 */ lbu	$v0,21($a2)
.L8009b338:
/* 0x8009b338 */ sll	$zero,$zero,0x0
.L8009b33c:
/* 0x8009b33c */ sb	$v0,133($v1)
.L8009b340:
/* 0x8009b340 */ lw	$v1,2840($a0)
.L8009b344:
/* 0x8009b344 */ sll	$zero,$zero,0x0
.L8009b348:
/* 0x8009b348 */ lbu	$v0,134($v1)
.L8009b34c:
/* 0x8009b34c */ sll	$zero,$zero,0x0
.L8009b350:
/* 0x8009b350 */ sltiu	$v0,$v0,2
.L8009b354:
/* 0x8009b354 */ bne	$v0,$zero,.L8009b368
.L8009b358:
/* 0x8009b358 */ sll	$zero,$zero,0x0
.L8009b35c:
/* 0x8009b35c */ lbu	$v0,22($a2)
.L8009b360:
/* 0x8009b360 */ sll	$zero,$zero,0x0
.L8009b364:
/* 0x8009b364 */ sb	$v0,134($v1)
.L8009b368:
/* 0x8009b368 */ lw	$v1,0($a1)
.L8009b36c:
/* 0x8009b36c */ sll	$zero,$zero,0x0
.L8009b370:
/* 0x8009b370 */ lbu	$v0,135($v1)
.L8009b374:
/* 0x8009b374 */ sll	$zero,$zero,0x0
.L8009b378:
/* 0x8009b378 */ sltiu	$v0,$v0,2
.L8009b37c:
/* 0x8009b37c */ bne	$v0,$zero,.L8009b394
.L8009b380:
/* 0x8009b380 */ sll	$zero,$zero,0x0
.L8009b384:
/* 0x8009b384 */ lbu	$v0,23($a2)
.L8009b388:
/* 0x8009b388 */ sll	$zero,$zero,0x0
.L8009b38c:
/* 0x8009b38c */ sb	$v0,135($v1)
.L8009b390:
/* 0x8009b390 */ lw	$v1,0($a1)
.L8009b394:
/* 0x8009b394 */ sll	$zero,$zero,0x0
.L8009b398:
/* 0x8009b398 */ lbu	$v0,136($v1)
.L8009b39c:
/* 0x8009b39c */ sll	$zero,$zero,0x0
.L8009b3a0:
/* 0x8009b3a0 */ sltiu	$v0,$v0,2
.L8009b3a4:
/* 0x8009b3a4 */ bne	$v0,$zero,.L8009b3b8
.L8009b3a8:
/* 0x8009b3a8 */ sll	$zero,$zero,0x0
.L8009b3ac:
/* 0x8009b3ac */ lbu	$v0,24($a2)
.L8009b3b0:
/* 0x8009b3b0 */ sll	$zero,$zero,0x0
.L8009b3b4:
/* 0x8009b3b4 */ sb	$v0,136($v1)
.L8009b3b8:
/* 0x8009b3b8 */ lw	$v1,0($a1)
.L8009b3bc:
/* 0x8009b3bc */ sll	$zero,$zero,0x0
.L8009b3c0:
/* 0x8009b3c0 */ lbu	$v0,148($v1)
.L8009b3c4:
/* 0x8009b3c4 */ sll	$zero,$zero,0x0
.L8009b3c8:
/* 0x8009b3c8 */ sltiu	$v0,$v0,2
.L8009b3cc:
/* 0x8009b3cc */ bne	$v0,$zero,.L8009b3e4
.L8009b3d0:
/* 0x8009b3d0 */ sll	$zero,$zero,0x0
.L8009b3d4:
/* 0x8009b3d4 */ lbu	$v0,36($a2)
.L8009b3d8:
/* 0x8009b3d8 */ sll	$zero,$zero,0x0
.L8009b3dc:
/* 0x8009b3dc */ sb	$v0,148($v1)
.L8009b3e0:
/* 0x8009b3e0 */ lw	$v1,0($a1)
.L8009b3e4:
/* 0x8009b3e4 */ sll	$zero,$zero,0x0
.L8009b3e8:
/* 0x8009b3e8 */ lbu	$v0,149($v1)
.L8009b3ec:
/* 0x8009b3ec */ sll	$zero,$zero,0x0
.L8009b3f0:
/* 0x8009b3f0 */ sltiu	$v0,$v0,16
.L8009b3f4:
/* 0x8009b3f4 */ bne	$v0,$zero,.L8009b408
.L8009b3f8:
/* 0x8009b3f8 */ sll	$zero,$zero,0x0
.L8009b3fc:
/* 0x8009b3fc */ lbu	$v0,37($a2)
.L8009b400:
/* 0x8009b400 */ sll	$zero,$zero,0x0
.L8009b404:
/* 0x8009b404 */ sb	$v0,149($v1)
.L8009b408:
/* 0x8009b408 */ lw	$v1,0($a1)
.L8009b40c:
/* 0x8009b40c */ sll	$zero,$zero,0x0
.L8009b410:
/* 0x8009b410 */ lbu	$v0,150($v1)
.L8009b414:
/* 0x8009b414 */ sll	$zero,$zero,0x0
.L8009b418:
/* 0x8009b418 */ sltiu	$v0,$v0,3
.L8009b41c:
/* 0x8009b41c */ bne	$v0,$zero,.L8009b434
.L8009b420:
/* 0x8009b420 */ sll	$zero,$zero,0x0
.L8009b424:
/* 0x8009b424 */ lbu	$v0,38($a2)
.L8009b428:
/* 0x8009b428 */ sll	$zero,$zero,0x0
.L8009b42c:
/* 0x8009b42c */ sb	$v0,150($v1)
.L8009b430:
/* 0x8009b430 */ lw	$v1,0($a1)
.L8009b434:
/* 0x8009b434 */ sll	$zero,$zero,0x0
.L8009b438:
/* 0x8009b438 */ lbu	$v0,151($v1)
.L8009b43c:
/* 0x8009b43c */ sll	$zero,$zero,0x0
.L8009b440:
/* 0x8009b440 */ sltiu	$v0,$v0,2
.L8009b444:
/* 0x8009b444 */ bne	$v0,$zero,.L8009b458
.L8009b448:
/* 0x8009b448 */ sll	$zero,$zero,0x0
.L8009b44c:
/* 0x8009b44c */ lbu	$v0,39($a2)
.L8009b450:
/* 0x8009b450 */ sll	$zero,$zero,0x0
.L8009b454:
/* 0x8009b454 */ sb	$v0,151($v1)
.L8009b458:
/* 0x8009b458 */ lw	$v1,0($a1)
.L8009b45c:
/* 0x8009b45c */ sll	$zero,$zero,0x0
.L8009b460:
/* 0x8009b460 */ lbu	$v0,152($v1)
.L8009b464:
/* 0x8009b464 */ sll	$zero,$zero,0x0
.L8009b468:
/* 0x8009b468 */ sltiu	$v0,$v0,2
.L8009b46c:
/* 0x8009b46c */ bne	$v0,$zero,.L8009b484
.L8009b470:
/* 0x8009b470 */ sll	$zero,$zero,0x0
.L8009b474:
/* 0x8009b474 */ lbu	$v0,40($a2)
.L8009b478:
/* 0x8009b478 */ sll	$zero,$zero,0x0
.L8009b47c:
/* 0x8009b47c */ sb	$v0,152($v1)
.L8009b480:
/* 0x8009b480 */ lw	$v1,0($a1)
.L8009b484:
/* 0x8009b484 */ sll	$zero,$zero,0x0
.L8009b488:
/* 0x8009b488 */ lbu	$v0,153($v1)
.L8009b48c:
/* 0x8009b48c */ sll	$zero,$zero,0x0
.L8009b490:
/* 0x8009b490 */ sltiu	$v0,$v0,2
.L8009b494:
/* 0x8009b494 */ bne	$v0,$zero,.L8009b4a8
.L8009b498:
/* 0x8009b498 */ sll	$zero,$zero,0x0
.L8009b49c:
/* 0x8009b49c */ lbu	$v0,41($a2)
.L8009b4a0:
/* 0x8009b4a0 */ sll	$zero,$zero,0x0
.L8009b4a4:
/* 0x8009b4a4 */ sb	$v0,153($v1)
.L8009b4a8:
/* 0x8009b4a8 */ lw	$v1,0($a1)
.L8009b4ac:
/* 0x8009b4ac */ sll	$zero,$zero,0x0
.L8009b4b0:
/* 0x8009b4b0 */ lbu	$v0,160($v1)
.L8009b4b4:
/* 0x8009b4b4 */ sll	$zero,$zero,0x0
.L8009b4b8:
/* 0x8009b4b8 */ sltiu	$v0,$v0,2
.L8009b4bc:
/* 0x8009b4bc */ bne	$v0,$zero,.L8009b4d4
.L8009b4c0:
/* 0x8009b4c0 */ sll	$zero,$zero,0x0
.L8009b4c4:
/* 0x8009b4c4 */ lbu	$v0,48($a2)
.L8009b4c8:
/* 0x8009b4c8 */ sll	$zero,$zero,0x0
.L8009b4cc:
/* 0x8009b4cc */ sb	$v0,160($v1)
.L8009b4d0:
/* 0x8009b4d0 */ lw	$v1,0($a1)
.L8009b4d4:
/* 0x8009b4d4 */ sll	$zero,$zero,0x0
.L8009b4d8:
/* 0x8009b4d8 */ lbu	$v0,161($v1)
.L8009b4dc:
/* 0x8009b4dc */ sll	$zero,$zero,0x0
.L8009b4e0:
/* 0x8009b4e0 */ sltiu	$v0,$v0,2
.L8009b4e4:
/* 0x8009b4e4 */ bne	$v0,$zero,.L8009b4f8
.L8009b4e8:
/* 0x8009b4e8 */ sll	$zero,$zero,0x0
.L8009b4ec:
/* 0x8009b4ec */ lbu	$v0,49($a2)
.L8009b4f0:
/* 0x8009b4f0 */ sll	$zero,$zero,0x0
.L8009b4f4:
/* 0x8009b4f4 */ sb	$v0,161($v1)
.L8009b4f8:
/* 0x8009b4f8 */ lw	$v1,0($a1)
.L8009b4fc:
/* 0x8009b4fc */ sll	$zero,$zero,0x0
.L8009b500:
/* 0x8009b500 */ lbu	$v0,162($v1)
.L8009b504:
/* 0x8009b504 */ sll	$zero,$zero,0x0
.L8009b508:
/* 0x8009b508 */ sltiu	$v0,$v0,3
.L8009b50c:
/* 0x8009b50c */ bne	$v0,$zero,.L8009b520
.L8009b510:
/* 0x8009b510 */ sll	$zero,$zero,0x0
.L8009b514:
/* 0x8009b514 */ lbu	$v0,50($a2)
.L8009b518:
/* 0x8009b518 */ sll	$zero,$zero,0x0
.L8009b51c:
/* 0x8009b51c */ sb	$v0,162($v1)
.L8009b520:
/* 0x8009b520 */ lw	$v0,0($a1)
.L8009b524:
/* 0x8009b524 */ sll	$zero,$zero,0x0
.L8009b528:
/* 0x8009b528 */ lbu	$v1,112($v0)
.L8009b52c:
/* 0x8009b52c */ sll	$zero,$zero,0x0
.L8009b530:
/* 0x8009b530 */ beq	$v1,$zero,.L8009b540
.L8009b534:
/* 0x8009b534 */ addiu	$v0,$zero,1
.L8009b538:
/* 0x8009b538 */ beq	$v1,$v0,.L8009b550
.L8009b53c:
/* 0x8009b53c */ sll	$zero,$zero,0x0
.L8009b540:
/* 0x8009b540 */ jal	0x800a22b0
.L8009b544:
/* 0x8009b544 */ sll	$zero,$zero,0x0
.L8009b548:
/* 0x8009b548 */ j	.L8009b55c
.L8009b54c:
/* 0x8009b54c */ lui	$v0,0x800e
.L8009b550:
/* 0x8009b550 */ jal	0x800a22d0
.L8009b554:
/* 0x8009b554 */ sll	$zero,$zero,0x0
.L8009b558:
/* 0x8009b558 */ lui	$v0,0x800e
.L8009b55c:
/* 0x8009b55c */ lw	$v0,2840($v0)
.L8009b560:
/* 0x8009b560 */ sll	$zero,$zero,0x0
.L8009b564:
/* 0x8009b564 */ lbu	$a0,113($v0)
.L8009b568:
/* 0x8009b568 */ jal	0x800a22f0
.L8009b56c:
/* 0x8009b56c */ sll	$zero,$zero,0x0
.L8009b570:
/* 0x8009b570 */ lw	$ra,16($sp)
.L8009b574:
/* 0x8009b574 */ sll	$zero,$zero,0x0
.L8009b578:
/* 0x8009b578 */ jr	$ra
.L8009b57c:
/* 0x8009b57c */ addiu	$sp,$sp,24
.size FUN_8009b0a8, .-FUN_8009b0a8
