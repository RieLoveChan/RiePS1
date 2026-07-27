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

    .section .text.CdFlush,"ax",@progbits
    .globl CdFlush
    .type CdFlush, @function
    .ent CdFlush
CdFlush:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_flush
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end CdFlush
    .size CdFlush, . - CdFlush

    .section .text.CdSetDebug,"ax",@progbits
    .globl CdSetDebug
    .type CdSetDebug, @function
    .ent CdSetDebug
CdSetDebug:
    lui     $v0, 0x800e
    lw      $v0, -28820($v0)
    lui     $at, 0x800e
    jr      $ra
    sw      $a0, -28820($at)
    .end CdSetDebug
    .size CdSetDebug, . - CdSetDebug

    .section .text.CdSync,"ax",@progbits
    .globl CdSync
    .type CdSync, @function
    .ent CdSync
CdSync:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_sync
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end CdSync
    .size CdSync, . - CdSync

    .section .text.CdReady,"ax",@progbits
    .globl CdReady
    .type CdReady, @function
    .ent CdReady
CdReady:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_ready
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end CdReady
    .size CdReady, . - CdReady

    .section .text.CdSyncCallback,"ax",@progbits
    .globl CdSyncCallback
    .type CdSyncCallback, @function
    .ent CdSyncCallback
CdSyncCallback:
    lui     $v0, 0x800e
    lw      $v0, -28828($v0)
    lui     $at, 0x800e
    jr      $ra
    sw      $a0, -28828($at)
    .end CdSyncCallback
    .size CdSyncCallback, . - CdSyncCallback

    .section .text.CdReadyCallback,"ax",@progbits
    .globl CdReadyCallback
    .type CdReadyCallback, @function
    .ent CdReadyCallback
CdReadyCallback:
    lui     $v0, 0x800e
    lw      $v0, -28824($v0)
    lui     $at, 0x800e
    jr      $ra
    sw      $a0, -28824($at)
    .end CdReadyCallback
    .size CdReadyCallback, . - CdReadyCallback

    .section .text.CdMix,"ax",@progbits
    .globl CdMix
    .type CdMix, @function
    .ent CdMix
CdMix:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_vol
    nop
    lw      $ra, 16($sp)
    li      $v0, 1
    jr      $ra
    addiu   $sp, $sp, 24
    .end CdMix
    .size CdMix, . - CdMix

    .section .text.CdGetSector,"ax",@progbits
    .globl CdGetSector
    .type CdGetSector, @function
    .ent CdGetSector
CdGetSector:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_getsector
    nop
    lw      $ra, 16($sp)
    sltiu   $v0, $v0, 1
    jr      $ra
    addiu   $sp, $sp, 24
    .end CdGetSector
    .size CdGetSector, . - CdGetSector

    .section .text.CdGetSector2,"ax",@progbits
    .globl CdGetSector2
    .type CdGetSector2, @function
    .ent CdGetSector2
CdGetSector2:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_getsector2
    nop
    lw      $ra, 16($sp)
    sltiu   $v0, $v0, 1
    jr      $ra
    addiu   $sp, $sp, 24
    .end CdGetSector2
    .size CdGetSector2, . - CdGetSector2

    .section .text.CdDataSync,"ax",@progbits
    .globl CdDataSync
    .type CdDataSync, @function
    .ent CdDataSync
CdDataSync:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     CD_datasync
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end CdDataSync
    .size CdDataSync, . - CdDataSync

    .section .text.CD_set_test_parmnum,"ax",@progbits
    .globl CD_set_test_parmnum
    .type CD_set_test_parmnum, @function
    .ent CD_set_test_parmnum
CD_set_test_parmnum:
    lui     $at, 0x800e
    jr      $ra
    sw      $a0, -28148($at)
    .end CD_set_test_parmnum
    .size CD_set_test_parmnum, . - CD_set_test_parmnum
