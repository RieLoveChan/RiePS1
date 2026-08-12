.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a0c04,"ax",@progbits
.globl FUN_800a0c04
.type FUN_800a0c04, @function
.ent FUN_800a0c04
FUN_800a0c04:
    addiu   $sp,$sp,-32
    addiu   $a0,$sp,16
    addu    $a1,$zero,$zero
    sw      $s0,24($sp)
    lui     $s0,0x800b
    lw      $v1,-0x3718($s0)
    addu    $a2,$a1,$zero
    sw      $ra,28($sp)
    lhu     $v0,0xc($v1)
    addu    $a3,$a1,$zero
    sh      $zero,0x12($sp)
    sh      $v0,0x10($sp)
    lhu     $v1,0xc($v1)
    addiu   $v0,$zero,0x200
    sh      $v0,0x16($sp)
    addiu   $v0,$zero,0x400
    subu    $v0,$v0,$v1
    jal     ClearImage2
    sh      $v0,0x14($sp)
    lw      $v1,-0x3718($s0)
    nop
    lhu     $v0,0xc($v1)
    nop
    sltiu   $v0,$v0,0x141
    bne     $v0,$zero,.L800a0ca0
    addiu   $a0,$sp,16
    addu    $a1,$zero,$zero
    addu    $a2,$a1,$zero
    addu    $a3,$a1,$zero
    addiu   $v0,$zero,0x140
    sh      $v0,0x10($sp)
    addiu   $v0,$zero,0x1e0
    sh      $v0,0x12($sp)
    lhu     $v0,0xc($v1)
    addiu   $v1,$zero,0x20
    sh      $v1,0x16($sp)
    addiu   $v0,$v0,-0x140
    jal     ClearImage2
    sh      $v0,0x14($sp)
.L800a0ca0:
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_800a0c04
.size FUN_800a0c04, . - FUN_800a0c04
