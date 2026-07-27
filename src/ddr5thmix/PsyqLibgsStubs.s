    .set noreorder
    .set noat
    .set nomacro

    .section .text.GetClut,"ax",@progbits
    .globl GetClut
    .type GetClut, @function
    .ent GetClut
GetClut:
    sll     $v0, $a1, 0x6
    sra     $a0, $a0, 0x4
    andi    $a0, $a0, 0x3f
    or      $v0, $v0, $a0
    jr      $ra
    andi    $v0, $v0, 0xffff
    .end GetClut
    .size GetClut, . - GetClut

    .section .text.GsLinkObject5,"ax",@progbits
    .globl GsLinkObject5
    .type GsLinkObject5, @function
    .ent GsLinkObject5
GsLinkObject5:
    sll     $v0, $a2, 0x3
    subu    $v0, $v0, $a2
    sll     $v0, $v0, 0x2
    addu    $a0, $a0, $v0
    sw      $a0, 8($a1)
    jr      $ra
    sw      $zero, 0($a1)
    .end GsLinkObject5
    .size GsLinkObject5, . - GsLinkObject5
