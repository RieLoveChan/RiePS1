.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009f0a8
.globl FUN_8009f0a8
.type FUN_8009f0a8, @function
FUN_8009f0a8:
.L8009f0a8:
/* 0x8009f0a8 */ addiu	$sp,$sp,-56
.L8009f0ac:
/* 0x8009f0ac */ sw	$s0,32($sp)
.L8009f0b0:
/* 0x8009f0b0 */ addu	$s0,$a1,$zero
.L8009f0b4:
/* 0x8009f0b4 */ sw	$s3,44($sp)
.L8009f0b8:
/* 0x8009f0b8 */ addu	$s3,$a0,$zero
.L8009f0bc:
/* 0x8009f0bc */ sw	$s2,40($sp)
.L8009f0c0:
/* 0x8009f0c0 */ addu	$s2,$s0,$zero
.L8009f0c4:
/* 0x8009f0c4 */ addiu	$a0,$zero,1
.L8009f0c8:
/* 0x8009f0c8 */ sw	$ra,48($sp)
.L8009f0cc:
/* 0x8009f0cc */ jal	0x800381e8
.L8009f0d0:
/* 0x8009f0d0 */ sw	$s1,36($sp)
.L8009f0d4:
/* 0x8009f0d4 */ sll	$s0,$s0,0x10
.L8009f0d8:
/* 0x8009f0d8 */ sra	$s0,$s0,0x10
.L8009f0dc:
/* 0x8009f0dc */ addiu	$v0,$zero,480
.L8009f0e0:
/* 0x8009f0e0 */ beq	$s0,$v0,.L8009f0f0
.L8009f0e4:
/* 0x8009f0e4 */ lui	$v0,0x8011
.L8009f0e8:
/* 0x8009f0e8 */ j	.L8009f108
.L8009f0ec:
/* 0x8009f0ec */ addiu	$s2,$zero,240
.L8009f0f0:
/* 0x8009f0f0 */ addiu	$v0,$v0,27296
.L8009f0f4:
/* 0x8009f0f4 */ lw	$v1,392($v0)
.L8009f0f8:
/* 0x8009f0f8 */ addiu	$a0,$zero,-241
.L8009f0fc:
/* 0x8009f0fc */ and	$v1,$v1,$a0
.L8009f100:
/* 0x8009f100 */ j	.L8009f118
.L8009f104:
/* 0x8009f104 */ ori	$v1,$v1,0x20
.L8009f108:
/* 0x8009f108 */ addiu	$v0,$v0,27296
.L8009f10c:
/* 0x8009f10c */ lw	$v1,392($v0)
.L8009f110:
/* 0x8009f110 */ addiu	$a0,$zero,-241
.L8009f114:
/* 0x8009f114 */ and	$v1,$v1,$a0
.L8009f118:
/* 0x8009f118 */ sw	$v1,392($v0)
.L8009f11c:
/* 0x8009f11c */ lui	$a1,0xffff
.L8009f120:
/* 0x8009f120 */ ori	$a1,$a1,0xfff
.L8009f124:
/* 0x8009f124 */ sll	$a0,$s3,0x10
.L8009f128:
/* 0x8009f128 */ sra	$a0,$a0,0x10
.L8009f12c:
/* 0x8009f12c */ lui	$v0,0x8011
.L8009f130:
/* 0x8009f130 */ addiu	$s0,$v0,27296
.L8009f134:
/* 0x8009f134 */ lw	$v1,392($s0)
.L8009f138:
/* 0x8009f138 */ addiu	$v0,$zero,-16
.L8009f13c:
/* 0x8009f13c */ and	$v0,$v1,$v0
.L8009f140:
/* 0x8009f140 */ srl	$v1,$v1,0x4
.L8009f144:
/* 0x8009f144 */ andi	$v1,$v1,0xf
.L8009f148:
/* 0x8009f148 */ or	$v0,$v0,$v1
.L8009f14c:
/* 0x8009f14c */ and	$v0,$v0,$a1
.L8009f150:
/* 0x8009f150 */ addiu	$v1,$zero,-3841
.L8009f154:
/* 0x8009f154 */ and	$v0,$v0,$v1
.L8009f158:
/* 0x8009f158 */ jal	0x80097974
.L8009f15c:
/* 0x8009f15c */ sw	$v0,392($s0)
.L8009f160:
/* 0x8009f160 */ lui	$s1,0x800b
.L8009f164:
/* 0x8009f164 */ sll	$v0,$s2,0x10
.L8009f168:
/* 0x8009f168 */ sra	$v0,$v0,0x10
.L8009f16c:
/* 0x8009f16c */ lw	$a1,-14104($s1)
.L8009f170:
/* 0x8009f170 */ addiu	$v1,$zero,480
.L8009f174:
/* 0x8009f174 */ sh	$s3,12($a1)
.L8009f178:
/* 0x8009f178 */ bne	$v0,$v1,.L8009f1c0
.L8009f17c:
/* 0x8009f17c */ sh	$s2,14($a1)
.L8009f180:
/* 0x8009f180 */ andi	$a0,$s3,0xffff
.L8009f184:
/* 0x8009f184 */ andi	$a1,$s2,0xffff
.L8009f188:
/* 0x8009f188 */ sw	$zero,16($sp)
.L8009f18c:
/* 0x8009f18c */ lw	$a3,392($s0)
.L8009f190:
/* 0x8009f190 */ addiu	$a2,$zero,5
.L8009f194:
/* 0x8009f194 */ srl	$a3,$a3,0x8
.L8009f198:
/* 0x8009f198 */ jal	0x800368e8
.L8009f19c:
/* 0x8009f19c */ andi	$a3,$a3,0xf
.L8009f1a0:
/* 0x8009f1a0 */ addu	$a0,$zero,$zero
.L8009f1a4:
/* 0x8009f1a4 */ addu	$a1,$a0,$zero
.L8009f1a8:
/* 0x8009f1a8 */ addu	$a2,$a0,$zero
.L8009f1ac:
/* 0x8009f1ac */ jal	0x80097c38
.L8009f1b0:
/* 0x8009f1b0 */ addu	$a3,$a0,$zero
.L8009f1b4:
/* 0x8009f1b4 */ lw	$v1,-14104($s1)
.L8009f1b8:
/* 0x8009f1b8 */ j	.L8009f1fc
.L8009f1bc:
/* 0x8009f1bc */ addiu	$v0,$zero,5
.L8009f1c0:
/* 0x8009f1c0 */ lhu	$a0,12($a1)
.L8009f1c4:
/* 0x8009f1c4 */ lhu	$a1,14($a1)
.L8009f1c8:
/* 0x8009f1c8 */ sw	$zero,16($sp)
.L8009f1cc:
/* 0x8009f1cc */ lw	$a3,392($s0)
.L8009f1d0:
/* 0x8009f1d0 */ addiu	$a2,$zero,4
.L8009f1d4:
/* 0x8009f1d4 */ srl	$a3,$a3,0x8
.L8009f1d8:
/* 0x8009f1d8 */ jal	0x800368e8
.L8009f1dc:
/* 0x8009f1dc */ andi	$a3,$a3,0xf
.L8009f1e0:
/* 0x8009f1e0 */ addu	$a0,$zero,$zero
.L8009f1e4:
/* 0x8009f1e4 */ addu	$a1,$a0,$zero
.L8009f1e8:
/* 0x8009f1e8 */ addu	$a2,$a0,$zero
.L8009f1ec:
/* 0x8009f1ec */ jal	0x80097c38
.L8009f1f0:
/* 0x8009f1f0 */ addiu	$a3,$zero,240
.L8009f1f4:
/* 0x8009f1f4 */ lw	$v1,-14104($s1)
.L8009f1f8:
/* 0x8009f1f8 */ addiu	$v0,$zero,4
.L8009f1fc:
/* 0x8009f1fc */ sh	$v0,16($v1)
.L8009f200:
/* 0x8009f200 */ lui	$a0,0x8011
.L8009f204:
/* 0x8009f204 */ addiu	$a0,$a0,27296
.L8009f208:
/* 0x8009f208 */ lui	$s0,0x800b
.L8009f20c:
/* 0x8009f20c */ lw	$v0,392($a0)
.L8009f210:
/* 0x8009f210 */ lw	$v1,-14104($s0)
.L8009f214:
/* 0x8009f214 */ srl	$v0,$v0,0x8
.L8009f218:
/* 0x8009f218 */ andi	$v0,$v0,0xf
.L8009f21c:
/* 0x8009f21c */ sh	$v0,18($v1)
.L8009f220:
/* 0x8009f220 */ lui	$v0,0x800e
.L8009f224:
/* 0x8009f224 */ sb	$zero,21584($v0)
.L8009f228:
/* 0x8009f228 */ sb	$zero,388($a0)
.L8009f22c:
/* 0x8009f22c */ lhu	$a0,12($v1)
.L8009f230:
/* 0x8009f230 */ lhu	$a1,14($v1)
.L8009f234:
/* 0x8009f234 */ srl	$a0,$a0,0x1
.L8009f238:
/* 0x8009f238 */ jal	0x800979f8
.L8009f23c:
/* 0x8009f23c */ srl	$a1,$a1,0x1
.L8009f240:
/* 0x8009f240 */ lw	$v0,-14104($s0)
.L8009f244:
/* 0x8009f244 */ addiu	$a0,$sp,24
.L8009f248:
/* 0x8009f248 */ sh	$zero,24($sp)
.L8009f24c:
/* 0x8009f24c */ sh	$zero,26($sp)
.L8009f250:
/* 0x8009f250 */ lhu	$v1,12($v0)
.L8009f254:
/* 0x8009f254 */ addiu	$v0,$zero,480
.L8009f258:
/* 0x8009f258 */ sh	$v0,30($sp)
.L8009f25c:
/* 0x8009f25c */ jal	0x8009fed4
.L8009f260:
/* 0x8009f260 */ sh	$v1,28($sp)
.L8009f264:
/* 0x8009f264 */ sll	$v0,$s2,0x10
.L8009f268:
/* 0x8009f268 */ sra	$v0,$v0,0x10
.L8009f26c:
/* 0x8009f26c */ addiu	$v1,$zero,480
.L8009f270:
/* 0x8009f270 */ bne	$v0,$v1,.L8009f334
.L8009f274:
/* 0x8009f274 */ addu	$s2,$zero,$zero
.L8009f278:
/* 0x8009f278 */ addu	$a0,$zero,$zero
.L8009f27c:
/* 0x8009f27c */ addu	$a1,$a0,$zero
.L8009f280:
/* 0x8009f280 */ addu	$a2,$a0,$zero
.L8009f284:
/* 0x8009f284 */ jal	0x80037868
.L8009f288:
/* 0x8009f288 */ addu	$a3,$a0,$zero
.L8009f28c:
/* 0x8009f28c */ addu	$s2,$zero,$zero
.L8009f290:
/* 0x8009f290 */ addu	$s3,$s0,$zero
.L8009f294:
/* 0x8009f294 */ lui	$v0,0x800e
.L8009f298:
/* 0x8009f298 */ addiu	$s1,$v0,10808
.L8009f29c:
/* 0x8009f29c */ lui	$v0,0x800e
.L8009f2a0:
/* 0x8009f2a0 */ addiu	$s0,$v0,10624
.L8009f2a4:
/* 0x8009f2a4 */ addu	$a0,$s0,$zero
.L8009f2a8:
/* 0x8009f2a8 */ lw	$v0,-14104($s3)
.L8009f2ac:
/* 0x8009f2ac */ addu	$a1,$zero,$zero
.L8009f2b0:
/* 0x8009f2b0 */ lhu	$a3,12($v0)
.L8009f2b4:
/* 0x8009f2b4 */ lhu	$v0,14($v0)
.L8009f2b8:
/* 0x8009f2b8 */ addu	$a2,$a1,$zero
.L8009f2bc:
/* 0x8009f2bc */ jal	0x8003b118
.L8009f2c0:
/* 0x8009f2c0 */ sw	$v0,16($sp)
.L8009f2c4:
/* 0x8009f2c4 */ addu	$a0,$s1,$zero
.L8009f2c8:
/* 0x8009f2c8 */ lw	$v0,-14104($s3)
.L8009f2cc:
/* 0x8009f2cc */ addu	$a1,$zero,$zero
.L8009f2d0:
/* 0x8009f2d0 */ lhu	$a3,12($v0)
.L8009f2d4:
/* 0x8009f2d4 */ lhu	$v0,14($v0)
.L8009f2d8:
/* 0x8009f2d8 */ addu	$a2,$a1,$zero
.L8009f2dc:
/* 0x8009f2dc */ jal	0x8003b1d8
.L8009f2e0:
/* 0x8009f2e0 */ sw	$v0,16($sp)
.L8009f2e4:
/* 0x8009f2e4 */ sb	$zero,24($s0)
.L8009f2e8:
/* 0x8009f2e8 */ sb	$zero,27($s0)
.L8009f2ec:
/* 0x8009f2ec */ sb	$zero,26($s0)
.L8009f2f0:
/* 0x8009f2f0 */ sb	$zero,25($s0)
.L8009f2f4:
/* 0x8009f2f4 */ lw	$v1,-14104($s3)
.L8009f2f8:
/* 0x8009f2f8 */ sll	$zero,$zero,0x0
.L8009f2fc:
/* 0x8009f2fc */ lhu	$v0,12($v1)
.L8009f300:
/* 0x8009f300 */ addiu	$s2,$s2,1
.L8009f304:
/* 0x8009f304 */ srl	$v0,$v0,0x1
.L8009f308:
/* 0x8009f308 */ sh	$v0,8($s0)
.L8009f30c:
/* 0x8009f30c */ lhu	$v0,14($v1)
.L8009f310:
/* 0x8009f310 */ addiu	$s1,$s1,20
.L8009f314:
/* 0x8009f314 */ sb	$zero,23($s0)
.L8009f318:
/* 0x8009f318 */ srl	$v0,$v0,0x1
.L8009f31c:
/* 0x8009f31c */ sh	$v0,10($s0)
.L8009f320:
/* 0x8009f320 */ slti	$v0,$s2,2
.L8009f324:
/* 0x8009f324 */ bne	$v0,$zero,.L8009f2a4
.L8009f328:
/* 0x8009f328 */ addiu	$s0,$s0,92
.L8009f32c:
/* 0x8009f32c */ j	.L8009f33c
.L8009f330:
/* 0x8009f330 */ addu	$s2,$zero,$zero
.L8009f334:
/* 0x8009f334 */ jal	0x8002200c
.L8009f338:
/* 0x8009f338 */ sll	$zero,$zero,0x0
.L8009f33c:
/* 0x8009f33c */ lui	$v0,0x800e
.L8009f340:
/* 0x8009f340 */ addiu	$s1,$v0,10808
.L8009f344:
/* 0x8009f344 */ lui	$v0,0x800e
.L8009f348:
/* 0x8009f348 */ addiu	$s0,$v0,10624
.L8009f34c:
/* 0x8009f34c */ jal	0x80038bc8
.L8009f350:
/* 0x8009f350 */ addu	$a0,$s0,$zero
.L8009f354:
/* 0x8009f354 */ jal	0x80038d94
.L8009f358:
/* 0x8009f358 */ addu	$a0,$s1,$zero
.L8009f35c:
/* 0x8009f35c */ addiu	$s1,$s1,20
.L8009f360:
/* 0x8009f360 */ addiu	$s2,$s2,1
.L8009f364:
/* 0x8009f364 */ slti	$v0,$s2,2
.L8009f368:
/* 0x8009f368 */ bne	$v0,$zero,.L8009f34c
.L8009f36c:
/* 0x8009f36c */ addiu	$s0,$s0,92
.L8009f370:
/* 0x8009f370 */ lw	$ra,48($sp)
.L8009f374:
/* 0x8009f374 */ lw	$s3,44($sp)
.L8009f378:
/* 0x8009f378 */ lw	$s2,40($sp)
.L8009f37c:
/* 0x8009f37c */ lw	$s1,36($sp)
.L8009f380:
/* 0x8009f380 */ lw	$s0,32($sp)
.L8009f384:
/* 0x8009f384 */ addiu	$v0,$zero,1
.L8009f388:
/* 0x8009f388 */ jr	$ra
.L8009f38c:
/* 0x8009f38c */ addiu	$sp,$sp,56
.size FUN_8009f0a8, .-FUN_8009f0a8
