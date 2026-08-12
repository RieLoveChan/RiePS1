.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007e9a8,"ax",@progbits
.globl FUN_8007e9a8
.type FUN_8007e9a8, @function
.ent FUN_8007e9a8
FUN_8007e9a8:
    addiu   $sp,$sp,-40
    lui     $v0,0x800f
    addiu   $v1,$v0,0x29ec
    sw      $s4,0x20($sp)
    lui     $s4,0x8013
    sw      $s1,0x14($sp)
    addiu   $s1,$zero,0x13
    lui     $v0,0x8011
    addiu   $v0,$v0,0x26c8
    addiu   $v0,$v0,0x4c
    sw      $ra,0x24($sp)
    sw      $s3,0x1c($sp)
    sw      $s2,0x18($sp)
    sw      $s0,0x10($sp)
.L8007e9e0:
    sw      $zero,0($v0)
    addiu   $s1,$s1,-1
    bgez    $s1,.L8007e9e0
    addiu   $v0,$v0,-4
    addu    $s1,$zero,$zero
    lui     $v0,0x8011
    addiu   $s3,$v0,0x26c8
    lw      $v0,0($s4)
    addu    $s2,$s4,$zero
    addu    $v0,$s4,$v0
    sw      $v0,0xb80($v1)
.L8007ea0c:
    lw      $v0,0($s2)
    nop
    beq     $v0,$zero,.L8007ea28
    addu    $s0,$s4,$v0
    jal     FUN_8007e064
    addu    $a0,$s0,$zero
    sw      $s0,0($s3)
.L8007ea28:
    addiu   $s3,$s3,4
    addiu   $s1,$s1,1
    slti    $v0,$s1,0x11
    bne     $v0,$zero,.L8007ea0c
    addiu   $s2,$s2,4
    lw      $ra,0x24($sp)
    lw      $s4,0x20($sp)
    lw      $s3,0x1c($sp)
    lw      $s2,0x18($sp)
    lw      $s1,0x14($sp)
    lw      $s0,0x10($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_8007e9a8
.size FUN_8007e9a8, . - FUN_8007e9a8
