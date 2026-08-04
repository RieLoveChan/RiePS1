    .set noreorder
    .set noat
    .set nomacro

/* _spu_init (0x8002d9bc, 212 bytes) */
    .section .text._spu_init,"ax",@progbits
    .globl _spu_init
    .globl _spu_Fw1ts
    .globl printf
    .globl sym_8002da90
    .type _spu_init, @function
    .ent _spu_init
_spu_init:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $a0,0x800d
    lw      $a0,27508($a0)
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    lw      $v0,0($a0)
    lui     $v1,0xb
    or      $v0,$v0,$v1
    sw      $v0,0($a0)
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lui     $at,0x800d
    sw      $zero,27520($at)
    lui     $at,0x800d
    sw      $zero,27524($at)
    lui     $at,0x800d
    sh      $zero,27516($at)
    sh      $zero,384($v0)
    sh      $zero,386($v0)
    jal     _spu_Fw1ts
    sh      $zero,426($v0)
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    sh      $zero,384($v0)
    sh      $zero,386($v0)
    lhu     $v0,430($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7ff
    beq     $v0,$zero,.L_spu_init_d0
    addu    $v1,$zero,$zero
    addiu   $v1,$v1,1
.L_spu_init_88:
    sltiu   $v0,$v1,3841
    bne     $v0,$zero,.L_spu_init_b0
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    addiu   $a0,$a0,-21724
    lui     $a1,0x8002
    jal     printf
    addiu   $a1,$a1,-21708
    j       sym_8002da90
    addu    $a0,$zero,$zero
.L_spu_init_b0:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $v0,430($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7ff
    bne     $v0,$zero,.L_spu_init_88
    addiu   $v1,$v1,1
.L_spu_init_d0:
    addu    $a0,$zero,$zero
    .end _spu_init
    .size _spu_init, . - _spu_init

/* SPU_OBJ_390 (0x8002dd4c, 148 bytes) */
    .section .text.SPU_OBJ_390,"ax",@progbits
    .globl SPU_OBJ_390
    .globl _spu_Fw1ts
    .globl printf
    .globl SPU_OBJ_424
    .globl sym_8002dc84
    .type SPU_OBJ_390, @function
    .ent SPU_OBJ_390
SPU_OBJ_390:
    jal     _spu_Fw1ts
    subu    $s1,$s1,$s0
    jal     _spu_Fw1ts
    sll     $zero,$zero,0x0
    bne     $s1,$zero,sym_8002dc84
    sltiu   $v0,$s1,65
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $a0,426($v0)
    andi    $a1,$s3,0xffff
    andi    $v1,$a0,0xffcf
    sh      $v1,426($v0)
    lhu     $v0,430($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7ff
    beq     $v0,$a1,SPU_OBJ_424
    addu    $v1,$zero,$zero
    addiu   $v1,$v1,1
.LSPU_OBJ_390_4c:
    sltiu   $v0,$v1,3841
    bne     $v0,$zero,.LSPU_OBJ_390_74
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    addiu   $a0,$a0,-21724
    lui     $a1,0x8002
    jal     printf
    addiu   $a1,$a1,-21672
    j       SPU_OBJ_424
    sll     $zero,$zero,0x0
.LSPU_OBJ_390_74:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $v0,430($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7ff
    bne     $v0,$a1,.LSPU_OBJ_390_4c
    addiu   $v1,$v1,1
    .end SPU_OBJ_390
    .size SPU_OBJ_390, . - SPU_OBJ_390

/* _spu_FiDMA (0x8002ddfc, 172 bytes) */
    .section .text._spu_FiDMA,"ax",@progbits
    .globl _spu_FiDMA
    .globl _spu_Fw1ts
    .globl DeliverEvent
    .globl SPU_OBJ_4EC
    .type _spu_FiDMA, @function
    .ent _spu_FiDMA
_spu_FiDMA:
    lui     $v0,0x800d
    lw      $v0,27572($v0)
    addiu   $sp,$sp,-24
    bne     $v0,$zero,.L_spu_FiDMA_1c
    sw      $ra,16($sp)
    jal     _spu_Fw1ts
    sll     $zero,$zero,0x0
.L_spu_FiDMA_1c:
    lui     $a0,0x800d
    lw      $a0,27492($a0)
    sll     $zero,$zero,0x0
    lhu     $v0,426($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xffcf
    sh      $v0,426($a0)
    lhu     $v0,426($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x30
    beq     $v0,$zero,.L_spu_FiDMA_70
    addu    $v1,$zero,$zero
    addiu   $v1,$v1,1
.L_spu_FiDMA_50:
    sltiu   $v0,$v1,3841
    beq     $v0,$zero,.L_spu_FiDMA_70
    sll     $zero,$zero,0x0
    lhu     $v0,426($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x30
    bne     $v0,$zero,.L_spu_FiDMA_50
    addiu   $v1,$v1,1
.L_spu_FiDMA_70:
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_spu_FiDMA_a0
    lui     $a0,0xf000
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    j       SPU_OBJ_4EC
    sll     $zero,$zero,0x0
.L_spu_FiDMA_a0:
    ori     $a0,$a0,0x9
    jal     DeliverEvent
    addiu   $a1,$zero,32
    .end _spu_FiDMA
    .size _spu_FiDMA, . - _spu_FiDMA

/* _spu_Fr_ (0x8002deb8, 168 bytes) */
    .section .text._spu_Fr_,"ax",@progbits
    .globl _spu_Fr_
    .globl _spu_Fw1ts
    .globl SPU_OBJ_AB0
    .type _spu_Fr_, @function
    .ent _spu_Fr_
_spu_Fr_:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    sw      $ra,24($sp)
    sh      $a1,422($v0)
    jal     _spu_Fw1ts
    addu    $s0,$a2,$zero
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x30
    sh      $v0,426($v1)
    jal     _spu_Fw1ts
    sll     $s0,$s0,0x10
    jal     SPU_OBJ_AB0
    sll     $zero,$zero,0x0
    lui     $a0,0x100
    ori     $a0,$a0,0x200
    lui     $v0,0x800d
    lw      $v0,27496($v0)
    sll     $zero,$zero,0x0
    sw      $s1,0($v0)
    lui     $v0,0x800d
    lw      $v0,27500($v0)
    ori     $s0,$s0,0x10
    sw      $s0,0($v0)
    lui     $v1,0x800d
    lw      $v1,27504($v1)
    addiu   $v0,$zero,1
    lui     $at,0x800d
    sw      $v0,27572($at)
    sw      $a0,0($v1)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end _spu_Fr_
    .size _spu_Fr_, . - _spu_Fr_

/* SPU_OBJ_78C (0x8002e148, 136 bytes) */
    .section .text.SPU_OBJ_78C,"ax",@progbits
    .globl SPU_OBJ_78C
    .type SPU_OBJ_78C, @function
    .ent SPU_OBJ_78C
SPU_OBJ_78C:
    lw      $a0,-4($s0)
    lui     $at,0x800d
    sw      $a0,27576($at)
    lw      $a0,0($s0)
    lui     $a1,0x800d
    lw      $a1,27496($a1)
    srl     $v1,$a0,0x6
    andi    $v0,$a0,0x3f
    sltu    $v0,$zero,$v0
    lui     $a0,0x800d
    lw      $a0,27576($a0)
    addu    $v1,$v1,$v0
    lui     $at,0x800d
    sw      $v1,27580($at)
    sw      $a0,0($a1)
    lui     $v0,0x800d
    lw      $v0,27580($v0)
    lui     $v1,0x800d
    lw      $v1,27500($v1)
    sll     $v0,$v0,0x10
    ori     $v0,$v0,0x10
    sw      $v0,0($v1)
    lui     $v1,0x800d
    lw      $v1,27572($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.LSPU_OBJ_78C_74
    ori     $a2,$a2,0x201
    lui     $a2,0x100
    ori     $a2,$a2,0x200
.LSPU_OBJ_78C_74:
    lui     $v0,0x800d
    lw      $v0,27504($v0)
    sll     $zero,$zero,0x0
    sw      $a2,0($v0)
    addu    $v0,$zero,$zero
    .end SPU_OBJ_78C
    .size SPU_OBJ_78C, . - SPU_OBJ_78C

/* _spu_FsetRXXa (0x8002e30c, 156 bytes) */
    .section .text._spu_FsetRXXa,"ax",@progbits
    .globl _spu_FsetRXXa
    .globl SPU_OBJ_9EC
    .type _spu_FsetRXXa, @function
    .ent _spu_FsetRXXa
_spu_FsetRXXa:
    lui     $v0,0x800d
    lw      $v0,27528($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_spu_FsetRXXa_50
    addu    $a2,$a0,$zero
    lui     $a0,0x800d
    lw      $a0,27536($a0)
    sll     $zero,$zero,0x0
    divu    $zero,$a1,$a0
    bne     $a0,$zero,.L_spu_FsetRXXa_30
    sll     $zero,$zero,0x0
    break   0x7
.L_spu_FsetRXXa_30:
    mfhi    $v0
    beq     $v0,$zero,.L_spu_FsetRXXa_50
    sll     $zero,$zero,0x0
    lui     $v0,0x800d
    lw      $v0,27540($v0)
    addu    $a1,$a1,$a0
    nor     $v0,$zero,$v0
    and     $a1,$a1,$v0
.L_spu_FsetRXXa_50:
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    sll     $zero,$zero,0x0
    srlv    $a3,$a1,$v0
    addiu   $v0,$zero,-2
    beq     $a2,$v0,.L_spu_FsetRXXa_80
    addu    $v1,$a3,$zero
    addiu   $v0,$zero,-1
    bne     $a2,$v0,.L_spu_FsetRXXa_88
    addu    $v0,$a1,$zero
    j       SPU_OBJ_9EC
    andi    $v0,$v1,0xffff
.L_spu_FsetRXXa_80:
    j       SPU_OBJ_9EC
    addu    $v0,$a1,$zero
.L_spu_FsetRXXa_88:
    lui     $a0,0x800d
    lw      $a0,27492($a0)
    sll     $v1,$a2,0x1
    addu    $v1,$v1,$a0
    sh      $a3,0($v1)
    .end _spu_FsetRXXa
    .size _spu_FsetRXXa, . - _spu_FsetRXXa

/* SpuSetReverb (0x8002e4fc, 176 bytes) */
    .section .text.SpuSetReverb,"ax",@progbits
    .globl SpuSetReverb
    .globl _SpuIsInAllocateArea_
    .globl S_SR_OBJ_B4
    .globl sym_8002e5ac
    .type SpuSetReverb, @function
    .ent SpuSetReverb
SpuSetReverb:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    beq     $s0,$zero,.LSpuSetReverb_28
    sw      $ra,20($sp)
    addiu   $v0,$zero,1
    beq     $s0,$v0,.LSpuSetReverb_48
    sll     $zero,$zero,0x0
    j       S_SR_OBJ_B4
    sll     $zero,$zero,0x0
.LSpuSetReverb_28:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    lui     $at,0x800d
    sw      $zero,27624($at)
    j       sym_8002e5ac
    andi    $v0,$v0,0xff7f
.LSpuSetReverb_48:
    lui     $v0,0x800d
    lw      $v0,27628($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$s0,.LSpuSetReverb_94
    sll     $zero,$zero,0x0
    lui     $a0,0x800d
    lw      $a0,27632($a0)
    jal     _SpuIsInAllocateArea_
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSpuSetReverb_94
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    lui     $at,0x800d
    sw      $zero,27624($at)
    j       sym_8002e5ac
    andi    $v0,$v0,0xff7f
.LSpuSetReverb_94:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    lui     $at,0x800d
    sw      $s0,27624($at)
    ori     $v0,$v0,0x80
    .end SpuSetReverb
    .size SpuSetReverb, . - SpuSetReverb

/* _SpuInit (0x8002e5cc, 232 bytes) */
    .section .text._SpuInit,"ax",@progbits
    .globl _SpuInit
    .globl _spu_FsetRXX
    .globl _spu_init
    .globl ResetCallback
    .globl SpuStart
    .type _SpuInit, @function
    .ent _SpuInit
_SpuInit:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    sw      $ra,20($sp)
    jal     ResetCallback
    addu    $s0,$a0,$zero
    jal     _spu_init
    addu    $a0,$s0,$zero
    bne     $s0,$zero,.L_SpuInit_40
    ori     $a0,$zero,0xc000
    addiu   $v1,$zero,23
    lui     $v0,0x800d
    addiu   $v0,$v0,27710
.L_SpuInit_30:
    sh      $a0,0($v0)
    addiu   $v1,$v1,-1
    bgez    $v1,.L_SpuInit_30
    addiu   $v0,$v0,-2
.L_SpuInit_40:
    jal     SpuStart
    sll     $zero,$zero,0x0
    addiu   $a0,$zero,209
    lui     $v0,0x800d
    addiu   $v0,$v0,27640
    lui     $a1,0x800d
    lw      $a1,29044($a1)
    lui     $at,0x800d
    sw      $zero,27624($at)
    lui     $at,0x800d
    sw      $zero,27628($at)
    sw      $zero,0($v0)
    sh      $zero,4($v0)
    sh      $zero,6($v0)
    sw      $zero,8($v0)
    sw      $zero,12($v0)
    lui     $at,0x800d
    sw      $a1,27632($at)
    jal     _spu_FsetRXX
    addu    $a2,$zero,$zero
    lui     $at,0x800d
    sw      $zero,27588($at)
    lui     $at,0x800d
    sw      $zero,27592($at)
    lui     $at,0x800d
    sw      $zero,27596($at)
    lui     $at,0x800d
    sw      $zero,27620($at)
    lui     $at,0x800d
    sw      $zero,27520($at)
    lui     $at,0x800d
    sw      $zero,27616($at)
    lui     $at,0x800d
    sw      $zero,27660($at)
    lui     $at,0x800d
    sw      $zero,27656($at)
    lui     $at,0x800d
    sw      $zero,27712($at)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end _SpuInit
    .size _SpuInit, . - _SpuInit

/* SpuClearReverbWorkArea (0x8002ebac, 156 bytes) */
    .section .text.SpuClearReverbWorkArea,"ax",@progbits
    .globl SpuClearReverbWorkArea
    .globl _SpuIsInAllocateArea_
    .globl S_CRWA_OBJ_170
    .globl S_CRWA_OBJ_9C
    .type SpuClearReverbWorkArea, @function
    .ent SpuClearReverbWorkArea
SpuClearReverbWorkArea:
    addiu   $sp,$sp,-56
    sw      $s0,24($sp)
    addu    $s0,$a0,$zero
    sw      $s5,44($sp)
    sltiu   $v0,$s0,10
    sw      $ra,48($sp)
    sw      $s4,40($sp)
    sw      $s3,36($sp)
    sw      $s2,32($sp)
    sw      $s1,28($sp)
    sw      $zero,16($sp)
    beq     $v0,$zero,.LSpuClearReverbWorkArea_58
    addu    $s5,$zero,$zero
    lui     $v1,0x800d
    addiu   $v1,$v1,29044
    sll     $v0,$s0,0x2
    addu    $s1,$v0,$v1
    lw      $a0,0($s1)
    jal     _SpuIsInAllocateArea_
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSpuClearReverbWorkArea_60
    sll     $zero,$zero,0x0
.LSpuClearReverbWorkArea_58:
    j       S_CRWA_OBJ_170
    addiu   $v0,$zero,-1
.LSpuClearReverbWorkArea_60:
    bne     $s0,$zero,.LSpuClearReverbWorkArea_84
    lui     $v0,0x1
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    addiu   $v1,$zero,16
    sllv    $s1,$v1,$v0
    ori     $v1,$zero,0xfff0
    j       S_CRWA_OBJ_9C
    sllv    $s2,$v1,$v0
.LSpuClearReverbWorkArea_84:
    lw      $a0,0($s1)
    lui     $v1,0x800d
    lw      $v1,27532($v1)
    subu    $v0,$v0,$a0
    sllv    $s1,$v0,$v1
    sllv    $s2,$a0,$v1
    .end SpuClearReverbWorkArea
    .size SpuClearReverbWorkArea, . - SpuClearReverbWorkArea

/* S_CRWA_OBJ_9C (0x8002ec48, 212 bytes) */
    .section .text.S_CRWA_OBJ_9C,"ax",@progbits
    .globl S_CRWA_OBJ_9C
    .globl S_CRWA_OBJ_170
    .globl sym_8002df60
    .globl WaitEvent
    .type S_CRWA_OBJ_9C, @function
    .ent S_CRWA_OBJ_9C
S_CRWA_OBJ_9C:
    lui     $s4,0x800d
    lw      $s4,27520($s4)
    addiu   $v0,$zero,1
    bne     $s4,$v0,.LS_CRWA_OBJ_9C_20
    sll     $zero,$zero,0x0
    lui     $at,0x800d
    sw      $zero,27520($at)
    addiu   $s5,$zero,1
.LS_CRWA_OBJ_9C_20:
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LS_CRWA_OBJ_9C_4c
    addiu   $s3,$zero,1
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    sll     $zero,$zero,0x0
    sw      $v0,16($sp)
    lui     $at,0x800d
    sw      $zero,27548($at)
.LS_CRWA_OBJ_9C_4c:
    sltiu   $v0,$s1,1025
.LS_CRWA_OBJ_9C_50:
    beq     $v0,$zero,.LS_CRWA_OBJ_9C_60
    addiu   $s0,$zero,1024
    addu    $s0,$s1,$zero
    addu    $s3,$zero,$zero
.LS_CRWA_OBJ_9C_60:
    addiu   $a0,$zero,2
    jal     sym_8002df60
    addu    $a1,$s2,$zero
    jal     sym_8002df60
    addiu   $a0,$zero,1
    addiu   $a0,$zero,3
    lui     $a1,0x800d
    addiu   $a1,$a1,27732
    jal     sym_8002df60
    addu    $a2,$s0,$zero
    lui     $a0,0x800d
    lw      $a0,27612($a0)
    addiu   $s1,$s1,-1024
    jal     WaitEvent
    addiu   $s2,$s2,1024
    bne     $s3,$zero,.LS_CRWA_OBJ_9C_50
    sltiu   $v0,$s1,1025
    beq     $s5,$zero,.LS_CRWA_OBJ_9C_b4
    sll     $zero,$zero,0x0
    lui     $at,0x800d
    sw      $s4,27520($at)
.LS_CRWA_OBJ_9C_b4:
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,S_CRWA_OBJ_170
    addu    $v0,$zero,$zero
    lw      $v0,16($sp)
    lui     $at,0x800d
    sw      $v0,27548($at)
    addu    $v0,$zero,$zero
    .end S_CRWA_OBJ_9C
    .size S_CRWA_OBJ_9C, . - S_CRWA_OBJ_9C

/* SpuSetIRQ (0x8002ed4c, 244 bytes) */
    .section .text.SpuSetIRQ,"ax",@progbits
    .globl SpuSetIRQ
    .globl S_SI_OBJ_12C
    .globl S_SI_OBJ_F4
    .globl sym_8002ee50
    .globl sym_8002ee74
    .type SpuSetIRQ, @function
    .ent SpuSetIRQ
SpuSetIRQ:
    addiu   $sp,$sp,-24
    beq     $a0,$zero,.LSpuSetIRQ_18
    sw      $ra,16($sp)
    addiu   $v0,$zero,3
    bne     $a0,$v0,.LSpuSetIRQ_94
    addiu   $v0,$zero,1
.LSpuSetIRQ_18:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $v1,426($v0)
    sll     $zero,$zero,0x0
    andi    $v1,$v1,0xffbf
    sh      $v1,426($v0)
    lhu     $v0,426($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x40
    beq     $v0,$zero,.LSpuSetIRQ_90
    addu    $v1,$zero,$zero
    addiu   $v1,$v1,1
.LSpuSetIRQ_4c:
    sltiu   $v0,$v1,3841
    bne     $v0,$zero,.LSpuSetIRQ_6c
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    addiu   $a0,$a0,-21644
    lui     $a1,0x8002
    j       S_SI_OBJ_F4
    addiu   $a1,$a1,-21628
.LSpuSetIRQ_6c:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x40
    bne     $v0,$zero,.LSpuSetIRQ_4c
    addiu   $v1,$v1,1
    addiu   $v1,$v1,-1
.LSpuSetIRQ_90:
    addiu   $v0,$zero,1
.LSpuSetIRQ_94:
    beq     $a0,$v0,.LSpuSetIRQ_a4
    addiu   $v0,$zero,3
    bne     $a0,$v0,S_SI_OBJ_12C
    addu    $v0,$a0,$zero
.LSpuSetIRQ_a4:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    lhu     $v1,426($v0)
    sll     $zero,$zero,0x0
    ori     $v1,$v1,0x40
    sh      $v1,426($v0)
    lhu     $v0,426($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x40
    bne     $v0,$zero,sym_8002ee74
    addu    $v1,$zero,$zero
    addiu   $v1,$v1,1
    sltiu   $v0,$v1,3841
    bne     $v0,$zero,sym_8002ee50
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    addiu   $a0,$a0,-21644
    lui     $a1,0x8002
    addiu   $a1,$a1,-21612
    .end SpuSetIRQ
    .size SpuSetIRQ, . - SpuSetIRQ

/* SpuRGetAllKeysStatus (0x8002f2cc, 184 bytes) */
    .section .text.SpuRGetAllKeysStatus,"ax",@progbits
    .globl SpuRGetAllKeysStatus
    .globl SR_GAKS_OBJ_B8
    .globl SR_GAKS_OBJ_CC
    .type SpuRGetAllKeysStatus, @function
    .ent SpuRGetAllKeysStatus
SpuRGetAllKeysStatus:
    bgez    $a0,.LSpuRGetAllKeysStatus_10
    slti    $v0,$a0,24
    addu    $a0,$zero,$zero
    slti    $v0,$a0,24
.LSpuRGetAllKeysStatus_10:
    beq     $v0,$zero,.LSpuRGetAllKeysStatus_38
    slti    $v0,$a1,24
    bne     $v0,$zero,.LSpuRGetAllKeysStatus_24
    sll     $zero,$zero,0x0
    addiu   $a1,$zero,23
.LSpuRGetAllKeysStatus_24:
    bltz    $a1,SR_GAKS_OBJ_CC
    addiu   $v0,$zero,-3
    slt     $v0,$a1,$a0
    beq     $v0,$zero,.LSpuRGetAllKeysStatus_40
    addu    $a3,$a0,$zero
.LSpuRGetAllKeysStatus_38:
    j       SR_GAKS_OBJ_CC
    addiu   $v0,$zero,-3
.LSpuRGetAllKeysStatus_40:
    addiu   $a1,$a1,1
    slt     $v0,$a3,$a1
    beq     $v0,$zero,SR_GAKS_OBJ_CC
    addu    $v0,$zero,$zero
    addiu   $t0,$zero,1
    addiu   $t2,$zero,3
    addiu   $t1,$zero,2
    addu    $a2,$a3,$a2
    sll     $a0,$a3,0x4
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lui     $v1,0x800d
    lw      $v1,27616($v1)
    addu    $a0,$a0,$v0
    sllv    $v0,$t0,$a3
    and     $v1,$v1,$v0
    lhu     $v0,12($a0)
    beq     $v1,$zero,.LSpuRGetAllKeysStatus_a4
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSpuRGetAllKeysStatus_9c
    sll     $zero,$zero,0x0
    j       SR_GAKS_OBJ_B8
    sb      $t0,0($a2)
.LSpuRGetAllKeysStatus_9c:
    j       SR_GAKS_OBJ_B8
    sb      $t2,0($a2)
.LSpuRGetAllKeysStatus_a4:
    beq     $v0,$zero,.LSpuRGetAllKeysStatus_b4
    sll     $zero,$zero,0x0
    j       SR_GAKS_OBJ_B8
    sb      $t1,0($a2)
.LSpuRGetAllKeysStatus_b4:
    sb      $zero,0($a2)
    .end SpuRGetAllKeysStatus
    .size SpuRGetAllKeysStatus, . - SpuRGetAllKeysStatus

/* _spu_note2pitch (0x8002fa2c, 200 bytes) */
    .section .text._spu_note2pitch,"ax",@progbits
    .globl _spu_note2pitch
    .globl S_N2P_OBJ_C8
    .type _spu_note2pitch, @function
    .ent _spu_note2pitch
_spu_note2pitch:
    addu    $a3,$a3,$a1
    lui     $a1,0x2aaa
    ori     $a1,$a1,0xaaab
    andi    $v1,$a3,0xffff
    srl     $v0,$v1,0x7
    addu    $a2,$a2,$v0
    subu    $a2,$a2,$a0
    sll     $a2,$a2,0x10
    sra     $a0,$a2,0x10
    mult    $a0,$a1
    andi    $a3,$v1,0x7f
    sra     $a2,$a2,0x1f
    mfhi    $t0
    sra     $v0,$t0,0x1
    subu    $a1,$v0,$a2
    addiu   $a2,$a1,-2
    sll     $v0,$a1,0x1
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    subu    $a0,$a0,$v0
    sll     $v0,$a0,0x10
    bgez    $v0,.L_spu_note2pitch_64
    addu    $v1,$a0,$zero
    addiu   $v1,$a0,12
    addiu   $a2,$a1,-3
.L_spu_note2pitch_64:
    sll     $v1,$v1,0x10
    sra     $v1,$v1,0xf
    andi    $v0,$a3,0xffff
    sll     $v0,$v0,0x1
    lui     $at,0x800d
    addu    $at,$at,$v1
    lhu     $v1,28756($at)
    lui     $at,0x800d
    addu    $at,$at,$v0
    lhu     $v0,28780($at)
    sll     $zero,$zero,0x0
    mult    $v1,$v0
    sll     $v0,$a2,0x10
    sra     $v0,$v0,0x10
    mflo    $t0
    bltz    $v0,.L_spu_note2pitch_b0
    sra     $a1,$t0,0x10
    j       S_N2P_OBJ_C8
    addiu   $a1,$zero,16383
.L_spu_note2pitch_b0:
    negu    $a0,$v0
    addiu   $v1,$a0,-1
    addiu   $v0,$zero,1
    sllv    $v0,$v0,$v1
    addu    $a1,$a1,$v0
    srlv    $a1,$a1,$a0
    .end _spu_note2pitch
    .size _spu_note2pitch, . - _spu_note2pitch

/* _spu_pitch2note (0x8002fafc, 136 bytes) */
    .section .text._spu_pitch2note,"ax",@progbits
    .globl _spu_pitch2note
    .globl S_N2P_OBJ_158
    .type _spu_pitch2note, @function
    .ent _spu_pitch2note
_spu_pitch2note:
    andi    $v0,$a2,0xffff
    sltiu   $v0,$v0,16384
    bne     $v0,$zero,.L_spu_pitch2note_14
    addu    $t3,$zero,$zero
    addiu   $a2,$zero,16383
.L_spu_pitch2note_14:
    addu    $a3,$zero,$zero
    andi    $v1,$a2,0xffff
    srav    $v0,$v1,$a3
.L_spu_pitch2note_20:
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.L_spu_pitch2note_30
    sll     $zero,$zero,0x0
    addu    $t3,$a3,$zero
.L_spu_pitch2note_30:
    addiu   $a3,$a3,1
    slti    $v0,$a3,14
    bne     $v0,$zero,.L_spu_pitch2note_20
    srav    $v0,$v1,$a3
    andi    $v1,$a2,0xffff
    addiu   $v0,$zero,15
    subu    $v0,$v0,$t3
    sllv    $a2,$v1,$v0
    addiu   $a3,$zero,11
    andi    $v1,$a2,0xffff
    lui     $t0,0x800d
    addiu   $t0,$t0,28778
.L_spu_pitch2note_60:
    lhu     $v0,0($t0)
    sll     $zero,$zero,0x0
    sltu    $v0,$v1,$v0
    bne     $v0,$zero,.L_spu_pitch2note_7c
    sll     $zero,$zero,0x0
    j       S_N2P_OBJ_158
    addu    $t2,$a3,$zero
.L_spu_pitch2note_7c:
    addiu   $a3,$a3,-1
    bgez    $a3,.L_spu_pitch2note_60
    addiu   $t0,$t0,-2
    .end _spu_pitch2note
    .size _spu_pitch2note, . - _spu_pitch2note

/* SsEnd (0x8002fc2c, 136 bytes) */
    .section .text.SsEnd,"ax",@progbits
    .globl SsEnd
    .globl InterruptCallback
    .globl SSEND_OBJ_88
    .globl sym_8002fcc8
    .globl sym_8003bbe8
    .globl VSyncCallback
    .type SsEnd, @function
    .ent SsEnd
SsEnd:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    addiu   $s0,$s0,29144
    sw      $ra,20($sp)
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8002fcc8
    addiu   $v0,$zero,127
    lb      $v1,14($s0)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,sym_8002fcc8
    sb      $zero,13($s0)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lb      $v0,12($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSsEnd_5c
    sll     $zero,$zero,0x0
    jal     VSyncCallback
    addu    $a0,$zero,$zero
    j       SSEND_OBJ_88
    sb      $zero,12($s0)
.LSsEnd_5c:
    lb      $v0,14($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSsEnd_80
    addiu   $a0,$zero,6
    lw      $a1,8($s0)
    jal     InterruptCallback
    addu    $a0,$zero,$zero
    j       SSEND_OBJ_88
    sw      $zero,8($s0)
.LSsEnd_80:
    jal     InterruptCallback
    addu    $a1,$zero,$zero
    .end SsEnd
    .size SsEnd, . - SsEnd

/* _SsInit (0x8002fd3c, 160 bytes) */
    .section .text._SsInit,"ax",@progbits
    .globl _SsInit
    .globl _SsVmInit
    .type _SsInit, @function
    .ent _SsInit
_SsInit:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a1,0x1f80
    ori     $a1,$a1,0x1d80
    addu    $v1,$zero,$zero
    lui     $a0,0x800d
    addiu   $a0,$a0,29104
.L_SsInit_1c:
    lhu     $v0,0($a0)
    addiu   $a0,$a0,2
    addiu   $v1,$v1,1
    sh      $v0,0($a1)
    slti    $v0,$v1,16
    bne     $v0,$zero,.L_SsInit_1c
    addiu   $a1,$a1,2
    jal     _SsVmInit
    addiu   $a0,$zero,24
    addu    $a1,$zero,$zero
    lui     $a0,0x800e
    addiu   $a0,$a0,16848
.L_SsInit_4c:
    addiu   $v1,$zero,15
    addiu   $v0,$a0,60
.L_SsInit_54:
    sw      $zero,0($v0)
    addiu   $v1,$v1,-1
    bgez    $v1,.L_SsInit_54
    addiu   $v0,$v0,-4
    addiu   $a1,$a1,1
    slti    $v0,$a1,32
    bne     $v0,$zero,.L_SsInit_4c
    addiu   $a0,$a0,64
    addiu   $v0,$zero,60
    lui     $at,0x800e
    sw      $v0,16716($at)
    lui     $at,0x800e
    sw      $zero,16712($at)
    lui     $at,0x800e
    sw      $zero,16708($at)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsInit
    .size _SsInit, . - _SsInit

/* SsSetSerialAttr (0x8002fe7c, 192 bytes) */
    .section .text.SsSetSerialAttr,"ax",@progbits
    .globl SsSetSerialAttr
    .globl SpuSetCommonAttr
    .type SsSetSerialAttr, @function
    .ent SsSetSerialAttr
SsSetSerialAttr:
    addiu   $sp,$sp,-64
    sw      $ra,56($sp)
    addu    $a3,$a0,$zero
    addu    $t1,$a1,$zero
    sll     $a0,$a0,0x18
    bne     $a0,$zero,.LSsSetSerialAttr_60
    addu    $t0,$a2,$zero
    sll     $v0,$a1,0x18
    sra     $v1,$v0,0x18
    bne     $v1,$zero,.LSsSetSerialAttr_44
    addiu   $v0,$zero,1
    addiu   $v0,$zero,512
    sw      $v0,16($sp)
    sll     $v0,$a2,0x18
    sra     $v0,$v0,0x18
    sw      $v0,40($sp)
    addiu   $v0,$zero,1
.LSsSetSerialAttr_44:
    bne     $v1,$v0,.LSsSetSerialAttr_64
    sll     $v0,$a3,0x18
    addiu   $v0,$zero,256
    sw      $v0,16($sp)
    sll     $v0,$a2,0x18
    sra     $v0,$v0,0x18
    sw      $v0,36($sp)
.LSsSetSerialAttr_60:
    sll     $v0,$a3,0x18
.LSsSetSerialAttr_64:
    sra     $a0,$v0,0x18
    addiu   $v0,$zero,1
    bne     $a0,$v0,.LSsSetSerialAttr_a8
    sll     $v0,$t1,0x18
    sra     $v1,$v0,0x18
    bne     $v1,$zero,.LSsSetSerialAttr_90
    addiu   $v0,$zero,8192
    sw      $v0,16($sp)
    sll     $v0,$t0,0x18
    sra     $v0,$v0,0x18
    sw      $v0,52($sp)
.LSsSetSerialAttr_90:
    bne     $v1,$a0,.LSsSetSerialAttr_a8
    addiu   $v0,$zero,4096
    sw      $v0,16($sp)
    sll     $v0,$t0,0x18
    sra     $v0,$v0,0x18
    sw      $v0,48($sp)
.LSsSetSerialAttr_a8:
    jal     SpuSetCommonAttr
    addiu   $a0,$sp,16
    lw      $ra,56($sp)
    addiu   $sp,$sp,64
    jr      $ra
    sll     $zero,$zero,0x0
    .end SsSetSerialAttr
    .size SsSetSerialAttr, . - SsSetSerialAttr

/* SSSTART_OBJ_0 (0x8003030c, 192 bytes) */
    .section .text.SSSTART_OBJ_0,"ax",@progbits
    .globl SSSTART_OBJ_0
    .globl SSSTART_OBJ_170
    .globl SSSTART_OBJ_218
    .globl SSSTART_OBJ_C0
    .type SSSTART_OBJ_0, @function
    .ent SSSTART_OBJ_0
SSSTART_OBJ_0:
    addiu   $sp,$sp,-32
    addiu   $v0,$zero,999
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    addiu   $v0,$v0,-1
.LSSSTART_OBJ_0_1c:
    bgez    $v0,.LSSSTART_OBJ_0_1c
    addiu   $v0,$v0,-1
    lui     $s2,0xf200
    ori     $s2,$s2,0x2
    addiu   $s1,$zero,17640
    lui     $a1,0x800d
    addiu   $a1,$a1,29156
    lw      $v1,-16($a1)
    addiu   $v0,$zero,6
    sb      $v0,2($a1)
    addiu   $v0,$zero,2
    sb      $zero,0($a1)
    sb      $zero,1($a1)
    beq     $v1,$v0,SSSTART_OBJ_170
    sw      $zero,-4($a1)
    slti    $v0,$v1,3
    beq     $v0,$zero,.LSSSTART_OBJ_0_74
    addiu   $v0,$zero,3
    beq     $v1,$zero,.LSSSTART_OBJ_0_8c
    addiu   $v0,$zero,127
    j       SSSTART_OBJ_C0
    sll     $zero,$zero,0x0
.LSSSTART_OBJ_0_74:
    beq     $v1,$v0,.LSSSTART_OBJ_0_b8
    addiu   $v0,$zero,5
    beq     $v1,$v0,.LSSSTART_OBJ_0_94
    sll     $zero,$zero,0x0
    j       SSSTART_OBJ_C0
    sll     $zero,$zero,0x0
.LSSSTART_OBJ_0_8c:
    j       SSSTART_OBJ_218
    sb      $v0,2($a1)
.LSSSTART_OBJ_0_94:
    bne     $a0,$zero,.LSSSTART_OBJ_0_a8
    sb      $zero,2($a1)
    addiu   $v0,$zero,1
    j       SSSTART_OBJ_170
    sb      $v0,0($a1)
.LSSSTART_OBJ_0_a8:
    lui     $s2,0xf200
    ori     $s2,$s2,0x3
    j       SSSTART_OBJ_170
    addiu   $s1,$zero,1
.LSSSTART_OBJ_0_b8:
    j       SSSTART_OBJ_170
    ori     $s1,$zero,0x89d0
    .end SSSTART_OBJ_0
    .size SSSTART_OBJ_0, . - SSSTART_OBJ_0

/* SSSTART_OBJ_C0 (0x800303cc, 176 bytes) */
    .section .text.SSSTART_OBJ_C0,"ax",@progbits
    .globl SSSTART_OBJ_C0
    .globl SSSTART_OBJ_170
    .globl SSSTART_OBJ_218
    .type SSSTART_OBJ_C0, @function
    .ent SSSTART_OBJ_C0
SSSTART_OBJ_C0:
    lui     $v1,0x800d
    addiu   $v1,$v1,29144
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,SSSTART_OBJ_218
    sll     $zero,$zero,0x0
    lw      $a0,-4($v1)
    sll     $zero,$zero,0x0
    slti    $v0,$a0,70
    beq     $v0,$zero,.LSSSTART_OBJ_C0_78
    addiu   $a1,$v1,-4
    lui     $v1,0x20
    ori     $v1,$v1,0x4cc0
    div     $zero,$v1,$a0
    bne     $a0,$zero,.LSSSTART_OBJ_C0_44
    sll     $zero,$zero,0x0
    break   0x7
.LSSSTART_OBJ_C0_44:
    addiu   $at,$zero,-1
    bne     $a0,$at,.LSSSTART_OBJ_C0_5c
    lui     $at,0x8000
    bne     $v1,$at,.LSSSTART_OBJ_C0_5c
    sll     $zero,$zero,0x0
    break   0x6
.LSSSTART_OBJ_C0_5c:
    mflo    $v1
    lbu     $v0,17($a1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sb      $v0,17($a1)
    j       SSSTART_OBJ_170
    addu    $s1,$v1,$zero
.LSSSTART_OBJ_C0_78:
    lui     $v0,0x40
    ori     $v0,$v0,0x9980
    div     $zero,$v0,$a0
    bne     $a0,$zero,.LSSSTART_OBJ_C0_90
    sll     $zero,$zero,0x0
    break   0x7
.LSSSTART_OBJ_C0_90:
    addiu   $at,$zero,-1
    bne     $a0,$at,.LSSSTART_OBJ_C0_a8
    lui     $at,0x8000
    bne     $v0,$at,.LSSSTART_OBJ_C0_a8
    sll     $zero,$zero,0x0
    break   0x6
.LSSSTART_OBJ_C0_a8:
    mflo    $v0
    addu    $s1,$v0,$zero
    .end SSSTART_OBJ_C0
    .size SSSTART_OBJ_C0, . - SSSTART_OBJ_C0

/* SSSTART_OBJ_170 (0x8003047c, 152 bytes) */
    .section .text.SSSTART_OBJ_170,"ax",@progbits
    .globl SSSTART_OBJ_170
    .globl InterruptCallback
    .globl ResetRCnt
    .globl SetRCnt
    .globl SSSTART_OBJ_208
    .globl SSSTART_OBJ_210
    .globl sym_8003bbe8
    .globl VSyncCallback
    .type SSSTART_OBJ_170, @function
    .ent SSSTART_OBJ_170
SSSTART_OBJ_170:
    lui     $s0,0x800d
    addiu   $s0,$s0,29156
    lb      $v0,0($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSSSTART_OBJ_170_34
    sll     $zero,$zero,0x0
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lw      $a0,-8($s0)
    jal     VSyncCallback
    sll     $zero,$zero,0x0
    j       SSSTART_OBJ_210
    sll     $zero,$zero,0x0
.LSSSTART_OBJ_170_34:
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    jal     ResetRCnt
    addu    $a0,$s2,$zero
    addu    $a0,$s2,$zero
    andi    $a1,$s1,0xffff
    jal     SetRCnt
    addiu   $a2,$zero,4096
    lb      $a0,2($s0)
    sll     $zero,$zero,0x0
    bne     $a0,$zero,.LSSSTART_OBJ_170_84
    sll     $zero,$zero,0x0
    addu    $a0,$zero,$zero
    jal     InterruptCallback
    addu    $a1,$zero,$zero
    lb      $a0,2($s0)
    lui     $a1,0x8003
    addiu   $a1,$a1,1404
    j       SSSTART_OBJ_208
    sw      $v0,-4($s0)
.LSSSTART_OBJ_170_84:
    lb      $v0,1($s0)
    lui     $a1,0x8003
    bne     $v0,$zero,SSSTART_OBJ_208
    addiu   $a1,$a1,1480
    lw      $a1,-8($s0)
    .end SSSTART_OBJ_170
    .size SSSTART_OBJ_170, . - SSSTART_OBJ_170

/* _SsSndPause (0x80030a9c, 152 bytes) */
    .section .text._SsSndPause,"ax",@progbits
    .globl _SsSndPause
    .globl _SsVmSeqKeyOff
    .type _SsSndPause, @function
    .ent _SsSndPause
_SsSndPause:
    addiu   $sp,$sp,-32
    sw      $s2,24($sp)
    sll     $s2,$a0,0x10
    lui     $v0,0x800e
    addiu   $v0,$v0,16720
    sra     $s2,$s2,0xe
    addu    $s2,$s2,$v0
    sll     $v0,$a1,0x10
    sra     $v0,$v0,0x10
    sw      $s0,16($sp)
    sll     $s0,$v0,0x1
    addu    $s0,$s0,$v0
    sll     $s0,$s0,0x2
    subu    $s0,$s0,$v0
    sll     $s0,$s0,0x4
    sll     $a1,$a1,0x8
    or      $a0,$a0,$a1
    sll     $a0,$a0,0x10
    sw      $ra,28($sp)
    sw      $s1,20($sp)
    lw      $s1,0($s2)
    sra     $a0,$a0,0x10
    jal     _SsVmSeqKeyOff
    addu    $s1,$s1,$s0
    sb      $zero,20($s1)
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    addu    $s0,$s0,$v0
    lw      $v0,152($s0)
    addiu   $v1,$zero,-3
    and     $v0,$v0,$v1
    sw      $v0,152($s0)
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end _SsSndPause
    .size _SsSndPause, . - _SsSndPause

/* _SsSeqPlay (0x80030b6c, 220 bytes) */
    .section .text._SsSeqPlay,"ax",@progbits
    .globl _SsSeqPlay
    .globl MIDIREAD_OBJ_E0
    .globl sym_80030c48
    .globl sym_80030eac
    .type _SsSeqPlay, @function
    .ent _SsSeqPlay
_SsSeqPlay:
    addiu   $sp,$sp,-40
    sll     $a3,$a0,0x10
    sra     $a0,$a3,0xe
    sll     $a1,$a1,0x10
    sra     $v1,$a1,0x10
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    sw      $ra,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lui     $v1,0x800e
    addu    $v1,$v1,$a0
    lw      $v1,16720($v1)
    sll     $v0,$v0,0x4
    addu    $s1,$v1,$v0
    lh      $v0,84($s1)
    lw      $v1,144($s1)
    lhu     $a0,84($s1)
    subu    $a2,$v1,$v0
    blez    $a2,.L_SsSeqPlay_9c
    slt     $v0,$v0,$v1
    lh      $v1,82($s1)
    lhu     $v0,82($s1)
    blez    $v1,.L_SsSeqPlay_7c
    addiu   $v0,$v0,-1
    j       MIDIREAD_OBJ_E0
    sh      $v0,82($s1)
.L_SsSeqPlay_7c:
    bne     $v1,$zero,.L_SsSeqPlay_94
    sll     $zero,$zero,0x0
    lw      $v0,144($s1)
    sh      $a0,82($s1)
    j       sym_80030c48
    addiu   $v0,$v0,-1
.L_SsSeqPlay_94:
    j       MIDIREAD_OBJ_E0
    sw      $a2,144($s1)
.L_SsSeqPlay_9c:
    bne     $v0,$zero,MIDIREAD_OBJ_E0
    addu    $s0,$v1,$zero
    addu    $s3,$a3,$zero
    addu    $s2,$a1,$zero
    sra     $a0,$s3,0x10
.L_SsSeqPlay_b0:
    jal     sym_80030eac
    sra     $a1,$s2,0x10
    lw      $v0,144($s1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_SsSeqPlay_b0
    sra     $a0,$s3,0x10
    lh      $v1,84($s1)
    addu    $s0,$s0,$v0
    slt     $v0,$s0,$v1
    bne     $v0,$zero,.L_SsSeqPlay_b0
    subu    $v0,$s0,$v1
    .end _SsSeqPlay
    .size _SsSeqPlay, . - _SsSeqPlay

/* _SsReadDeltaValue (0x8003125c, 164 bytes) */
    .section .text._SsReadDeltaValue,"ax",@progbits
    .globl _SsReadDeltaValue
    .type _SsReadDeltaValue, @function
    .ent _SsReadDeltaValue
_SsReadDeltaValue:
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0xe
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    sll     $v0,$a1,0x1
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a1
    lui     $v1,0x800e
    addu    $v1,$v1,$a0
    lw      $v1,16720($v1)
    sll     $v0,$v0,0x4
    addu    $a1,$v1,$v0
    lw      $v0,0($a1)
    sll     $zero,$zero,0x0
    lbu     $a0,0($v0)
    addiu   $v0,$v0,1
    sw      $v0,0($a1)
    beq     $a0,$zero,.L_SsReadDeltaValue_9c
    addu    $v0,$zero,$zero
    andi    $v0,$a0,0x80
    beq     $v0,$zero,.L_SsReadDeltaValue_88
    sll     $v0,$a0,0x2
    andi    $a0,$a0,0x7f
.L_SsReadDeltaValue_60:
    lw      $v0,0($a1)
    sll     $a0,$a0,0x7
    lbu     $v1,0($v0)
    addiu   $v0,$v0,1
    sw      $v0,0($a1)
    andi    $v0,$v1,0x7f
    andi    $v1,$v1,0x80
    bne     $v1,$zero,.L_SsReadDeltaValue_60
    addu    $a0,$a0,$v0
    sll     $v0,$a0,0x2
.L_SsReadDeltaValue_88:
    addu    $v0,$v0,$a0
    lw      $v1,136($a1)
    sll     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    sw      $v1,136($a1)
.L_SsReadDeltaValue_9c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsReadDeltaValue
    .size _SsReadDeltaValue, . - _SsReadDeltaValue

/* _SsSndNextSep (0x8003130c, 252 bytes) */
    .section .text._SsSndNextSep,"ax",@progbits
    .globl _SsSndNextSep
    .type _SsSndNextSep, @function
    .ent _SsSndNextSep
_SsSndNextSep:
    sll     $a0,$a0,0x10
    lui     $v0,0x800e
    addiu   $v0,$v0,16720
    sra     $a0,$a0,0xe
    addu    $a0,$a0,$v0
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    sll     $a2,$a1,0x1
    addu    $a2,$a2,$a1
    sll     $a2,$a2,0x2
    subu    $a2,$a2,$a1
    sll     $a2,$a2,0x4
    lw      $a3,0($a0)
    addiu   $t0,$zero,1
    addu    $a3,$a3,$a2
    sb      $t0,32($a3)
    sb      $zero,33($a3)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a1,$zero,-257
    and     $v0,$v0,$a1
    sw      $v0,152($v1)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a1,$zero,-9
    and     $v0,$v0,$a1
    sw      $v0,152($v1)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a1,$zero,-3
    and     $v0,$v0,$a1
    sw      $v0,152($v1)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a1,$zero,-5
    and     $v0,$v0,$a1
    sw      $v0,152($v1)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a1,$zero,-513
    and     $v0,$v0,$a1
    sw      $v0,152($v1)
    lw      $v0,4($a3)
    sb      $t0,20($a3)
    sw      $v0,0($a3)
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    addu    $a2,$a2,$v0
    lw      $v0,152($a2)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x1
    jr      $ra
    sw      $v0,152($a2)
    .end _SsSndNextSep
    .size _SsSndNextSep, . - _SsSndNextSep

/* TEMPO_OBJ_130 (0x80031bfc, 212 bytes) */
    .section .text.TEMPO_OBJ_130,"ax",@progbits
    .globl TEMPO_OBJ_130
    .globl sym_80031ce0
    .type TEMPO_OBJ_130, @function
    .ent TEMPO_OBJ_130
TEMPO_OBJ_130:
    lh      $v0,80($a3)
    lw      $v1,148($a3)
    sll     $zero,$zero,0x0
    mult    $v0,$v1
    lui     $a0,0x800e
    lw      $a0,16716($a0)
    mflo    $v0
    sll     $v1,$v0,0x2
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x1
    sll     $v0,$a0,0x4
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    divu    $zero,$v1,$v0
    bne     $v0,$zero,.LTEMPO_OBJ_130_44
    sll     $zero,$zero,0x0
    break   0x7
.LTEMPO_OBJ_130_44:
    mflo    $v1
    sh      $v1,84($a3)
    sll     $v1,$v1,0x10
    bgtz    $v1,.LTEMPO_OBJ_130_5c
    addiu   $v0,$zero,1
    sh      $v0,84($a3)
.LTEMPO_OBJ_130_5c:
    lw      $v0,168($a3)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LTEMPO_OBJ_130_80
    sll     $zero,$zero,0x0
    lw      $v1,148($a3)
    lw      $v0,172($a3)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,sym_80031ce0
    sll     $zero,$zero,0x0
.LTEMPO_OBJ_130_80:
    sll     $a2,$a2,0x10
    lui     $v0,0x800e
    addiu   $v0,$v0,16720
    sra     $a2,$a2,0xe
    addu    $a2,$a2,$v0
    sll     $v0,$a1,0x10
    sra     $v0,$v0,0x10
    sll     $v1,$v0,0x1
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$v0
    lw      $a1,0($a2)
    sll     $v1,$v1,0x4
    addu    $a1,$v1,$a1
    lw      $v0,152($a1)
    addiu   $a0,$zero,-65
    and     $v0,$v0,$a0
    sw      $v0,152($a1)
    lw      $v0,0($a2)
    sll     $zero,$zero,0x0
    addu    $v1,$v1,$v0
    .end TEMPO_OBJ_130
    .size TEMPO_OBJ_130, . - TEMPO_OBJ_130

/* SsUtSetReverbDepth (0x800320bc, 140 bytes) */
    .section .text.SsUtSetReverbDepth,"ax",@progbits
    .globl SsUtSetReverbDepth
    .globl sym_8003214c
    .type SsUtSetReverbDepth, @function
    .ent SsUtSetReverbDepth
SsUtSetReverbDepth:
    lui     $v0,0x8102
    ori     $v0,$v0,0x409
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $v1,$a0,0xf
    subu    $v1,$v1,$a0
    mult    $v1,$v0
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    mfhi    $t0
    sll     $a2,$a1,0xf
    subu    $a2,$a2,$a1
    mult    $a2,$v0
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,20768
    sw      $ra,16($sp)
    addiu   $v0,$zero,6
    sw      $v0,0($a0)
    addu    $v0,$t0,$v1
    sra     $v0,$v0,0x6
    sra     $v1,$v1,0x1f
    subu    $v0,$v0,$v1
    sh      $v0,8($a0)
    mfhi    $a1
    addu    $v0,$a1,$a2
    sra     $v0,$v0,0x6
    sra     $a2,$a2,0x1f
    subu    $v0,$v0,$a2
    jal     sym_8003214c
    sh      $v0,10($a0)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SsUtSetReverbDepth
    .size SsUtSetReverbDepth, . - SsUtSetReverbDepth

/* S_SRMP_OBJ_31C (0x80032468, 228 bytes) */
    .section .text.S_SRMP_OBJ_31C,"ax",@progbits
    .globl S_SRMP_OBJ_31C
    .globl S_SRMP_OBJ_400
    .globl S_SRMP_OBJ_424
    .type S_SRMP_OBJ_31C, @function
    .ent S_SRMP_OBJ_31C
S_SRMP_OBJ_31C:
    sw      $v0,16($sp)
    lui     $a0,0x8102
    lw      $v1,16($s2)
    ori     $a0,$a0,0x409
    sll     $v0,$v1,0x7
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x8
    mult    $v0,$a0
    lui     $at,0x800d
    sw      $v1,27652($at)
    mfhi    $t0
    addu    $v1,$t0,$v0
    sra     $v1,$v1,0x6
    sra     $v0,$v0,0x1f
    subu    $v1,$v1,$v0
    sh      $v1,34($sp)
    beq     $s4,$zero,.LS_SRMP_OBJ_31C_80
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    srl     $v0,$v0,0x7
    andi    $s7,$v0,0x1
    beq     $s7,$zero,S_SRMP_OBJ_400
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xff7f
    j       S_SRMP_OBJ_400
    sh      $v0,426($v1)
.LS_SRMP_OBJ_31C_80:
    bne     $s5,$zero,.LS_SRMP_OBJ_31C_90
    andi    $v0,$s3,0x2
    beq     $v0,$zero,.LS_SRMP_OBJ_31C_b0
    sll     $zero,$zero,0x0
.LS_SRMP_OBJ_31C_90:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lhu     $v1,8($s2)
    sll     $zero,$zero,0x0
    sh      $v1,388($v0)
    lhu     $v0,8($s2)
    lui     $at,0x800d
    sh      $v0,27644($at)
.LS_SRMP_OBJ_31C_b0:
    bne     $s5,$zero,.LS_SRMP_OBJ_31C_c0
    andi    $v0,$s3,0x4
    beq     $v0,$zero,S_SRMP_OBJ_424
    sll     $zero,$zero,0x0
.LS_SRMP_OBJ_31C_c0:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lhu     $v1,10($s2)
    sll     $zero,$zero,0x0
    sh      $v1,390($v0)
    lhu     $v0,10($s2)
    lui     $at,0x800d
    j       S_SRMP_OBJ_424
    sh      $v0,27646($at)
    .end S_SRMP_OBJ_31C
    .size S_SRMP_OBJ_31C, . - S_SRMP_OBJ_31C

/* _SsVmDoAllocate (0x80032bcc, 232 bytes) */
    .section .text._SsVmDoAllocate,"ax",@progbits
    .globl _SsVmDoAllocate
    .globl VM_ALOC2_OBJ_E8
    .type _SsVmDoAllocate, @function
    .ent _SsVmDoAllocate
_SsVmDoAllocate:
    addu    $a1,$zero,$zero
    lui     $v0,0x800e
    addiu   $v0,$v0,21048
    addu    $a2,$v0,$zero
    addiu   $a3,$zero,1
    lhu     $v0,0($a2)
    lui     $a0,0x800e
    addiu   $a0,$a0,20696
    sll     $t0,$v0,0x3
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x10
    sll     $v1,$v0,0x3
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x3
    addiu   $v0,$zero,32767
    lui     $at,0x800e
    addu    $at,$at,$v1
    sh      $v0,18934($at)
.L_SsVmDoAllocate_48:
    addiu   $a1,$a1,1
    lh      $v0,0($a2)
    lw      $v1,0($a0)
    sllv    $v0,$a3,$v0
    nor     $v0,$zero,$v0
    and     $v1,$v1,$v0
    sw      $v1,0($a0)
    slti    $v0,$a1,16
    bne     $v0,$zero,.L_SsVmDoAllocate_48
    addiu   $a0,$a0,4
    lui     $a1,0x800e
    addiu   $a1,$a1,21046
    lhu     $v1,0($a1)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    blez    $v0,.L_SsVmDoAllocate_bc
    sll     $v0,$v1,0x10
    sra     $v0,$v0,0x10
    addiu   $v0,$v0,-1
    srl     $v1,$v0,0x1f
    addu    $v0,$v0,$v1
    sra     $v0,$v0,0x1
    lui     $v1,0x800e
    lw      $v1,20996($v1)
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    lhu     $v0,12($v0)
    j       VM_ALOC2_OBJ_E8
    sll     $a0,$t0,0x10
.L_SsVmDoAllocate_bc:
    sll     $a0,$t0,0x10
    sra     $v0,$v0,0x10
    addiu   $v0,$v0,-1
    srl     $v1,$v0,0x1f
    addu    $v0,$v0,$v1
    sra     $v0,$v0,0x1
    lui     $v1,0x800e
    lw      $v1,20996($v1)
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    lhu     $v0,14($v0)
    .end _SsVmDoAllocate
    .size _SsVmDoAllocate, . - _SsVmDoAllocate

/* VM_ALOC2_OBJ_E8 (0x80032cb4, 224 bytes) */
    .section .text.VM_ALOC2_OBJ_E8,"ax",@progbits
    .globl VM_ALOC2_OBJ_E8
    .type VM_ALOC2_OBJ_E8, @function
    .ent VM_ALOC2_OBJ_E8
VM_ALOC2_OBJ_E8:
    sra     $a0,$a0,0xf
    lui     $at,0x800e
    addu    $at,$at,$a0
    sh      $v0,20310($at)
    lh      $v1,2($a1)
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lbu     $v0,20272($v0)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x8
    lui     $at,0x800e
    addu    $at,$at,$v1
    sb      $v0,20272($at)
    lui     $a3,0x800e
    addiu   $a3,$a3,21031
    sll     $a0,$t0,0x10
    sra     $a2,$a0,0xf
    lb      $v0,0($a3)
    lb      $v1,5($a3)
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    lui     $v1,0x800e
    lw      $v1,21008($v1)
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$v1
    lhu     $v1,16($v0)
    lui     $a1,0x800e
    addiu   $a1,$a1,20312
    lui     $at,0x800e
    addu    $at,$at,$a2
    sh      $v1,20312($at)
    lhu     $a0,18($v0)
    lui     $v0,0x800e
    lhu     $v0,20920($v0)
    andi    $v1,$a0,0x1f
    addu    $v0,$v0,$v1
    addu    $v1,$v0,$zero
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x10
    slti    $v0,$v0,32
    bne     $v0,$zero,.LVM_ALOC2_OBJ_E8_ac
    andi    $a0,$a0,0xffe0
    addiu   $v1,$zero,31
.LVM_ALOC2_OBJ_E8_ac:
    or      $v1,$v1,$a0
    addu    $v0,$a1,$a2
    sh      $v1,2($v0)
    lh      $v1,17($a3)
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lbu     $v0,20272($v0)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x30
    lui     $at,0x800e
    addu    $at,$at,$v1
    jr      $ra
    sb      $v0,20272($at)
    .end VM_ALOC2_OBJ_E8
    .size VM_ALOC2_OBJ_E8, . - VM_ALOC2_OBJ_E8

/* _SsVmInit (0x8003328c, 252 bytes) */
    .section .text._SsVmInit,"ax",@progbits
    .globl _SsVmInit
    .globl SpuInitMalloc
    .globl sym_80033388
    .globl sym_800335dc
    .type _SsVmInit, @function
    .ent _SsVmInit
_SsVmInit:
    addiu   $sp,$sp,-112
    sw      $s1,84($sp)
    addu    $s1,$a0,$zero
    addu    $a0,$zero,$zero
    sw      $ra,104($sp)
    sw      $s5,100($sp)
    sw      $s4,96($sp)
    sw      $s3,92($sp)
    sw      $s2,88($sp)
    jal     sym_800335dc
    sw      $s0,80($sp)
    lui     $a1,0x800e
    addiu   $a1,$a1,21224
    lui     $at,0x800e
    sh      $zero,20920($at)
    jal     SpuInitMalloc
    addiu   $a0,$zero,32
    addu    $s0,$zero,$zero
    lui     $v1,0x800e
    addiu   $v1,$v1,20304
    andi    $v0,$s0,0xffff
.L_SsVmInit_54:
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    sh      $zero,0($v0)
    addiu   $s0,$s0,1
    andi    $v0,$s0,0xffff
    sltiu   $v0,$v0,192
    bne     $v0,$zero,.L_SsVmInit_54
    andi    $v0,$s0,0xffff
    addu    $s0,$zero,$zero
    andi    $v0,$s0,0xffff
.L_SsVmInit_7c:
    lui     $at,0x800e
    addu    $at,$at,$v0
    sb      $zero,20272($at)
    addiu   $s0,$s0,1
    andi    $v0,$s0,0xffff
    sltiu   $v0,$v0,24
    bne     $v0,$zero,.L_SsVmInit_7c
    andi    $v0,$s0,0xffff
    lui     $at,0x800e
    sh      $zero,21144($at)
    addu    $s0,$zero,$zero
    andi    $v0,$s0,0xffff
.L_SsVmInit_ac:
    lui     $at,0x800e
    addu    $at,$at,$v0
    sb      $zero,21056($at)
    addiu   $s0,$s0,1
    andi    $v0,$s0,0xffff
    sltiu   $v0,$v0,16
    bne     $v0,$zero,.L_SsVmInit_ac
    andi    $v0,$s0,0xffff
    sll     $v0,$s1,0x18
    sra     $v1,$v0,0x18
    sltiu   $v0,$v1,24
    bne     $v0,$zero,.L_SsVmInit_f4
    lui     $v0,0x6
    addiu   $v0,$zero,24
    lui     $at,0x800e
    sb      $v0,21012($at)
    j       sym_80033388
    lui     $v0,0x6
.L_SsVmInit_f4:
    lui     $at,0x800e
    sb      $v1,21012($at)
    .end _SsVmInit
    .size _SsVmInit, . - _SsVmInit

/* VM_NO1_OBJ_2CC (0x80033ac8, 228 bytes) */
    .section .text.VM_NO1_OBJ_2CC,"ax",@progbits
    .globl VM_NO1_OBJ_2CC
    .globl SpuSetNoiseClock
    .globl sym_80033bac
    .type VM_NO1_OBJ_2CC, @function
    .ent VM_NO1_OBJ_2CC
VM_NO1_OBJ_2CC:
    lui     $a2,0x800e
    addiu   $a2,$a2,21044
    lh      $v1,0($a2)
    addiu   $v0,$zero,33
    beq     $v1,$v0,.LVM_NO1_OBJ_2CC_6c
    mult    $s2,$s2
    mflo    $a0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $s1,$s1
    mflo    $a1
    lui     $v0,0x4
    ori     $v0,$v0,0x11
    multu   $a0,$v0
    mfhi    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    multu   $a1,$v0
    subu    $a0,$a0,$v1
    srl     $a0,$a0,0x1
    addu    $v1,$v1,$a0
    srl     $s2,$v1,0xd
    mfhi    $v0
    subu    $a1,$a1,$v0
    srl     $a1,$a1,0x1
    addu    $v0,$v0,$a1
    srl     $s1,$v0,0xd
.LVM_NO1_OBJ_2CC_6c:
    lb      $a0,-18($a2)
    lb      $v0,-4($a2)
    sll     $zero,$zero,0x0
    subu    $a0,$a0,$v0
    jal     SpuSetNoiseClock
    andi    $a0,$a0,0x3f
    andi    $s0,$s3,0xff
    sll     $v1,$s0,0x4
    lui     $at,0x800e
    addu    $at,$at,$v1
    sh      $s1,20306($at)
    lui     $v0,0x800e
    addu    $v0,$v0,$s0
    lbu     $v0,20272($v0)
    lui     $at,0x800e
    addu    $at,$at,$v1
    sh      $s2,20304($at)
    ori     $v0,$v0,0x3
    lui     $at,0x800e
    addu    $at,$at,$s0
    sb      $v0,20272($at)
    sltiu   $v0,$s0,16
    beq     $v0,$zero,.LVM_NO1_OBJ_2CC_d8
    addiu   $v0,$zero,1
    sllv    $a3,$v0,$s0
    j       sym_80033bac
    addu    $a2,$zero,$zero
.LVM_NO1_OBJ_2CC_d8:
    addu    $a3,$zero,$zero
    addiu   $v1,$s0,-16
    sllv    $a2,$v0,$v1
    .end VM_NO1_OBJ_2CC
    .size VM_NO1_OBJ_2CC, . - VM_NO1_OBJ_2CC

/* VM_NOWOF_OBJ_34 (0x80033df0, 140 bytes) */
    .section .text.VM_NOWOF_OBJ_34,"ax",@progbits
    .globl VM_NOWOF_OBJ_34
    .type VM_NOWOF_OBJ_34, @function
    .ent VM_NOWOF_OBJ_34
VM_NOWOF_OBJ_34:
    sll     $v0,$a0,0x3
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x3
    lui     $at,0x800e
    addu    $at,$at,$v0
    sb      $zero,18957($at)
    lui     $v1,0x800e
    lhu     $v1,20760($v1)
    lui     $a0,0x800e
    lhu     $a0,20762($a0)
    lui     $at,0x800e
    addu    $at,$at,$v0
    sh      $zero,18932($at)
    lui     $at,0x800e
    addu    $at,$at,$v0
    sh      $zero,18928($at)
    lui     $v0,0x800e
    lhu     $v0,18912($v0)
    or      $v1,$v1,$a2
    lui     $at,0x800e
    sh      $v1,20760($at)
    nor     $v1,$zero,$v1
    and     $v0,$v0,$v1
    lui     $at,0x800e
    sh      $v0,18912($at)
    lui     $v0,0x800e
    lhu     $v0,18914($v0)
    or      $a0,$a0,$a1
    lui     $at,0x800e
    sh      $a0,20762($at)
    nor     $a0,$zero,$a0
    and     $v0,$v0,$a0
    lui     $at,0x800e
    jr      $ra
    sh      $v0,18914($at)
    .end VM_NOWOF_OBJ_34
    .size VM_NOWOF_OBJ_34, . - VM_NOWOF_OBJ_34

/* VM_NOWON_OBJ_440 (0x800342bc, 136 bytes) */
    .section .text.VM_NOWON_OBJ_440,"ax",@progbits
    .globl VM_NOWON_OBJ_440
    .type VM_NOWON_OBJ_440, @function
    .ent VM_NOWON_OBJ_440
VM_NOWON_OBJ_440:
    lui     $v0,0x800e
    lhu     $v0,18920($v0)
    lui     $a0,0x800e
    lhu     $a0,18914($a0)
    and     $v0,$v0,$v1
    lui     $at,0x800e
    sh      $v0,18920($at)
    lui     $v0,0x800e
    lhu     $v0,18922($v0)
    nor     $v1,$zero,$a1
    and     $v0,$v0,$v1
    lui     $v1,0x800e
    lhu     $v1,18912($v1)
    or      $a0,$a0,$a1
    lui     $at,0x800e
    sh      $a0,18914($at)
    lui     $at,0x800e
    sh      $v0,18922($at)
    lui     $v0,0x800e
    lhu     $v0,20760($v0)
    or      $v1,$v1,$a2
    lui     $at,0x800e
    sh      $v1,18912($at)
    nor     $v1,$zero,$v1
    and     $v0,$v0,$v1
    lui     $at,0x800e
    sh      $v0,20760($at)
    lui     $v0,0x800e
    lhu     $v0,20762($v0)
    nor     $a0,$zero,$a0
    and     $v0,$v0,$a0
    lui     $at,0x800e
    jr      $ra
    sh      $v0,20762($at)
    .end VM_NOWON_OBJ_440
    .size VM_NOWON_OBJ_440, . - VM_NOWON_OBJ_440

/* VM_SEQ_OBJ_324 (0x80034670, 152 bytes) */
    .section .text.VM_SEQ_OBJ_324,"ax",@progbits
    .globl VM_SEQ_OBJ_324
    .globl VM_SEQ_OBJ_3BC
    .type VM_SEQ_OBJ_324, @function
    .ent VM_SEQ_OBJ_324
VM_SEQ_OBJ_324:
    sll     $v1,$s2,0x10
    sra     $v1,$v1,0x10
    sll     $v0,$v1,0x3
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,18948($at)
    lui     $v1,0x800e
    lw      $v1,20996($v1)
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    lbu     $v1,4($v0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,64
    beq     $v0,$zero,.LVM_SEQ_OBJ_324_68
    andi    $v0,$a1,0xffff
    mult    $v0,$v1
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s3
    mfhi    $t0
    addu    $v0,$t0,$v0
    j       VM_SEQ_OBJ_3BC
    srl     $a1,$v0,0x5
.LVM_SEQ_OBJ_324_68:
    andi    $v0,$a0,0xffff
    subu    $v1,$s7,$v1
    mult    $v0,$v1
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s3
    mfhi    $t0
    addu    $v1,$t0,$v0
    sra     $v1,$v1,0x5
    sra     $v0,$v0,0x1f
    subu    $a0,$v1,$v0
    .end VM_SEQ_OBJ_324
    .size VM_SEQ_OBJ_324, . - VM_SEQ_OBJ_324

/* VM_SEQ_OBJ_3BC (0x80034708, 132 bytes) */
    .section .text.VM_SEQ_OBJ_3BC,"ax",@progbits
    .globl VM_SEQ_OBJ_3BC
    .globl VM_SEQ_OBJ_440
    .type VM_SEQ_OBJ_3BC, @function
    .ent VM_SEQ_OBJ_3BC
VM_SEQ_OBJ_3BC:
    sll     $v0,$s2,0x10
    sra     $v0,$v0,0x10
    sll     $v1,$v0,0x3
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x3
    lui     $at,0x800e
    addu    $at,$at,$v1
    lbu     $v1,18938($at)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,64
    beq     $v0,$zero,.LVM_SEQ_OBJ_3BC_54
    andi    $v0,$a1,0xffff
    mult    $v0,$v1
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s3
    mfhi    $t0
    addu    $v0,$t0,$v0
    j       VM_SEQ_OBJ_440
    srl     $a1,$v0,0x5
.LVM_SEQ_OBJ_3BC_54:
    andi    $v0,$a0,0xffff
    subu    $v1,$s7,$v1
    mult    $v0,$v1
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s3
    mfhi    $t0
    addu    $v1,$t0,$v0
    sra     $v1,$v1,0x5
    sra     $v0,$v0,0x1f
    subu    $a0,$v1,$v0
    .end VM_SEQ_OBJ_3BC
    .size VM_SEQ_OBJ_3BC, . - VM_SEQ_OBJ_3BC

/* VM_SEQ_OBJ_470 (0x800347bc, 252 bytes) */
    .section .text.VM_SEQ_OBJ_470,"ax",@progbits
    .globl VM_SEQ_OBJ_470
    .globl sym_80034420
    .type VM_SEQ_OBJ_470, @function
    .ent VM_SEQ_OBJ_470
VM_SEQ_OBJ_470:
    andi    $v0,$a0,0xffff
    mult    $v0,$v0
    mflo    $v0
    andi    $v1,$a1,0xffff
    sll     $zero,$zero,0x0
    mult    $v1,$v1
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s4
    mfhi    $t1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v1,$s4
    sll     $a2,$s2,0x10
    sra     $a2,$a2,0x10
    sll     $a1,$a2,0x4
    lui     $t0,0x800e
    addiu   $t0,$t0,20306
    addu    $a0,$t1,$v0
    sra     $a0,$a0,0xd
    sra     $v0,$v0,0x1f
    subu    $a0,$a0,$v0
    addu    $v0,$a1,$s8
    addu    $a1,$a1,$t0
    sh      $a0,0($v0)
    mfhi    $a3
    addu    $v0,$a3,$v1
    sra     $v0,$v0,0xd
    sra     $v1,$v1,0x1f
    subu    $v0,$v0,$v1
    sh      $v0,0($a1)
    lui     $v0,0x800e
    addu    $v0,$v0,$a2
    lbu     $v0,20272($v0)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x3
    lui     $at,0x800e
    addu    $at,$at,$a2
    sb      $v0,20272($at)
    addiu   $v0,$s2,1
    addu    $s2,$v0,$zero
    sll     $v0,$v0,0x10
    lui     $v1,0x800e
    lb      $v1,21012($v1)
    sra     $v0,$v0,0x10
    slt     $v0,$v0,$v1
    bne     $v0,$zero,sym_80034420
    sll     $v0,$s2,0x10
    sll     $v0,$s6,0x10
    sra     $v0,$v0,0x10
    lw      $ra,60($sp)
    lw      $s8,56($sp)
    lw      $s7,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end VM_SEQ_OBJ_470
    .size VM_SEQ_OBJ_470, . - VM_SEQ_OBJ_470

/* _SsVmSeqKeyOff (0x800349ac, 176 bytes) */
    .section .text._SsVmSeqKeyOff,"ax",@progbits
    .globl _SsVmSeqKeyOff
    .globl _SsVmKeyOffNow
    .type _SsVmSeqKeyOff, @function
    .ent _SsVmSeqKeyOff
_SsVmSeqKeyOff:
    lui     $v0,0x800e
    lb      $v0,21012($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$zero,$zero
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    blez    $v0,.L_SsVmSeqKeyOff_98
    sw      $s1,20($sp)
    addiu   $s2,$zero,1
    sll     $v0,$a0,0x10
    sra     $s1,$v0,0x10
    andi    $a0,$s0,0xff
.L_SsVmSeqKeyOff_34:
    lui     $v0,0x800d
    lw      $v0,29092($v0)
    sllv    $v1,$s2,$a0
    and     $v0,$v0,$v1
    bne     $v0,$zero,.L_SsVmSeqKeyOff_7c
    sll     $v0,$a0,0x3
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x3
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,18944($at)
    sll     $zero,$zero,0x0
    bne     $v0,$s1,.L_SsVmSeqKeyOff_7c
    andi    $v0,$s0,0xff
    lui     $at,0x800e
    sh      $v0,21048($at)
    jal     _SsVmKeyOffNow
    addu    $a0,$zero,$zero
.L_SsVmSeqKeyOff_7c:
    addiu   $s0,$s0,1
    lui     $v1,0x800e
    lb      $v1,21012($v1)
    andi    $v0,$s0,0xff
    slt     $v0,$v0,$v1
    bne     $v0,$zero,.L_SsVmSeqKeyOff_34
    andi    $a0,$s0,0xff
.L_SsVmSeqKeyOff_98:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end _SsVmSeqKeyOff
    .size _SsVmSeqKeyOff, . - _SsVmSeqKeyOff

/* _SsVmVSetUp (0x80034a5c, 184 bytes) */
    .section .text._SsVmVSetUp,"ax",@progbits
    .globl _SsVmVSetUp
    .globl VM_VSU_OBJ_B8
    .type _SsVmVSetUp, @function
    .ent _SsVmVSetUp
_SsVmVSetUp:
    addu    $a3,$a0,$zero
    andi    $v0,$a3,0xffff
    sltiu   $v0,$v0,16
    beq     $v0,$zero,.L_SsVmVSetUp_50
    addu    $t0,$a1,$zero
    sll     $v0,$a0,0x10
    sra     $a0,$v0,0x10
    lui     $v1,0x800e
    addu    $v1,$v1,$a0
    lbu     $v1,21056($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,VM_VSU_OBJ_B8
    addiu   $v0,$zero,-1
    sll     $v1,$a1,0x10
    lui     $v0,0x800e
    lh      $v0,20994($v0)
    sra     $a2,$v1,0x10
    slt     $v0,$a2,$v0
    bne     $v0,$zero,.L_SsVmVSetUp_58
    sll     $v0,$a0,0x2
.L_SsVmVSetUp_50:
    j       VM_VSU_OBJ_B8
    addiu   $v0,$zero,-1
.L_SsVmVSetUp_58:
    lui     $v1,0x800e
    addu    $v1,$v1,$v0
    lw      $v1,20856($v1)
    lui     $a1,0x800e
    addu    $a1,$a1,$v0
    lw      $a1,20792($a1)
    lui     $at,0x800e
    addu    $at,$at,$v0
    lw      $v0,20928($at)
    lui     $a0,0x800e
    addiu   $a0,$a0,21025
    sb      $a3,0($a0)
    sb      $t0,5($a0)
    lui     $at,0x800e
    sw      $v0,21008($at)
    sll     $v0,$a2,0x4
    addu    $v0,$v0,$a1
    lui     $at,0x800e
    sw      $v1,21004($at)
    lui     $at,0x800e
    sw      $a1,20996($at)
    lbu     $v1,8($v0)
    addu    $v0,$zero,$zero
    sb      $v1,6($a0)
    .end _SsVmVSetUp
    .size _SsVmVSetUp, . - _SsVmVSetUp

/* SsVabClose (0x80034b7c, 164 bytes) */
    .section .text.SsVabClose,"ax",@progbits
    .globl SsVabClose
    .globl SpuFree
    .globl sym_800335dc
    .globl sym_80033604
    .type SsVabClose, @function
    .ent SsVabClose
SsVabClose:
    addiu   $sp,$sp,-24
    andi    $v0,$a0,0xffff
    sltiu   $v0,$v0,16
    sw      $ra,20($sp)
    beq     $v0,$zero,.LSsVabClose_94
    sw      $s0,16($sp)
    sll     $v0,$a0,0x10
    sra     $s0,$v0,0x10
    lui     $v1,0x800e
    addu    $v1,$v1,$s0
    lbu     $v1,21056($v1)
    sll     $zero,$zero,0x0
    slti    $v0,$v1,3
    beq     $v0,$zero,.LSsVabClose_94
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LSsVabClose_94
    sll     $v0,$s0,0x2
    lui     $a0,0x800e
    addu    $a0,$a0,$v0
    lw      $a0,21152($a0)
    jal     SpuFree
    sll     $zero,$zero,0x0
    lui     $at,0x800e
    addu    $at,$at,$s0
    sb      $zero,21056($at)
    lui     $v0,0x800e
    lhu     $v0,21144($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    lui     $at,0x800e
    jal     sym_80033604
    sh      $v0,21144($at)
    addiu   $v1,$zero,1
    bne     $v0,$v1,.LSsVabClose_94
    sll     $zero,$zero,0x0
    jal     sym_800335dc
    addu    $a0,$zero,$zero
.LSsVabClose_94:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SsVabClose
    .size SsVabClose, . - SsVabClose

/* S_M_INT_OBJ_270 (0x80034f1c, 144 bytes) */
    .section .text.S_M_INT_OBJ_270,"ax",@progbits
    .globl S_M_INT_OBJ_270
    .type S_M_INT_OBJ_270, @function
    .ent S_M_INT_OBJ_270
S_M_INT_OBJ_270:
    lui     $v0,0x800d
    lw      $v0,27592($v0)
    sll     $zero,$zero,0x0
    addiu   $t1,$v0,-1
    bltz    $t1,.LS_M_INT_OBJ_270_88
    sll     $v0,$t1,0x3
    lui     $t0,0x8000
    lui     $a2,0xfff
    ori     $a2,$a2,0xffff
    lui     $a3,0x4000
    lui     $a1,0x800d
    lw      $a1,27596($a1)
    sll     $zero,$zero,0x0
    addu    $a0,$v0,$a1
.LS_M_INT_OBJ_270_38:
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    and     $v0,$v1,$t0
    beq     $v0,$zero,.LS_M_INT_OBJ_270_88
    and     $v0,$v1,$a2
    lui     $v1,0x800d
    lw      $v1,27592($v1)
    or      $v0,$v0,$a3
    sw      $v0,0($a0)
    lw      $v0,4($a0)
    lui     $at,0x800d
    sw      $t1,27592($at)
    sll     $v1,$v1,0x3
    addu    $v1,$v1,$a1
    lw      $v1,4($v1)
    addiu   $t1,$t1,-1
    addu    $v0,$v0,$v1
    sw      $v0,4($a0)
    bgez    $t1,.LS_M_INT_OBJ_270_38
    addiu   $a0,$a0,-8
.LS_M_INT_OBJ_270_88:
    jr      $ra
    sll     $zero,$zero,0x0
    .end S_M_INT_OBJ_270
    .size S_M_INT_OBJ_270, . - S_M_INT_OBJ_270

/* _SsVabOpenHeadWithMode (0x8003501c, 232 bytes) */
    .section .text._SsVabOpenHeadWithMode,"ax",@progbits
    .globl _SsVabOpenHeadWithMode
    .globl sym_800335dc
    .globl sym_80033604
    .globl sym_80035114
    .globl sym_80035118
    .globl sym_80035124
    .globl VS_VH_OBJ_158
    .globl VS_VH_OBJ_434
    .type _SsVabOpenHeadWithMode, @function
    .ent _SsVabOpenHeadWithMode
_SsVabOpenHeadWithMode:
    addiu   $sp,$sp,-1072
    sw      $s3,1052($sp)
    addu    $s3,$a0,$zero
    sw      $s0,1040($sp)
    addu    $s0,$a1,$zero
    sw      $s6,1064($sp)
    addu    $s6,$a2,$zero
    sw      $s5,1060($sp)
    addu    $s5,$a3,$zero
    sw      $s2,1048($sp)
    addiu   $s2,$zero,16
    sw      $ra,1068($sp)
    sw      $s4,1056($sp)
    jal     sym_80033604
    sw      $s1,1044($sp)
    addiu   $s1,$zero,1
    beq     $v0,$s1,VS_VH_OBJ_434
    addiu   $v0,$zero,-1
    jal     sym_800335dc
    addiu   $a0,$zero,1
    sll     $v0,$s0,0x10
    sra     $v1,$v0,0x10
    slti    $v0,$v1,16
    beq     $v0,$zero,sym_80035124
    addiu   $v0,$zero,-1
    bne     $v1,$v0,.L_SsVabOpenHeadWithMode_b8
    addu    $a1,$zero,$zero
.L_SsVabOpenHeadWithMode_6c:
    lui     $v0,0x800e
    addu    $v0,$v0,$a1
    lbu     $v0,21056($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_SsVabOpenHeadWithMode_9c
    addiu   $v0,$zero,1
    addiu   $a1,$a1,1
    slti    $v0,$a1,16
    bne     $v0,$zero,.L_SsVabOpenHeadWithMode_6c
    sll     $v0,$s2,0x10
    j       sym_80035118
    sra     $a2,$v0,0x10
.L_SsVabOpenHeadWithMode_9c:
    lui     $at,0x800e
    addu    $at,$at,$a1
    sb      $v0,21056($at)
    lui     $v0,0x800e
    lhu     $v0,21144($v0)
    j       VS_VH_OBJ_158
    addu    $s2,$a1,$zero
.L_SsVabOpenHeadWithMode_b8:
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lbu     $v0,21056($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_80035114
    sll     $v0,$s2,0x10
    lui     $at,0x800e
    addu    $at,$at,$v1
    sb      $s1,21056($at)
    lui     $v0,0x800e
    lhu     $v0,21144($v0)
    addu    $s2,$s0,$zero
    .end _SsVabOpenHeadWithMode
    .size _SsVabOpenHeadWithMode, . - _SsVabOpenHeadWithMode

/* VS_VH_OBJ_3FC (0x800353a8, 140 bytes) */
    .section .text.VS_VH_OBJ_3FC,"ax",@progbits
    .globl VS_VH_OBJ_3FC
    .globl sym_80035354
    .type VS_VH_OBJ_3FC, @function
    .ent VS_VH_OBJ_3FC
VS_VH_OBJ_3FC:
    addiu   $a1,$a1,1
    slt     $v0,$a3,$a1
    beq     $v0,$zero,sym_80035354
    addiu   $a2,$a2,4
    sll     $v0,$s2,0x10
    sra     $v0,$v0,0x10
    sll     $v1,$v0,0x2
    lui     $at,0x800e
    addu    $at,$at,$v1
    sw      $s0,21080($at)
    addiu   $v1,$zero,2
    lui     $at,0x800e
    addu    $at,$at,$v0
    sb      $v1,21056($at)
    .end VS_VH_OBJ_3FC
    .size VS_VH_OBJ_3FC, . - VS_VH_OBJ_3FC

/* SsVabTransBody (0x8003540c, 164 bytes) */
    .section .text.SsVabTransBody,"ax",@progbits
    .globl SsVabTransBody
    .globl SpuRead
    .globl SpuSetTransferMode
    .globl SpuSetTransferStartAddr
    .globl sym_800335dc
    .globl VS_VTB_OBJ_A4
    .type SsVabTransBody, @function
    .ent SsVabTransBody
SsVabTransBody:
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addu    $s3,$a0,$zero
    andi    $v0,$a1,0xffff
    sltiu   $v0,$v0,17
    sw      $ra,32($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    beq     $v0,$zero,.LSsVabTransBody_98
    sw      $s0,16($sp)
    sll     $v0,$a1,0x10
    sra     $s1,$v0,0x10
    lui     $v1,0x800e
    addu    $v1,$v1,$s1
    lbu     $v1,21056($v1)
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LSsVabTransBody_98
    sll     $s2,$s1,0x2
    lui     $s0,0x800e
    addu    $s0,$s0,$s2
    lw      $s0,21152($s0)
    jal     SpuSetTransferMode
    addu    $a0,$zero,$zero
    jal     SpuSetTransferStartAddr
    addu    $a0,$s0,$zero
    beq     $v0,$zero,.LSsVabTransBody_98
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    addu    $a1,$a1,$s2
    lw      $a1,21080($a1)
    jal     SpuRead
    addu    $a0,$s3,$zero
    addu    $v0,$s1,$zero
    addiu   $v1,$zero,1
    lui     $at,0x800e
    addu    $at,$at,$v0
    j       VS_VTB_OBJ_A4
    sb      $v1,21056($at)
.LSsVabTransBody_98:
    jal     sym_800335dc
    addu    $a0,$zero,$zero
    addiu   $v0,$zero,-1
    .end SsVabTransBody
    .size SsVabTransBody, . - SsVabTransBody

/* SsVabTransBodyPartly (0x800354cc, 220 bytes) */
    .section .text.SsVabTransBodyPartly,"ax",@progbits
    .globl SsVabTransBodyPartly
    .globl FUN_800355b8
    .globl SpuSetTransferMode
    .globl SpuSetTransferStartAddr
    .globl VS_VTBP_OBJ_DC
    .type SsVabTransBodyPartly, @function
    .ent SsVabTransBodyPartly
SsVabTransBodyPartly:
    addiu   $sp,$sp,-40
    sw      $s4,32($sp)
    addu    $s4,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    andi    $v0,$s2,0xffff
    sltiu   $v0,$v0,17
    sw      $ra,36($sp)
    sw      $s1,20($sp)
    beq     $v0,$zero,.LSsVabTransBodyPartly_d8
    sw      $s0,16($sp)
    sll     $v0,$a2,0x10
    sra     $s0,$v0,0x10
    lui     $v1,0x800e
    addu    $v1,$v1,$s0
    lbu     $v1,21056($v1)
    addiu   $v0,$zero,2
    bne     $v1,$v0,VS_VTBP_OBJ_DC
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,21016($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSsVabTransBodyPartly_c0
    sll     $s0,$s0,0x2
    lui     $v0,0x800e
    addu    $v0,$v0,$s0
    lw      $v0,21080($v0)
    lui     $at,0x800d
    sh      $a2,30148($at)
    lui     $at,0x800e
    sw      $v0,21016($at)
    jal     SpuSetTransferMode
    addu    $a0,$zero,$zero
    lui     $a0,0x800e
    addu    $a0,$a0,$s0
    lw      $a0,21152($a0)
    jal     SpuSetTransferStartAddr
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSsVabTransBodyPartly_c0
    addiu   $v0,$zero,-1
    lui     $at,0x800e
    sw      $zero,21016($at)
    lui     $at,0x800d
    sh      $v0,30148($at)
    j       VS_VTBP_OBJ_DC
    addu    $a0,$zero,$zero
.LSsVabTransBodyPartly_c0:
    lui     $s1,0x800d
    lh      $s1,30148($s1)
    sll     $v0,$s2,0x10
    sra     $v0,$v0,0x10
    beq     $s1,$v0,FUN_800355b8
    addu    $s0,$s3,$zero
.LSsVabTransBodyPartly_d8:
    addu    $a0,$zero,$zero
    .end SsVabTransBodyPartly
    .size SsVabTransBodyPartly, . - SsVabTransBodyPartly

/* SpuWritePartly (0x8003565c, 136 bytes) */
    .section .text.SpuWritePartly,"ax",@progbits
    .globl SpuWritePartly
    .globl _spu_FsetRXXa
    .globl _spu_Fw
    .type SpuWritePartly, @function
    .ent SpuWritePartly
SpuWritePartly:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    lui     $v0,0x7
    ori     $v0,$v0,0xeff0
    sltu    $v0,$v0,$s1
    sw      $ra,24($sp)
    beq     $v0,$zero,.LSpuWritePartly_2c
    sw      $s0,16($sp)
    lui     $s1,0x7
    ori     $s1,$s1,0xeff0
.LSpuWritePartly_2c:
    lui     $s0,0x800d
    lhu     $s0,27516($s0)
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    addu    $a1,$s1,$zero
    jal     _spu_Fw
    sllv    $s0,$s0,$v0
    addiu   $a0,$zero,-1
    jal     _spu_FsetRXXa
    addu    $a1,$s0,$s1
    lui     $v1,0x800d
    lw      $v1,27548($v1)
    lui     $at,0x800d
    sh      $v0,27516($at)
    bne     $v1,$zero,.LSpuWritePartly_74
    addu    $v0,$s1,$zero
    lui     $at,0x800d
    sw      $zero,27544($at)
.LSpuWritePartly_74:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SpuWritePartly
    .size SpuWritePartly, . - SpuWritePartly

/* SpuIsTransferCompleted (0x8003571c, 136 bytes) */
    .section .text.SpuIsTransferCompleted,"ax",@progbits
    .globl SpuIsTransferCompleted
    .globl S_ITC_OBJ_88
    .globl S_ITC_OBJ_90
    .globl TestEvent
    .type SpuIsTransferCompleted, @function
    .ent SpuIsTransferCompleted
SpuIsTransferCompleted:
    lui     $v0,0x800d
    lw      $v0,27620($v0)
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    addiu   $s0,$zero,1
    beq     $v0,$s0,.LSpuIsTransferCompleted_38
    sw      $ra,24($sp)
    lui     $v0,0x800d
    lw      $v0,27544($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LSpuIsTransferCompleted_40
    sll     $zero,$zero,0x0
.LSpuIsTransferCompleted_38:
    j       S_ITC_OBJ_90
    addiu   $v0,$zero,1
.LSpuIsTransferCompleted_40:
    lui     $a0,0x800d
    lw      $a0,27612($a0)
    jal     TestEvent
    sll     $zero,$zero,0x0
    bne     $s1,$s0,.LSpuIsTransferCompleted_80
    sll     $zero,$zero,0x0
    bne     $v0,$zero,S_ITC_OBJ_88
    addiu   $v0,$zero,1
.LSpuIsTransferCompleted_60:
    lui     $a0,0x800d
    lw      $a0,27612($a0)
    jal     TestEvent
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSpuIsTransferCompleted_60
    addiu   $v0,$zero,1
    j       S_ITC_OBJ_88
    sll     $zero,$zero,0x0
.LSpuIsTransferCompleted_80:
    bne     $v0,$s0,S_ITC_OBJ_90
    sll     $zero,$zero,0x0
    .end SpuIsTransferCompleted
    .size SpuIsTransferCompleted, . - SpuIsTransferCompleted

/* PCread (0x80035820, 148 bytes) */
    .section .text.PCread,"ax",@progbits
    .globl PCread
    .globl _SN_read
    .globl READ_OBJ_94
    .type PCread, @function
    .ent PCread
PCread:
    addiu   $sp,$sp,-48
    sw      $s4,32($sp)
    addu    $s4,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $s0,16($sp)
    addu    $s0,$a2,$zero
    sw      $s2,24($sp)
    addu    $s2,$zero,$zero
    sw      $ra,44($sp)
    sw      $s6,40($sp)
    sw      $s5,36($sp)
    beq     $s0,$zero,.LPCread_90
    sw      $s1,20($sp)
    ori     $s6,$zero,0x8000
    addiu   $s5,$zero,-1
    sltu    $v0,$s6,$s0
.LPCread_44:
    beq     $v0,$zero,.LPCread_50
    addu    $s1,$s0,$zero
    ori     $s1,$zero,0x8000
.LPCread_50:
    addu    $a0,$zero,$zero
    addu    $a1,$s4,$zero
    addu    $a2,$s1,$zero
    jal     _SN_read
    addu    $a3,$s3,$zero
    bne     $v0,$s5,.LPCread_74
    addu    $s2,$s2,$v0
    j       READ_OBJ_94
    addiu   $v0,$zero,-1
.LPCread_74:
    addu    $s3,$s3,$v0
    subu    $s0,$s0,$v0
    slt     $v0,$v0,$s1
    bne     $v0,$zero,.LPCread_90
    sll     $zero,$zero,0x0
    bne     $s0,$zero,.LPCread_44
    sltu    $v0,$s6,$s0
.LPCread_90:
    addu    $v0,$s2,$zero
    .end PCread
    .size PCread, . - PCread

/* VSync (0x800358f8, 164 bytes) */
    .section .text.VSync,"ax",@progbits
    .globl VSync
    .globl sym_80035a58
    .globl VSYNC_OBJ_164
    .globl VSYNC_OBJ_A4
    .type VSync, @function
    .ent VSync
VSync:
    lui     $v0,0x800d
    lw      $v0,30180($v0)
    lui     $a1,0x800d
    lw      $a1,30184($a1)
    addiu   $sp,$sp,-40
    sw      $ra,32($sp)
    sw      $s1,28($sp)
    sw      $s0,24($sp)
    lw      $s0,0($v0)
.LVSync_24:
    lw      $v0,0($a1)
    sll     $zero,$zero,0x0
    sw      $v0,16($sp)
    lw      $v1,16($sp)
    lw      $v0,0($a1)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LVSync_24
    sll     $zero,$zero,0x0
    lw      $v0,16($sp)
    lui     $v1,0x800d
    lw      $v1,30188($v1)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    bgez    $a0,.LVSync_70
    andi    $s1,$v0,0xffff
    lui     $v0,0x800e
    lw      $v0,-30948($v0)
    j       VSYNC_OBJ_164
    sll     $zero,$zero,0x0
.LVSync_70:
    addiu   $v0,$zero,1
    beq     $a0,$v0,sym_80035a58
    sll     $zero,$zero,0x0
    blez    $a0,.LVSync_9c
    sll     $zero,$zero,0x0
    lui     $v0,0x800d
    lw      $v0,30192($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    j       VSYNC_OBJ_A4
    addu    $v0,$v0,$a0
.LVSync_9c:
    lui     $v0,0x800d
    lw      $v0,30192($v0)
    .end VSync
    .size VSync, . - VSync

/* VSYNC_OBJ_A4 (0x8003599c, 192 bytes) */
    .section .text.VSYNC_OBJ_A4,"ax",@progbits
    .globl VSYNC_OBJ_A4
    .globl VSYNC_OBJ_178
    .type VSYNC_OBJ_A4, @function
    .ent VSYNC_OBJ_A4
VSYNC_OBJ_A4:
    blez    $a0,.LVSYNC_OBJ_A4_c
    addu    $a1,$zero,$zero
    addiu   $a1,$a0,-1
.LVSYNC_OBJ_A4_c:
    jal     VSYNC_OBJ_178
    addu    $a0,$v0,$zero
    lui     $v0,0x800d
    lw      $v0,30180($v0)
    sll     $zero,$zero,0x0
    lw      $s0,0($v0)
    lui     $a0,0x800e
    lw      $a0,-30948($a0)
    addiu   $a1,$zero,1
    jal     VSYNC_OBJ_178
    addiu   $a0,$a0,1
    lui     $v0,0x40
    and     $v0,$s0,$v0
    beq     $v0,$zero,.LVSYNC_OBJ_A4_80
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,30180($v1)
    sll     $zero,$zero,0x0
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    xor     $v0,$s0,$v0
    bltz    $v0,.LVSYNC_OBJ_A4_80
    lui     $a0,0x8000
.LVSYNC_OBJ_A4_68:
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    xor     $v0,$s0,$v0
    and     $v0,$v0,$a0
    beq     $v0,$zero,.LVSYNC_OBJ_A4_68
    sll     $zero,$zero,0x0
.LVSYNC_OBJ_A4_80:
    lui     $v0,0x800e
    lw      $v0,-30948($v0)
    lui     $a0,0x800d
    lw      $a0,30184($a0)
    lui     $at,0x800d
    sw      $v0,30192($at)
.LVSYNC_OBJ_A4_98:
    lw      $v0,0($a0)
    lui     $at,0x800d
    sw      $v0,30188($at)
    lui     $v1,0x800d
    lw      $v1,30188($v1)
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LVSYNC_OBJ_A4_98
    sll     $zero,$zero,0x0
    addu    $v0,$s1,$zero
    .end VSYNC_OBJ_A4
    .size VSYNC_OBJ_A4, . - VSYNC_OBJ_A4

/* VSYNC_OBJ_178 (0x80035a70, 136 bytes) */
    .section .text.VSYNC_OBJ_178,"ax",@progbits
    .globl VSYNC_OBJ_178
    .globl ChangeClearPAD
    .globl ChangeClearRCnt
    .globl FUN_8003ba70
    .globl VSYNC_OBJ_200
    .type VSYNC_OBJ_178, @function
    .ent VSYNC_OBJ_178
VSYNC_OBJ_178:
    addiu   $sp,$sp,-32
    sll     $a1,$a1,0xf
    sw      $a1,16($sp)
    lui     $v0,0x800e
    lw      $v0,-30948($v0)
    sll     $zero,$zero,0x0
    slt     $v0,$v0,$a0
    beq     $v0,$zero,VSYNC_OBJ_200
    sw      $ra,24($sp)
    addiu   $v1,$zero,-1
.LVSYNC_OBJ_178_28:
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sw      $v0,16($sp)
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    bne     $v0,$v1,.LVSYNC_OBJ_178_70
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    jal     FUN_8003ba70
    addiu   $a0,$a0,-21436
    jal     ChangeClearPAD
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,3
    jal     ChangeClearRCnt
    addu    $a1,$zero,$zero
    j       VSYNC_OBJ_200
    sll     $zero,$zero,0x0
.LVSYNC_OBJ_178_70:
    lui     $v0,0x800e
    lw      $v0,-30948($v0)
    sll     $zero,$zero,0x0
    slt     $v0,$v0,$a0
    bne     $v0,$zero,.LVSYNC_OBJ_178_28
    sll     $zero,$zero,0x0
    .end VSYNC_OBJ_178
    .size VSYNC_OBJ_178, . - VSYNC_OBJ_178

/* INTR_OBJ_194 (0x80035c9c, 216 bytes) */
    .section .text.INTR_OBJ_194,"ax",@progbits
    .globl INTR_OBJ_194
    .globl FUN_8003bb30
    .globl HookEntryInt
    .globl INTR_OBJ_69C
    .globl setjmp
    .globl startIntrDMA
    .globl startIntrVSync
    .globl sym_80035d74
    .globl sym_8003bbf8
    .type INTR_OBJ_194, @function
    .ent INTR_OBJ_194
INTR_OBJ_194:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    addiu   $s0,$s0,30292
    sw      $ra,20($sp)
    lhu     $v0,0($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LINTR_OBJ_194_c8
    addu    $v0,$zero,$zero
    lui     $v1,0x800e
    lw      $v1,-31008($v1)
    lui     $v0,0x800e
    lw      $v0,-31004($v0)
    lui     $a1,0x3333
    sh      $zero,0($v0)
    lhu     $v0,0($v0)
    ori     $a1,$a1,0x3333
    sh      $v0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-31000($v0)
    addu    $a0,$s0,$zero
    sw      $a1,0($v0)
    jal     INTR_OBJ_69C
    addiu   $a1,$zero,1050
    jal     setjmp
    addiu   $a0,$s0,56
    beq     $v0,$zero,.LINTR_OBJ_194_78
    sll     $zero,$zero,0x0
    jal     sym_80035d74
    sll     $zero,$zero,0x0
.LINTR_OBJ_194_78:
    lui     $s0,0x800d
    addiu   $s0,$s0,30352
    addiu   $a0,$s0,-4
    addiu   $v0,$s0,4060
    jal     HookEntryInt
    sw      $v0,0($s0)
    addiu   $v0,$zero,1
    jal     startIntrVSync
    sh      $v0,-60($s0)
    lui     $v1,0x800e
    lw      $v1,-31012($v1)
    jal     startIntrDMA
    sw      $v0,20($v1)
    lui     $a0,0x800e
    lw      $a0,-31012($a0)
    jal     FUN_8003bb30
    sw      $v0,4($a0)
    jal     sym_8003bbf8
    addiu   $s0,$s0,-60
    addu    $v0,$s0,$zero
.LINTR_OBJ_194_c8:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end INTR_OBJ_194
    .size INTR_OBJ_194, . - INTR_OBJ_194

/* INTR_OBJ_43C (0x80035f44, 176 bytes) */
    .section .text.INTR_OBJ_43C,"ax",@progbits
    .globl INTR_OBJ_43C
    .globl INTR_OBJ_4EC
    .globl sym_80036068
    .globl sym_8003606c
    .type INTR_OBJ_43C, @function
    .ent INTR_OBJ_43C
INTR_OBJ_43C:
    addiu   $sp,$sp,-40
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    lui     $a1,0x800d
    addiu   $a1,$a1,30296
    sll     $v0,$s1,0x2
    addu    $a0,$v0,$a1
    sw      $ra,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    sw      $s0,16($sp)
    lw      $s4,0($a0)
    sll     $zero,$zero,0x0
    beq     $s2,$s4,sym_8003606c
    addu    $v0,$s4,$zero
    lhu     $v0,-4($a1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80036068
    addiu   $a2,$a1,-4
    lui     $v0,0x800e
    lw      $v0,-31004($v0)
    sll     $zero,$zero,0x0
    lhu     $v1,0($v0)
    sh      $zero,0($v0)
    beq     $s2,$zero,.LINTR_OBJ_43C_90
    andi    $s3,$v1,0xffff
    addiu   $v1,$zero,1
    sllv    $v1,$v1,$s1
    sw      $s2,0($a0)
    lhu     $v0,48($a2)
    or      $s3,$s3,$v1
    or      $v0,$v0,$v1
    j       INTR_OBJ_4EC
    sh      $v0,48($a2)
.LINTR_OBJ_43C_90:
    addiu   $v0,$zero,1
    sllv    $v0,$v0,$s1
    nor     $v0,$zero,$v0
    sw      $zero,0($a0)
    lhu     $v1,44($a1)
    and     $s3,$s3,$v0
    and     $v1,$v1,$v0
    sh      $v1,44($a1)
    .end INTR_OBJ_43C
    .size INTR_OBJ_43C, . - INTR_OBJ_43C

/* INTR_OBJ_4EC (0x80035ff4, 152 bytes) */
    .section .text.INTR_OBJ_4EC,"ax",@progbits
    .globl INTR_OBJ_4EC
    .globl ChangeClearPAD
    .globl ChangeClearRCnt
    .type INTR_OBJ_4EC, @function
    .ent INTR_OBJ_4EC
INTR_OBJ_4EC:
    bne     $s1,$zero,.LINTR_OBJ_4EC_24
    addiu   $v0,$zero,4
    sltiu   $s0,$s2,1
    jal     ChangeClearPAD
    addu    $a0,$s0,$zero
    addiu   $a0,$zero,3
    jal     ChangeClearRCnt
    addu    $a1,$s0,$zero
    addiu   $v0,$zero,4
.LINTR_OBJ_4EC_24:
    bne     $s1,$v0,.LINTR_OBJ_4EC_3c
    addiu   $v0,$zero,5
    addu    $a0,$zero,$zero
    jal     ChangeClearRCnt
    sltiu   $a1,$s2,1
    addiu   $v0,$zero,5
.LINTR_OBJ_4EC_3c:
    bne     $s1,$v0,.LINTR_OBJ_4EC_54
    addiu   $v0,$zero,6
    addiu   $a0,$zero,1
    jal     ChangeClearRCnt
    sltiu   $a1,$s2,1
    addiu   $v0,$zero,6
.LINTR_OBJ_4EC_54:
    bne     $s1,$v0,.LINTR_OBJ_4EC_64
    addiu   $a0,$zero,2
    jal     ChangeClearRCnt
    sltiu   $a1,$s2,1
.LINTR_OBJ_4EC_64:
    lui     $v0,0x800e
    lw      $v0,-31004($v0)
    sll     $zero,$zero,0x0
    sh      $s3,0($v0)
    addu    $v0,$s4,$zero
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end INTR_OBJ_4EC
    .size INTR_OBJ_4EC, . - INTR_OBJ_4EC

/* INTR_OBJ_584 (0x8003608c, 160 bytes) */
    .section .text.INTR_OBJ_584,"ax",@progbits
    .globl INTR_OBJ_584
    .globl ResetEntryInt
    .globl sym_8003bbe8
    .type INTR_OBJ_584, @function
    .ent INTR_OBJ_584
INTR_OBJ_584:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    addiu   $s0,$s0,30292
    sw      $ra,20($sp)
    lhu     $v0,0($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LINTR_OBJ_584_90
    addu    $v0,$zero,$zero
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-31004($v0)
    lui     $a0,0x800e
    lw      $a0,-31000($a0)
    lhu     $v1,0($v0)
    sll     $zero,$zero,0x0
    sh      $v1,50($s0)
    lw      $v1,0($a0)
    lui     $a0,0x800e
    lw      $a0,-31008($a0)
    sw      $v1,52($s0)
    sh      $zero,0($v0)
    lhu     $v0,0($v0)
    sll     $zero,$zero,0x0
    sh      $v0,0($a0)
    lui     $a0,0x800e
    lw      $a0,-31000($a0)
    lui     $v1,0x7777
    lw      $v0,0($a0)
    ori     $v1,$v1,0x7777
    and     $v0,$v0,$v1
    jal     ResetEntryInt
    sw      $v0,0($a0)
    addu    $v0,$s0,$zero
    sh      $zero,0($v0)
.LINTR_OBJ_584_90:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end INTR_OBJ_584
    .size INTR_OBJ_584, . - INTR_OBJ_584

/* INTR_DMA_OBJ_1CC (0x800364b4, 164 bytes) */
    .section .text.INTR_DMA_OBJ_1CC,"ax",@progbits
    .globl INTR_DMA_OBJ_1CC
    .globl INTR_DMA_OBJ_270
    .type INTR_DMA_OBJ_1CC, @function
    .ent INTR_DMA_OBJ_1CC
INTR_DMA_OBJ_1CC:
    addu    $a2,$a0,$zero
    lui     $v1,0x800e
    addiu   $v1,$v1,-30928
    sll     $v0,$a2,0x2
    addu    $v1,$v0,$v1
    lw      $a3,0($v1)
    addu    $a0,$a1,$zero
    beq     $a0,$a3,INTR_DMA_OBJ_270
    addu    $v0,$a3,$zero
    beq     $a0,$zero,.LINTR_DMA_OBJ_1CC_68
    lui     $v0,0xff
    lui     $a1,0x800e
    lw      $a1,-30932($a1)
    ori     $v0,$v0,0xffff
    sw      $a0,0($v1)
    lw      $a0,0($a1)
    addiu   $v1,$a2,16
    and     $a0,$a0,$v0
    addiu   $v0,$zero,1
    sllv    $v0,$v0,$v1
    lui     $v1,0x80
    or      $v0,$v0,$v1
    or      $a0,$a0,$v0
    sw      $a0,0($a1)
    j       INTR_DMA_OBJ_270
    addu    $v0,$a3,$zero
.LINTR_DMA_OBJ_1CC_68:
    lui     $a1,0x800e
    lw      $a1,-30932($a1)
    ori     $v0,$v0,0xffff
    sw      $zero,0($v1)
    lw      $v1,0($a1)
    addiu   $a0,$a2,16
    and     $v1,$v1,$v0
    lui     $v0,0x80
    or      $v1,$v1,$v0
    addiu   $v0,$zero,1
    sllv    $v0,$v0,$a0
    nor     $v0,$zero,$v0
    and     $v1,$v1,$v0
    sw      $v1,0($a1)
    addu    $v0,$a3,$zero
    .end INTR_DMA_OBJ_1CC
    .size INTR_DMA_OBJ_1CC, . - INTR_DMA_OBJ_1CC

/* _patch_gte (0x80036678, 172 bytes) */
    .section .text._patch_gte,"ax",@progbits
    .globl _patch_gte
    .globl FlushCache
    .globl sym_8003bbe8
    .globl sym_8003bbf8
    .type _patch_gte, @function
    .ent _patch_gte
_patch_gte:
    lui     $at,0x800e
    sw      $ra,21488($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,86
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    lw      $v0,24($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,40
    addu    $t7,$v0,$zero
    lui     $t2,0x8003
    addiu   $t2,$t2,26404
    lui     $t1,0x8003
    addiu   $t1,$t1,26428
.L_patch_gte_40:
    lw      $v1,0($t2)
    lw      $t3,0($v0)
    addiu   $t2,$t2,4
    bne     $v1,$t3,.L_patch_gte_88
    addiu   $v0,$v0,4
    bne     $t2,$t1,.L_patch_gte_40
    sll     $zero,$zero,0x0
    addu    $v0,$t7,$zero
    lui     $t2,0x8003
    addiu   $t2,$t2,26428
    lui     $t1,0x8003
    addiu   $t1,$t1,26452
.L_patch_gte_70:
    lw      $v1,0($t2)
    sll     $zero,$zero,0x0
    sw      $v1,0($v0)
    addiu   $t2,$t2,4
    bne     $t2,$t1,.L_patch_gte_70
    addiu   $v0,$v0,4
.L_patch_gte_88:
    jal     FlushCache
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,21488($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _patch_gte
    .size _patch_gte, . - _patch_gte

/* GsSetDrawBuffOffset (0x80036cb8, 244 bytes) */
    .section .text.GsSetDrawBuffOffset,"ax",@progbits
    .globl GsSetDrawBuffOffset
    .globl GS_002_OBJ_104
    .globl PutDrawEnv
    .globl sym_80036648
    .type GsSetDrawBuffOffset, @function
    .ent GsSetDrawBuffOffset
GsSetDrawBuffOffset:
    lui     $v0,0x800e
    lh      $v0,21694($v0)
    addiu   $sp,$sp,-32
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    beq     $v0,$zero,.LGsSetDrawBuffOffset_88
    sw      $s0,16($sp)
    lui     $a2,0x800e
    addiu   $a2,$a2,21552
    lui     $v1,0x800e
    lh      $v1,21692($v1)
    lhu     $v0,0($a2)
    sll     $v1,$v1,0x1
    lui     $a0,0x800e
    addu    $a0,$a0,$v1
    lhu     $a0,21536($a0)
    lui     $a1,0x800e
    addiu   $a1,$a1,21568
    lui     $at,0x800e
    sh      $zero,21678($at)
    lui     $at,0x800e
    sh      $zero,21676($at)
    addu    $v0,$v0,$a0
    sh      $v0,0($a1)
    lhu     $v0,2($a2)
    lui     $at,0x800e
    addu    $at,$at,$v1
    lhu     $v1,21540($at)
    addiu   $a0,$a1,-8
    addu    $v0,$v0,$v1
    jal     PutDrawEnv
    sh      $v0,2($a1)
    j       GS_002_OBJ_104
    sll     $zero,$zero,0x0
.LGsSetDrawBuffOffset_88:
    lui     $v0,0x800e
    addiu   $v0,$v0,21536
    lui     $s0,0x800e
    addiu   $s0,$s0,21552
    lui     $a1,0x800e
    lh      $a1,21692($a1)
    lh      $a0,0($s0)
    bne     $a1,$zero,.LGsSetDrawBuffOffset_b0
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,2
.LGsSetDrawBuffOffset_b0:
    lh      $v0,0($v0)
    lui     $v1,0x800e
    addiu   $v1,$v1,21540
    addu    $s1,$a0,$v0
    lh      $v0,2($s0)
    bne     $a1,$zero,.LGsSetDrawBuffOffset_d0
    sll     $zero,$zero,0x0
    addiu   $v1,$v1,2
.LGsSetDrawBuffOffset_d0:
    lh      $s0,0($v1)
    addu    $a0,$s1,$zero
    addu    $s0,$v0,$s0
    jal     sym_80036648
    addu    $a1,$s0,$zero
    lui     $at,0x800e
    sh      $s1,21676($at)
    lui     $at,0x800e
    sh      $s0,21678($at)
    .end GsSetDrawBuffOffset
    .size GsSetDrawBuffOffset, . - GsSetDrawBuffOffset

/* GsSetLightMatrix (0x80036f10, 148 bytes) */
    .section .text.GsSetLightMatrix,"ax",@progbits
    .globl GsSetLightMatrix
    .globl PopMatrix
    .globl PushMatrix
    .globl SetLightMatrix
    .globl sym_800375c8
    .type GsSetLightMatrix, @function
    .ent GsSetLightMatrix
GsSetLightMatrix:
    addiu   $sp,$sp,-64
    sw      $s1,52($sp)
    addu    $s1,$a0,$zero
    sw      $ra,56($sp)
    sw      $s0,48($sp)
    lui     $a1,0x800e
    addiu   $a1,$a1,21848
    lw      $v0,0($a1)
    lw      $v1,4($a1)
    lw      $a0,8($a1)
    sw      $v0,16($sp)
    sw      $v1,20($sp)
    sw      $a0,24($sp)
    lw      $v0,12($a1)
    lw      $v1,16($a1)
    lw      $a0,20($a1)
    sw      $v0,28($sp)
    sw      $v1,32($sp)
    sw      $a0,36($sp)
    lw      $v0,24($a1)
    lw      $v1,28($a1)
    sw      $v0,40($sp)
    jal     PushMatrix
    sw      $v1,44($sp)
    addiu   $s0,$sp,16
    addu    $a0,$s0,$zero
    jal     sym_800375c8
    addu    $a1,$s1,$zero
    jal     PopMatrix
    sll     $zero,$zero,0x0
    jal     SetLightMatrix
    addu    $a0,$s0,$zero
    lw      $ra,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end GsSetLightMatrix
    .size GsSetLightMatrix, . - GsSetLightMatrix

/* GsMulCoord0 (0x80036fd4, 144 bytes) */
    .section .text.GsMulCoord0,"ax",@progbits
    .globl GsMulCoord0
    .globl MulMatrix0
    .globl sym_80037318
    .type GsMulCoord0, @function
    .ent GsMulCoord0
GsMulCoord0:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $s0,16($sp)
    addu    $s0,$a2,$zero
    addiu   $a1,$s2,20
    sw      $ra,28($sp)
    jal     sym_80037318
    addiu   $a2,$s0,20
    addu    $a0,$s1,$zero
    addu    $a1,$s2,$zero
    jal     MulMatrix0
    addu    $a2,$s0,$zero
    lw      $v0,20($s0)
    lw      $v1,20($s1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,20($s0)
    lw      $v0,24($s0)
    lw      $v1,24($s1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,24($s0)
    lw      $v0,28($s0)
    lw      $v1,28($s1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,28($s0)
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end GsMulCoord0
    .size GsMulCoord0, . - GsMulCoord0

/* PushMatrix (0x80037478, 164 bytes) */
    .section .text.PushMatrix,"ax",@progbits
    .globl PushMatrix
    .globl printf
    .type PushMatrix, @function
    .ent PushMatrix
PushMatrix:
    lui     $t6,0x800e
    lw      $t6,-30824($t6)
    sll     $zero,$zero,0x0
    slti    $at,$t6,640
    bne     $at,$zero,.LPushMatrix_40
    sll     $zero,$zero,0x0
    lui     $at,0x800e
    sw      $ra,-30836($at)
    lui     $a0,0x800e
    jal     printf
    addiu   $a0,$a0,-30180
    lui     $ra,0x800e
    lw      $ra,-30836($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
.LPushMatrix_40:
    lui     $t7,0x800e
    addiu   $t7,$t7,-30820
    addu    $t7,$t7,$t6
    cfc2    $t0,$0
    cfc2    $t1,$1
    sw      $t0,0($t7)
    sw      $t1,4($t7)
    cfc2    $t0,$2
    cfc2    $t1,$3
    sw      $t0,8($t7)
    sw      $t1,12($t7)
    cfc2    $t0,$4
    sll     $zero,$zero,0x0
    sw      $t0,16($t7)
    cfc2    $t0,$5
    cfc2    $t1,$6
    cfc2    $t2,$7
    sw      $t0,20($t7)
    sw      $t1,24($t7)
    sw      $t2,28($t7)
    addi    $t6,$t6,32
    lui     $at,0x800e
    sw      $t6,-30824($at)
    jr      $ra
    sll     $zero,$zero,0x0
    .end PushMatrix
    .size PushMatrix, . - PushMatrix

/* PopMatrix (0x8003751c, 164 bytes) */
    .section .text.PopMatrix,"ax",@progbits
    .globl PopMatrix
    .globl printf
    .type PopMatrix, @function
    .ent PopMatrix
PopMatrix:
    lui     $t6,0x800e
    lw      $t6,-30824($t6)
    sll     $zero,$zero,0x0
    bgtz    $t6,.LPopMatrix_3c
    sll     $zero,$zero,0x0
    lui     $at,0x800e
    sw      $ra,-30836($at)
    lui     $a0,0x800e
    jal     printf
    addiu   $a0,$a0,-30131
    lui     $ra,0x800e
    lw      $ra,-30836($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
.LPopMatrix_3c:
    addi    $t6,$t6,-32
    lui     $at,0x800e
    sw      $t6,-30824($at)
    lui     $t7,0x800e
    addiu   $t7,$t7,-30820
    addu    $t7,$t7,$t6
    lw      $t0,0($t7)
    lw      $t1,4($t7)
    ctc2    $t0,$0
    ctc2    $t1,$1
    lw      $t0,8($t7)
    lw      $t1,12($t7)
    ctc2    $t0,$2
    ctc2    $t1,$3
    lw      $t0,16($t7)
    sll     $zero,$zero,0x0
    ctc2    $t0,$4
    sll     $zero,$zero,0x0
    lw      $t0,20($t7)
    lw      $t1,24($t7)
    lw      $t2,28($t7)
    ctc2    $t0,$5
    ctc2    $t1,$6
    ctc2    $t2,$7
    jr      $ra
    sll     $zero,$zero,0x0
    .end PopMatrix
    .size PopMatrix, . - PopMatrix

/* GsGetTimInfo (0x80038028, 220 bytes) */
    .section .text.GsGetTimInfo,"ax",@progbits
    .globl GsGetTimInfo
    .globl GS_122_OBJ_DC
    .type GsGetTimInfo, @function
    .ent GsGetTimInfo
GsGetTimInfo:
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    sw      $v0,0($a1)
    srl     $v0,$v0,0x3
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LGsGetTimInfo_a4
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,4
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    srl     $v0,$v0,0x2
    sll     $v0,$v0,0x2
    addu    $v0,$a0,$v0
    addiu   $a0,$a0,4
    lhu     $v1,0($a0)
    sll     $zero,$zero,0x0
    sh      $v1,16($a1)
    lhu     $v1,2($a0)
    addiu   $a0,$a0,4
    sh      $v1,18($a1)
    lhu     $v1,0($a0)
    addiu   $v0,$v0,4
    sh      $v1,20($a1)
    lhu     $v1,2($a0)
    addiu   $a0,$a0,4
    sw      $a0,24($a1)
    sh      $v1,22($a1)
    lhu     $v1,0($v0)
    sll     $zero,$zero,0x0
    sh      $v1,4($a1)
    lhu     $v1,2($v0)
    addiu   $v0,$v0,4
    sh      $v1,6($a1)
    lhu     $v1,0($v0)
    sll     $zero,$zero,0x0
    sh      $v1,8($a1)
    lhu     $v1,2($v0)
    addiu   $v0,$v0,4
    sw      $v0,12($a1)
    j       GS_122_OBJ_DC
    sh      $v1,10($a1)
.LGsGetTimInfo_a4:
    addiu   $a0,$a0,8
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,4($a1)
    lhu     $v0,2($a0)
    addiu   $a0,$a0,4
    sh      $v0,6($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a1)
    lhu     $v0,2($a0)
    addiu   $a0,$a0,4
    sw      $a0,12($a1)
    sh      $v0,10($a1)
    .end GsGetTimInfo
    .size GsGetTimInfo, . - GsGetTimInfo

/* SetGraphQueue (0x800383b8, 164 bytes) */
    .section .text.SetGraphQueue,"ax",@progbits
    .globl SetGraphQueue
    .globl DMACallback
    .type SetGraphQueue, @function
    .ent SetGraphQueue
SetGraphQueue:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    sw      $s1,20($sp)
    lui     $s1,0x800e
    addiu   $s1,$s1,-29571
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    lbu     $v0,1($s1)
    lbu     $s2,0($s1)
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LSetGraphQueue_4c
    addu    $s0,$a0,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20916
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s0,$zero
.LSetGraphQueue_4c:
    lbu     $v0,0($s1)
    sll     $zero,$zero,0x0
    beq     $s0,$v0,.LSetGraphQueue_8c
    addu    $v0,$s2,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    sll     $zero,$zero,0x0
    lw      $v0,52($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$zero,1
    addiu   $a0,$zero,2
    addu    $a1,$zero,$zero
    jal     DMACallback
    sb      $s0,0($s1)
    addu    $v0,$s2,$zero
.LSetGraphQueue_8c:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SetGraphQueue
    .size SetGraphQueue, . - SetGraphQueue

/* SetDispMask (0x800384cc, 152 bytes) */
    .section .text.SetDispMask,"ax",@progbits
    .globl SetDispMask
    .globl SYS_OBJ_2F08
    .type SetDispMask, @function
    .ent SetDispMask
SetDispMask:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    lui     $s1,0x800e
    addiu   $s1,$s1,-29570
    sw      $ra,24($sp)
    sw      $s0,16($sp)
    lbu     $v0,0($s1)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LSetDispMask_48
    addu    $s0,$a0,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20868
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s0,$zero
.LSetDispMask_48:
    bne     $s0,$zero,.LSetDispMask_5c
    addiu   $a0,$s1,106
    addiu   $a1,$zero,-1
    jal     SYS_OBJ_2F08
    addiu   $a2,$zero,20
.LSetDispMask_5c:
    lui     $a0,0x300
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    beq     $s0,$zero,.LSetDispMask_74
    ori     $a0,$a0,0x1
    lui     $a0,0x300
.LSetDispMask_74:
    lw      $v0,16($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SetDispMask
    .size SetDispMask, . - SetDispMask

/* SYS_OBJ_3E4 (0x800385cc, 208 bytes) */
    .section .text.SYS_OBJ_3E4,"ax",@progbits
    .globl SYS_OBJ_3E4
    .globl SYS_OBJ_4B4
    .globl SYS_OBJ_4F0
    .type SYS_OBJ_3E4, @function
    .ent SYS_OBJ_3E4
SYS_OBJ_3E4:
    addiu   $sp,$sp,-32
    addu    $t0,$a0,$zero
    sw      $s0,24($sp)
    lui     $a0,0x800e
    addiu   $a0,$a0,-29570
    sw      $ra,28($sp)
    lbu     $v1,0($a0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LSYS_OBJ_3E4_3c
    addu    $s0,$a1,$zero
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LSYS_OBJ_3E4_c8
    sll     $zero,$zero,0x0
    j       SYS_OBJ_4F0
    sll     $zero,$zero,0x0
.LSYS_OBJ_3E4_3c:
    lh      $a1,4($s0)
    lh      $v1,2($a0)
    sll     $zero,$zero,0x0
    slt     $v0,$v1,$a1
    bne     $v0,$zero,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    lh      $a3,0($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$a1,$a3
    slt     $v0,$v1,$v0
    bne     $v0,$zero,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    lh      $v1,2($s0)
    lh      $a0,4($a0)
    sll     $zero,$zero,0x0
    slt     $v0,$a0,$v1
    bne     $v0,$zero,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    lh      $a2,6($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$a2
    slt     $v0,$a0,$v0
    bne     $v0,$zero,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    blez    $a1,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    bltz    $a3,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    bltz    $v1,.LSYS_OBJ_3E4_bc
    sll     $zero,$zero,0x0
    bgtz    $a2,SYS_OBJ_4F0
    sll     $zero,$zero,0x0
.LSYS_OBJ_3E4_bc:
    lui     $a0,0x8002
    j       SYS_OBJ_4B4
    addiu   $a0,$a0,-20828
.LSYS_OBJ_3E4_c8:
    lui     $a0,0x8002
    addiu   $a0,$a0,-20796
    .end SYS_OBJ_3E4
    .size SYS_OBJ_3E4, . - SYS_OBJ_3E4

/* ClearImage (0x800386e8, 144 bytes) */
    .section .text.ClearImage,"ax",@progbits
    .globl ClearImage
    .globl SYS_OBJ_3E4
    .type ClearImage, @function
    .ent ClearImage
ClearImage:
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addu    $s3,$a0,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20792
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    addu    $a1,$s3,$zero
    sw      $s1,20($sp)
    addu    $s1,$a2,$zero
    sw      $s0,16($sp)
    sw      $ra,32($sp)
    jal     SYS_OBJ_3E4
    addu    $s0,$a3,$zero
    addu    $a1,$s3,$zero
    andi    $s0,$s0,0xff
    sll     $s0,$s0,0x10
    andi    $s1,$s1,0xff
    sll     $s1,$s1,0x8
    or      $s0,$s0,$s1
    andi    $s2,$s2,0xff
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addiu   $a2,$zero,8
    lw      $a0,12($v0)
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    or      $a3,$s0,$s2
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end ClearImage
    .size ClearImage, . - ClearImage

/* ClearImage2 (0x80038778, 152 bytes) */
    .section .text.ClearImage2,"ax",@progbits
    .globl ClearImage2
    .globl SYS_OBJ_3E4
    .type ClearImage2, @function
    .ent ClearImage2
ClearImage2:
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addu    $s3,$a0,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20780
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    addu    $a1,$s3,$zero
    sw      $s0,16($sp)
    addu    $s0,$a2,$zero
    sw      $s1,20($sp)
    sw      $ra,32($sp)
    jal     SYS_OBJ_3E4
    addu    $s1,$a3,$zero
    addu    $a1,$s3,$zero
    andi    $s1,$s1,0xff
    sll     $s1,$s1,0x10
    andi    $s0,$s0,0xff
    sll     $s0,$s0,0x8
    lui     $v0,0x8000
    or      $s0,$s0,$v0
    or      $s1,$s1,$s0
    andi    $s2,$s2,0xff
    lui     $v1,0x800e
    lw      $v1,-29580($v1)
    addiu   $a2,$zero,8
    lw      $a0,12($v1)
    lw      $v0,8($v1)
    sll     $zero,$zero,0x0
    jalr    $v0
    or      $a3,$s1,$s2
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end ClearImage2
    .size ClearImage2, . - ClearImage2

/* MoveImage (0x800388d0, 160 bytes) */
    .section .text.MoveImage,"ax",@progbits
    .globl MoveImage
    .globl SYS_OBJ_3E4
    .globl SYS_OBJ_788
    .type MoveImage, @function
    .ent MoveImage
MoveImage:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $s1,20($sp)
    addu    $s1,$a2,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20744
    sw      $ra,28($sp)
    jal     SYS_OBJ_3E4
    addu    $a1,$s0,$zero
    lh      $v0,4($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,SYS_OBJ_788
    addiu   $v0,$zero,-1
    lh      $v0,6($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LMoveImage_58
    sll     $v0,$s1,0x10
    j       SYS_OBJ_788
    addiu   $v0,$zero,-1
.LMoveImage_58:
    lui     $v1,0x800e
    addiu   $v1,$v1,-29412
    andi    $a0,$s2,0xffff
    or      $v0,$v0,$a0
    lw      $a1,0($s0)
    lui     $a3,0x800e
    lw      $a3,-29580($a3)
    addiu   $a2,$zero,20
    sw      $v0,4($v1)
    sw      $a1,0($v1)
    lw      $v0,4($s0)
    addiu   $a1,$v1,-8
    sw      $v0,8($v1)
    lw      $a0,24($a3)
    lw      $v0,8($a3)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$zero,$zero
    .end MoveImage
    .size MoveImage, . - MoveImage

/* ClearOTag (0x80038988, 200 bytes) */
    .section .text.ClearOTag,"ax",@progbits
    .globl ClearOTag
    .type ClearOTag, @function
    .ent ClearOTag
ClearOTag:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LClearOTag_44
    sw      $ra,24($sp)
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20732
    addu    $a1,$s0,$zero
    jalr    $v0
    addu    $a2,$s1,$zero
.LClearOTag_44:
    addiu   $s1,$s1,-1
    beq     $s1,$zero,.LClearOTag_80
    lui     $a1,0xff
    ori     $a1,$a1,0xffff
    lui     $a2,0xff00
.LClearOTag_58:
    addiu   $s1,$s1,-1
    addiu   $a0,$s0,4
    sb      $zero,3($s0)
    lw      $v0,0($s0)
    and     $v1,$a0,$a1
    and     $v0,$v0,$a2
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    bne     $s1,$zero,.LClearOTag_58
    addu    $s0,$a0,$zero
.LClearOTag_80:
    lui     $a2,0xff
    ori     $a2,$a2,0xffff
    addu    $v0,$s0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,-29380
    lui     $v1,0x800e
    addiu   $v1,$v1,-29400
    and     $v1,$v1,$a2
    lui     $a0,0x400
    or      $v1,$v1,$a0
    sw      $v1,0($a1)
    and     $a1,$a1,$a2
    sw      $a1,0($v0)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end ClearOTag
    .size ClearOTag, . - ClearOTag

/* ClearOTagR (0x80038a50, 172 bytes) */
    .section .text.ClearOTagR,"ax",@progbits
    .globl ClearOTagR
    .type ClearOTagR, @function
    .ent ClearOTagR
ClearOTagR:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LClearOTagR_48
    sw      $ra,24($sp)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20708
    addu    $a1,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a2,$s1,$zero
.LClearOTagR_48:
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addu    $a0,$s0,$zero
    lw      $v0,44($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
    lui     $a2,0xff
    ori     $a2,$a2,0xffff
    addu    $v0,$s0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,-29380
    lui     $v1,0x800e
    addiu   $v1,$v1,-29400
    and     $v1,$v1,$a2
    lui     $a0,0x400
    or      $v1,$v1,$a0
    sw      $v1,0($a1)
    and     $a1,$a1,$a2
    sw      $a1,0($v0)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end ClearOTagR
    .size ClearOTagR, . - ClearOTagR

/* PutDrawEnv (0x80038bc8, 192 bytes) */
    .section .text.PutDrawEnv,"ax",@progbits
    .globl PutDrawEnv
    .globl memcpy
    .globl sym_800395a8
    .type PutDrawEnv, @function
    .ent PutDrawEnv
PutDrawEnv:
    addiu   $sp,$sp,-32
    sw      $s2,24($sp)
    lui     $s2,0x800e
    addiu   $s2,$s2,-29570
    sw      $ra,28($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LPutDrawEnv_4c
    addu    $s1,$a0,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20664
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
.LPutDrawEnv_4c:
    addiu   $s0,$s1,28
    addu    $a0,$s0,$zero
    jal     sym_800395a8
    addu    $a1,$s1,$zero
    lui     $a0,0xff
    ori     $a0,$a0,0xffff
    addu    $a1,$s0,$zero
    addiu   $a2,$zero,64
    lw      $v0,28($s1)
    lui     $v1,0x800e
    lw      $v1,-29580($v1)
    or      $v0,$v0,$a0
    sw      $v0,28($s1)
    lw      $a0,24($v1)
    lw      $v0,8($v1)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$zero,$zero
    addiu   $a0,$s2,14
    addu    $a1,$s1,$zero
    jal     memcpy
    addiu   $a2,$zero,92
    addu    $v0,$s1,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PutDrawEnv
    .size PutDrawEnv, . - PutDrawEnv

/* DrawOTagEnv (0x80038c88, 216 bytes) */
    .section .text.DrawOTagEnv,"ax",@progbits
    .globl DrawOTagEnv
    .globl memcpy
    .globl sym_800395a8
    .type DrawOTagEnv, @function
    .ent DrawOTagEnv
DrawOTagEnv:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s3,28($sp)
    lui     $s3,0x800e
    addiu   $s3,$s3,-29570
    sw      $ra,32($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lbu     $v0,0($s3)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LDrawOTagEnv_58
    addu    $s1,$a1,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20640
    addu    $a1,$s2,$zero
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a2,$s1,$zero
.LDrawOTagEnv_58:
    addiu   $s0,$s1,28
    addu    $a0,$s0,$zero
    jal     sym_800395a8
    addu    $a1,$s1,$zero
    lui     $a0,0xff
    ori     $a0,$a0,0xffff
    addu    $a1,$s0,$zero
    addiu   $a2,$zero,64
    lui     $v1,0xff00
    lw      $v0,28($s1)
    and     $a0,$s2,$a0
    and     $v0,$v0,$v1
    lui     $v1,0x800e
    lw      $v1,-29580($v1)
    or      $v0,$v0,$a0
    sw      $v0,28($s1)
    lw      $a0,24($v1)
    lw      $v0,8($v1)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$zero,$zero
    addiu   $a0,$s3,14
    addu    $a1,$s1,$zero
    jal     memcpy
    addiu   $a2,$zero,92
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end DrawOTagEnv
    .size DrawOTagEnv, . - DrawOTagEnv

/* SYS_OBJ_100C (0x800391f4, 152 bytes) */
    .section .text.SYS_OBJ_100C,"ax",@progbits
    .globl SYS_OBJ_100C
    .globl memcpy
    .type SYS_OBJ_100C, @function
    .ent SYS_OBJ_100C
SYS_OBJ_100C:
    beq     $v0,$zero,.LSYS_OBJ_100C_c
    sll     $zero,$zero,0x0
    addu    $a1,$s2,$zero
.LSYS_OBJ_100C_c:
    addu    $s2,$a1,$zero
    andi    $v1,$v1,0xfff
    sll     $v1,$v1,0xc
    andi    $a0,$a0,0xfff
    lui     $v0,0x600
    lui     $a1,0x800e
    lw      $a1,-29580($a1)
    or      $a0,$a0,$v0
    lw      $v0,16($a1)
    sll     $zero,$zero,0x0
    jalr    $v0
    or      $a0,$v1,$a0
    andi    $v1,$s2,0x3ff
    sll     $v1,$v1,0xa
    andi    $a0,$s0,0x3ff
    lui     $v0,0x700
    lui     $a1,0x800e
    lw      $a1,-29580($a1)
    or      $a0,$a0,$v0
    lw      $v0,16($a1)
    sll     $zero,$zero,0x0
    jalr    $v0
    or      $a0,$v1,$a0
    lui     $a0,0x800e
    addiu   $a0,$a0,-29464
    addu    $a1,$s1,$zero
    jal     memcpy
    addiu   $a2,$zero,20
    addu    $v0,$s1,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_100C
    .size SYS_OBJ_100C, . - SYS_OBJ_100C

/* SYS_OBJ_1324 (0x8003950c, 156 bytes) */
    .section .text.SYS_OBJ_1324,"ax",@progbits
    .globl SYS_OBJ_1324
    .type SYS_OBJ_1324, @function
    .ent SYS_OBJ_1324
SYS_OBJ_1324:
    sll     $a2,$t0,0x2
    addiu   $t0,$t0,1
    sll     $a3,$t0,0x2
    addiu   $t0,$t0,1
    sll     $a1,$t0,0x2
    addiu   $t0,$t0,1
    sh      $v0,22($sp)
    lhu     $v0,16($sp)
    lhu     $v1,8($s0)
    addu    $a2,$a2,$s1
    subu    $v0,$v0,$v1
    sh      $v0,16($sp)
    lhu     $v0,18($sp)
    lhu     $v1,10($s0)
    lui     $a0,0x6000
    subu    $v0,$v0,$v1
    sh      $v0,18($sp)
    lbu     $v0,27($s0)
    lbu     $v1,26($s0)
    sll     $v0,$v0,0x10
    sll     $v1,$v1,0x8
    or      $v1,$v1,$a0
    lbu     $a0,25($s0)
    or      $v0,$v0,$v1
    or      $v0,$v0,$a0
    sw      $v0,0($a2)
    lw      $v0,16($sp)
    addu    $a3,$a3,$s1
    sw      $v0,0($a3)
    lw      $v0,20($sp)
    addu    $a1,$a1,$s1
    sw      $v0,0($a1)
    addiu   $v0,$t0,-1
    sb      $v0,3($s1)
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end SYS_OBJ_1324
    .size SYS_OBJ_1324, . - SYS_OBJ_1324

/* SYS_OBJ_151C (0x80039704, 248 bytes) */
    .section .text.SYS_OBJ_151C,"ax",@progbits
    .globl SYS_OBJ_151C
    .globl SYS_OBJ_1614
    .type SYS_OBJ_151C, @function
    .ent SYS_OBJ_151C
SYS_OBJ_151C:
    lhu     $v1,16($sp)
    sh      $v0,22($sp)
    andi    $v0,$v1,0x3f
    bne     $v0,$zero,.LSYS_OBJ_151C_28
    sll     $a2,$t0,0x2
    lhu     $v0,20($sp)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x3f
    beq     $v0,$zero,.LSYS_OBJ_151C_a0
    sll     $a1,$t0,0x2
.LSYS_OBJ_151C_28:
    addiu   $t0,$t0,1
    sll     $a3,$t0,0x2
    addiu   $t0,$t0,1
    sll     $a1,$t0,0x2
    addiu   $t0,$t0,1
    lhu     $v0,8($s0)
    addu    $a2,$a2,$s1
    subu    $v0,$v1,$v0
    sh      $v0,16($sp)
    lhu     $v0,18($sp)
    lhu     $v1,10($s0)
    lui     $a0,0x6000
    subu    $v0,$v0,$v1
    sh      $v0,18($sp)
    lbu     $v0,27($s0)
    lbu     $v1,26($s0)
    sll     $v0,$v0,0x10
    sll     $v1,$v1,0x8
    or      $v1,$v1,$a0
    lbu     $a0,25($s0)
    or      $v0,$v0,$v1
    or      $v0,$v0,$a0
    sw      $v0,0($a2)
    lw      $v0,16($sp)
    addu    $a3,$a3,$s1
    sw      $v0,0($a3)
    lw      $v0,20($sp)
    addu    $a1,$a1,$s1
    j       SYS_OBJ_1614
    sw      $v0,0($a1)
.LSYS_OBJ_151C_a0:
    addiu   $t0,$t0,1
    sll     $a2,$t0,0x2
    addiu   $t0,$t0,1
    sll     $a3,$t0,0x2
    addiu   $t0,$t0,1
    addu    $a1,$a1,$s1
    lui     $a0,0x200
    lbu     $v0,27($s0)
    lbu     $v1,26($s0)
    sll     $v0,$v0,0x10
    sll     $v1,$v1,0x8
    or      $v1,$v1,$a0
    lbu     $a0,25($s0)
    or      $v0,$v0,$v1
    or      $v0,$v0,$a0
    sw      $v0,0($a1)
    lw      $v0,16($sp)
    addu    $a2,$a2,$s1
    sw      $v0,0($a2)
    lw      $v0,20($sp)
    addu    $a3,$a3,$s1
    sw      $v0,0($a3)
    .end SYS_OBJ_151C
    .size SYS_OBJ_151C, . - SYS_OBJ_151C

/* SYS_OBJ_1834 (0x80039a1c, 224 bytes) */
    .section .text.SYS_OBJ_1834,"ax",@progbits
    .globl SYS_OBJ_1834
    .globl sym_8003aacc
    .globl SYS_OBJ_28B0
    .type SYS_OBJ_1834, @function
    .ent SYS_OBJ_1834
SYS_OBJ_1834:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    lui     $a1,0x800e
    lw      $a1,-29280($a1)
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    lw      $v0,0($a1)
    lui     $v1,0x800
    or      $v0,$v0,$v1
    sw      $v0,0($a1)
    lui     $v0,0x800e
    lw      $v0,-29284($v0)
    sll     $zero,$zero,0x0
    sw      $zero,0($v0)
    sll     $v0,$s0,0x2
    addiu   $v0,$v0,-4
    lui     $v1,0x800e
    lw      $v1,-29292($v1)
    addu    $a0,$a0,$v0
    sw      $a0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-29288($v0)
    lui     $v1,0x1100
    sw      $s0,0($v0)
    lui     $v0,0x800e
    lw      $v0,-29284($v0)
    ori     $v1,$v1,0x2
    jal     SYS_OBJ_28B0
    sw      $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,-29284($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    and     $v0,$v0,$v1
    beq     $v0,$zero,.LSYS_OBJ_1834_cc
    addu    $v0,$s0,$zero
    lui     $s1,0x100
.LSYS_OBJ_1834_9c:
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSYS_OBJ_1834_cc
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-29284($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$s1
    bne     $v0,$zero,.LSYS_OBJ_1834_9c
    addu    $v0,$s0,$zero
.LSYS_OBJ_1834_cc:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_1834
    .size SYS_OBJ_1834, . - SYS_OBJ_1834

/* SYS_OBJ_2260 (0x8003a448, 148 bytes) */
    .section .text.SYS_OBJ_2260,"ax",@progbits
    .globl SYS_OBJ_2260
    .globl SYS_OBJ_2318
    .type SYS_OBJ_2260, @function
    .ent SYS_OBJ_2260
SYS_OBJ_2260:
.LSYS_OBJ_2260_0:
    bgez    $v0,.LSYS_OBJ_2260_c
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,3
.LSYS_OBJ_2260_c:
    sra     $v0,$v0,0x2
    slt     $v0,$a2,$v0
    beq     $v0,$zero,.LSYS_OBJ_2260_50
    sll     $a0,$a2,0x2
    lw      $a1,0($a3)
    addiu   $a3,$a3,4
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    addiu   $a2,$a2,1
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$t0
    addu    $a0,$a0,$v0
    sw      $a1,0($a0)
    j       .LSYS_OBJ_2260_0
    addu    $v0,$s1,$zero
.LSYS_OBJ_2260_50:
    lui     $v0,0x800e
    lw      $v0,-29276($v0)
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    sll     $a0,$v0,0x1
    addu    $a0,$a0,$v0
    sll     $a0,$a0,0x5
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    lui     $v1,0x800e
    addiu   $v1,$v1,22436
    addu    $v0,$v0,$v1
    lui     $at,0x800e
    addu    $at,$at,$a0
    j       SYS_OBJ_2318
    sw      $v0,22428($at)
    .end SYS_OBJ_2260
    .size SYS_OBJ_2260, . - SYS_OBJ_2260

/* SYS_OBJ_2318 (0x8003a500, 144 bytes) */
    .section .text.SYS_OBJ_2318,"ax",@progbits
    .globl SYS_OBJ_2318
    .globl SetIntrMask
    .globl sym_8003a5ac
    .type SYS_OBJ_2318, @function
    .ent SYS_OBJ_2318
SYS_OBJ_2318:
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    lui     $at,0x800e
    addu    $at,$at,$v0
    sw      $s2,22432($at)
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    lui     $at,0x800e
    addu    $at,$at,$v0
    sw      $s3,22424($at)
    lui     $v0,0x800e
    lw      $v0,-29276($v0)
    lui     $a0,0x800e
    lw      $a0,-29268($a0)
    addiu   $v0,$v0,1
    andi    $v0,$v0,0x3f
    lui     $at,0x800e
    jal     SetIntrMask
    sw      $v0,-29276($at)
    jal     sym_8003a5ac
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29276($v0)
    lui     $v1,0x800e
    lw      $v1,-29272($v1)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    andi    $v0,$v0,0x3f
    .end SYS_OBJ_2318
    .size SYS_OBJ_2318, . - SYS_OBJ_2318

/* SYS_OBJ_2A28 (0x8003ac10, 152 bytes) */
    .section .text.SYS_OBJ_2A28,"ax",@progbits
    .globl SYS_OBJ_2A28
    .globl SYS_OBJ_2AC0
    .type SYS_OBJ_2A28, @function
    .ent SYS_OBJ_2A28
SYS_OBJ_2A28:
    lui     $v1,0x1000
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    ori     $v1,$v1,0x7
    sw      $v1,0($v0)
    lui     $a1,0x800e
    lw      $a1,-29312($a1)
    lui     $v1,0xff
    lw      $v0,0($a1)
    ori     $v1,$v1,0xffff
    and     $v0,$v0,$v1
    addiu   $v1,$zero,2
    beq     $v0,$v1,.LSYS_OBJ_2A28_70
    lui     $v1,0xe100
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    ori     $v1,$v1,0x1000
    andi    $v0,$v0,0x3fff
    or      $v0,$v0,$v1
    sw      $v0,0($a1)
    lui     $v1,0x800e
    lw      $v1,-29312($v1)
    addu    $v0,$zero,$zero
    lw      $v1,0($v1)
    j       SYS_OBJ_2AC0
    sll     $zero,$zero,0x0
.LSYS_OBJ_2A28_70:
    andi    $v0,$a0,0x8
    beq     $v0,$zero,.LSYS_OBJ_2A28_94
    lui     $a0,0x900
    ori     $a0,$a0,0x1
    lui     $v1,0x800e
    lw      $v1,-29308($v1)
    addiu   $v0,$zero,2
    j       SYS_OBJ_2AC0
    sw      $a0,0($v1)
.LSYS_OBJ_2A28_94:
    addiu   $v0,$zero,1
    .end SYS_OBJ_2A28
    .size SYS_OBJ_2A28, . - SYS_OBJ_2A28

/* MoveImage2 (0x8003ae88, 132 bytes) */
    .section .text.MoveImage2,"ax",@progbits
    .globl MoveImage2
    .globl sym_8003aacc
    .globl SYS_OBJ_2D24
    .globl SYS_OBJ_2DCC
    .globl SYS_OBJ_3E4
    .globl VSync
    .type MoveImage2, @function
    .ent MoveImage2
MoveImage2:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $s1,20($sp)
    addu    $s1,$a2,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20744
    sw      $ra,28($sp)
    jal     SYS_OBJ_3E4
    addu    $a1,$s0,$zero
    jal     VSync
    addiu   $a0,$zero,-1
    lui     $v1,0x800e
    lw      $v1,-29296($v1)
    addiu   $v0,$v0,240
    lui     $at,0x800e
    sw      $v0,-29256($at)
    lui     $at,0x800e
    sw      $zero,-29252($at)
    lw      $v0,0($v1)
    j       SYS_OBJ_2D24
    lui     $v1,0x100
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,SYS_OBJ_2DCC
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    .end MoveImage2
    .size MoveImage2, . - MoveImage2

/* SYS_OBJ_2D24 (0x8003af0c, 168 bytes) */
    .section .text.SYS_OBJ_2D24,"ax",@progbits
    .globl SYS_OBJ_2D24
    .globl DMACallback
    .globl sym_8003aee8
    .globl SYS_OBJ_2DCC
    .type SYS_OBJ_2D24, @function
    .ent SYS_OBJ_2D24
SYS_OBJ_2D24:
    and     $v0,$v0,$v1
    bne     $v0,$zero,sym_8003aee8
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    beq     $v0,$zero,sym_8003aee8
    sll     $zero,$zero,0x0
    lui     $a1,0x8004
    addiu   $a1,$a1,-20280
    jal     DMACallback
    addiu   $a0,$zero,2
    lh      $v0,4($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,SYS_OBJ_2DCC
    addiu   $v0,$zero,-1
    lh      $v0,6($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSYS_OBJ_2D24_64
    sll     $v0,$s1,0x10
    j       SYS_OBJ_2DCC
    addiu   $v0,$zero,-1
.LSYS_OBJ_2D24_64:
    andi    $v1,$s2,0xffff
    or      $v0,$v0,$v1
    lw      $a1,0($s0)
    lui     $v1,0x800e
    lw      $v1,-29580($v1)
    lui     $a0,0x800e
    addiu   $a0,$a0,-29412
    sw      $v0,4($a0)
    sw      $a1,0($a0)
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    sw      $v0,8($a0)
    lw      $v0,24($v1)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,-8
    addu    $v0,$zero,$zero
    .end SYS_OBJ_2D24
    .size SYS_OBJ_2D24, . - SYS_OBJ_2D24

/* DrawOTag2 (0x8003afcc, 144 bytes) */
    .section .text.DrawOTag2,"ax",@progbits
    .globl DrawOTag2
    .globl sym_8003aacc
    .globl sym_8003b0b8
    .globl SYS_OBJ_2E74
    .globl VSync
    .type DrawOTag2, @function
    .ent DrawOTag2
DrawOTag2:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LDrawOTag2_3c
    sw      $ra,20($sp)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20684
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s0,$zero
.LDrawOTag2_3c:
    jal     VSync
    addiu   $a0,$zero,-1
    lui     $v1,0x800e
    lw      $v1,-29296($v1)
    addiu   $v0,$v0,240
    lui     $at,0x800e
    sw      $v0,-29256($at)
    lui     $at,0x800e
    sw      $zero,-29252($at)
    lw      $v0,0($v1)
    j       SYS_OBJ_2E74
    lui     $v1,0x100
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003b0b8
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    .end DrawOTag2
    .size DrawOTag2, . - DrawOTag2

/* SetDrawMode (0x8003b258, 140 bytes) */
    .section .text.SetDrawMode,"ax",@progbits
    .globl SetDrawMode
    .globl P41_OBJ_8C
    .type SetDrawMode, @function
    .ent SetDrawMode
SetDrawMode:
    addu    $t0,$a0,$zero
    lui     $v1,0xe100
    lw      $t1,16($sp)
    addiu   $v0,$zero,2
    beq     $a2,$zero,.LSetDrawMode_1c
    sb      $v0,3($t0)
    ori     $v1,$v1,0x200
.LSetDrawMode_1c:
    beq     $a1,$zero,.LSetDrawMode_28
    andi    $v0,$a3,0x9ff
    ori     $v0,$v0,0x400
.LSetDrawMode_28:
    or      $v0,$v1,$v0
    beq     $t1,$zero,.LSetDrawMode_88
    sw      $v0,4($t0)
    lui     $v1,0xe200
    lbu     $a0,2($t1)
    lbu     $v0,0($t1)
    srl     $a0,$a0,0x3
    sll     $a0,$a0,0xf
    srl     $v0,$v0,0x3
    sll     $v0,$v0,0xa
    or      $v0,$v0,$v1
    or      $a0,$a0,$v0
    lh      $v1,6($t1)
    lh      $v0,4($t1)
    negu    $v1,$v1
    sll     $v1,$v1,0x2
    andi    $v1,$v1,0x3e0
    or      $a0,$a0,$v1
    negu    $v0,$v0
    andi    $v0,$v0,0xff
    sra     $v0,$v0,0x3
    or      $a0,$a0,$v0
    j       P41_OBJ_8C
    sw      $a0,8($t0)
.LSetDrawMode_88:
    sw      $zero,8($t0)
    .end SetDrawMode
    .size SetDrawMode, . - SetDrawMode

/* _patch_card (0x8003b530, 148 bytes) */
    .section .text._patch_card,"ax",@progbits
    .globl _patch_card
    .globl FlushCache
    .globl sym_8003bbe8
    .type _patch_card, @function
    .ent _patch_card
_patch_card:
    lui     $at,0x800e
    sw      $ra,28568($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,86
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    lw      $v0,24($v0)
    sll     $zero,$zero,0x0
    lw      $v1,112($v0)
    sll     $zero,$zero,0x0
    andi    $t1,$v1,0xffff
    sll     $t1,$t1,0x10
    lw      $v1,116($v0)
    sll     $zero,$zero,0x0
    andi    $t2,$v1,0xffff
    addu    $v1,$t1,$t2
    addiu   $v0,$v1,40
    lui     $t2,0x8004
    addiu   $t2,$t2,-19192
    lui     $t1,0x8004
    addiu   $t1,$t1,-19172
.L_patch_card_5c:
    lw      $v1,0($t2)
    sll     $zero,$zero,0x0
    sw      $v1,0($v0)
    addiu   $t2,$t2,4
    bne     $t2,$t1,.L_patch_card_5c
    addiu   $v0,$v0,4
    lui     $at,0x1
    jal     FlushCache
    sw      $v0,-8196($at)
    lui     $ra,0x800e
    lw      $ra,28568($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _patch_card
    .size _patch_card, . - _patch_card

/* FORMAT_OBJ_0 (0x8003b6e8, 240 bytes) */
    .section .text.FORMAT_OBJ_0,"ax",@progbits
    .globl FORMAT_OBJ_0
    .globl _card_read
    .globl _card_status
    .globl _card_write
    .globl _new_card
    .globl bzero
    .globl FORMAT_OBJ_F0
    .globl printf
    .globl sym_8003b808
    .type FORMAT_OBJ_0, @function
    .ent FORMAT_OBJ_0
FORMAT_OBJ_0:
    addiu   $sp,$sp,-176
    sw      $s0,144($sp)
    addu    $s0,$a0,$zero
    sw      $s4,160($sp)
    addu    $s4,$a1,$zero
    sw      $s3,156($sp)
    addu    $s3,$a2,$zero
    sw      $s1,148($sp)
    addu    $s1,$zero,$zero
    addu    $v1,$s3,$zero
    addu    $a1,$zero,$zero
    addiu   $a0,$zero,126
    sw      $ra,168($sp)
    sw      $s5,164($sp)
    sw      $s2,152($sp)
.LFORMAT_OBJ_0_3c:
    lbu     $v0,0($v1)
    addiu   $v1,$v1,1
    addiu   $a0,$a0,-1
    xor     $v0,$a1,$v0
    bgez    $a0,.LFORMAT_OBJ_0_3c
    addu    $a1,$v0,$zero
    sb      $v0,0($v1)
    addiu   $s5,$zero,1
    addiu   $s2,$sp,16
    slti    $v0,$s1,8
    beq     $v0,$zero,sym_8003b808
    addu    $v0,$zero,$zero
    jal     _new_card
    sll     $zero,$zero,0x0
    addu    $a0,$s0,$zero
    addu    $a1,$s4,$zero
    jal     _card_write
    addu    $a2,$s3,$zero
    bne     $v0,$s5,sym_8003b808
    addu    $v0,$zero,$zero
.LFORMAT_OBJ_0_8c:
    jal     _card_status
    sra     $a0,$s0,0x4
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LFORMAT_OBJ_0_8c
    addu    $a0,$s2,$zero
    jal     bzero
    addiu   $a1,$zero,128
    jal     _new_card
    sll     $zero,$zero,0x0
    addu    $a0,$s0,$zero
    addu    $a1,$s4,$zero
    jal     _card_read
    addu    $a2,$s2,$zero
    beq     $v0,$s5,.LFORMAT_OBJ_0_dc
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    jal     printf
    addiu   $a0,$a0,-20524
    j       FORMAT_OBJ_F0
    addiu   $a0,$sp,16
.LFORMAT_OBJ_0_dc:
    jal     _card_status
    sra     $a0,$s0,0x4
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LFORMAT_OBJ_0_dc
    addiu   $a0,$sp,16
    .end FORMAT_OBJ_0
    .size FORMAT_OBJ_0, . - FORMAT_OBJ_0

/* firstfile (0x8003be18, 208 bytes) */
    .section .text.firstfile,"ax",@progbits
    .globl firstfile
    .globl strcmp
    .globl sym_8003bef8
    .type firstfile, @function
    .ent firstfile
firstfile:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $ra,32($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lb      $v0,0($s2)
    lui     $a0,0x800e
    addiu   $a0,$a0,29296
    slti    $v0,$v0,59
    bne     $v0,$zero,.Lfirstfile_58
    addu    $v1,$s2,$zero
.Lfirstfile_38:
    lbu     $v0,0($v1)
    addiu   $v1,$v1,1
    sb      $v0,0($a0)
    lb      $v0,0($v1)
    sll     $zero,$zero,0x0
    slti    $v0,$v0,59
    beq     $v0,$zero,.Lfirstfile_38
    addiu   $a0,$a0,1
.Lfirstfile_58:
    sb      $zero,0($a0)
    lw      $v1,340($zero)
    lui     $v0,0xcccc
    ori     $v0,$v0,0xcccd
    multu   $v1,$v0
    lw      $s0,336($zero)
    mfhi    $a2
    srl     $v1,$a2,0x6
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    addu    $v1,$s0,$v0
    sltu    $v0,$s0,$v1
    beq     $v0,$zero,.Lfirstfile_cc
    sll     $zero,$zero,0x0
    addu    $s1,$v1,$zero
.Lfirstfile_98:
    lw      $a0,0($s0)
    sll     $zero,$zero,0x0
    beq     $a0,$zero,.Lfirstfile_bc
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    jal     strcmp
    addiu   $a1,$a1,29296
    beq     $v0,$zero,sym_8003bef8
    sll     $zero,$zero,0x0
.Lfirstfile_bc:
    addiu   $s0,$s0,80
    sltu    $v0,$s0,$s1
    bne     $v0,$zero,.Lfirstfile_98
    sll     $zero,$zero,0x0
.Lfirstfile_cc:
    addu    $v1,$zero,$zero
    .end firstfile
    .size firstfile, . - firstfile

/* FIRST_OBJ_D0 (0x8003bee8, 144 bytes) */
    .section .text.FIRST_OBJ_D0,"ax",@progbits
    .globl FIRST_OBJ_D0
    .globl FIRST_OBJ_174
    .globl FIRST_OBJ_180
    .globl strcmp
    .globl sym_8003bf7c
    .globl sym_8003bf90
    .type FIRST_OBJ_D0, @function
    .ent FIRST_OBJ_D0
FIRST_OBJ_D0:
.LFIRST_OBJ_D0_0:
    bne     $v1,$zero,.LFIRST_OBJ_D0_34
    addu    $v0,$zero,$zero
    j       FIRST_OBJ_180
    sll     $zero,$zero,0x0
    lw      $v0,52($s0)
    lui     $at,0x800e
    sw      $v0,29288($at)
    j       .LFIRST_OBJ_D0_0
    addiu   $v1,$zero,1
.LFIRST_OBJ_D0_24:
    lui     $v0,0x8004
    addiu   $v0,$v0,-16460
    j       FIRST_OBJ_174
    sw      $v0,52($s0)
.LFIRST_OBJ_D0_34:
    lw      $v1,340($zero)
    lui     $v0,0xcccc
    ori     $v0,$v0,0xcccd
    multu   $v1,$v0
    lw      $s0,336($zero)
    mfhi    $a2
    srl     $v1,$a2,0x6
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    addu    $v1,$s0,$v0
    sltu    $v0,$s0,$v1
    beq     $v0,$zero,sym_8003bf90
    addu    $a0,$s2,$zero
    addu    $s1,$v1,$zero
    lw      $a0,0($s0)
    sll     $zero,$zero,0x0
    beq     $a0,$zero,sym_8003bf7c
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    jal     strcmp
    addiu   $a1,$a1,29296
    beq     $v0,$zero,.LFIRST_OBJ_D0_24
    .end FIRST_OBJ_D0
    .size FIRST_OBJ_D0, . - FIRST_OBJ_D0

/* FIRST_OBJ_19C (0x8003bfb4, 192 bytes) */
    .section .text.FIRST_OBJ_19C,"ax",@progbits
    .globl FIRST_OBJ_19C
    .globl FIRST_OBJ_25C
    .globl strcmp
    .globl sym_8003c078
    .type FIRST_OBJ_19C, @function
    .ent FIRST_OBJ_19C
FIRST_OBJ_19C:
    addiu   $sp,$sp,-48
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s4,32($sp)
    addu    $s4,$a1,$zero
    sw      $ra,40($sp)
    sw      $s5,36($sp)
    sw      $s3,28($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFIRST_OBJ_19C_40
    addu    $s5,$a2,$zero
    addiu   $v0,$zero,1
    sw      $v0,0($s2)
.LFIRST_OBJ_19C_40:
    lw      $v1,340($zero)
    lui     $v0,0xcccc
    ori     $v0,$v0,0xcccd
    multu   $v1,$v0
    lw      $s0,336($zero)
    lui     $s3,0x800e
    lw      $s3,29288($s3)
    mfhi    $a3
    srl     $v1,$a3,0x6
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    addu    $v1,$s0,$v0
    sltu    $v0,$s0,$v1
    beq     $v0,$zero,sym_8003c078
    addu    $a0,$s2,$zero
    addu    $s1,$v1,$zero
.LFIRST_OBJ_19C_84:
    lw      $a0,0($s0)
    sll     $zero,$zero,0x0
    beq     $a0,$zero,.LFIRST_OBJ_19C_b0
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    jal     strcmp
    addiu   $a1,$a1,29296
    bne     $v0,$zero,.LFIRST_OBJ_19C_b0
    sll     $zero,$zero,0x0
    j       FIRST_OBJ_25C
    sw      $s3,52($s0)
.LFIRST_OBJ_19C_b0:
    addiu   $s0,$s0,80
    sltu    $v0,$s0,$s1
    bne     $v0,$zero,.LFIRST_OBJ_19C_84
    sll     $zero,$zero,0x0
    .end FIRST_OBJ_19C
    .size FIRST_OBJ_19C, . - FIRST_OBJ_19C

/* PAD_init (0x8003c0f4, 144 bytes) */
    .section .text.PAD_init,"ax",@progbits
    .globl PAD_init
    .globl _patch_pad
    .globl _remove_ChgclrPAD
    .globl ChangeClearPAD
    .globl PAD_init2
    .globl PAD_OBJ_1A4
    .globl sym_8003bbe8
    .globl sym_8003bbf8
    .type PAD_init, @function
    .ent PAD_init
PAD_init:
    addiu   $sp,$sp,-40
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    sw      $s3,28($sp)
    sw      $ra,32($sp)
    jal     _remove_ChgclrPAD
    addu    $s3,$a3,$zero
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    jal     _patch_pad
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    jal     ChangeClearPAD
    addu    $a0,$zero,$zero
    jal     PAD_OBJ_1A4
    sll     $zero,$zero,0x0
    addu    $a0,$s0,$zero
    addu    $a1,$s1,$zero
    addu    $a2,$s2,$zero
    jal     PAD_init2
    addu    $a3,$s3,$zero
    addiu   $v0,$zero,1
    lui     $at,0x800e
    sw      $v0,-29188($at)
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end PAD_init
    .size PAD_init, . - PAD_init

/* InitPAD (0x8003c184, 144 bytes) */
    .section .text.InitPAD,"ax",@progbits
    .globl InitPAD
    .globl _patch_pad
    .globl _remove_ChgclrPAD
    .globl ChangeClearPAD
    .globl InitPAD2
    .globl PAD_OBJ_1A4
    .globl sym_8003bbe8
    .globl sym_8003bbf8
    .type InitPAD, @function
    .ent InitPAD
InitPAD:
    addiu   $sp,$sp,-40
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    sw      $s3,28($sp)
    sw      $ra,32($sp)
    jal     _remove_ChgclrPAD
    addu    $s3,$a3,$zero
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    jal     _patch_pad
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    jal     ChangeClearPAD
    addu    $a0,$zero,$zero
    jal     PAD_OBJ_1A4
    sll     $zero,$zero,0x0
    addu    $a0,$s0,$zero
    addu    $a1,$s1,$zero
    addu    $a2,$s2,$zero
    jal     InitPAD2
    addu    $a3,$s3,$zero
    addiu   $v0,$zero,1
    lui     $at,0x800e
    sw      $v0,-29188($at)
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end InitPAD
    .size InitPAD, . - InitPAD

/* PadGetState (0x8003c5f4, 184 bytes) */
    .section .text.PadGetState,"ax",@progbits
    .globl PadGetState
    .globl PADENTRY_OBJ_168
    .globl sym_8003c6ac
    .type PadGetState, @function
    .ent PadGetState
PadGetState:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jalr    $v0
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    lbu     $v0,55($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPadGetState_74
    sll     $zero,$zero,0x0
    lbu     $v0,56($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPadGetState_74
    sll     $zero,$zero,0x0
    lw      $v0,16($v1)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LPadGetState_5c
    sll     $zero,$zero,0x0
    lbu     $v0,57($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPadGetState_74
    sll     $zero,$zero,0x0
.LPadGetState_5c:
    lw      $v0,48($v1)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8003c6ac
    sll     $zero,$zero,0x0
.LPadGetState_74:
    lbu     $a0,73($v1)
    addiu   $v0,$zero,3
    beq     $a0,$v0,.LPadGetState_b0
    slti    $v0,$a0,4
    beq     $v0,$zero,.LPadGetState_9c
    addiu   $v0,$zero,2
    beq     $a0,$v0,PADENTRY_OBJ_168
    addiu   $v0,$zero,1
    j       sym_8003c6ac
    sll     $zero,$zero,0x0
.LPadGetState_9c:
    addiu   $v0,$zero,6
    beq     $a0,$v0,PADENTRY_OBJ_168
    addiu   $v0,$zero,4
    j       sym_8003c6ac
    sll     $zero,$zero,0x0
.LPadGetState_b0:
    j       PADENTRY_OBJ_168
    addiu   $v0,$zero,1
    .end PadGetState
    .size PadGetState, . - PadGetState

/* PadInfoMode (0x8003c6c0, 228 bytes) */
    .section .text.PadInfoMode,"ax",@progbits
    .globl PadInfoMode
    .globl PADENTRY_OBJ_25C
    .type PadInfoMode, @function
    .ent PadInfoMode
PadInfoMode:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a2,$zero
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,3
    beq     $s0,$v0,.LPadInfoMode_88
    slti    $v0,$s0,4
    beq     $v0,$zero,.LPadInfoMode_54
    addiu   $v0,$zero,1
    beq     $s0,$v0,.LPadInfoMode_70
    addiu   $v0,$zero,2
    beq     $s0,$v0,.LPadInfoMode_7c
    addu    $v0,$zero,$zero
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_54:
    addiu   $v0,$zero,4
    beq     $s0,$v0,.LPadInfoMode_94
    addiu   $v0,$zero,100
    beq     $s0,$v0,.LPadInfoMode_d4
    addu    $v0,$zero,$zero
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_70:
    lbu     $v0,232($v1)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_7c:
    lhu     $v0,230($v1)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_88:
    lbu     $v0,228($v1)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_94:
    bgez    $s1,.LPadInfoMode_a8
    sll     $zero,$zero,0x0
    lbu     $v0,227($v1)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_a8:
    lbu     $v0,227($v1)
    sll     $zero,$zero,0x0
    slt     $v0,$s1,$v0
    beq     $v0,$zero,.LPadInfoMode_e0
    sll     $v0,$s1,0x1
    lw      $v1,0($v1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_d4:
    lw      $v0,76($v1)
    j       PADENTRY_OBJ_25C
    sll     $zero,$zero,0x0
.LPadInfoMode_e0:
    addu    $v0,$zero,$zero
    .end PadInfoMode
    .size PadInfoMode, . - PadInfoMode

/* PadInfoAct (0x8003c7b8, 132 bytes) */
    .section .text.PadInfoAct,"ax",@progbits
    .globl PadInfoAct
    .globl PADENTRY_OBJ_330
    .globl sym_8003c874
    .type PadInfoAct, @function
    .ent PadInfoAct
PadInfoAct:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a2,$zero
    bgez    $s0,.LPadInfoAct_38
    addu    $v1,$v0,$zero
    lbu     $v0,233($v1)
    j       PADENTRY_OBJ_330
    sll     $zero,$zero,0x0
.LPadInfoAct_38:
    lbu     $v0,233($v1)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$v0
    beq     $v0,$zero,sym_8003c874
    sll     $v0,$s0,0x2
    lw      $v1,4($v1)
    addu    $v0,$v0,$s0
    addiu   $a2,$s1,-1
    addu    $v1,$v1,$v0
    sltiu   $v0,$a2,5
    beq     $v0,$zero,sym_8003c874
    sll     $v0,$a2,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-20492($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end PadInfoAct
    .size PadInfoAct, . - PadInfoAct

/* PadInfoComb (0x8003c88c, 148 bytes) */
    .section .text.PadInfoComb,"ax",@progbits
    .globl PadInfoComb
    .globl PADENTRY_OBJ_3D8
    .type PadInfoComb, @function
    .ent PadInfoComb
PadInfoComb:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a2,$zero
    bgez    $s0,.LPadInfoComb_38
    addu    $v1,$v0,$zero
    lbu     $v0,234($v1)
    j       PADENTRY_OBJ_3D8
    sll     $zero,$zero,0x0
.LPadInfoComb_38:
    lbu     $v0,234($v1)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$v0
    beq     $v0,$zero,.LPadInfoComb_90
    sll     $v0,$s0,0x3
    lw      $v1,8($v1)
    bgez    $s1,.LPadInfoComb_64
    addu    $v1,$v1,$v0
    lbu     $v0,0($v1)
    j       PADENTRY_OBJ_3D8
    sll     $zero,$zero,0x0
.LPadInfoComb_64:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    slt     $v0,$s1,$v0
    beq     $v0,$zero,PADENTRY_OBJ_3D8
    addu    $v0,$zero,$zero
    lw      $v0,4($v1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$s1
    lbu     $v0,0($v0)
    j       PADENTRY_OBJ_3D8
    sll     $zero,$zero,0x0
.LPadInfoComb_90:
    addu    $v0,$zero,$zero
    .end PadInfoComb
    .size PadInfoComb, . - PadInfoComb

/* PadEnableCom (0x8003ca08, 152 bytes) */
    .section .text.PadEnableCom,"ax",@progbits
    .globl PadEnableCom
    .globl PADMAIN_OBJ_98
    .globl sym_8003cb04
    .type PadEnableCom, @function
    .ent PadEnableCom
PadEnableCom:
    lui     $v1,0x800e
    lw      $v1,-29080($v1)
    lui     $v0,0x800e
    lw      $v0,-29084($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sll     $v1,$v1,0x1
    sltiu   $v0,$v0,1
    or      $s1,$v1,$v0
    beq     $s1,$s0,sym_8003cb04
    andi    $v0,$s0,0x1
    lui     $at,0x800e
    sw      $zero,-29108($at)
    beq     $v0,$zero,.LPadEnableCom_90
    addiu   $v0,$zero,1
    lui     $s2,0x800e
    addiu   $s2,$s2,29400
    lw      $v0,0($s2)
    lui     $at,0x800e
    sw      $zero,-29084($at)
    slti    $v0,$v0,150
    bne     $v0,$zero,.LPadEnableCom_88
    sll     $zero,$zero,0x0
    lui     $a0,0x800e
    lw      $a0,-29112($a0)
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
.LPadEnableCom_88:
    j       PADMAIN_OBJ_98
    sw      $zero,0($s2)
.LPadEnableCom_90:
    lui     $at,0x800e
    sw      $v0,-29084($at)
    .end PadEnableCom
    .size PadEnableCom, . - PadEnableCom

/* _padStartCom (0x8003cd58, 204 bytes) */
    .section .text._padStartCom,"ax",@progbits
    .globl _padStartCom
    .globl ChangeClearRCnt
    .globl sym_8003bbe8
    .globl sym_8003bbf8
    .globl SysDeqIntRP
    .globl SysEnqIntRP
    .type _padStartCom, @function
    .ent _padStartCom
_padStartCom:
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    sw      $s0,16($sp)
    lui     $at,0x800e
    jal     sym_8003bbe8
    sw      $zero,-29108($at)
    addiu   $a0,$zero,2
    lui     $s0,0x800e
    addiu   $s0,$s0,29384
    jal     SysDeqIntRP
    addu    $a1,$s0,$zero
    addiu   $a0,$zero,2
    jal     SysEnqIntRP
    addu    $a1,$s0,$zero
    addiu   $a0,$zero,3
    lui     $v1,0x800e
    lw      $v1,-29068($v1)
    addiu   $v0,$zero,-2
    sw      $v0,0($v1)
    lw      $v0,4($v1)
    addu    $a1,$zero,$zero
    ori     $v0,$v0,0x1
    jal     ChangeClearRCnt
    sw      $v0,4($v1)
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lui     $a0,0x800e
    lw      $a0,-29112($a0)
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lui     $a0,0x800e
    lw      $a0,-29112($a0)
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,240
    lui     $v0,0x800e
    addiu   $v0,$v0,29400
    sw      $zero,4($v0)
    sw      $zero,0($v0)
    addiu   $v0,$zero,1
    lui     $at,0x800e
    sw      $v0,-29108($at)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end _padStartCom
    .size _padStartCom, . - _padStartCom

/* PADMAIN_OBJ_794 (0x8003d19c, 224 bytes) */
    .section .text.PADMAIN_OBJ_794,"ax",@progbits
    .globl PADMAIN_OBJ_794
    .globl _padClrIntSio0
    .globl PADMAIN_OBJ_874
    .globl setRC2wait
    .type PADMAIN_OBJ_794, @function
    .ent PADMAIN_OBJ_794
PADMAIN_OBJ_794:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,-29096
    sw      $ra,20($sp)
    lw      $v1,0($a1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x2
    lui     $at,0x800e
    addu    $at,$at,$v0
    lw      $v0,-29028($at)
    addiu   $v1,$v1,1
    jalr    $v0
    sw      $v1,0($a1)
    addu    $a0,$v0,$zero
    bltz    $a0,.LPADMAIN_OBJ_794_cc
    sll     $zero,$zero,0x0
    lui     $v1,0x800e
    lw      $v1,-29096($v1)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LPADMAIN_OBJ_794_b4
    addiu   $v0,$zero,3
    bne     $v1,$v0,.LPADMAIN_OBJ_794_7c
    sll     $zero,$zero,0x0
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    addiu   $v0,$zero,128
    beq     $v1,$v0,.LPADMAIN_OBJ_794_a8
    sll     $zero,$zero,0x0
.LPADMAIN_OBJ_794_7c:
    jal     setRC2wait
    addiu   $a0,$zero,60
    jal     _padClrIntSio0
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPADMAIN_OBJ_794_a8
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29164($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$zero,-3
.LPADMAIN_OBJ_794_a8:
    lui     $v1,0x800e
    lw      $v1,-29096($v1)
    sll     $zero,$zero,0x0
.LPADMAIN_OBJ_794_b4:
    slti    $v0,$v1,5
    bne     $v0,$zero,PADMAIN_OBJ_874
    addiu   $v0,$v1,-1
    lui     $at,0x800e
    j       PADMAIN_OBJ_874
    sw      $v0,-29096($at)
.LPADMAIN_OBJ_794_cc:
    lui     $v0,0x800e
    lw      $v0,-29164($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    .end PADMAIN_OBJ_794
    .size PADMAIN_OBJ_794, . - PADMAIN_OBJ_794

/* _padSioRW2 (0x8003d49c, 188 bytes) */
    .section .text._padSioRW2,"ax",@progbits
    .globl _padSioRW2
    .globl PADMAIN_OBJ_B50
    .globl setRC2wait
    .type _padSioRW2, @function
    .ent _padSioRW2
_padSioRW2:
    addiu   $sp,$sp,-40
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $ra,32($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    addiu   $v1,$zero,8
    sra     $v0,$v0,0x4
    bne     $v0,$v1,.L_padSioRW2_54
    addiu   $s1,$zero,136
    lbu     $v0,68($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,9
    bne     $v0,$zero,.L_padSioRW2_54
    sll     $zero,$zero,0x0
    addiu   $s1,$zero,34
.L_padSioRW2_54:
    lui     $v1,0x800e
    lw      $v1,-29064($v1)
    sll     $zero,$zero,0x0
.L_padSioRW2_60:
    lhu     $v0,4($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x2
    beq     $v0,$zero,.L_padSioRW2_60
    sll     $zero,$zero,0x0
    jal     setRC2wait
    addiu   $a0,$zero,400
    lui     $a0,0x800e
    lw      $a0,-29064($a0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    lbu     $v1,68($s0)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.L_padSioRW2_ac
    andi    $s2,$v0,0xff
    sra     $v1,$s2,0x4
    addiu   $v0,$zero,8
    beq     $v1,$v0,.L_padSioRW2_b8
    addiu   $v0,$zero,34
.L_padSioRW2_ac:
    sh      $s1,14($a0)
    j       PADMAIN_OBJ_B50
    sll     $zero,$zero,0x0
.L_padSioRW2_b8:
    sh      $v0,14($a0)
    .end _padSioRW2
    .size _padSioRW2, . - _padSioRW2

/* PADMAIN_OBJ_B50 (0x8003d558, 136 bytes) */
    .section .text.PADMAIN_OBJ_B50,"ax",@progbits
    .globl PADMAIN_OBJ_B50
    .globl sym_8003d5e0
    .globl sym_8003d62c
    .type PADMAIN_OBJ_B50, @function
    .ent PADMAIN_OBJ_B50
PADMAIN_OBJ_B50:
    lui     $v1,0x800e
    lw      $v1,-29068($v1)
    sll     $zero,$zero,0x0
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    bne     $v0,$zero,sym_8003d62c
    sll     $zero,$zero,0x0
    lui     $t1,0x1f80
    ori     $t1,$t1,0x1120
    lui     $a2,0x1f80
    ori     $a2,$a2,0x1128
    lui     $t2,0x1
    lui     $t0,0x1f80
    ori     $t0,$t0,0x1124
    addu    $a3,$v1,$zero
    lui     $a0,0x800e
    lw      $a0,30056($a0)
    lui     $a1,0x800e
    lw      $a1,30060($a1)
    lhu     $v0,0($t1)
    sll     $zero,$zero,0x0
    andi    $v1,$v0,0xffff
    sltu    $v0,$v1,$a0
    beq     $v0,$zero,sym_8003d5e0
    sll     $zero,$zero,0x0
    lhu     $v0,0($a2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADMAIN_OBJ_B50_84
    sll     $zero,$zero,0x0
    lhu     $v0,0($a2)
    j       sym_8003d5e0
    addu    $v1,$v0,$v1
.LPADMAIN_OBJ_B50_84:
    addu    $v1,$v1,$t2
    .end PADMAIN_OBJ_B50
    .size PADMAIN_OBJ_B50, . - PADMAIN_OBJ_B50

/* _padClrIntSio0 (0x8003d714, 144 bytes) */
    .section .text._padClrIntSio0,"ax",@progbits
    .globl _padClrIntSio0
    .globl chkRC2wait
    .type _padClrIntSio0, @function
    .ent _padClrIntSio0
_padClrIntSio0:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    lw      $v1,-29068($v1)
    lui     $a0,0x800e
    lw      $a0,-29064($a0)
    addiu   $v0,$zero,-129
    sw      $ra,16($sp)
    sw      $v0,0($v1)
    lhu     $v0,4($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    beq     $v0,$zero,.L_padClrIntSio0_64
    sll     $zero,$zero,0x0
.L_padClrIntSio0_34:
    jal     chkRC2wait
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.L_padClrIntSio0_80
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,-29064($v0)
    sll     $zero,$zero,0x0
    lhu     $v0,4($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    bne     $v0,$zero,.L_padClrIntSio0_34
    sll     $zero,$zero,0x0
.L_padClrIntSio0_64:
    lui     $a0,0x800e
    lw      $a0,-29064($a0)
    sll     $zero,$zero,0x0
    lhu     $v1,10($a0)
    addiu   $v0,$zero,1
    ori     $v1,$v1,0x10
    sh      $v1,10($a0)
.L_padClrIntSio0_80:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end _padClrIntSio0
    .size _padClrIntSio0, . - _padClrIntSio0

/* _padRecvAtLoadInfo (0x8003d878, 192 bytes) */
    .section .text._padRecvAtLoadInfo,"ax",@progbits
    .globl _padRecvAtLoadInfo
    .globl FUN_8003d984
    .globl PADCMD_OBJ_160
    .globl PADCMD_OBJ_300
    .globl sym_8003d9ec
    .type _padRecvAtLoadInfo, @function
    .ent _padRecvAtLoadInfo
_padRecvAtLoadInfo:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,20($sp)
    lbu     $v1,70($s0)
    addiu   $v0,$zero,3
    beq     $v1,$v0,FUN_8003d984
    slti    $v0,$v1,4
    beq     $v0,$zero,.L_padRecvAtLoadInfo_38
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L_padRecvAtLoadInfo_4c
    addiu   $v0,$zero,1
    j       PADCMD_OBJ_300
    sll     $zero,$zero,0x0
.L_padRecvAtLoadInfo_38:
    addiu   $v0,$zero,4
    beq     $v1,$v0,sym_8003d9ec
    addiu   $v0,$zero,1
    j       PADCMD_OBJ_300
    sll     $zero,$zero,0x0
.L_padRecvAtLoadInfo_4c:
    lw      $a0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,7($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,PADCMD_OBJ_300
    addu    $v0,$zero,$zero
    lbu     $v1,227($s0)
    lbu     $v0,3($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.L_padRecvAtLoadInfo_bc
    ori     $v0,$zero,0xffff
    lbu     $v1,228($s0)
    lbu     $v0,4($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.L_padRecvAtLoadInfo_bc
    ori     $v0,$zero,0xffff
    lbu     $v1,233($s0)
    lbu     $v0,5($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.L_padRecvAtLoadInfo_bc
    ori     $v0,$zero,0xffff
    lbu     $v1,234($s0)
    lbu     $v0,6($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.L_padRecvAtLoadInfo_bc
    ori     $v0,$zero,0xffff
    j       PADCMD_OBJ_160
    sh      $zero,238($s0)
.L_padRecvAtLoadInfo_bc:
    sh      $v0,238($s0)
    .end _padRecvAtLoadInfo
    .size _padRecvAtLoadInfo, . - _padRecvAtLoadInfo

/* _padLoadActInfo (0x8003db20, 192 bytes) */
    .section .text._padLoadActInfo,"ax",@progbits
    .globl _padLoadActInfo
    .globl PADCMD_OBJ_408
    .type _padLoadActInfo, @function
    .ent _padLoadActInfo
_padLoadActInfo:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    beq     $s1,$zero,.L_padLoadActInfo_48
    sw      $ra,24($sp)
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,PADCMD_OBJ_408
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,-29136($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_padLoadActInfo_50
    addiu   $v0,$zero,1
.L_padLoadActInfo_48:
    j       PADCMD_OBJ_408
    addu    $v0,$zero,$zero
.L_padLoadActInfo_50:
    addiu   $v1,$zero,4
    addiu   $a1,$s1,3
    sra     $a1,$a1,0x2
    sb      $v1,73($s0)
    addiu   $v1,$zero,1
    sb      $v1,70($s0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-9228
    sw      $v1,20($s0)
    lbu     $v1,227($s0)
    lui     $a0,0x8004
    addiu   $a0,$a0,-9060
    sw      $a0,24($s0)
    lbu     $a0,233($s0)
    sll     $a1,$a1,0x2
    sw      $a1,0($s0)
    sb      $zero,71($s0)
    addiu   $v1,$v1,1
    sra     $v1,$v1,0x1
    sll     $v1,$v1,0x2
    addu    $a1,$a1,$v1
    sll     $v1,$a0,0x2
    addu    $v1,$v1,$a0
    addiu   $v1,$v1,3
    andi    $v1,$v1,0xffc
    sw      $a1,4($s0)
    addu    $a1,$a1,$v1
    sw      $a1,8($s0)
    .end _padLoadActInfo
    .size _padLoadActInfo, . - _padLoadActInfo

/* PADCMD_OBJ_41C (0x8003dbf4, 152 bytes) */
    .section .text.PADCMD_OBJ_41C,"ax",@progbits
    .globl PADCMD_OBJ_41C
    .globl PADCMD_OBJ_4B4
    .globl PADCMD_OBJ_B88
    .globl PADCMD_OBJ_BA8
    .globl PADCMD_OBJ_BC8
    .globl PADCMD_OBJ_BE8
    .type PADCMD_OBJ_41C, @function
    .ent PADCMD_OBJ_41C
PADCMD_OBJ_41C:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,70($a0)
    addiu   $v0,$zero,3
    beq     $v1,$v0,.LPADCMD_OBJ_41C_58
    slti    $v0,$v1,4
    beq     $v0,$zero,.LPADCMD_OBJ_41C_30
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LPADCMD_OBJ_41C_44
    sll     $zero,$zero,0x0
    j       PADCMD_OBJ_4B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_41C_30:
    addiu   $v0,$zero,4
    beq     $v1,$v0,.LPADCMD_OBJ_41C_6c
    sll     $zero,$zero,0x0
    j       PADCMD_OBJ_4B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_41C_44:
    lbu     $a1,71($a0)
    jal     PADCMD_OBJ_B88
    sll     $zero,$zero,0x0
    j       PADCMD_OBJ_4B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_41C_58:
    lbu     $a1,71($a0)
    jal     PADCMD_OBJ_BA8
    sll     $zero,$zero,0x0
    j       PADCMD_OBJ_4B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_41C_6c:
    lbu     $v0,72($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPADCMD_OBJ_41C_90
    sll     $zero,$zero,0x0
    lbu     $a1,71($a0)
    jal     PADCMD_OBJ_BC8
    sll     $zero,$zero,0x0
    j       PADCMD_OBJ_4B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_41C_90:
    jal     PADCMD_OBJ_BE8
    sll     $zero,$zero,0x0
    .end PADCMD_OBJ_41C
    .size PADCMD_OBJ_41C, . - PADCMD_OBJ_41C

/* PADCMD_OBJ_4C4 (0x8003dc9c, 180 bytes) */
    .section .text.PADCMD_OBJ_4C4,"ax",@progbits
    .globl PADCMD_OBJ_4C4
    .globl FUN_8003dd58
    .globl FUN_8003dee0
    .globl PADCMD_OBJ_8B4
    .globl sym_8003dd88
    .type PADCMD_OBJ_4C4, @function
    .ent PADCMD_OBJ_4C4
PADCMD_OBJ_4C4:
    addu    $a1,$a0,$zero
    lbu     $v1,70($a1)
    addiu   $v0,$zero,3
    beq     $v1,$v0,sym_8003dd88
    slti    $v0,$v1,4
    beq     $v0,$zero,.LPADCMD_OBJ_4C4_2c
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LPADCMD_OBJ_4C4_40
    addiu   $v0,$zero,1
    j       PADCMD_OBJ_8B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_4C4_2c:
    addiu   $v0,$zero,4
    beq     $v1,$v0,FUN_8003dee0
    addiu   $v0,$zero,1
    j       PADCMD_OBJ_8B4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_4C4_40:
    lw      $v1,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,2($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,PADCMD_OBJ_8B4
    addu    $v0,$zero,$zero
    lbu     $v0,3($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,PADCMD_OBJ_8B4
    addu    $v0,$zero,$zero
    lbu     $a0,71($a1)
    lw      $v0,0($a1)
    sll     $a0,$a0,0x1
    addu    $a0,$a0,$v0
    lbu     $v0,4($v1)
    lbu     $v1,5($v1)
    sll     $v0,$v0,0x8
    addu    $v1,$v1,$v0
    sh      $v1,0($a0)
    lbu     $v0,71($a1)
    lw      $v1,0($a1)
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    lhu     $v1,0($v0)
    lhu     $v0,238($a1)
    sll     $zero,$zero,0x0
    beq     $v0,$v1,FUN_8003dd58
    sll     $zero,$zero,0x0
    sh      $v1,238($a1)
    .end PADCMD_OBJ_4C4
    .size PADCMD_OBJ_4C4, . - PADCMD_OBJ_4C4

/* PADCMD_OBJ_65C (0x8003de34, 172 bytes) */
    .section .text.PADCMD_OBJ_65C,"ax",@progbits
    .globl PADCMD_OBJ_65C
    .globl PADCMD_OBJ_8B4
    .globl sym_8003e088
    .type PADCMD_OBJ_65C, @function
    .ent PADCMD_OBJ_65C
PADCMD_OBJ_65C:
    lw      $v0,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,4($v0)
    sll     $zero,$zero,0x0
    sb      $v0,0($a0)
    lw      $v0,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,5($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7f
    sb      $v0,1($a0)
    lw      $v0,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,6($v0)
    sll     $zero,$zero,0x0
    sb      $v0,2($a0)
    lw      $v0,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,7($v0)
    sll     $zero,$zero,0x0
    sb      $v0,3($a0)
    lw      $v0,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,5($v0)
    sll     $zero,$zero,0x0
    sra     $v0,$v0,0x7
    sb      $v0,4($a0)
    lhu     $v0,238($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,PADCMD_OBJ_8B4
    addu    $v0,$zero,$zero
    lbu     $v0,71($a1)
    lbu     $v1,233($a1)
    sb      $zero,235($a1)
    addiu   $v0,$v0,1
    sb      $v0,71($a1)
    andi    $v0,$v0,0xff
    sltu    $v0,$v0,$v1
    bne     $v0,$zero,PADCMD_OBJ_8B4
    addu    $v0,$zero,$zero
    sb      $zero,71($a1)
    j       sym_8003e088
    sb      $zero,72($a1)
    .end PADCMD_OBJ_65C
    .size PADCMD_OBJ_65C, . - PADCMD_OBJ_65C

/* PADCMD_OBJ_940 (0x8003e118, 148 bytes) */
    .section .text.PADCMD_OBJ_940,"ax",@progbits
    .globl PADCMD_OBJ_940
    .globl PADCMD_OBJ_9D4
    .globl sym_8003e1d0
    .type PADCMD_OBJ_940, @function
    .ent PADCMD_OBJ_940
PADCMD_OBJ_940:
    lbu     $v0,233($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8003e1d0
    addu    $t0,$zero,$zero
    addiu   $t3,$zero,255
    addu    $t2,$zero,$zero
    lw      $a1,32($a0)
    addu    $a3,$zero,$zero
    addiu   $v1,$zero,5
.LPADCMD_OBJ_940_24:
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,.LPADCMD_OBJ_940_38
    addiu   $a1,$a1,1
    addiu   $a3,$a3,1
.LPADCMD_OBJ_940_38:
    addiu   $v1,$v1,-1
    bgez    $v1,.LPADCMD_OBJ_940_24
    sll     $zero,$zero,0x0
    lw      $v0,4($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$t2,$v0
    lbu     $t1,2($v0)
    lw      $a1,32($a0)
    bne     $t1,$zero,.LPADCMD_OBJ_940_64
    addu    $v1,$zero,$zero
    addiu   $t1,$zero,1
.LPADCMD_OBJ_940_64:
    addu    $a2,$a0,$zero
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,PADCMD_OBJ_9D4
    addiu   $a1,$a1,1
    slt     $v0,$a3,$t1
    beq     $v0,$zero,.LPADCMD_OBJ_940_90
    sll     $zero,$zero,0x0
    sb      $t3,93($a2)
    j       PADCMD_OBJ_9D4
    addiu   $a3,$a3,-1
.LPADCMD_OBJ_940_90:
    sb      $t0,93($a2)
    .end PADCMD_OBJ_940
    .size PADCMD_OBJ_940, . - PADCMD_OBJ_940

/* _padSetMainMode (0x8003e1e0, 152 bytes) */
    .section .text._padSetMainMode,"ax",@progbits
    .globl _padSetMainMode
    .type _padSetMainMode, @function
    .ent _padSetMainMode
_padSetMainMode:
    addiu   $sp,$sp,-40
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    sw      $s3,28($sp)
    lui     $v0,0x800e
    lw      $v0,-29136($v0)
    sw      $ra,32($sp)
    jalr    $v0
    addu    $s3,$s1,$zero
    bne     $v0,$zero,.L_padSetMainMode_7c
    addu    $v0,$zero,$zero
    addiu   $v0,$zero,1
    lbu     $a0,228($s0)
    addiu   $v1,$zero,1
    sb      $v1,70($s0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-7560
    sw      $v1,20($s0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-7476
    sw      $v1,24($s0)
    andi    $v1,$s3,0xff
    sb      $s1,81($s0)
    sb      $s2,82($s0)
    xor     $v1,$v1,$a0
    sltiu   $v1,$v1,1
    sb      $v1,83($s0)
.L_padSetMainMode_7c:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end _padSetMainMode
    .size _padSetMainMode, . - _padSetMainMode

/* PADIF_OBJ_48 (0x8003e420, 192 bytes) */
    .section .text.PADIF_OBJ_48,"ax",@progbits
    .globl PADIF_OBJ_48
    .globl PADIF_OBJ_108
    .type PADIF_OBJ_48, @function
    .ent PADIF_OBJ_48
PADIF_OBJ_48:
    lui     $v1,0x800e
    lw      $v1,-29100($v1)
    lui     $v0,0x800e
    lw      $v0,-29084($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    bne     $v1,$v0,.LPADIF_OBJ_48_60
    sw      $ra,20($sp)
    lui     $v0,0x800e
    lw      $v0,-29104($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADIF_OBJ_48_60
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29116($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29120($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
.LPADIF_OBJ_48_60:
    lui     $v0,0x800e
    lw      $v0,-29036($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADIF_OBJ_48_a4
    sll     $zero,$zero,0x0
    lw      $a0,12($s0)
    lui     $v0,0x800e
    lw      $v0,-29140($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $a0,12($s0)
    lui     $v0,0x800e
    lw      $v0,-29140($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,240
.LPADIF_OBJ_48_a4:
    lbu     $v0,55($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPADIF_OBJ_48_bc
    addu    $a0,$s0,$zero
    j       PADIF_OBJ_108
    addiu   $a1,$zero,66
.LPADIF_OBJ_48_bc:
    lbu     $a1,55($s0)
    .end PADIF_OBJ_48
    .size PADIF_OBJ_48, . - PADIF_OBJ_48

/* PADIF_OBJ_120 (0x8003e4f8, 172 bytes) */
    .section .text.PADIF_OBJ_120,"ax",@progbits
    .globl PADIF_OBJ_120
    .globl _padSioRW2
    .type PADIF_OBJ_120, @function
    .ent PADIF_OBJ_120
PADIF_OBJ_120:
    lui     $v0,0x800e
    lw      $v0,-29036($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    beq     $v0,$zero,.LPADIF_OBJ_120_4c
    sw      $ra,20($sp)
    lw      $a0,12($s0)
    lui     $v0,0x800e
    lw      $v0,-29140($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,480
    lw      $a0,12($s0)
    lui     $v0,0x800e
    lw      $v0,-29140($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,720
.LPADIF_OBJ_120_4c:
    lbu     $v0,55($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPADIF_OBJ_120_64
    addu    $a1,$zero,$zero
    lui     $a1,0x800e
    lw      $a1,-29088($a1)
.LPADIF_OBJ_120_64:
    jal     _padSioRW2
    addu    $a0,$s0,$zero
    bltz    $v0,.LPADIF_OBJ_120_9c
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xf
    sll     $v0,$v0,0x1
    lui     $at,0x800e
    sw      $v0,-29044($at)
    bne     $v0,$zero,.LPADIF_OBJ_120_9c
    addu    $v0,$zero,$zero
    addiu   $v0,$zero,32
    lui     $at,0x800e
    sw      $v0,-29044($at)
    addu    $v0,$zero,$zero
.LPADIF_OBJ_120_9c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADIF_OBJ_120
    .size PADIF_OBJ_120, . - PADIF_OBJ_120

/* PADIF_OBJ_1CC (0x8003e5a4, 196 bytes) */
    .section .text.PADIF_OBJ_1CC,"ax",@progbits
    .globl PADIF_OBJ_1CC
    .globl _padSioRW2
    .type PADIF_OBJ_1CC, @function
    .ent PADIF_OBJ_1CC
PADIF_OBJ_1CC:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $v0,0x800e
    lw      $v0,-29088($v0)
    addu    $a0,$zero,$zero
    beq     $v0,$zero,.LPADIF_OBJ_1CC_48
    sw      $ra,20($sp)
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    addiu   $v1,$zero,8
    srl     $v0,$v0,0x4
    bne     $v0,$v1,.LPADIF_OBJ_1CC_48
    sll     $zero,$zero,0x0
    lbu     $v0,55($s0)
    sll     $zero,$zero,0x0
    sltiu   $a0,$v0,1
.LPADIF_OBJ_1CC_48:
    lui     $at,0x800e
    bne     $a0,$zero,.LPADIF_OBJ_1CC_68
    sw      $a0,-29032($at)
    lui     $v0,0x800e
    lw      $v0,-29152($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
.LPADIF_OBJ_1CC_68:
    lui     $a1,0x800e
    lw      $a1,-29032($a1)
    lui     $v0,0x800e
    lw      $v0,-29156($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    addu    $a0,$s0,$zero
    jal     _padSioRW2
    andi    $a1,$v0,0xff
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,90
    beq     $v1,$v0,.LPADIF_OBJ_1CC_b4
    addu    $v0,$v1,$zero
    beq     $v1,$zero,.LPADIF_OBJ_1CC_b4
    sll     $zero,$zero,0x0
    bgez    $v1,.LPADIF_OBJ_1CC_b4
    addiu   $v0,$zero,-4
    addu    $v0,$v1,$zero
.LPADIF_OBJ_1CC_b4:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADIF_OBJ_1CC
    .size PADIF_OBJ_1CC, . - PADIF_OBJ_1CC

/* PADPORTD_OBJ_388 (0x8003ed90, 212 bytes) */
    .section .text.PADPORTD_OBJ_388,"ax",@progbits
    .globl PADPORTD_OBJ_388
    .globl bzero
    .globl FUN_8003ef08
    .globl PADPORTD_OBJ_45C
    .globl PADPORTD_OBJ_5F4
    .globl sym_8003eea4
    .type PADPORTD_OBJ_388, @function
    .ent PADPORTD_OBJ_388
PADPORTD_OBJ_388:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    addiu   $a0,$s0,87
    sw      $ra,20($sp)
    jal     bzero
    addiu   $a1,$zero,6
    lhu     $v0,230($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,FUN_8003ef08
    sll     $zero,$zero,0x0
    lw      $v0,40($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,FUN_8003ef08
    sll     $zero,$zero,0x0
    lbu     $v0,52($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,7
    beq     $v0,$zero,.LPADPORTD_OBJ_388_54
    addiu   $t1,$zero,6
    lbu     $t1,52($s0)
.LPADPORTD_OBJ_388_54:
    lbu     $v0,233($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,PADPORTD_OBJ_5F4
    addu    $t0,$zero,$zero
    addiu   $t3,$zero,1
    addu    $t2,$zero,$zero
    lw      $v0,4($s0)
    addu    $a2,$zero,$zero
    addu    $v0,$t2,$v0
    lbu     $v0,2($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADPORTD_OBJ_388_8c
    addiu   $a3,$zero,1
    addiu   $a3,$zero,255
.LPADPORTD_OBJ_388_8c:
    addiu   $a1,$s0,93
    lw      $a0,40($s0)
    beq     $t1,$zero,PADPORTD_OBJ_45C
    addu    $v1,$zero,$zero
.LPADPORTD_OBJ_388_9c:
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,.LPADPORTD_OBJ_388_c0
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$a3
    bne     $v0,$zero,sym_8003eea4
    sll     $zero,$zero,0x0
.LPADPORTD_OBJ_388_c0:
    addiu   $a1,$a1,1
    addiu   $v1,$v1,1
    slt     $v0,$v1,$t1
    bne     $v0,$zero,.LPADPORTD_OBJ_388_9c
    addiu   $a0,$a0,1
    .end PADPORTD_OBJ_388
    .size PADPORTD_OBJ_388, . - PADPORTD_OBJ_388

/* PADSEQD_OBJ_34 (0x8003f09c, 212 bytes) */
    .section .text.PADSEQD_OBJ_34,"ax",@progbits
    .globl PADSEQD_OBJ_34
    .globl _padCmdParaMode
    .globl PADSEQD_OBJ_108
    .globl PADSEQD_OBJ_134
    .type PADSEQD_OBJ_34, @function
    .ent PADSEQD_OBJ_34
PADSEQD_OBJ_34:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,20($sp)
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    addiu   $v0,$zero,243
    bne     $v1,$v0,.LPADSEQD_OBJ_34_6c
    sll     $zero,$zero,0x0
    lbu     $v0,232($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADSEQD_OBJ_34_c4
    addiu   $v0,$zero,255
    lbu     $v1,70($s0)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LPADSEQD_OBJ_34_c0
    addiu   $v0,$zero,2
    lbu     $v1,73($s0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LPADSEQD_OBJ_34_6c
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
.LPADSEQD_OBJ_34_6c:
    lbu     $v1,70($s0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LPADSEQD_OBJ_34_ac
    slti    $v0,$v1,2
    beq     $v0,$zero,.LPADSEQD_OBJ_34_94
    addiu   $v0,$zero,254
    beq     $v1,$zero,PADSEQD_OBJ_134
    addu    $v0,$zero,$zero
    j       PADSEQD_OBJ_108
    sll     $zero,$zero,0x0
.LPADSEQD_OBJ_34_94:
    beq     $v1,$v0,.LPADSEQD_OBJ_34_c0
    addiu   $v0,$zero,255
    beq     $v1,$v0,PADSEQD_OBJ_134
    addu    $v0,$zero,$zero
    j       PADSEQD_OBJ_108
    sll     $zero,$zero,0x0
.LPADSEQD_OBJ_34_ac:
    addu    $a0,$s0,$zero
    jal     _padCmdParaMode
    addiu   $a1,$zero,1
    j       PADSEQD_OBJ_134
    addu    $v0,$zero,$zero
.LPADSEQD_OBJ_34_c0:
    addu    $a0,$s0,$zero
.LPADSEQD_OBJ_34_c4:
    jal     _padCmdParaMode
    addu    $a1,$zero,$zero
    j       PADSEQD_OBJ_134
    addu    $v0,$zero,$zero
    .end PADSEQD_OBJ_34
    .size PADSEQD_OBJ_34, . - PADSEQD_OBJ_34

/* PADSEQD_OBJ_144 (0x8003f1ac, 224 bytes) */
    .section .text.PADSEQD_OBJ_144,"ax",@progbits
    .globl PADSEQD_OBJ_144
    .globl PADSEQD_OBJ_398
    .globl sym_8003f28c
    .type PADSEQD_OBJ_144, @function
    .ent PADSEQD_OBJ_144
PADSEQD_OBJ_144:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,20($sp)
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0xf0
    bne     $v0,$zero,.LPADSEQD_OBJ_144_68
    srl     $v1,$v1,0x4
    lw      $v1,48($s0)
    addiu   $v0,$zero,255
    sb      $v0,0($v1)
    lw      $v0,48($s0)
    sll     $zero,$zero,0x0
    sb      $zero,1($v0)
    sb      $zero,232($s0)
    sb      $zero,53($s0)
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    j       PADSEQD_OBJ_398
    sll     $zero,$zero,0x0
.LPADSEQD_OBJ_144_68:
    lbu     $a1,232($s0)
    addiu   $v0,$zero,15
    bne     $v1,$v0,.LPADSEQD_OBJ_144_80
    sb      $v1,232($s0)
    j       sym_8003f28c
    sb      $a1,232($s0)
.LPADSEQD_OBJ_144_80:
    lw      $v0,48($s0)
    sll     $zero,$zero,0x0
    sb      $zero,0($v0)
    lw      $v0,60($s0)
    lw      $v1,48($s0)
    lbu     $v0,0($v0)
    addiu   $a0,$zero,2
    sb      $v0,1($v1)
    lbu     $v0,68($s0)
    lbu     $v1,68($s0)
    slt     $v0,$a0,$v0
    beq     $v0,$zero,sym_8003f28c
    sb      $v1,53($s0)
.LPADSEQD_OBJ_144_b4:
    lw      $v0,60($s0)
    lw      $v1,48($s0)
    addu    $v0,$v0,$a0
    lbu     $v0,0($v0)
    addu    $v1,$v1,$a0
    sb      $v0,0($v1)
    lbu     $v0,68($s0)
    addiu   $a0,$a0,1
    slt     $v0,$a0,$v0
    bne     $v0,$zero,.LPADSEQD_OBJ_144_b4
    sll     $zero,$zero,0x0
    .end PADSEQD_OBJ_144
    .size PADSEQD_OBJ_144, . - PADSEQD_OBJ_144

/* _dirFailAuto (0x8003f410, 208 bytes) */
    .section .text._dirFailAuto,"ax",@progbits
    .globl _dirFailAuto
    .globl PADSEQD_OBJ_478
    .type _dirFailAuto, @function
    .ent _dirFailAuto
_dirFailAuto:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,20($sp)
    lw      $v0,76($s0)
    lbu     $v1,70($s0)
    addiu   $v0,$v0,1
    beq     $v1,$zero,.L_dirFailAuto_98
    sw      $v0,76($s0)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.L_dirFailAuto_58
    sll     $zero,$zero,0x0
    lbu     $v1,74($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,11
    bne     $v0,$zero,.L_dirFailAuto_6c
    addiu   $v0,$v1,1
    addiu   $v0,$zero,2
    sb      $v0,73($s0)
    addiu   $v0,$zero,255
    j       PADSEQD_OBJ_478
    sb      $v0,70($s0)
.L_dirFailAuto_58:
    lbu     $v1,74($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,11
    beq     $v0,$zero,.L_dirFailAuto_74
    addiu   $v0,$v1,1
.L_dirFailAuto_6c:
    j       PADSEQD_OBJ_478
    sb      $v0,74($s0)
.L_dirFailAuto_74:
    lbu     $v0,73($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.L_dirFailAuto_98
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
.L_dirFailAuto_98:
    lw      $v0,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    addiu   $v0,$zero,243
    beq     $v1,$v0,PADSEQD_OBJ_478
    addiu   $v1,$zero,255
    lw      $v0,48($s0)
    sll     $zero,$zero,0x0
    sb      $v1,0($v0)
    lw      $v0,48($s0)
    sll     $zero,$zero,0x0
    sb      $zero,1($v0)
    sb      $zero,232($s0)
    sb      $zero,53($s0)
    .end _dirFailAuto
    .size _dirFailAuto, . - _dirFailAuto

/* BIOS_OBJ_6C4 (0x8004058c, 232 bytes) */
    .section .text.BIOS_OBJ_6C4,"ax",@progbits
    .globl BIOS_OBJ_6C4
    .globl BIOS_OBJ_0
    .globl BIOS_OBJ_7AC
    .globl sym_800404a4
    .type BIOS_OBJ_6C4, @function
    .ent BIOS_OBJ_6C4
BIOS_OBJ_6C4:
.LBIOS_OBJ_6C4_0:
    jal     BIOS_OBJ_0
    sll     $zero,$zero,0x0
    addu    $s0,$v0,$zero
    beq     $s0,$zero,.LBIOS_OBJ_6C4_78
    andi    $v0,$s0,0x4
    beq     $v0,$zero,.LBIOS_OBJ_6C4_44
    andi    $v0,$s0,0x2
    lui     $v0,0x800e
    lw      $v0,-28824($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_6C4_40
    sll     $zero,$zero,0x0
    lbu     $a0,0($s5)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30072
.LBIOS_OBJ_6C4_40:
    andi    $v0,$s0,0x2
.LBIOS_OBJ_6C4_44:
    beq     $v0,$zero,.LBIOS_OBJ_6C4_0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28828($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_6C4_0
    sll     $zero,$zero,0x0
    lbu     $a0,0($s2)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30064
    j       .LBIOS_OBJ_6C4_0
    sll     $zero,$zero,0x0
.LBIOS_OBJ_6C4_78:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    sb      $s1,0($v0)
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    andi    $a2,$v0,0xff
    beq     $a2,$s3,.LBIOS_OBJ_6C4_a4
    addiu   $v0,$zero,5
    bne     $a2,$v0,.LBIOS_OBJ_6C4_e0
    sll     $zero,$zero,0x0
.LBIOS_OBJ_6C4_a4:
    sb      $s3,0($s2)
    addu    $a1,$s7,$zero
    lui     $a0,0x800e
    addiu   $a0,$a0,30064
    beq     $a1,$zero,.LBIOS_OBJ_6C4_d8
    addiu   $v1,$zero,7
    addiu   $a3,$zero,-1
.LBIOS_OBJ_6C4_c0:
    lbu     $v0,0($a0)
    addiu   $a0,$a0,1
    addiu   $v1,$v1,-1
    sb      $v0,0($a1)
    bne     $v1,$a3,.LBIOS_OBJ_6C4_c0
    addiu   $a1,$a1,1
.LBIOS_OBJ_6C4_d8:
    j       BIOS_OBJ_7AC
    addu    $v0,$a2,$zero
.LBIOS_OBJ_6C4_e0:
    beq     $s6,$zero,sym_800404a4
    addu    $v0,$zero,$zero
    .end BIOS_OBJ_6C4
    .size BIOS_OBJ_6C4, . - BIOS_OBJ_6C4

/* BIOS_OBJ_DA0 (0x80040c68, 232 bytes) */
    .section .text.BIOS_OBJ_DA0,"ax",@progbits
    .globl BIOS_OBJ_DA0
    .globl BIOS_OBJ_0
    .globl BIOS_OBJ_E88
    .globl sym_80040b80
    .type BIOS_OBJ_DA0, @function
    .ent BIOS_OBJ_DA0
BIOS_OBJ_DA0:
.LBIOS_OBJ_DA0_0:
    jal     BIOS_OBJ_0
    sll     $zero,$zero,0x0
    addu    $s0,$v0,$zero
    beq     $s0,$zero,.LBIOS_OBJ_DA0_78
    andi    $v0,$s0,0x4
    beq     $v0,$zero,.LBIOS_OBJ_DA0_44
    andi    $v0,$s0,0x2
    lui     $v0,0x800e
    lw      $v0,-28824($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_DA0_40
    sll     $zero,$zero,0x0
    lbu     $a0,0($s4)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30072
.LBIOS_OBJ_DA0_40:
    andi    $v0,$s0,0x2
.LBIOS_OBJ_DA0_44:
    beq     $v0,$zero,.LBIOS_OBJ_DA0_0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28828($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_DA0_0
    sll     $zero,$zero,0x0
    lbu     $a0,0($s2)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30064
    j       .LBIOS_OBJ_DA0_0
    sll     $zero,$zero,0x0
.LBIOS_OBJ_DA0_78:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    sb      $s1,0($v0)
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80040b80
    addu    $a2,$s6,$zero
    lui     $a0,0x800e
    addiu   $a0,$a0,30064
    beq     $a2,$zero,.LBIOS_OBJ_DA0_c4
    addiu   $v1,$zero,7
    addiu   $a1,$zero,-1
.LBIOS_OBJ_DA0_ac:
    lbu     $v0,0($a0)
    addiu   $a0,$a0,1
    addiu   $v1,$v1,-1
    sb      $v0,0($a2)
    bne     $v1,$a1,.LBIOS_OBJ_DA0_ac
    addiu   $a2,$a2,1
.LBIOS_OBJ_DA0_c4:
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    addiu   $v0,$v0,-28096
    lbu     $v1,0($v0)
    addiu   $v0,$zero,5
    bne     $v1,$v0,BIOS_OBJ_E88
    addu    $v0,$a0,$zero
    addiu   $a0,$zero,-1
    addu    $v0,$a0,$zero
    .end BIOS_OBJ_DA0
    .size BIOS_OBJ_DA0, . - BIOS_OBJ_DA0

/* CD_vol (0x80040d78, 136 bytes) */
    .section .text.CD_vol,"ax",@progbits
    .globl CD_vol
    .type CD_vol, @function
    .ent CD_vol
CD_vol:
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,2
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28112($v1)
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    lbu     $v0,1($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,3
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28116($v1)
    lbu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28112($v1)
    lbu     $v0,3($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    addiu   $v0,$zero,32
    sb      $v0,0($v1)
    jr      $ra
    addu    $v0,$zero,$zero
    .end CD_vol
    .size CD_vol, . - CD_vol

/* CD_flush (0x80040e00, 212 bytes) */
    .section .text.CD_flush,"ax",@progbits
    .globl CD_flush
    .type CD_flush, @function
    .ent CD_flush
CD_flush:
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,1
    sb      $v0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-28108($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7
    beq     $v0,$zero,.LCD_flush_84
    addiu   $a0,$zero,1
    addiu   $v1,$zero,7
.LCD_flush_34:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    sb      $a0,0($v0)
    lui     $v0,0x800e
    lw      $v0,-28108($v0)
    sll     $zero,$zero,0x0
    sb      $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,-28112($v0)
    sll     $zero,$zero,0x0
    sb      $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,-28108($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7
    bne     $v0,$zero,.LCD_flush_34
    sll     $zero,$zero,0x0
.LCD_flush_84:
    lui     $v1,0x800e
    addiu   $v1,$v1,-28096
    sb      $zero,2($v1)
    lbu     $v0,2($v1)
    sll     $zero,$zero,0x0
    sb      $v0,1($v1)
    lui     $a0,0x800e
    lw      $a0,-28120($a0)
    addiu   $v0,$zero,2
    sb      $v0,0($v1)
    sb      $zero,0($a0)
    lui     $v0,0x800e
    lw      $v0,-28108($v0)
    sll     $zero,$zero,0x0
    sb      $zero,0($v0)
    lui     $v1,0x800e
    lw      $v1,-28104($v1)
    addiu   $v0,$zero,4901
    jr      $ra
    sw      $v0,0($v1)
    .end CD_flush
    .size CD_flush, . - CD_flush

/* CD_initvol (0x80040ed4, 240 bytes) */
    .section .text.CD_initvol,"ax",@progbits
    .globl CD_initvol
    .type CD_initvol, @function
    .ent CD_initvol
CD_initvol:
    lui     $v1,0x800e
    lw      $v1,-28100($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,440($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LCD_initvol_3c
    addiu   $sp,$sp,-8
    lhu     $v0,442($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LCD_initvol_40
    addiu   $v0,$zero,16383
    sh      $v0,384($v1)
    sh      $v0,386($v1)
    lui     $v1,0x800e
    lw      $v1,-28100($v1)
.LCD_initvol_3c:
    addiu   $v0,$zero,16383
.LCD_initvol_40:
    sh      $v0,432($v1)
    sh      $v0,434($v1)
    ori     $v0,$zero,0xc001
    sh      $v0,426($v1)
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,128
    sb      $v0,2($sp)
    sb      $v0,0($sp)
    addiu   $v0,$zero,2
    sb      $zero,3($sp)
    sb      $zero,1($sp)
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28112($v1)
    lbu     $v0,0($sp)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    lbu     $v0,1($sp)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,3
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28116($v1)
    lbu     $v0,2($sp)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28112($v1)
    lbu     $v0,3($sp)
    sll     $zero,$zero,0x0
    sb      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    addiu   $v0,$zero,32
    sb      $v0,0($v1)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,8
    .end CD_initvol
    .size CD_initvol, . - CD_initvol

/* CD_getsector2 (0x80041458, 236 bytes) */
    .section .text.CD_getsector2,"ax",@progbits
    .globl CD_getsector2
    .type CD_getsector2, @function
    .ent CD_getsector2
CD_getsector2:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    lui     $a2,0x2102
    sb      $zero,0($v0)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    addiu   $v0,$zero,128
    sb      $v0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-28068($v0)
    ori     $a2,$a2,0x843
    sw      $a2,0($v0)
    lui     $v1,0x800e
    lw      $v1,-28104($v1)
    addiu   $v0,$zero,4901
    sw      $v0,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28064($v1)
    sll     $zero,$zero,0x0
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x8000
    sw      $v0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-28060($v0)
    sll     $zero,$zero,0x0
    sw      $a0,0($v0)
    lui     $v0,0x1
    lui     $v1,0x800e
    lw      $v1,-28056($v1)
    or      $a1,$a1,$v0
    sw      $a1,0($v1)
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x40
    bne     $v0,$zero,.LCD_getsector2_b4
    addiu   $sp,$sp,-8
.LCD_getsector2_a0:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x40
    beq     $v0,$zero,.LCD_getsector2_a0
    sll     $zero,$zero,0x0
.LCD_getsector2_b4:
    lui     $v1,0x1140
    lui     $v0,0x800e
    lw      $v0,-28052($v0)
    ori     $v1,$v1,0x100
    sw      $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,-28052($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    sw      $v0,0($sp)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,8
    .end CD_getsector2
    .size CD_getsector2, . - CD_getsector2

/* BIOS_OBJ_16BC (0x80041584, 164 bytes) */
    .section .text.BIOS_OBJ_16BC,"ax",@progbits
    .globl BIOS_OBJ_16BC
    .globl BIOS_OBJ_0
    .type BIOS_OBJ_16BC, @function
    .ent BIOS_OBJ_16BC
BIOS_OBJ_16BC:
.LBIOS_OBJ_16BC_0:
    jal     BIOS_OBJ_0
    sll     $zero,$zero,0x0
    addu    $s0,$v0,$zero
    beq     $s0,$zero,.LBIOS_OBJ_16BC_78
    andi    $v0,$s0,0x4
    beq     $v0,$zero,.LBIOS_OBJ_16BC_44
    andi    $v0,$s0,0x2
    lui     $v0,0x800e
    lw      $v0,-28824($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_16BC_40
    sll     $zero,$zero,0x0
    lbu     $a0,0($s1)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30072
.LBIOS_OBJ_16BC_40:
    andi    $v0,$s0,0x2
.LBIOS_OBJ_16BC_44:
    beq     $v0,$zero,.LBIOS_OBJ_16BC_0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28828($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LBIOS_OBJ_16BC_0
    sll     $zero,$zero,0x0
    lbu     $a0,0($s3)
    lui     $a1,0x800e
    jalr    $v0
    addiu   $a1,$a1,30064
    j       .LBIOS_OBJ_16BC_0
    sll     $zero,$zero,0x0
.LBIOS_OBJ_16BC_78:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    sb      $s2,0($v0)
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end BIOS_OBJ_16BC
    .size BIOS_OBJ_16BC, . - BIOS_OBJ_16BC

/* sin_1 (0x80049688, 136 bytes) */
    .section .text.sin_1,"ax",@progbits
    .globl sin_1
    .globl GEO_00_OBJ_C4
    .type sin_1, @function
    .ent sin_1
sin_1:
    slti    $v0,$a0,2049
    beq     $v0,$zero,.Lsin_1_48
    slti    $v0,$a0,1025
    beq     $v0,$zero,.Lsin_1_28
    sll     $v0,$a0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-28000($at)
    j       GEO_00_OBJ_C4
    sll     $zero,$zero,0x0
.Lsin_1_28:
    addiu   $v0,$zero,2048
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-28000($at)
    j       GEO_00_OBJ_C4
    sll     $zero,$zero,0x0
.Lsin_1_48:
    slti    $v0,$a0,3073
    bne     $v0,$zero,.Lsin_1_74
    sll     $v0,$a0,0x1
    addiu   $v0,$zero,4096
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-28000($at)
    j       GEO_00_OBJ_C4
    negu    $v0,$v0
.Lsin_1_74:
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-32096($at)
    sll     $zero,$zero,0x0
    negu    $v0,$v0
    .end sin_1
    .size sin_1, . - sin_1

/* rcos (0x8004971c, 152 bytes) */
    .section .text.rcos,"ax",@progbits
    .globl rcos
    .globl GEO_01_OBJ_98
    .type rcos, @function
    .ent rcos
rcos:
    bgez    $a0,.Lrcos_c
    sll     $zero,$zero,0x0
    negu    $a0,$a0
.Lrcos_c:
    andi    $a0,$a0,0xfff
    slti    $v0,$a0,2049
    beq     $v0,$zero,.Lrcos_58
    slti    $v0,$a0,1025
    beq     $v0,$zero,.Lrcos_40
    addiu   $v0,$zero,1024
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-28000($at)
    j       GEO_01_OBJ_98
    sll     $zero,$zero,0x0
.Lrcos_40:
    sll     $v0,$a0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-30048($at)
    j       GEO_01_OBJ_98
    negu    $v0,$v0
.Lrcos_58:
    slti    $v0,$a0,3073
    bne     $v0,$zero,.Lrcos_7c
    addiu   $v0,$zero,3072
    sll     $v0,$a0,0x1
    lui     $at,0x800d
    addu    $at,$at,$v0
    lh      $v0,31392($at)
    j       GEO_01_OBJ_98
    sll     $zero,$zero,0x0
.Lrcos_7c:
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    lui     $at,0x800e
    addu    $at,$at,$v0
    lh      $v0,-28000($at)
    sll     $zero,$zero,0x0
    negu    $v0,$v0
    .end rcos
    .size rcos, . - rcos

/* RotAverageNclip4 (0x8005386c, 176 bytes) */
    .section .text.RotAverageNclip4,"ax",@progbits
    .globl RotAverageNclip4
    .type RotAverageNclip4, @function
    .ent RotAverageNclip4
RotAverageNclip4:
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($a1)
    lwc2    $3,4($a1)
    lwc2    $4,0($a2)
    lwc2    $5,4($a2)
    sll     $zero,$zero,0x0
    c2      0x280030
    lw      $t0,40($sp)
    cfc2    $v1,$31
    sll     $zero,$zero,0x0
    sw      $v1,0($t0)
    c2      0x1400006
    lw      $t0,16($sp)
    lw      $t1,20($sp)
    lw      $t2,24($sp)
    mfc2    $v0,$24
    sll     $zero,$zero,0x0
    bgtz    $v0,.LRotAverageNclip4_58
    sll     $zero,$zero,0x0
    beq     $zero,$zero,.LRotAverageNclip4_a8
    sll     $zero,$zero,0x0
.LRotAverageNclip4_58:
    swc2    $12,0($t0)
    swc2    $13,0($t1)
    swc2    $14,0($t2)
    lwc2    $0,0($a3)
    lwc2    $1,4($a3)
    sll     $zero,$zero,0x0
    c2      0x180001
    lw      $t0,28($sp)
    lw      $t1,32($sp)
    lw      $t2,40($sp)
    swc2    $14,0($t0)
    cfc2    $t3,$31
    swc2    $8,0($t1)
    or      $t3,$t3,$v1
    sw      $t3,0($t2)
    c2      0x168002e
    lw      $t1,36($sp)
    mfc2    $t0,$7
    sll     $zero,$zero,0x0
    sw      $t0,0($t1)
.LRotAverageNclip4_a8:
    jr      $ra
    sll     $zero,$zero,0x0
    .end RotAverageNclip4
    .size RotAverageNclip4, . - RotAverageNclip4

/* FGO_01_OBJ_CC (0x800539e8, 148 bytes) */
    .section .text.FGO_01_OBJ_CC,"ax",@progbits
    .globl FGO_01_OBJ_CC
    .globl sym_80053a7c
    .type FGO_01_OBJ_CC, @function
    .ent FGO_01_OBJ_CC
FGO_01_OBJ_CC:
    multu   $t1,$t3
    lh      $t7,4($a0)
    sh      $t6,4($a1)
    mflo    $t8
    negu    $t9,$t8
    sra     $t6,$t9,0xc
    multu   $t1,$t0
    sh      $t6,10($a1)
    bgez    $t7,.LFGO_01_OBJ_CC_68
    andi    $t9,$t7,0xfff
    mflo    $t8
    sra     $t6,$t8,0xc
    sh      $t6,16($a1)
    negu    $t7,$t7
    bgez    $t7,.LFGO_01_OBJ_CC_40
    andi    $t7,$t7,0xfff
.LFGO_01_OBJ_CC_40:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t8,$t8,0x10
    negu    $t5,$t8
    j       sym_80053a7c
    sra     $t2,$t9,0x10
.LFGO_01_OBJ_CC_68:
    mflo    $t7
    sra     $t6,$t7,0xc
    sh      $t6,16($a1)
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t5,$t8,0x10
    sra     $t2,$t9,0x10
    .end FGO_01_OBJ_CC
    .size FGO_01_OBJ_CC, . - FGO_01_OBJ_CC

/* GS_137_OBJ_1B4 (0x80054b6c, 188 bytes) */
    .section .text.GS_137_OBJ_1B4,"ax",@progbits
    .globl GS_137_OBJ_1B4
    .globl csqrt
    .globl Lzc
    .globl SquareRoot0
    .globl sym_80054c28
    .type GS_137_OBJ_1B4, @function
    .ent GS_137_OBJ_1B4
GS_137_OBJ_1B4:
    lw      $v0,12($s2)
    lw      $v1,0($s2)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    mult    $v0,$v0
    lw      $v0,20($s2)
    lw      $v1,8($s2)
    mflo    $a0
    subu    $v0,$v0,$v1
    sll     $zero,$zero,0x0
    mult    $v0,$v0
    mflo    $v1
    addu    $s1,$a0,$v1
    jal     Lzc
    addu    $a0,$s1,$zero
    addiu   $a0,$zero,12
    subu    $a1,$a0,$v0
    bgez    $a1,.LGS_137_OBJ_1B4_98
    subu    $a0,$a0,$a1
    jal     SquareRoot0
    addu    $a0,$s1,$zero
    addu    $a0,$s0,$zero
    jal     SquareRoot0
    addu    $s0,$v0,$zero
    sll     $s0,$s0,0xc
    div     $zero,$s0,$v0
    bne     $v0,$zero,.LGS_137_OBJ_1B4_74
    sll     $zero,$zero,0x0
    break   0x7
.LGS_137_OBJ_1B4_74:
    addiu   $at,$zero,-1
    bne     $v0,$at,.LGS_137_OBJ_1B4_8c
    lui     $at,0x8000
    bne     $s0,$at,.LGS_137_OBJ_1B4_8c
    sll     $zero,$zero,0x0
    break   0x6
.LGS_137_OBJ_1B4_8c:
    mflo    $s0
    j       sym_80054c28
    addu    $v0,$s0,$zero
.LGS_137_OBJ_1B4_98:
    sllv    $a0,$s1,$a0
    srlv    $v0,$s0,$a1
    divu    $zero,$a0,$v0
    bne     $v0,$zero,.LGS_137_OBJ_1B4_b0
    sll     $zero,$zero,0x0
    break   0x7
.LGS_137_OBJ_1B4_b0:
    mflo    $a0
    jal     csqrt
    sll     $zero,$zero,0x0
    .end GS_137_OBJ_1B4
    .size GS_137_OBJ_1B4, . - GS_137_OBJ_1B4

/* GS_137_OBJ_398 (0x80054d50, 236 bytes) */
    .section .text.GS_137_OBJ_398,"ax",@progbits
    .globl GS_137_OBJ_398
    .globl csqrt
    .globl Lzc
    .globl SquareRoot0
    .globl sym_80054e3c
    .globl sym_80054e40
    .type GS_137_OBJ_398, @function
    .ent GS_137_OBJ_398
GS_137_OBJ_398:
    lw      $v0,20($s2)
    lw      $v1,8($s2)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    mult    $v0,$v0
    mflo    $s1
    jal     Lzc
    addu    $a0,$s1,$zero
    addiu   $a0,$zero,12
    subu    $a1,$a0,$v0
    bgez    $a1,.LGS_137_OBJ_398_80
    sll     $zero,$zero,0x0
    jal     SquareRoot0
    addu    $a0,$s0,$zero
    lw      $v1,20($s2)
    lw      $a0,8($s2)
    sll     $zero,$zero,0x0
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0xc
    div     $zero,$v1,$v0
    bne     $v0,$zero,.LGS_137_OBJ_398_5c
    sll     $zero,$zero,0x0
    break   0x7
.LGS_137_OBJ_398_5c:
    addiu   $at,$zero,-1
    bne     $v0,$at,.LGS_137_OBJ_398_74
    lui     $at,0x8000
    bne     $v1,$at,.LGS_137_OBJ_398_74
    sll     $zero,$zero,0x0
    break   0x6
.LGS_137_OBJ_398_74:
    mflo    $v1
    j       sym_80054e3c
    addu    $v0,$v1,$zero
.LGS_137_OBJ_398_80:
    lw      $v0,20($s2)
    lw      $v1,8($s2)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    bltz    $v0,.LGS_137_OBJ_398_c4
    srlv    $v0,$s0,$a1
    subu    $a0,$a0,$a1
    sllv    $a0,$s1,$a0
    divu    $zero,$a0,$v0
    bne     $v0,$zero,.LGS_137_OBJ_398_b0
    sll     $zero,$zero,0x0
    break   0x7
.LGS_137_OBJ_398_b0:
    mflo    $a0
    jal     csqrt
    sll     $zero,$zero,0x0
    j       sym_80054e40
    addiu   $s0,$sp,48
.LGS_137_OBJ_398_c4:
    subu    $a0,$a0,$a1
    sllv    $a0,$s1,$a0
    divu    $zero,$a0,$v0
    bne     $v0,$zero,.LGS_137_OBJ_398_dc
    sll     $zero,$zero,0x0
    break   0x7
.LGS_137_OBJ_398_dc:
    mflo    $a0
    jal     csqrt
    sll     $zero,$zero,0x0
    negu    $v0,$v0
    .end GS_137_OBJ_398
    .size GS_137_OBJ_398, . - GS_137_OBJ_398

/* gte_rotate_z_matrix (0x80055408, 180 bytes) */
    .section .text.gte_rotate_z_matrix,"ax",@progbits
    .globl gte_rotate_z_matrix
    .globl rcos
    .globl rsin
    .globl sym_800375c8
    .type gte_rotate_z_matrix, @function
    .ent gte_rotate_z_matrix
gte_rotate_z_matrix:
    addiu   $sp,$sp,-64
    sw      $s1,52($sp)
    addu    $s1,$a1,$zero
    lui     $v0,0xb60b
    ori     $v0,$v0,0x60b7
    mult    $s1,$v0
    sw      $s2,56($sp)
    addu    $s2,$a0,$zero
    sra     $v0,$s1,0x1f
    sw      $ra,60($sp)
    sw      $s0,48($sp)
    mfhi    $a2
    addu    $s0,$a2,$s1
    sra     $s0,$s0,0x8
    subu    $s0,$s0,$v0
    jal     rcos
    addu    $a0,$s0,$zero
    addu    $a0,$s0,$zero
    jal     rsin
    addu    $s0,$v0,$zero
    beq     $s1,$zero,.Lgte_rotate_z_matrix_9c
    addu    $v1,$v0,$zero
    addu    $a0,$s2,$zero
    negu    $v0,$v1
    sh      $v0,18($sp)
    addiu   $v0,$zero,4096
    addiu   $a1,$sp,16
    sh      $s0,16($sp)
    sh      $zero,20($sp)
    sh      $v1,22($sp)
    sh      $s0,24($sp)
    sh      $zero,26($sp)
    sh      $zero,28($sp)
    sh      $zero,30($sp)
    sh      $v0,32($sp)
    sw      $zero,36($sp)
    sw      $zero,40($sp)
    jal     sym_800375c8
    sw      $zero,44($sp)
.Lgte_rotate_z_matrix_9c:
    lw      $ra,60($sp)
    lw      $s2,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end gte_rotate_z_matrix
    .size gte_rotate_z_matrix, . - gte_rotate_z_matrix

/* GS_133_OBJ_21C (0x800556e4, 156 bytes) */
    .section .text.GS_133_OBJ_21C,"ax",@progbits
    .globl GS_133_OBJ_21C
    .globl GsMulCoord3
    .type GS_133_OBJ_21C, @function
    .ent GS_133_OBJ_21C
GS_133_OBJ_21C:
    blez    $s1,.LGS_133_OBJ_21C_84
    sll     $v0,$s1,0x2
    lui     $v1,0x800e
    addiu   $v1,$v1,21692
    addu    $s0,$v0,$v1
.LGS_133_OBJ_21C_14:
    lw      $a1,0($s0)
    addu    $a0,$s2,$zero
    jal     GsMulCoord3
    addiu   $a1,$a1,4
    lw      $v0,0($s0)
    addiu   $s1,$s1,-1
    lw      $v1,0($s2)
    lw      $a0,4($s2)
    lw      $a1,8($s2)
    lw      $a2,12($s2)
    sw      $v1,36($v0)
    sw      $a0,40($v0)
    sw      $a1,44($v0)
    sw      $a2,48($v0)
    lw      $v1,16($s2)
    lw      $a0,20($s2)
    lw      $a1,24($s2)
    lw      $a2,28($s2)
    sw      $v1,52($v0)
    sw      $a0,56($v0)
    sw      $a1,60($v0)
    sw      $a2,64($v0)
    lw      $v1,0($s0)
    lui     $v0,0x800e
    lw      $v0,21688($v0)
    addiu   $s0,$s0,-4
    bgtz    $s1,.LGS_133_OBJ_21C_14
    sw      $v0,0($v1)
.LGS_133_OBJ_21C_84:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end GS_133_OBJ_21C
    .size GS_133_OBJ_21C, . - GS_133_OBJ_21C

/* GS_131_OBJ_3D0 (0x80055e64, 212 bytes) */
    .section .text.GS_131_OBJ_3D0,"ax",@progbits
    .globl GS_131_OBJ_3D0
    .globl GS_131_OBJ_4A4
    .globl GS_131_OBJ_4BC
    .globl GS_131_OBJ_584
    .type GS_131_OBJ_3D0, @function
    .ent GS_131_OBJ_3D0
GS_131_OBJ_3D0:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jal     GS_131_OBJ_4BC
    addu    $s1,$a1,$zero
    jal     GS_131_OBJ_584
    addu    $a0,$v0,$zero
    addu    $v1,$v0,$zero
    slti    $v0,$v1,16
    bne     $v0,$zero,.LGS_131_OBJ_3D0_90
    addiu   $v1,$v1,-15
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    srav    $v0,$v0,$v1
    sw      $v0,0($s1)
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    srav    $v0,$v0,$v1
    sw      $v0,4($s1)
    lw      $v0,8($s0)
    sll     $zero,$zero,0x0
    srav    $v0,$v0,$v1
    sw      $v0,8($s1)
    lw      $v0,12($s0)
    sll     $zero,$zero,0x0
    srav    $v0,$v0,$v1
    sw      $v0,12($s1)
    lw      $v0,16($s0)
    sll     $zero,$zero,0x0
    srav    $v0,$v0,$v1
    sw      $v0,16($s1)
    lw      $v0,20($s0)
    j       GS_131_OBJ_4A4
    srav    $v0,$v0,$v1
.LGS_131_OBJ_3D0_90:
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    sw      $v0,0($s1)
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    sw      $v0,4($s1)
    lw      $v0,8($s0)
    sll     $zero,$zero,0x0
    sw      $v0,8($s1)
    lw      $v0,12($s0)
    sll     $zero,$zero,0x0
    sw      $v0,12($s1)
    lw      $v0,16($s0)
    sll     $zero,$zero,0x0
    sw      $v0,16($s1)
    lw      $v0,20($s0)
    sll     $zero,$zero,0x0
    .end GS_131_OBJ_3D0
    .size GS_131_OBJ_3D0, . - GS_131_OBJ_3D0

/* GS_131_OBJ_4BC (0x80055f50, 200 bytes) */
    .section .text.GS_131_OBJ_4BC,"ax",@progbits
    .globl GS_131_OBJ_4BC
    .type GS_131_OBJ_4BC, @function
    .ent GS_131_OBJ_4BC
GS_131_OBJ_4BC:
    lw      $v0,0($a0)
    lw      $v1,4($a0)
    bgez    $v0,.LGS_131_OBJ_4BC_14
    addu    $a1,$v0,$zero
    negu    $a1,$a1
.LGS_131_OBJ_4BC_14:
    bgez    $v1,.LGS_131_OBJ_4BC_20
    sll     $zero,$zero,0x0
    negu    $v1,$v1
.LGS_131_OBJ_4BC_20:
    slt     $v0,$a1,$v1
    beq     $v0,$zero,.LGS_131_OBJ_4BC_30
    sll     $zero,$zero,0x0
    addu    $a1,$v1,$zero
.LGS_131_OBJ_4BC_30:
    lw      $v0,8($a0)
    sll     $zero,$zero,0x0
    bgez    $v0,.LGS_131_OBJ_4BC_44
    addu    $v1,$v0,$zero
    negu    $v1,$v1
.LGS_131_OBJ_4BC_44:
    slt     $v0,$a1,$v1
    beq     $v0,$zero,.LGS_131_OBJ_4BC_54
    sll     $zero,$zero,0x0
    addu    $a1,$v1,$zero
.LGS_131_OBJ_4BC_54:
    lw      $v0,12($a0)
    sll     $zero,$zero,0x0
    bgez    $v0,.LGS_131_OBJ_4BC_68
    addu    $v1,$v0,$zero
    negu    $v1,$v1
.LGS_131_OBJ_4BC_68:
    slt     $v0,$a1,$v1
    beq     $v0,$zero,.LGS_131_OBJ_4BC_78
    sll     $zero,$zero,0x0
    addu    $a1,$v1,$zero
.LGS_131_OBJ_4BC_78:
    lw      $v0,16($a0)
    sll     $zero,$zero,0x0
    bgez    $v0,.LGS_131_OBJ_4BC_8c
    addu    $v1,$v0,$zero
    negu    $v1,$v1
.LGS_131_OBJ_4BC_8c:
    slt     $v0,$a1,$v1
    beq     $v0,$zero,.LGS_131_OBJ_4BC_9c
    sll     $zero,$zero,0x0
    addu    $a1,$v1,$zero
.LGS_131_OBJ_4BC_9c:
    lw      $v0,20($a0)
    sll     $zero,$zero,0x0
    bgez    $v0,.LGS_131_OBJ_4BC_b0
    addu    $v1,$v0,$zero
    negu    $v1,$v1
.LGS_131_OBJ_4BC_b0:
    slt     $v0,$a1,$v1
    beq     $v0,$zero,.LGS_131_OBJ_4BC_c0
    sll     $zero,$zero,0x0
    addu    $a1,$v1,$zero
.LGS_131_OBJ_4BC_c0:
    jr      $ra
    addu    $v0,$a1,$zero
    .end GS_131_OBJ_4BC
    .size GS_131_OBJ_4BC, . - GS_131_OBJ_4BC

/* InvSquareRoot (0x80060eb0, 132 bytes) */
    .section .text.InvSquareRoot,"ax",@progbits
    .globl InvSquareRoot
    .globl sym_80060f34
    .type InvSquareRoot, @function
    .ent InvSquareRoot
InvSquareRoot:
    mtc2    $a0,$30
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mfc2    $v0,$31
    addiu   $at,$zero,32
    beq     $v0,$at,sym_80060f34
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80060f34
    sll     $zero,$zero,0x0
    andi    $t0,$v0,0x1
    addiu   $at,$zero,-2
    and     $t2,$v0,$at
    addiu   $t1,$zero,31
    sub     $t1,$t1,$t2
    sra     $t1,$t1,0x1
    addi    $t3,$t2,-24
    bltz    $t3,.LInvSquareRoot_50
    sll     $zero,$zero,0x0
    sllv    $t4,$a0,$t3
    beq     $zero,$zero,.LInvSquareRoot_5c
.LInvSquareRoot_50:
    addiu   $t3,$zero,24
    sub     $t3,$t3,$t2
    srav    $t4,$a0,$t3
.LInvSquareRoot_5c:
    addi    $t4,$t4,-64
    sll     $t4,$t4,0x1
    lui     $t5,0x800e
    addu    $t5,$t5,$t4
    lh      $t5,-4952($t5)
    sw      $t1,0($a2)
    sw      $t5,0($a1)
    addiu   $v0,$zero,1
    jr      $ra
    sll     $zero,$zero,0x0
    .end InvSquareRoot
    .size InvSquareRoot, . - InvSquareRoot

/* MSC02_OBJ_100 (0x80060fb0, 192 bytes) */
    .section .text.MSC02_OBJ_100,"ax",@progbits
    .globl MSC02_OBJ_100
    .type MSC02_OBJ_100, @function
    .ent MSC02_OBJ_100
MSC02_OBJ_100:
    mtc2    $t0,$9
    mtc2    $t1,$10
    mtc2    $t2,$11
    sll     $zero,$zero,0x0
    c2      0xa00428
    mfc2    $t3,$25
    mfc2    $t4,$26
    mfc2    $t5,$27
    add     $t3,$t3,$t4
    add     $v0,$t3,$t5
    mtc2    $v0,$30
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mfc2    $v1,$31
    addiu   $at,$zero,-2
    and     $v1,$v1,$at
    addiu   $t6,$zero,31
    sub     $t6,$t6,$v1
    sra     $t6,$t6,0x1
    addi    $t3,$v1,-24
    bltz    $t3,.LMSC02_OBJ_100_60
    sll     $zero,$zero,0x0
    beq     $zero,$zero,.LMSC02_OBJ_100_6c
    sllv    $t4,$v0,$t3
.LMSC02_OBJ_100_60:
    addiu   $t3,$zero,24
    sub     $t3,$t3,$v1
    srav    $t4,$v0,$t3
.LMSC02_OBJ_100_6c:
    addi    $t4,$t4,-64
    sll     $t4,$t4,0x1
    lui     $t5,0x800e
    addu    $t5,$t5,$t4
    lh      $t5,-4952($t5)
    sll     $zero,$zero,0x0
    mtc2    $t5,$8
    mtc2    $t0,$9
    mtc2    $t1,$10
    mtc2    $t2,$11
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x190003d
    mfc2    $t0,$25
    mfc2    $t1,$26
    mfc2    $t2,$27
    srav    $t0,$t0,$t6
    srav    $t1,$t1,$t6
    srav    $t2,$t2,$t6
    jr      $ra
    sll     $zero,$zero,0x0
    .end MSC02_OBJ_100
    .size MSC02_OBJ_100, . - MSC02_OBJ_100

/* MatrixNormal (0x80061070, 232 bytes) */
    .section .text.MatrixNormal,"ax",@progbits
    .globl MatrixNormal
    .globl MSC02_OBJ_100
    .type MatrixNormal, @function
    .ent MatrixNormal
MatrixNormal:
    lh      $t0,0($a0)
    lh      $t1,2($a0)
    lh      $t2,4($a0)
    lh      $t3,6($a0)
    lh      $t4,8($a0)
    lh      $t5,10($a0)
    cfc2    $v0,$0
    cfc2    $v1,$2
    cfc2    $a2,$4
    ctc2    $t0,$0
    ctc2    $t1,$2
    ctc2    $t2,$4
    mtc2    $t5,$11
    mtc2    $t3,$9
    mtc2    $t4,$10
    sll     $zero,$zero,0x0
    c2      0x178000c
    mfc2    $t7,$25
    mfc2    $t8,$26
    mfc2    $t9,$27
    ctc2    $t3,$0
    ctc2    $t4,$2
    ctc2    $t5,$4
    sll     $zero,$zero,0x0
    c2      0x178000c
    mtc2    $t3,$0
    mtc2    $t4,$1
    mtc2    $t5,$2
    mfc2    $t0,$25
    mfc2    $t1,$26
    mfc2    $t2,$27
    ctc2    $v0,$0
    ctc2    $v1,$2
    ctc2    $a2,$4
    addu    $a3,$ra,$zero
    jal     MSC02_OBJ_100
    sll     $zero,$zero,0x0
    sh      $t0,0($a1)
    sh      $t1,2($a1)
    sh      $t2,4($a1)
    mfc2    $t0,$0
    mfc2    $t1,$1
    mfc2    $t2,$2
    jal     MSC02_OBJ_100
    sll     $zero,$zero,0x0
    sh      $t0,6($a1)
    sh      $t1,8($a1)
    sh      $t2,10($a1)
    addu    $t0,$t7,$zero
    addu    $t1,$t8,$zero
    jal     MSC02_OBJ_100
    addu    $t2,$t9,$zero
    sh      $t0,12($a1)
    sh      $t1,14($a1)
    sh      $t2,16($a1)
    addu    $ra,$a3,$zero
    jr      $ra
    sll     $zero,$zero,0x0
    .end MatrixNormal
    .size MatrixNormal, . - MatrixNormal

/* FGO_02_OBJ_CC (0x8006122c, 148 bytes) */
    .section .text.FGO_02_OBJ_CC,"ax",@progbits
    .globl FGO_02_OBJ_CC
    .globl sym_800612c0
    .type FGO_02_OBJ_CC, @function
    .ent FGO_02_OBJ_CC
FGO_02_OBJ_CC:
    multu   $t4,$t0
    lh      $t7,4($a0)
    sh      $t6,10($a1)
    mflo    $t8
    sra     $t6,$t8,0xc
    sll     $zero,$zero,0x0
    multu   $t1,$t0
    sh      $t6,4($a1)
    bgez    $t7,.LFGO_02_OBJ_CC_68
    andi    $t9,$t7,0xfff
    mflo    $t8
    sra     $t6,$t8,0xc
    sh      $t6,16($a1)
    negu    $t7,$t7
    bgez    $t7,.LFGO_02_OBJ_CC_40
    andi    $t7,$t7,0xfff
.LFGO_02_OBJ_CC_40:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t8,$t8,0x10
    negu    $t5,$t8
    j       sym_800612c0
    sra     $t2,$t9,0x10
.LFGO_02_OBJ_CC_68:
    mflo    $t7
    sra     $t6,$t7,0xc
    sh      $t6,16($a1)
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t5,$t8,0x10
    sra     $t2,$t9,0x10
    .end FGO_02_OBJ_CC
    .size FGO_02_OBJ_CC, . - FGO_02_OBJ_CC

/* sprintf (0x800613f0, 148 bytes) */
    .section .text.sprintf,"ax",@progbits
    .globl sprintf
    .globl sym_80061b84
    .globl sym_80061c3c
    .type sprintf, @function
    .ent sprintf
sprintf:
    sw      $a1,4($sp)
    sw      $a2,8($sp)
    sw      $a3,12($sp)
    addiu   $sp,$sp,-592
    sw      $s4,568($sp)
    addu    $s4,$a0,$zero
    addiu   $v0,$sp,600
    sw      $ra,584($sp)
    sw      $s7,580($sp)
    sw      $s6,576($sp)
    sw      $s5,572($sp)
    sw      $s3,564($sp)
    sw      $s2,560($sp)
    sw      $s1,556($sp)
    sw      $s0,552($sp)
    sw      $a1,596($sp)
    sw      $v0,544($sp)
    lb      $a1,0($a1)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,sym_80061c3c
    addu    $s2,$zero,$zero
    addiu   $s7,$zero,45
    addiu   $s6,$zero,43
    addiu   $s5,$zero,32
    addiu   $s3,$zero,48
    addiu   $v0,$zero,37
    bne     $a1,$v0,sym_80061b84
    addu    $v0,$s4,$s2
    lui     $a1,0x800e
    addiu   $a1,$a1,-4556
    lw      $v0,0($a1)
    lw      $v1,4($a1)
    lw      $a0,8($a1)
    sw      $v0,528($sp)
    sw      $v1,532($sp)
    sw      $a0,536($sp)
    addiu   $v1,$zero,35
    .end sprintf
    .size sprintf, . - sprintf

/* SPRINTF_OBJ_1C0 (0x800615b0, 156 bytes) */
    .section .text.SPRINTF_OBJ_1C0,"ax",@progbits
    .globl SPRINTF_OBJ_1C0
    .globl SPRINTF_OBJ_25C
    .globl sym_8006166c
    .type SPRINTF_OBJ_1C0, @function
    .ent SPRINTF_OBJ_1C0
SPRINTF_OBJ_1C0:
    bne     $a1,$v0,sym_8006166c
    sll     $zero,$zero,0x0
    lw      $a0,596($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$a0,1
    sw      $v0,596($sp)
    lb      $a1,1($a0)
    addiu   $v0,$zero,42
    bne     $a1,$v0,.LSPRINTF_OBJ_1C0_90
    addiu   $v0,$a1,-48
    lw      $v0,544($sp)
    sll     $zero,$zero,0x0
    lw      $v1,0($v0)
    addiu   $v0,$v0,4
    sw      $v0,544($sp)
    addiu   $v0,$a0,2
    sw      $v1,536($sp)
    sw      $v0,596($sp)
    lb      $a1,2($a0)
    j       SPRINTF_OBJ_25C
    sll     $zero,$zero,0x0
.LSPRINTF_OBJ_1C0_54:
    lw      $v1,536($sp)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    addiu   $v0,$v0,-48
    addu    $v0,$v0,$a1
    sw      $v0,536($sp)
    lw      $v1,596($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v1,1
    sw      $v0,596($sp)
    lb      $a1,1($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a1,-48
.LSPRINTF_OBJ_1C0_90:
    sltiu   $v0,$v0,10
    bne     $v0,$zero,.LSPRINTF_OBJ_1C0_54
    sll     $zero,$zero,0x0
    .end SPRINTF_OBJ_1C0
    .size SPRINTF_OBJ_1C0, . - SPRINTF_OBJ_1C0

/* SPRINTF_OBJ_394 (0x80061784, 236 bytes) */
    .section .text.SPRINTF_OBJ_394,"ax",@progbits
    .globl SPRINTF_OBJ_394
    .globl SPRINTF_OBJ_7A0
    .type SPRINTF_OBJ_394, @function
    .ent SPRINTF_OBJ_394
SPRINTF_OBJ_394:
    lw      $v1,528($sp)
    sll     $zero,$zero,0x0
    srl     $v0,$v1,0x4
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LSPRINTF_OBJ_394_54
    srl     $v0,$v1,0x3
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_394_40
    sll     $zero,$zero,0x0
    lw      $v1,532($sp)
    lb      $v0,529($sp)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSPRINTF_OBJ_394_40
    sw      $v1,536($sp)
    addiu   $v0,$v1,-1
    sw      $v0,536($sp)
.LSPRINTF_OBJ_394_40:
    lw      $v0,536($sp)
    sll     $zero,$zero,0x0
    bgtz    $v0,.LSPRINTF_OBJ_394_54
    addiu   $v0,$zero,1
    sw      $v0,536($sp)
.LSPRINTF_OBJ_394_54:
    beq     $a0,$zero,.LSPRINTF_OBJ_394_98
    addu    $s0,$zero,$zero
    lui     $a1,0xcccc
    ori     $a1,$a1,0xcccd
.LSPRINTF_OBJ_394_64:
    multu   $a0,$a1
    addiu   $s1,$s1,-1
    addiu   $s0,$s0,1
    mfhi    $t0
    srl     $v1,$t0,0x3
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    subu    $v0,$a0,$v0
    addiu   $v0,$v0,48
    addu    $a0,$v1,$zero
    bne     $a0,$zero,.LSPRINTF_OBJ_394_64
    sb      $v0,0($s1)
.LSPRINTF_OBJ_394_98:
    lw      $v0,536($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$v0
    beq     $v0,$zero,.LSPRINTF_OBJ_394_cc
    sll     $zero,$zero,0x0
    addiu   $s1,$s1,-1
.LSPRINTF_OBJ_394_b0:
    sb      $s3,0($s1)
    lw      $v0,536($sp)
    addiu   $s0,$s0,1
    slt     $v0,$s0,$v0
    bne     $v0,$zero,.LSPRINTF_OBJ_394_b0
    addiu   $s1,$s1,-1
    addiu   $s1,$s1,1
.LSPRINTF_OBJ_394_cc:
    lb      $v0,529($sp)
    lbu     $v1,529($sp)
    beq     $v0,$zero,SPRINTF_OBJ_7A0
    sll     $zero,$zero,0x0
    addiu   $s1,$s1,-1
    sb      $v1,0($s1)
    j       SPRINTF_OBJ_7A0
    addiu   $s0,$s0,1
    .end SPRINTF_OBJ_394
    .size SPRINTF_OBJ_394, . - SPRINTF_OBJ_394

/* SPRINTF_OBJ_6C8 (0x80061ab8, 140 bytes) */
    .section .text.SPRINTF_OBJ_6C8,"ax",@progbits
    .globl SPRINTF_OBJ_6C8
    .globl memchr
    .globl SPRINTF_OBJ_7A0
    .globl strlen
    .type SPRINTF_OBJ_6C8, @function
    .ent SPRINTF_OBJ_6C8
SPRINTF_OBJ_6C8:
    lw      $v0,544($sp)
    lw      $v1,528($sp)
    lw      $s1,0($v0)
    addiu   $v0,$v0,4
    sw      $v0,544($sp)
    srl     $v0,$v1,0x2
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_6C8_50
    srl     $v0,$v1,0x4
    lbu     $s0,0($s1)
    andi    $v0,$v0,0x1
    beq     $v0,$zero,SPRINTF_OBJ_7A0
    addiu   $s1,$s1,1
    lw      $v1,536($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$v1,$s0
    beq     $v0,$zero,SPRINTF_OBJ_7A0
    sll     $zero,$zero,0x0
    j       SPRINTF_OBJ_7A0
    addu    $s0,$v1,$zero
.LSPRINTF_OBJ_6C8_50:
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LSPRINTF_OBJ_6C8_6c
    addu    $a0,$s1,$zero
    jal     strlen
    addu    $a0,$s1,$zero
    j       SPRINTF_OBJ_7A0
    addu    $s0,$v0,$zero
.LSPRINTF_OBJ_6C8_6c:
    lw      $a2,536($sp)
    jal     memchr
    addu    $a1,$zero,$zero
    bne     $v0,$zero,SPRINTF_OBJ_7A0
    subu    $s0,$v0,$s1
    lw      $s0,536($sp)
    j       SPRINTF_OBJ_7A0
    sll     $zero,$zero,0x0
    .end SPRINTF_OBJ_6C8
    .size SPRINTF_OBJ_6C8, . - SPRINTF_OBJ_6C8

/* SPRINTF_OBJ_7A0 (0x80061b90, 140 bytes) */
    .section .text.SPRINTF_OBJ_7A0,"ax",@progbits
    .globl SPRINTF_OBJ_7A0
    .globl memmove
    .globl SPRINTF_OBJ_82C
    .type SPRINTF_OBJ_7A0, @function
    .ent SPRINTF_OBJ_7A0
SPRINTF_OBJ_7A0:
    lw      $v0,532($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$v0
    beq     $v0,$zero,.LSPRINTF_OBJ_7A0_50
    addu    $a0,$s4,$s2
    lw      $v0,528($sp)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LSPRINTF_OBJ_7A0_54
    addu    $a1,$s1,$zero
.LSPRINTF_OBJ_7A0_28:
    addu    $v0,$s4,$s2
    sb      $s5,0($v0)
    lw      $v0,532($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sw      $v0,532($sp)
    slt     $v0,$s0,$v0
    bne     $v0,$zero,.LSPRINTF_OBJ_7A0_28
    addiu   $s2,$s2,1
    addu    $a0,$s4,$s2
.LSPRINTF_OBJ_7A0_50:
    addu    $a1,$s1,$zero
.LSPRINTF_OBJ_7A0_54:
    jal     memmove
    addu    $a2,$s0,$zero
    lw      $v0,532($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$v0
    beq     $v0,$zero,SPRINTF_OBJ_82C
    addu    $s2,$s2,$s0
.LSPRINTF_OBJ_7A0_70:
    addu    $v0,$s4,$s2
    sb      $s5,0($v0)
    lw      $v0,532($sp)
    addiu   $s0,$s0,1
    slt     $v0,$s0,$v0
    bne     $v0,$zero,.LSPRINTF_OBJ_7A0_70
    addiu   $s2,$s2,1
    .end SPRINTF_OBJ_7A0
    .size SPRINTF_OBJ_7A0, . - SPRINTF_OBJ_7A0

/* GsPresetObject (0x8007c4fc, 236 bytes) */
    .section .text.GsPresetObject,"ax",@progbits
    .globl GsPresetObject
    .globl PRESET_OBJ_108
    .globl sym_8007c5fc
    .globl sym_8007cdf0
    .type GsPresetObject, @function
    .ent GsPresetObject
GsPresetObject:
    addiu   $sp,$sp,-80
    sw      $s7,68($sp)
    addu    $s7,$zero,$zero
    sw      $s8,72($sp)
    addu    $s8,$zero,$zero
    sw      $s0,40($sp)
    addu    $s0,$a1,$zero
    sw      $s4,56($sp)
    addu    $s4,$s0,$zero
    sw      $ra,76($sp)
    sw      $s6,64($sp)
    sw      $s5,60($sp)
    sw      $s3,52($sp)
    sw      $s2,48($sp)
    sw      $s1,44($sp)
    lw      $v0,8($a0)
    addu    $t1,$zero,$zero
    lw      $s2,16($v0)
    lw      $v0,20($v0)
    addu    $a2,$zero,$zero
    sw      $v0,16($sp)
    sw      $s0,12($a0)
    lw      $t2,16($sp)
    sll     $zero,$zero,0x0
    beq     $t2,$zero,sym_8007cdf0
    addiu   $s0,$s0,8
    lui     $a3,0x1000
    lui     $s6,0xff00
    lui     $s3,0x80
    ori     $s3,$s3,0x8080
    lui     $s5,0xfe00
    addiu   $s1,$s2,16
    lw      $v0,0($s2)
    addu    $v1,$s8,$zero
    addu    $t0,$s7,$zero
    andi    $a0,$v1,0xff
    srl     $s8,$v0,0x18
    srl     $v0,$v0,0x10
    beq     $a0,$zero,sym_8007c5fc
    andi    $s7,$v0,0x4
    bne     $s8,$a0,.LGsPresetObject_b0
    andi    $v0,$t0,0xff
    beq     $s7,$v0,sym_8007c5fc
    sll     $zero,$zero,0x0
.LGsPresetObject_b0:
    beq     $v0,$zero,.LGsPresetObject_d4
    lui     $v0,0xff
    ori     $v0,$v0,0xffff
    sll     $v1,$a0,0x18
    and     $v0,$s0,$v0
    or      $v0,$v0,$a3
    or      $v1,$v1,$v0
    j       PRESET_OBJ_108
    sw      $v1,0($s4)
.LGsPresetObject_d4:
    lui     $v1,0xff
    ori     $v1,$v1,0xffff
    sll     $v0,$a0,0x18
    and     $v1,$s0,$v1
    or      $v0,$v0,$v1
    sw      $v0,0($s4)
    .end GsPresetObject
    .size GsPresetObject, . - GsPresetObject

/* PRESET_OBJ_244 (0x8007c724, 164 bytes) */
    .section .text.PRESET_OBJ_244,"ax",@progbits
    .globl PRESET_OBJ_244
    .globl PRESET_OBJ_748
    .globl sym_8007cc24
    .type PRESET_OBJ_244, @function
    .ent PRESET_OBJ_244
PRESET_OBJ_244:
    beq     $s7,$zero,.LPRESET_OBJ_244_58
    sll     $zero,$zero,0x0
    lw      $v0,-12($s1)
    addiu   $s2,$s2,28
    or      $v0,$v0,$a3
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    or      $v0,$v0,$a3
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    j       sym_8007cc24
    addiu   $s0,$s0,8
.LPRESET_OBJ_244_58:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,20
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-12($s1)
    j       PRESET_OBJ_748
    addiu   $s1,$s1,20
    .end PRESET_OBJ_244
    .size PRESET_OBJ_244, . - PRESET_OBJ_244

/* PRESET_OBJ_2E8 (0x8007c7c8, 152 bytes) */
    .section .text.PRESET_OBJ_2E8,"ax",@progbits
    .globl PRESET_OBJ_2E8
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_2E8, @function
    .ent PRESET_OBJ_2E8
PRESET_OBJ_2E8:
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,28
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       PRESET_OBJ_8C0
    addiu   $s1,$s1,28
    .end PRESET_OBJ_2E8
    .size PRESET_OBJ_2E8, . - PRESET_OBJ_2E8

/* PRESET_OBJ_3C0 (0x8007c8a0, 144 bytes) */
    .section .text.PRESET_OBJ_3C0,"ax",@progbits
    .globl PRESET_OBJ_3C0
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_3C0, @function
    .ent PRESET_OBJ_3C0
PRESET_OBJ_3C0:
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,0($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,32
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s1)
    j       PRESET_OBJ_8C0
    addiu   $s1,$s1,32
    .end PRESET_OBJ_3C0
    .size PRESET_OBJ_3C0, . - PRESET_OBJ_3C0

/* PRESET_OBJ_4B4 (0x8007c994, 192 bytes) */
    .section .text.PRESET_OBJ_4B4,"ax",@progbits
    .globl PRESET_OBJ_4B4
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_4B4, @function
    .ent PRESET_OBJ_4B4
PRESET_OBJ_4B4:
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,0($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,36
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,4
    sw      $s3,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s1)
    j       PRESET_OBJ_8C0
    addiu   $s1,$s1,36
    .end PRESET_OBJ_4B4
    .size PRESET_OBJ_4B4, . - PRESET_OBJ_4B4

/* PRESET_OBJ_63C (0x8007cb1c, 172 bytes) */
    .section .text.PRESET_OBJ_63C,"ax",@progbits
    .globl PRESET_OBJ_63C
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_63C, @function
    .ent PRESET_OBJ_63C
PRESET_OBJ_63C:
    lw      $v0,0($s2)
    lw      $v1,0($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,4($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,8($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,36
    lw      $v1,0($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,4($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,8($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       PRESET_OBJ_8C0
    addiu   $s1,$s1,36
    .end PRESET_OBJ_63C
    .size PRESET_OBJ_63C, . - PRESET_OBJ_63C

/* PRESET_OBJ_754 (0x8007cc34, 148 bytes) */
    .section .text.PRESET_OBJ_754,"ax",@progbits
    .globl PRESET_OBJ_754
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_754, @function
    .ent PRESET_OBJ_754
PRESET_OBJ_754:
    lw      $v0,0($s2)
    lw      $v1,4($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,0($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,32
    lw      $v1,4($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s1)
    j       PRESET_OBJ_8C0
    addiu   $s1,$s1,32
    .end PRESET_OBJ_754
    .size PRESET_OBJ_754, . - PRESET_OBJ_754

/* PRESET_OBJ_7E8 (0x8007ccc8, 216 bytes) */
    .section .text.PRESET_OBJ_7E8,"ax",@progbits
    .globl PRESET_OBJ_7E8
    .type PRESET_OBJ_7E8, @function
    .ent PRESET_OBJ_7E8
PRESET_OBJ_7E8:
    lw      $v0,0($s2)
    lw      $v1,4($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,8($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,12($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,16($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,0($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,44
    lw      $v1,4($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,8($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,12($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,16($s1)
    addiu   $s0,$s0,4
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s1)
    addiu   $s1,$s1,44
    .end PRESET_OBJ_7E8
    .size PRESET_OBJ_7E8, . - PRESET_OBJ_7E8

/* FGO_03_OBJ_CC (0x8007e2b4, 148 bytes) */
    .section .text.FGO_03_OBJ_CC,"ax",@progbits
    .globl FGO_03_OBJ_CC
    .globl sym_8007e348
    .type FGO_03_OBJ_CC, @function
    .ent FGO_03_OBJ_CC
FGO_03_OBJ_CC:
    multu   $t3,$t1
    lh      $t7,4($a0)
    sh      $t6,12($a1)
    mflo    $t8
    sra     $t6,$t8,0xc
    sll     $zero,$zero,0x0
    multu   $t0,$t1
    sh      $t6,14($a1)
    bgez    $t7,.LFGO_03_OBJ_CC_68
    andi    $t9,$t7,0xfff
    mflo    $t8
    sra     $t6,$t8,0xc
    sh      $t6,16($a1)
    negu    $t7,$t7
    bgez    $t7,.LFGO_03_OBJ_CC_40
    andi    $t7,$t7,0xfff
.LFGO_03_OBJ_CC_40:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t8,$t8,0x10
    negu    $t5,$t8
    j       sym_8007e348
    sra     $t2,$t9,0x10
.LFGO_03_OBJ_CC_68:
    mflo    $t7
    sra     $t6,$t7,0xc
    sh      $t6,16($a1)
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t5,$t8,0x10
    sra     $t2,$t9,0x10
    .end FGO_03_OBJ_CC
    .size FGO_03_OBJ_CC, . - FGO_03_OBJ_CC

/* GsSetOffset (0x800979f8, 212 bytes) */
    .section .text.GsSetOffset,"ax",@progbits
    .globl GsSetOffset
    .globl GS_004_OBJ_D4
    .globl PutDrawEnv
    .globl sym_80036648
    .type GsSetOffset, @function
    .ent GsSetOffset
GsSetOffset:
    addiu   $sp,$sp,-32
    lui     $v0,0x800e
    lh      $v0,21694($v0)
    addu    $a2,$a1,$zero
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    beq     $v0,$zero,.LGsSetOffset_80
    sw      $s0,16($sp)
    lui     $v1,0x800e
    lh      $v1,21692($v1)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x1
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lhu     $v0,21536($v0)
    lui     $a1,0x800e
    addiu   $a1,$a1,21568
    lui     $at,0x800e
    sh      $zero,21678($at)
    lui     $at,0x800e
    sh      $zero,21676($at)
    addu    $v0,$v0,$a0
    sh      $v0,0($a1)
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lhu     $v0,21540($v0)
    addiu   $a0,$a1,-8
    addu    $v0,$v0,$a2
    jal     PutDrawEnv
    sh      $v0,2($a1)
    j       GS_004_OBJ_D4
    sll     $zero,$zero,0x0
.LGsSetOffset_80:
    lui     $a1,0x800e
    lh      $a1,21692($a1)
    lui     $v0,0x800e
    bne     $a1,$zero,.LGsSetOffset_98
    addiu   $v0,$v0,21536
    addiu   $v0,$v0,2
.LGsSetOffset_98:
    lh      $v0,0($v0)
    lui     $v1,0x800e
    addiu   $v1,$v1,21540
    bne     $a1,$zero,.LGsSetOffset_b0
    addu    $s1,$a0,$v0
    addiu   $v1,$v1,2
.LGsSetOffset_b0:
    lh      $s0,0($v1)
    addu    $a0,$s1,$zero
    addu    $s0,$a2,$s0
    jal     sym_80036648
    addu    $a1,$s0,$zero
    lui     $at,0x800e
    sh      $s1,21676($at)
    lui     $at,0x800e
    sh      $s0,21678($at)
    .end GsSetOffset
    .size GsSetOffset, . - GsSetOffset

/* GsSwapDispBuff (0x80097ae8, 164 bytes) */
    .section .text.GsSwapDispBuff,"ax",@progbits
    .globl GsSwapDispBuff
    .globl GsSetDrawBuffClip
    .globl GsSetDrawBuffOffset
    .globl SetDispMask
    .globl sym_80038d94
    .type GsSwapDispBuff, @function
    .ent GsSwapDispBuff
GsSwapDispBuff:
    lui     $v0,0x800e
    lh      $v0,21692($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $v0,$v0,0x1
    lui     $v1,0x800e
    addu    $v1,$v1,$v0
    lhu     $v1,21536($v1)
    lui     $a0,0x800e
    addiu   $a0,$a0,21656
    sh      $v1,0($a0)
    lui     $at,0x800e
    addu    $at,$at,$v0
    lhu     $v0,21540($at)
    jal     sym_80038d94
    sh      $v0,2($a0)
    jal     SetDispMask
    addiu   $a0,$zero,1
    lui     $v0,0x800e
    lw      $v0,21688($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    addu    $v1,$v0,$zero
    lui     $at,0x800e
    bne     $v1,$zero,.LGsSwapDispBuff_6c
    sw      $v1,21688($at)
    addiu   $v1,$zero,1
.LGsSwapDispBuff_6c:
    lui     $v0,0x800e
    lh      $v0,21692($v0)
    lui     $at,0x800e
    sw      $v1,21688($at)
    sltiu   $v0,$v0,1
    lui     $at,0x800e
    jal     GsSetDrawBuffClip
    sh      $v0,21692($at)
    jal     GsSetDrawBuffOffset
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsSwapDispBuff
    .size GsSwapDispBuff, . - GsSwapDispBuff
