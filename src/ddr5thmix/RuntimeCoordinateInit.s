# DDR 5th Mix runtime coordinate/object-state initialization helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007c21c, "ax", @progbits
.globl FUN_8007c21c
.type FUN_8007c21c, @function
.ent FUN_8007c21c
FUN_8007c21c:
.L8007c21c:
    addiu   $sp,$sp,-48
.L8007c220:
    sw      $s0,16($sp)
.L8007c224:
    addiu   $s0,$zero,-1
.L8007c228:
    sw      $s3,28($sp)
.L8007c22c:
    addiu   $s3,$zero,4
.L8007c230:
    lui     $v0,0x800f
.L8007c234:
    sw      $s4,32($sp)
.L8007c238:
    addiu   $s4,$v0,0x29ec
.L8007c23c:
    sw      $s2,24($sp)
.L8007c240:
    addiu   $s2,$s4,-0x50
.L8007c244:
    lui     $v0,0x8019
.L8007c248:
    lw      $v0,4($v0)
.L8007c24c:
    lui     $a0,0x8019
.L8007c250:
    lw      $a0,0xc($a0)
.L8007c254:
    lui     $v1,0x8019
.L8007c258:
    sw      $ra,40($sp)
.L8007c25c:
    sw      $s5,36($sp)
.L8007c260:
    sw      $s1,20($sp)
.L8007c264:
    addu    $s1,$v0,$v1
.L8007c268:
    addu    $a0,$a0,$v1
.L8007c26c:
    jal     0x8007e064
.L8007c270:
    sw      $a0,0xb80($s4)
.L8007c274:
    addu    $a0,$zero,$zero
.L8007c278:
    jal     0x80036e48
.L8007c27c:
    addu    $a1,$s4,$zero
.L8007c280:
    lui     $v0,0x800e
.L8007c284:
    addiu   $s5,$v0,-0xd74
.L8007c288:
    addiu   $a1,$s2,0xa0
.L8007c28c:
    addu    $v0,$s3,$s5
.L8007c290:
    addiu   $s3,$s3,4
.L8007c294:
    addiu   $s2,$s2,0x50
.L8007c298:
    lw      $v0,0($v0)
.L8007c29c:
    addiu   $s0,$s0,1
.L8007c2a0:
    sll     $a0,$v0,2
.L8007c2a4:
    addu    $a0,$a0,$v0
.L8007c2a8:
    sll     $a0,$a0,4
.L8007c2ac:
    addu    $a0,$s4,$a0
.L8007c2b0:
    jal     0x80036e48
.L8007c2b4:
    addiu   $a0,$a0,0xa0
.L8007c2b8:
    slti    $v0,$s0,16
.L8007c2bc:
    bne     $v0,$zero,.L8007c28c
.L8007c2c0:
    addiu   $a1,$s2,0xa0
.L8007c2c4:
    addu    $s0,$zero,$zero
.L8007c2c8:
    addu    $a1,$s4,$zero
.L8007c2cc:
    addiu   $a0,$s1,4
.L8007c2d0:
    slti    $v0,$s0,5
.L8007c2d4:
    beq     $v0,$zero,.L8007c304
.L8007c2d8:
    addiu   $v1,$a1,0xa0
.L8007c2dc:
    lh      $v0,0($s1)
.L8007c2e0:
    nop
.L8007c2e4:
    sw      $v0,0x18($v1)
.L8007c2e8:
    lh      $v0,-2($a0)
.L8007c2ec:
    addiu   $s1,$s1,6
.L8007c2f0:
    sw      $v0,0x1c($v1)
.L8007c2f4:
    lh      $v0,0($a0)
.L8007c2f8:
    addiu   $a0,$a0,6
.L8007c2fc:
    j       0x8007c310
.L8007c300:
    sw      $v0,0x20($v1)
.L8007c304:
    sw      $zero,0x18($v1)
.L8007c308:
    sw      $zero,0x1c($v1)
.L8007c30c:
    sw      $zero,0x20($v1)
.L8007c310:
    addu    $v0,$s4,$s0
.L8007c314:
    sb      $zero,0xb40($v0)
.L8007c318:
    addiu   $s0,$s0,1
.L8007c31c:
    slti    $v0,$s0,16
.L8007c320:
    bne     $v0,$zero,.L8007c2d0
.L8007c324:
    addiu   $a1,$a1,0x50
.L8007c328:
    addu    $a0,$zero,$zero
.L8007c32c:
    addiu   $a1,$zero,-1
.L8007c330:
    addu    $v1,$s4,$zero
.L8007c334:
    sw      $a1,0xb58($v1)
.L8007c338:
    sw      $zero,0xb5c($v1)
.L8007c33c:
    sw      $zero,0xb60($v1)
.L8007c340:
    sw      $zero,0xb64($v1)
.L8007c344:
    sw      $zero,0xb68($v1)
.L8007c348:
    addiu   $a0,$a0,1
.L8007c34c:
    slti    $v0,$a0,2
.L8007c350:
    bne     $v0,$zero,.L8007c334
.L8007c354:
    addiu   $v1,$v1,20
.L8007c358:
    addiu   $v0,$zero,0x1000
.L8007c35c:
    sw      $v0,0xb68($s4)
.L8007c360:
    lw      $ra,40($sp)
.L8007c364:
    lw      $s5,36($sp)
.L8007c368:
    lw      $s4,32($sp)
.L8007c36c:
    lw      $s3,28($sp)
.L8007c370:
    lw      $s2,24($sp)
.L8007c374:
    lw      $s1,20($sp)
.L8007c378:
    lw      $s0,16($sp)
.L8007c37c:
    jr      $ra
.L8007c380:
    addiu   $sp,$sp,48
.end FUN_8007c21c
.size FUN_8007c21c, . - FUN_8007c21c
