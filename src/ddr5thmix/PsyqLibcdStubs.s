    .set noreorder
    .set noat
    .set nomacro

    .section .text.CdStatus,"ax",@progbits
    .globl CdStatus
    .type CdStatus, @function
    .ent CdStatus
CdStatus:
    lui     $v0, 0x800e
    lbu     $v0, -28816($v0)
    jr      $ra
    nop
    .end CdStatus
    .size CdStatus, . - CdStatus

    .section .text.CdMode,"ax",@progbits
    .globl CdMode
    .type CdMode, @function
    .ent CdMode
CdMode:
    lui     $v0, 0x800e
    lbu     $v0, -28800($v0)
    jr      $ra
    nop
    .end CdMode
    .size CdMode, . - CdMode

    .section .text.CdLastCom,"ax",@progbits
    .globl CdLastCom
    .type CdLastCom, @function
    .ent CdLastCom
CdLastCom:
    lui     $v0, 0x800e
    lbu     $v0, -28799($v0)
    jr      $ra
    nop
    .end CdLastCom
    .size CdLastCom, . - CdLastCom

    .section .text.CdLastPos,"ax",@progbits
    .globl CdLastPos
    .type CdLastPos, @function
    .ent CdLastPos
CdLastPos:
    lui     $v0, 0x800e
    jr      $ra
    addiu   $v0, $v0, -28804
    .end CdLastPos
    .size CdLastPos, . - CdLastPos
