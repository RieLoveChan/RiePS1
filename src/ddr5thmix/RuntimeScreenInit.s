.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009851c,"ax",@progbits
.globl FUN_8009851c
.type FUN_8009851c, @function
.ent FUN_8009851c
FUN_8009851c:
    addiu   $sp,$sp,-24
    addu    $a0,$zero,$zero
    lui     $v0,0x8011
    addiu   $v0,$v0,0x6aa0
    addu    $a1,$v0,$zero
    ori     $a2,$zero,0xffff
    lui     $v0,0x8011
    sh      $zero,0x6c30($v0)
    addiu   $v0,$v0,0x6c30
    addiu   $v1,$zero,0x1f0
    sw      $ra,0x10($sp)
    sh      $v1,0x4($v0)
    addiu   $v1,$zero,8
    sh      $v1,0x6($v0)
    sh      $v1,0x8($v0)
    addiu   $v1,$zero,0x1ff
    sh      $zero,0x2($v0)
    sh      $zero,0xa($v0)
    sh      $zero,0xe($v0)
    sh      $v1,0x10($v0)
    addiu   $v0,$zero,0x10
    sh      $v0,0x8($a1)
    addiu   $v0,$zero,1
    sh      $zero,0x4($a1)
    sh      $v1,0x6($a1)
    sh      $v0,0xa($a1)
.L80098584:
    sll     $v0,$a0,1
.L80098588:
    lw      $v1,0x104($a1)
    addiu   $a0,$a0,1
    addu    $v0,$v0,$v1
    sh      $a2,0x0($v0)
    slti    $v0,$a0,0x10
    bne     $v0,$zero,.L80098588
    sll     $v0,$a0,1
    lui     $a0,0x8011
    addiu   $a0,$a0,0x6aa4
    lw      $a1,0x100($a0)
    jal     LoadImage
    nop
    lw      $ra,0x10($sp)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_8009851c
.size FUN_8009851c, . - FUN_8009851c
