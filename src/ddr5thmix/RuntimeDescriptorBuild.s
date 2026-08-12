# DDR 5th Mix indexed runtime descriptor builder.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007bb5c, "ax", @progbits
.globl FUN_8007bb5c
.type FUN_8007bb5c, @function
.ent FUN_8007bb5c
FUN_8007bb5c:
.L8007bb5c:
    addiu   $sp,$sp,-40
.L8007bb60:
    sw      $s1,28($sp)
.L8007bb64:
    addu    $s1,$a0,$zero
.L8007bb68:
    sw      $s0,24($sp)
.L8007bb6c:
    lui     $s0,0x8017
.L8007bb70:
    ori     $s0,$s0,0x4000
.L8007bb74:
    sltiu   $v0,$s1,0x32
.L8007bb78:
    sw      $ra,36($sp)
.L8007bb7c:
    bne     $v0,$zero,.L8007bb8c
.L8007bb80:
    sw      $s2,32($sp)
.L8007bb84:
    j       0x8007bc04
.L8007bb88:
    addiu   $v0,$zero,-1
.L8007bb8c:
    lui     $s2,0x800e
.L8007bb90:
    lh      $v0,-0xd98($s2)
.L8007bb94:
    nop
.L8007bb98:
    beq     $v0,$s1,.L8007bc00
.L8007bb9c:
    addiu   $a0,$zero,0x45
.L8007bba0:
    lw      $v0,0x10($s0)
.L8007bba4:
    nop
.L8007bba8:
    addu    $s0,$v0,$s0
.L8007bbac:
    sll     $v0,$s1,2
.L8007bbb0:
    addu    $v0,$v0,$s0
.L8007bbb4:
    lw      $v0,0($v0)
.L8007bbb8:
    jal     0x80098880
.L8007bbbc:
    addu    $s0,$s0,$v0
.L8007bbc0:
    lh      $v1,2($v0)
.L8007bbc4:
    lh      $a1,0xa($v0)
.L8007bbc8:
    lh      $a2,4($v0)
.L8007bbcc:
    lh      $a3,0xe($v0)
.L8007bbd0:
    lh      $v0,0x10($v0)
.L8007bbd4:
    addu    $a0,$s0,$zero
.L8007bbd8:
    sw      $v0,16($sp)
.L8007bbdc:
    addiu   $v0,$zero,2
.L8007bbe0:
    subu    $v0,$v0,$a1
.L8007bbe4:
    srav    $v1,$v1,$v0
.L8007bbe8:
    addiu   $a1,$zero,-0x8000
.L8007bbec:
    jal     0x800223a8
.L8007bbf0:
    or      $a1,$v1,$a1
.L8007bbf4:
    addiu   $v0,$zero,1
.L8007bbf8:
    j       0x8007bc04
.L8007bbfc:
    sh      $s1,-0xd98($s2)
.L8007bc00:
    addu    $v0,$zero,$zero
.L8007bc04:
    lw      $ra,36($sp)
.L8007bc08:
    lw      $s2,32($sp)
.L8007bc0c:
    lw      $s1,28($sp)
.L8007bc10:
    lw      $s0,24($sp)
.L8007bc14:
    jr      $ra
.L8007bc18:
    addiu   $sp,$sp,40
.end FUN_8007bb5c
.size FUN_8007bb5c, . - FUN_8007bb5c
