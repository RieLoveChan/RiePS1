    .set noreorder
    .set noat
    .set nomacro

    .section .text.GetIntrMask,"ax",@progbits
    .globl GetIntrMask
    .type GetIntrMask, @function
    .ent GetIntrMask
GetIntrMask:
    lui     $v0, 0x800e
    lw      $v0, -31004($v0)
    nop
    lhu     $v0, 0($v0)
    jr      $ra
    nop
    .end GetIntrMask
    .size GetIntrMask, . - GetIntrMask

    .section .text.SetIntrMask,"ax",@progbits
    .globl SetIntrMask
    .type SetIntrMask, @function
    .ent SetIntrMask
SetIntrMask:
    lui     $v1, 0x800e
    lw      $v1, -31004($v1)
    nop
    lhu     $v0, 0($v1)
    jr      $ra
    sh      $a0, 0($v1)
    .end SetIntrMask
    .size SetIntrMask, . - SetIntrMask

    .section .text.GsGetActiveBuff,"ax",@progbits
    .globl GsGetActiveBuff
    .type GsGetActiveBuff, @function
    .ent GsGetActiveBuff
GsGetActiveBuff:
    lui     $v0, 0x800e
    lh      $v0, 0x54bc($v0)
    jr      $ra
    nop
    .end GsGetActiveBuff
    .size GsGetActiveBuff, . - GsGetActiveBuff

    .section .text.GetGraphDebug,"ax",@progbits
    .globl GetGraphDebug
    .type GetGraphDebug, @function
    .ent GetGraphDebug
GetGraphDebug:
    lui     $v0, 0x800e
    lbu     $v0, -29570($v0)
    jr      $ra
    nop
    .end GetGraphDebug
    .size GetGraphDebug, . - GetGraphDebug

    .section .text.SpuGetVoiceEnvelope,"ax",@progbits
    .globl SpuGetVoiceEnvelope
    .type SpuGetVoiceEnvelope, @function
    .ent SpuGetVoiceEnvelope
SpuGetVoiceEnvelope:
    lui     $v0, 0x800d
    lw      $v0, 0x6b64($v0)
    sll     $a0, $a0, 4
    addu    $a0, $a0, $v0
    lhu     $v0, 0xc($a0)
    jr      $ra
    sh      $v0, 0($a1)
    .end SpuGetVoiceEnvelope
    .size SpuGetVoiceEnvelope, . - SpuGetVoiceEnvelope
