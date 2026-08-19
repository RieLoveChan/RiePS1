.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a12e0
.globl FUN_800a12e0
.type FUN_800a12e0, @function
FUN_800a12e0:
.L800a12e0:
/* 0x800a12e0 */ addiu	$sp,$sp,-32
.L800a12e4:
/* 0x800a12e4 */ sw	$s1,20($sp)
.L800a12e8:
/* 0x800a12e8 */ lui	$s1,0x800b
.L800a12ec:
/* 0x800a12ec */ lw	$a0,-14100($s1)
.L800a12f0:
/* 0x800a12f0 */ sw	$ra,24($sp)
.L800a12f4:
/* 0x800a12f4 */ sw	$s0,16($sp)
.L800a12f8:
/* 0x800a12f8 */ lbu	$v0,81($a0)
.L800a12fc:
/* 0x800a12fc */ sll	$zero,$zero,0x0
.L800a1300:
/* 0x800a1300 */ sll	$v1,$v0,0x3
.L800a1304:
/* 0x800a1304 */ subu	$v1,$v1,$v0
.L800a1308:
/* 0x800a1308 */ sll	$v1,$v1,0x2
.L800a130c:
/* 0x800a130c */ lui	$v0,0x800e
.L800a1310:
/* 0x800a1310 */ addiu	$v0,$v0,5136
.L800a1314:
/* 0x800a1314 */ addu	$v1,$v1,$v0
.L800a1318:
/* 0x800a1318 */ lw	$v0,4($v1)
.L800a131c:
/* 0x800a131c */ sll	$zero,$zero,0x0
.L800a1320:
/* 0x800a1320 */ beq	$v0,$zero,.L800a1384
.L800a1324:
/* 0x800a1324 */ lui	$s0,0x800e
.L800a1328:
/* 0x800a1328 */ lbu	$v0,5528($s0)
.L800a132c:
/* 0x800a132c */ sll	$zero,$zero,0x0
.L800a1330:
/* 0x800a1330 */ bne	$v0,$zero,.L800a135c
.L800a1334:
/* 0x800a1334 */ lui	$a1,0x8017
.L800a1338:
/* 0x800a1338 */ sb	$zero,0($a0)
.L800a133c:
/* 0x800a133c */ lw	$a0,4($v1)
.L800a1340:
/* 0x800a1340 */ jal	0x800a2384
.L800a1344:
/* 0x800a1344 */ ori	$a1,$a1,0x4000
.L800a1348:
/* 0x800a1348 */ lbu	$v0,5528($s0)
.L800a134c:
/* 0x800a134c */ sll	$zero,$zero,0x0
.L800a1350:
/* 0x800a1350 */ addiu	$v0,$v0,1
.L800a1354:
/* 0x800a1354 */ j	.L800a1394
.L800a1358:
/* 0x800a1358 */ sb	$v0,5528($s0)
.L800a135c:
/* 0x800a135c */ jal	0x800a201c
.L800a1360:
/* 0x800a1360 */ sll	$zero,$zero,0x0
.L800a1364:
/* 0x800a1364 */ andi	$v0,$v0,0xff
.L800a1368:
/* 0x800a1368 */ beq	$v0,$zero,.L800a1394
.L800a136c:
/* 0x800a136c */ addiu	$v0,$zero,4
.L800a1370:
/* 0x800a1370 */ lw	$v1,-14100($s1)
.L800a1374:
/* 0x800a1374 */ sll	$zero,$zero,0x0
.L800a1378:
/* 0x800a1378 */ sb	$v0,64($v1)
.L800a137c:
/* 0x800a137c */ j	.L800a1394
.L800a1380:
/* 0x800a1380 */ sb	$zero,5528($s0)
.L800a1384:
/* 0x800a1384 */ addiu	$v0,$zero,4
.L800a1388:
/* 0x800a1388 */ sb	$v0,64($a0)
.L800a138c:
/* 0x800a138c */ lui	$v0,0x800e
.L800a1390:
/* 0x800a1390 */ sb	$zero,5528($v0)
.L800a1394:
/* 0x800a1394 */ lw	$ra,24($sp)
.L800a1398:
/* 0x800a1398 */ lw	$s1,20($sp)
.L800a139c:
/* 0x800a139c */ lw	$s0,16($sp)
.L800a13a0:
/* 0x800a13a0 */ jr	$ra
.L800a13a4:
/* 0x800a13a4 */ addiu	$sp,$sp,32
.size FUN_800a12e0, .-FUN_800a12e0
