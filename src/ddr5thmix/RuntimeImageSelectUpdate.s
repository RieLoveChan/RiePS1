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
