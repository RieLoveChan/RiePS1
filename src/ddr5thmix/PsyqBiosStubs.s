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
    BIOS_STUB ReturnFromException,  0xb0, 0x17
