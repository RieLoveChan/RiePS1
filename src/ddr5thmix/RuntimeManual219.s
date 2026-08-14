    .set noreorder
    .set noat
    .set nomacro

    .macro MODE16_IF_INPUT_FLAG name
    .section .text.\name,"ax",@progbits
    .globl \name
    .type \name, @function
    .ent \name
\name:
    lui     $v0,0x800b
    lw      $v0,-0x3718($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,84($v0)
    nop
    andi    $v0,$v0,0x40
    beq     $v0,$zero,.L\name\()_done
    nop
    jal     FUN_80023210
    addiu   $a0,$zero,16
.L\name\()_done:
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
    .end \name
    .size \name, . - \name
    .endm

    MODE16_IF_INPUT_FLAG FUN_800219b8
    MODE16_IF_INPUT_FLAG FUN_80021a30
