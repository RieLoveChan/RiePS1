# DDR 5th Mix indexed runtime-image update helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007b9d4, "ax", @progbits
.globl FUN_8007b9d4
.type FUN_8007b9d4, @function
.ent FUN_8007b9d4
FUN_8007b9d4:
.L8007b9d4:
    addiu   $sp,$sp,-40
.L8007b9d8:
    sw      $s0,24($sp)
.L8007b9dc:
    addu    $s0,$a1,$zero
.L8007b9e0:
    lui     $a2,0x8013
.L8007b9e4:
    sltiu   $v0,$s0,0x29
.L8007b9e8:
    sw      $ra,32($sp)
.L8007b9ec:
    beq     $v0,$zero,.L8007ba7c
.L8007b9f0:
    sw      $s1,28($sp)
.L8007b9f4:
    lui     $v0,0x800e
.L8007b9f8:
    addiu   $v0,$v0,-0xd90
.L8007b9fc:
    sll     $v1,$a0,1
.L8007ba00:
    addu    $s1,$v1,$v0
.L8007ba04:
    lh      $v0,0($s1)
.L8007ba08:
    nop
.L8007ba0c:
    beq     $v0,$s0,.L8007ba7c
.L8007ba10:
    addiu   $v0,$zero,0x1f6
.L8007ba14:
    sll     $a1,$a0,5
.L8007ba18:
    addiu   $a1,$a1,0x3a0
.L8007ba1c:
    sll     $a3,$a0,4
.L8007ba20:
    addiu   $a3,$a3,0x280
.L8007ba24:
    sll     $a0,$s0,3
.L8007ba28:
    addu    $a0,$a0,$s0
.L8007ba2c:
    sll     $a0,$a0,3
.L8007ba30:
    addu    $a0,$a0,$s0
.L8007ba34:
    sll     $a0,$a0,2
.L8007ba38:
    subu    $a0,$a0,$s0
.L8007ba3c:
    lw      $v1,0x10($a2)
.L8007ba40:
    sll     $a0,$a0,5
.L8007ba44:
    sw      $v0,16($sp)
.L8007ba48:
    addiu   $v0,$zero,-0x8000
.L8007ba4c:
    or      $a1,$a1,$v0
.L8007ba50:
    sll     $a1,$a1,16
.L8007ba54:
    sll     $a3,$a3,16
.L8007ba58:
    sra     $a1,$a1,16
.L8007ba5c:
    sra     $a3,$a3,16
.L8007ba60:
    addu    $a2,$v1,$a2
.L8007ba64:
    addu    $a0,$a2,$a0
.L8007ba68:
    jal     0x800223a8
.L8007ba6c:
    addiu   $a2,$zero,0x100
.L8007ba70:
    addiu   $v0,$zero,1
.L8007ba74:
    j       0x8007ba80
.L8007ba78:
    sh      $s0,0($s1)
.L8007ba7c:
    addu    $v0,$zero,$zero
.L8007ba80:
    lw      $ra,32($sp)
.L8007ba84:
    lw      $s1,28($sp)
.L8007ba88:
    lw      $s0,24($sp)
.L8007ba8c:
    jr      $ra
.L8007ba90:
    addiu   $sp,$sp,40
.end FUN_8007b9d4
.size FUN_8007b9d4, . - FUN_8007b9d4
