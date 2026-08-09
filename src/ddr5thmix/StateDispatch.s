.set noreorder
.set noat
.set nomacro

.section .text.FUN_80024f60,"ax",@progbits
.globl FUN_80024f60
.type FUN_80024f60, @function
.ent FUN_80024f60
FUN_80024f60:
    addiu   $sp,$sp,-48
    lui     $v0,0x800e
    lw      $a0,14296($v0)
    lui     $v1,0x800e
    sw      $s3,28($sp)
    addiu   $s3,$v1,11184
    sw      $ra,40($sp)
    sw      $s5,36($sp)
    sw      $s4,32($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sltiu   $v0,$a0,12
    beq     $v0,$zero,sym_8002582c
    sw      $s0,16($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-22292
    sll     $v1,$a0,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
    lui     $s5,0x800e
    lui     $v0,0x800e
    addiu   $s1,$v0,14888
    lhu     $v0,264($s1)
    addiu   $s2,$s5,14184
    sh      $v0,142($s2)
    jal     0x800286e4
    andi    $a0,$v0,0xffff
    addu    $v1,$v0,$zero
.end FUN_80024f60
.size FUN_80024f60, . - FUN_80024f60
