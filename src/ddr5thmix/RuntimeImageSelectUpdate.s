# DDR 5th Mix indexed image-selection/update helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007b260, "ax", @progbits
.globl FUN_8007b260
.type FUN_8007b260, @function
.ent FUN_8007b260
FUN_8007b260:
.L8007b260:
    addiu   $sp,$sp,-48
.L8007b264:
    sw      $s2,32($sp)
.L8007b268:
    addu    $s2,$a0,$zero
.L8007b26c:
    lui     $v0,0x800c
.L8007b270:
    addiu   $a2,$v0,-0x54c0
.L8007b274:
    lui     $v1,0x800b
.L8007b278:
    lui     $v0,0x800e
.L8007b27c:
    addiu   $v0,$v0,-0xd80
.L8007b280:
    sw      $s1,28($sp)
.L8007b284:
    sll     $s1,$s2,1
.L8007b288:
    sw      $s4,40($sp)
.L8007b28c:
    addu    $s4,$s1,$v0
.L8007b290:
    lw      $v0,-0x3714($v1)
.L8007b294:
    sw      $s3,36($sp)
.L8007b298:
    addu    $s3,$a1,$zero
.L8007b29c:
    sw      $ra,44($sp)
.L8007b2a0:
    sw      $s0,24($sp)
.L8007b2a4:
    lh      $v1,0($s4)
.L8007b2a8:
    lw      $s0,0x90($v0)
.L8007b2ac:
    beq     $v1,$s3,.L8007b338
.L8007b2b0:
    sll     $v0,$s3,2
.L8007b2b4:
    addu    $v0,$v0,$a2
.L8007b2b8:
    lw      $a0,0($v0)
.L8007b2bc:
    addu    $a1,$s0,$zero
.L8007b2c0:
    jal     0x8002a8b8
.L8007b2c4:
    addu    $a0,$a0,$a2
.L8007b2c8:
    jal     0x80098880
.L8007b2cc:
    addiu   $a0,$zero,0x61
.L8007b2d0:
    addu    $a0,$s0,$zero
.L8007b2d4:
    addiu   $v1,$zero,2
.L8007b2d8:
    lh      $a2,0xa($v0)
.L8007b2dc:
    lh      $a1,2($v0)
.L8007b2e0:
    lh      $a3,0xe($v0)
.L8007b2e4:
    subu    $v1,$v1,$a2
.L8007b2e8:
    srav    $a1,$a1,$v1
.L8007b2ec:
    addu    $v1,$s1,$s2
.L8007b2f0:
    sll     $v1,$v1,1
.L8007b2f4:
    addu    $a1,$a1,$v1
.L8007b2f8:
    addiu   $v1,$zero,-0x8000
.L8007b2fc:
    or      $a1,$a1,$v1
.L8007b300:
    sll     $a1,$a1,16
.L8007b304:
    sra     $a1,$a1,16
.L8007b308:
    lh      $v1,0x10($v0)
.L8007b30c:
    lh      $a2,4($v0)
.L8007b310:
    addu    $v1,$v1,$s2
.L8007b314:
    sll     $v1,$v1,16
.L8007b318:
    sra     $v1,$v1,16
.L8007b31c:
    jal     0x800223a8
.L8007b320:
    sw      $v1,16($sp)
.L8007b324:
    jal     0x80038564
.L8007b328:
    addu    $a0,$zero,$zero
.L8007b32c:
    addiu   $v0,$zero,1
.L8007b330:
    j       0x8007b33c
.L8007b334:
    sh      $s3,0($s4)
.L8007b338:
    addu    $v0,$zero,$zero
.L8007b33c:
    lw      $ra,44($sp)
.L8007b340:
    lw      $s4,40($sp)
.L8007b344:
    lw      $s3,36($sp)
.L8007b348:
    lw      $s2,32($sp)
.L8007b34c:
    lw      $s1,28($sp)
.L8007b350:
    lw      $s0,24($sp)
.L8007b354:
    jr      $ra
.L8007b358:
    addiu   $sp,$sp,48
.end FUN_8007b260
.size FUN_8007b260, . - FUN_8007b260

.section .text.FUN_8007b35c, "ax", @progbits
.globl FUN_8007b35c
.type FUN_8007b35c, @function
.ent FUN_8007b35c
FUN_8007b35c:
.L8007b35c:
    addiu   $sp,$sp,-88
.L8007b360:
    sw      $s0,56($sp)
.L8007b364:
    addu    $s0,$a0,$zero
.L8007b368:
    sw      $s2,64($sp)
.L8007b36c:
    addu    $s2,$a1,$zero
.L8007b370:
    lui     $v0,0x8013
.L8007b374:
    ori     $v0,$v0,4
.L8007b378:
    sll     $a0,$s2,2
.L8007b37c:
    addu    $a0,$a0,$s2
.L8007b380:
    sll     $a0,$a0,2
.L8007b384:
    subu    $a0,$a0,$s2
.L8007b388:
    sll     $a0,$a0,3
.L8007b38c:
    subu    $a0,$a0,$s2
.L8007b390:
    sll     $a0,$a0,4
.L8007b394:
    addu    $a0,$a0,$s2
.L8007b398:
    sll     $a0,$a0,5
.L8007b39c:
    addu    $a0,$a0,$v0
.L8007b3a0:
    addiu   $a1,$sp,24
.L8007b3a4:
    sw      $ra,80($sp)
.L8007b3a8:
    sw      $s5,76($sp)
.L8007b3ac:
    sw      $s4,72($sp)
.L8007b3b0:
    sw      $s3,68($sp)
.L8007b3b4:
    jal     0x80038028
.L8007b3b8:
    sw      $s1,60($sp)
.L8007b3bc:
    addiu   $v0,$zero,1
.L8007b3c0:
    beq     $s0,$v0,.L8007b404
.L8007b3c4:
    slti    $v0,$s0,2
.L8007b3c8:
    beq     $v0,$zero,.L8007b3e0
.L8007b3cc:
    addiu   $v0,$zero,2
.L8007b3d0:
    beq     $s0,$zero,.L8007b3f0
.L8007b3d4:
    lui     $v0,0x800e
.L8007b3d8:
    j       0x8007b430
.L8007b3dc:
    addiu   $v0,$v0,-0xd88
.L8007b3e0:
    beq     $s0,$v0,.L8007b418
.L8007b3e4:
    lui     $v0,0x800e
.L8007b3e8:
    j       0x8007b430
.L8007b3ec:
    addiu   $v0,$v0,-0xd88
.L8007b3f0:
    ori     $s1,$zero,0x8280
.L8007b3f4:
    addiu   $s3,$zero,0xf0
.L8007b3f8:
    addiu   $s5,$zero,0x280
.L8007b3fc:
    j       0x8007b428
.L8007b400:
    addiu   $s4,$zero,0x1e1
.L8007b404:
    ori     $s1,$zero,0x8320
.L8007b408:
    addu    $s3,$zero,$zero
.L8007b40c:
    addiu   $s5,$zero,0x280
.L8007b410:
    j       0x8007b428
.L8007b414:
    addiu   $s4,$zero,0x1e2
.L8007b418:
    ori     $s1,$zero,0x8320
.L8007b41c:
    addiu   $s3,$zero,0xf0
.L8007b420:
    addiu   $s5,$zero,0x280
.L8007b424:
    addiu   $s4,$zero,0x1e3
.L8007b428:
    lui     $v0,0x800e
.L8007b42c:
    addiu   $v0,$v0,-0xd88
.L8007b430:
    sll     $v1,$s0,1
.L8007b434:
    addu    $s0,$v1,$v0
.L8007b438:
    lhu     $v1,0($s0)
.L8007b43c:
    nop
.L8007b440:
    andi    $v0,$v1,0xff
.L8007b444:
    bne     $v0,$s2,.L8007b49c
.L8007b448:
    addiu   $a0,$sp,16
.L8007b44c:
    andi    $v0,$v1,0x8000
.L8007b450:
    bne     $v0,$zero,.L8007b494
.L8007b454:
    ori     $v0,$zero,0x9600
.L8007b458:
    lw      $a1,36($sp)
.L8007b45c:
    lhu     $v1,34($sp)
.L8007b460:
    lhu     $a2,32($sp)
.L8007b464:
    sh      $s1,16($sp)
.L8007b468:
    addu    $a1,$a1,$v0
.L8007b46c:
    srl     $v1,$v1,1
.L8007b470:
    addu    $v0,$s3,$v1
.L8007b474:
    sh      $v0,18($sp)
.L8007b478:
    sh      $a2,20($sp)
.L8007b47c:
    jal     0x80038810
.L8007b480:
    sh      $v1,22($sp)
.L8007b484:
    lhu     $v0,0($s0)
.L8007b488:
    nop
.L8007b48c:
    ori     $v0,$v0,0x8000
.L8007b490:
    sh      $v0,0($s0)
.L8007b494:
    j       0x8007b4fc
.L8007b498:
    addu    $v0,$zero,$zero
.L8007b49c:
    lw      $a1,36($sp)
.L8007b4a0:
    lhu     $v1,32($sp)
.L8007b4a4:
    lhu     $v0,34($sp)
.L8007b4a8:
    sh      $s1,16($sp)
.L8007b4ac:
    sh      $s3,18($sp)
.L8007b4b0:
    srl     $v0,$v0,1
.L8007b4b4:
    sh      $v1,20($sp)
.L8007b4b8:
    jal     0x80038810
.L8007b4bc:
    sh      $v0,22($sp)
.L8007b4c0:
    lw      $v0,24($sp)
.L8007b4c4:
    nop
.L8007b4c8:
    srl     $v0,$v0,3
.L8007b4cc:
    andi    $v0,$v0,1
.L8007b4d0:
    beq     $v0,$zero,.L8007b4f8
.L8007b4d4:
    addiu   $a0,$sp,16
.L8007b4d8:
    lw      $a1,48($sp)
.L8007b4dc:
    lhu     $v0,44($sp)
.L8007b4e0:
    lhu     $v1,46($sp)
.L8007b4e4:
    sh      $s5,16($sp)
.L8007b4e8:
    sh      $s4,18($sp)
.L8007b4ec:
    sh      $v0,20($sp)
.L8007b4f0:
    jal     0x80038810
.L8007b4f4:
    sh      $v1,22($sp)
.L8007b4f8:
    sh      $s2,0($s0)
.L8007b4fc:
    lw      $ra,80($sp)
.L8007b500:
    lw      $s5,76($sp)
.L8007b504:
    lw      $s4,72($sp)
.L8007b508:
    lw      $s3,68($sp)
.L8007b50c:
    lw      $s2,64($sp)
.L8007b510:
    lw      $s1,60($sp)
.L8007b514:
    lw      $s0,56($sp)
.L8007b518:
    jr      $ra
.L8007b51c:
    addiu   $sp,$sp,88
.end FUN_8007b35c
.size FUN_8007b35c, . - FUN_8007b35c
