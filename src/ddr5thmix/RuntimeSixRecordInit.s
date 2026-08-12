# DDR 5th Mix six-entry runtime record initializer.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a62c0, "ax", @progbits
.globl FUN_800a62c0
.type FUN_800a62c0, @function
.ent FUN_800a62c0
FUN_800a62c0:
.L800a62c0:
    addiu   $a3,$a0,0x18
.L800a62c4:
    addu    $a2,$zero,$zero
.L800a62c8:
    addiu   $t4,$zero,4
.L800a62cc:
    addiu   $t3,$zero,1
.L800a62d0:
    lui     $v0,0x8012
.L800a62d4:
    addiu   $t2,$v0,-0x7628
.L800a62d8:
    addiu   $a1,$a0,0x1c
.L800a62dc:
    addu    $t1,$a2,$zero
.L800a62e0:
    addu    $v0,$t3,$zero
.L800a62e4:
    sb      $v0,1($a0)
.L800a62e8:
    sw      $zero,8($a0)
.L800a62ec:
    sb      $zero,4($a0)
.L800a62f0:
    lb      $v0,3($a0)
.L800a62f4:
    nop
.L800a62f8:
    bne     $a2,$v0,.L800a6318
.L800a62fc:
    addiu   $t0,$zero,4
.L800a6300:
    lbu     $v0,-3($a1)
.L800a6304:
    nop
.L800a6308:
    bne     $v0,$t4,.L800a6354
.L800a630c:
    addiu   $t0,$zero,5
.L800a6310:
    j       0x800a6328
.L800a6314:
    nop
.L800a6318:
    lbu     $v0,-3($a1)
.L800a631c:
    nop
.L800a6320:
    bne     $v0,$t0,.L800a6354
.L800a6324:
    nop
.L800a6328:
    lbu     $v0,0($a3)
.L800a632c:
    nop
.L800a6330:
    subu    $v0,$t3,$v0
.L800a6334:
    sll     $v1,$v0,3
.L800a6338:
    addu    $v1,$v1,$v0
.L800a633c:
    sll     $v1,$v1,3
.L800a6340:
    addu    $v1,$v1,$t2
.L800a6344:
    lbu     $v0,0x22($v1)
.L800a6348:
    nop
.L800a634c:
    bne     $v0,$zero,.L800a635c
.L800a6350:
    nop
.L800a6354:
    sb      $t0,-2($a1)
.L800a6358:
    sw      $zero,0($a1)
.L800a635c:
    sw      $t1,0($a1)
.L800a6360:
    addiu   $t1,$t1,-2
.L800a6364:
    addiu   $a2,$a2,1
.L800a6368:
    addiu   $a1,$a1,8
.L800a636c:
    slti    $v0,$a2,6
.L800a6370:
    bne     $v0,$zero,.L800a62f0
.L800a6374:
    addiu   $a3,$a3,8
.L800a6378:
    jr      $ra
.L800a637c:
    nop
.end FUN_800a62c0
.size FUN_800a62c0, . - FUN_800a62c0
