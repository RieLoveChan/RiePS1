# DDR 5th Mix runtime flag selector.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_80086634, "ax", @progbits
.globl FUN_80086634
.type FUN_80086634, @function
.ent FUN_80086634
FUN_80086634:
.L80086634:
    addiu   $sp,$sp,-24
.L80086638:
    lui     $v0,0x800f
.L8008663c:
    addiu   $a1,$v0,0x2908
.L80086640:
    addiu   $a3,$zero,2
.L80086644:
    sw      $ra,16($sp)
.L80086648:
    lb      $v0,0x24($a1)
.L8008664c:
    lhu     $a0,0($a0)
.L80086650:
    beq     $v0,$a3,.L800866c0
.L80086654:
    addiu   $v1,$zero,4
.L80086658:
    beq     $v0,$v1,.L800866c0
.L8008665c:
    ori     $v0,$zero,0x8000
.L80086660:
    addu    $a2,$a1,$v0
.L80086664:
    lb      $v0,0x12a8($a2)
.L80086668:
    nop
.L8008666c:
    beq     $v0,$a3,.L800866b8
.L80086670:
    nop
.L80086674:
    beq     $v0,$v1,.L800866b8
.L80086678:
    addiu   $v1,$zero,7
.L8008667c:
    lbu     $v0,0x92($a1)
.L80086680:
    nop
.L80086684:
    beq     $v0,$v1,.L80086694
.L80086688:
    nop
.L8008668c:
    bne     $v0,$zero,.L800866c4
.L80086690:
    addu    $v0,$zero,$zero
.L80086694:
    lbu     $v0,0x1316($a2)
.L80086698:
    nop
.L8008669c:
    beq     $v0,$v1,.L800866ac
.L800866a0:
    nop
.L800866a4:
    bne     $v0,$zero,.L800866c0
.L800866a8:
    nop
.L800866ac:
    lui     $v0,0xffff
.L800866b0:
    j       0x800866c4
.L800866b4:
    ori     $v0,$v0,0x6d7c
.L800866b8:
    j       0x800866c4
.L800866bc:
    ori     $v0,$zero,0x9284
.L800866c0:
    addu    $v0,$zero,$zero
.L800866c4:
    addu    $v0,$a1,$v0
.L800866c8:
    lbu     $a1,0x92($v0)
.L800866cc:
    nop
.L800866d0:
    xori    $a1,$a1,2
.L800866d4:
    sltiu   $a1,$a1,1
.L800866d8:
    jal     0x8002a8b0
.L800866dc:
    sll     $a1,$a1,1
.L800866e0:
    lw      $ra,16($sp)
.L800866e4:
    nop
.L800866e8:
    jr      $ra
.L800866ec:
    addiu   $sp,$sp,24
.end FUN_80086634
.size FUN_80086634, . - FUN_80086634
