# DDR 5th Mix runtime timing-table updater.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f840, "ax", @progbits
.globl FUN_8007f840
.type FUN_8007f840, @function
.ent FUN_8007f840
FUN_8007f840:
.L8007f840:
    lui     $v0,0x800e
.L8007f844:
    lw      $v1,0xb18($v0)
.L8007f848:
    nop
.L8007f84c:
    lh      $v0,0x19f2($v1)
.L8007f850:
    addu    $t0,$a0,$zero
.L8007f854:
    beq     $v0,$zero,.L8007f8a4
.L8007f858:
    sh      $zero,0x19f0($v1)
.L8007f85c:
    addu    $a0,$zero,$zero
.L8007f860:
    addu    $a2,$v1,$zero
.L8007f864:
    addiu   $a3,$a2,0x19f0
.L8007f868:
    sll     $v0,$a0,3
.L8007f86c:
    lh      $v1,0x19f0($a2)
.L8007f870:
    addiu   $a0,$a0,1
.L8007f874:
    sll     $v1,$v1,1
.L8007f878:
    addu    $v1,$v1,$v0
.L8007f87c:
    addu    $v1,$a3,$v1
.L8007f880:
    slti    $v0,$a0,0x32
.L8007f884:
    bne     $v0,$zero,.L8007f868
.L8007f888:
    sh      $zero,4($v1)
.L8007f88c:
    lui     $v0,0x800e
.L8007f890:
    lw      $v1,0xb18($v0)
.L8007f894:
    nop
.L8007f898:
    lhu     $v0,0x19f0($v1)
.L8007f89c:
    nop
.L8007f8a0:
    sh      $v0,0x19f2($v1)
.L8007f8a4:
    sltiu   $v0,$t0,0x32
.L8007f8a8:
    beq     $v0,$zero,.L8007f8f0
.L8007f8ac:
    lui     $v0,0x800e
.L8007f8b0:
    lw      $a0,0xb18($v0)
.L8007f8b4:
    sll     $v1,$t0,3
.L8007f8b8:
    lh      $v0,0x19f0($a0)
.L8007f8bc:
    addiu   $a0,$a0,0x19f0
.L8007f8c0:
    sll     $v0,$v0,1
.L8007f8c4:
    addu    $v0,$v0,$v1
.L8007f8c8:
    addu    $a0,$a0,$v0
.L8007f8cc:
    lhu     $v0,4($a0)
.L8007f8d0:
    ori     $v1,$zero,0xc350
.L8007f8d4:
    addu    $a1,$v0,$a1
.L8007f8d8:
    slt     $v0,$v1,$a1
.L8007f8dc:
    beq     $v0,$zero,.L8007f8ec
.L8007f8e0:
    nop
.L8007f8e4:
    j       0x8007f8f0
.L8007f8e8:
    sh      $v1,4($a0)
.L8007f8ec:
    sh      $a1,4($a0)
.L8007f8f0:
    jr      $ra
.L8007f8f4:
    addu    $v0,$zero,$zero
.end FUN_8007f840
.size FUN_8007f840, . - FUN_8007f840
