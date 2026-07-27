    .set noreorder
    .set noat
    .set nomacro

    .macro BIOS_STUB name, vector, call
    .section .text.\name,"ax",@progbits
    .globl \name
    .type \name, @function
    .ent \name
\name:
    addiu   $t2, $zero, \vector
    jr      $t2
    addiu   $t1, $zero, \call
    .end \name
    .size \name, . - \name
    .endm

    BIOS_STUB _bu_init,             0xa0, 0x70
    BIOS_STUB _card_info,           0xa0, 0xab
    BIOS_STUB _card_load,           0xa0, 0xac
    BIOS_STUB _card_auto,           0xa0, 0xad
    BIOS_STUB _card_write,          0xb0, 0x4e
    BIOS_STUB _new_card,            0xb0, 0x50
    BIOS_STUB InitCARD2,            0xb0, 0x4a
    BIOS_STUB StartCARD2,           0xb0, 0x4b
    BIOS_STUB StopCARD2,            0xb0, 0x4c
    BIOS_STUB _card_read,           0xb0, 0x4f
    BIOS_STUB _card_status,         0xb0, 0x5c
    BIOS_STUB exit,                 0xb0, 0x38
    BIOS_STUB setjmp,               0xa0, 0x13
    BIOS_STUB strcat,               0xa0, 0x15
    BIOS_STUB strcpy,               0xa0, 0x19
    BIOS_STUB strlen,               0xa0, 0x1b
    BIOS_STUB bzero,                0xa0, 0x28
    BIOS_STUB memcpy,               0xa0, 0x2a
    BIOS_STUB printf,               0xa0, 0x3f
    BIOS_STUB InitHeap,             0xa0, 0x39
    BIOS_STUB FlushCache,           0xa0, 0x44
    BIOS_STUB GPU_cw,               0xa0, 0x49
    BIOS_STUB DeliverEvent,         0xb0, 0x07
    BIOS_STUB OpenEvent,            0xb0, 0x08
    BIOS_STUB CloseEvent,           0xb0, 0x09
    BIOS_STUB WaitEvent,            0xb0, 0x0a
    BIOS_STUB TestEvent,            0xb0, 0x0b
    BIOS_STUB EnableEvent,          0xb0, 0x0c
    BIOS_STUB DisableEvent,         0xb0, 0x0d
    BIOS_STUB FUN_8003ba70,         0xb0, 0x3f
    BIOS_STUB FUN_8003bb30,         0xa0, 0x72
    BIOS_STUB ReturnFromException,  0xb0, 0x17
    BIOS_STUB ResetEntryInt,        0xb0, 0x18
    BIOS_STUB HookEntryInt,         0xb0, 0x19
    BIOS_STUB open,                 0xb0, 0x32
    BIOS_STUB lseek,                0xb0, 0x33
    BIOS_STUB read,                 0xb0, 0x34
    BIOS_STUB write,                0xb0, 0x35
    BIOS_STUB nextfile,             0xb0, 0x43
    BIOS_STUB rename,               0xb0, 0x44
    BIOS_STUB erase,                0xb0, 0x45
    BIOS_STUB Krom2RawAdd,          0xb0, 0x51
    BIOS_STUB ChangeClearPAD,       0xb0, 0x5b
    BIOS_STUB strcmp,               0xa0, 0x17
    BIOS_STUB firstfile2,           0xb0, 0x42
    BIOS_STUB InitPAD2,             0xb0, 0x12
    BIOS_STUB StartPAD2,            0xb0, 0x13
    BIOS_STUB StopPAD2,             0xb0, 0x14
    BIOS_STUB PAD_init2,            0xb0, 0x15
    BIOS_STUB rand,                 0xa0, 0x2f
    BIOS_STUB srand,                0xa0, 0x30
    BIOS_STUB memset,               0xa0, 0x2b
    BIOS_STUB memchr,               0xa0, 0x2e
    BIOS_STUB strncmp,              0xa0, 0x18
    BIOS_STUB bcopy,                0xa0, 0x27
    BIOS_STUB close,                0xb0, 0x36
    BIOS_STUB strncpy,              0xa0, 0x1a
    BIOS_STUB SysEnqIntRP,          0xc0, 0x02
    BIOS_STUB SysDeqIntRP,          0xc0, 0x03
    BIOS_STUB ChangeClearRCnt,      0xc0, 0x0a
