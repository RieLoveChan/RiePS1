.set noreorder
.set noat
.set nomacro

.section .text.FUN_80097134,"ax",@progbits
.globl FUN_80097134
.type FUN_80097134, @function
.ent FUN_80097134
FUN_80097134:
    addiu   $sp,$sp,-32
    sw      $s1,0x14($sp)
    addu    $s1,$zero,$zero
    sw      $s2,0x18($sp)
    addiu   $s2,$zero,1
    lui     $v0,0x8011
    sw      $s0,0x10($sp)
    addiu   $s0,$v0,0x5e70
    sw      $ra,0x1c($sp)
.L80097158:
    addu    $v1,$zero,$zero
    addu    $v0,$s0,$v1
.L80097160:
    addiu   $v1,$v1,1
    sb      $s2,0x4($v0)
    sb      $zero,0x6($v0)
    sb      $zero,0x8($v0)
    sb      $s2,0xa($v0)
    slti    $v0,$v1,2
    bne     $v0,$zero,.L80097160
    addu    $v0,$s0,$v1
    addu    $a0,$s1,$zero
    jal     FUN_800a36d8
    sb      $s1,0xe($s0)
    lui     $v1,0x6666
    ori     $v1,$v1,0x6667
    sll     $v0,$v0,8
    mult    $v0,$v1
    addiu   $s1,$s1,1
    sra     $v0,$v0,31
    sb      $zero,0xc($s0)
    sb      $zero,0xd($s0)
    sb      $zero,0xf($s0)
    mfhi    $a1
    sra     $v1,$a1,2
    subu    $v1,$v1,$v0
    sw      $v1,0($s0)
    slti    $v0,$s1,2
    bne     $v0,$zero,.L80097158
    addiu   $s0,$s0,0x14
    lw      $ra,0x1c($sp)
    lw      $s2,0x18($sp)
    lw      $s1,0x14($sp)
    lw      $s0,0x10($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80097134
.size FUN_80097134, . - FUN_80097134
