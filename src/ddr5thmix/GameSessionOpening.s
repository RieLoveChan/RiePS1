# DDR 5th Mix game-session opening states 0-3 callbacks.
# Semantic MIPS reconstruction from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat

.section .text.FUN_80070664, "ax", @progbits
.globl FUN_80070664
.type FUN_80070664, @function
FUN_80070664:
.L80070664:
    addiu	$sp,$sp,-24
.L80070668:
    lui	$v1,0x800f
.L8007066c:
    li	$v0,26
.L80070670:
    sh	$v0,10504($v1)
.L80070674:
    lui	$v0,0x8011
.L80070678:
    lui	$a0,0x8011
.L8007067c:
    addiu	$a0,$a0,27296
.L80070680:
    sw	$ra,16($sp)
.L80070684:
    sw	$zero,7844($v0)
.L80070688:
    lw	$v0,392($a0)
.L8007068c:
    li	$v1,-241
.L80070690:
    sb	$zero,388($a0)
.L80070694:
    and	$v0,$v0,$v1
.L80070698:
    ori	$v0,$v0,0x20
.L8007069c:
    jal	FUN_8007f07c
.L800706a0:
    sw	$v0,392($a0)
.L800706a4:
    jal	FUN_8006cbd4
.L800706a8:
    nop
.L800706ac:
    lui	$v0,0x800f
.L800706b0:
    jal	FUN_8004d080
.L800706b4:
    sw	$zero,10492($v0)
.L800706b8:
    li	$a0,8
.L800706bc:
    jal	FUN_8007b778
.L800706c0:
    li	$a1,1
.L800706c4:
    jal	FUN_80023170
.L800706c8:
    nop
.L800706cc:
    lw	$ra,16($sp)
.L800706d0:
    nop
.L800706d4:
    jr	$ra
.L800706d8:
    addiu	$sp,$sp,24
.size FUN_80070664, .-FUN_80070664

.section .text.FUN_8006ede8, "ax", @progbits
.globl FUN_8006ede8
.type FUN_8006ede8, @function
FUN_8006ede8:
.L8006ede8:
    addiu	$sp,$sp,-24
.L8006edec:
    lui	$v0,0x800f
.L8006edf0:
    sw	$s0,16($sp)
.L8006edf4:
    addiu	$s0,$v0,10376
.L8006edf8:
    sw	$ra,20($sp)
.L8006edfc:
    lw	$v1,116($s0)
.L8006ee00:
    nop
.L8006ee04:
    sll	$v0,$v1,0x2
.L8006ee08:
    addu	$v0,$v0,$v1
.L8006ee0c:
    sll	$a0,$v0,0x1
.L8006ee10:
    slti	$v0,$v1,223
.L8006ee14:
    bnez	$v0,.L8006ee24
.L8006ee18:
    li	$v0,238
.L8006ee1c:
    subu	$v0,$v0,$v1
.L8006ee20:
    sll	$a0,$v0,0x3
.L8006ee24:
    bgez	$a0,.L8006ee34
.L8006ee28:
    slti	$v0,$a0,129
.L8006ee2c:
    addu $a0,$zero,$zero
.L8006ee30:
    slti	$v0,$a0,129
.L8006ee34:
    bnez	$v0,.L8006ee40
.L8006ee38:
    nop
.L8006ee3c:
    li	$a0,128
.L8006ee40:
    jal	FUN_8004d0a0
.L8006ee44:
    nop
.L8006ee48:
    jal	FUN_8007638c
.L8006ee4c:
    nop
.L8006ee50:
    lw	$v0,116($s0)
.L8006ee54:
    nop
.L8006ee58:
    slti	$v0,$v0,222
.L8006ee5c:
    beqz	$v0,.L8006ee94
.L8006ee60:
    lui	$v0,0x800e
.L8006ee64:
    addiu	$v1,$v0,15192
.L8006ee68:
    lw	$v0,8($v1)
.L8006ee6c:
    nop
.L8006ee70:
    andi	$v0,$v0,0x820
.L8006ee74:
    bnez	$v0,.L8006ee90
.L8006ee78:
    li	$v0,222
.L8006ee7c:
    lw	$v0,24($v1)
.L8006ee80:
    nop
.L8006ee84:
    andi	$v0,$v0,0x820
.L8006ee88:
    beqz	$v0,.L8006ee94
.L8006ee8c:
    li	$v0,222
.L8006ee90:
    sw	$v0,116($s0)
.L8006ee94:
    lui	$v0,0x800f
.L8006ee98:
    lw	$v1,10492($v0)
.L8006ee9c:
    nop
.L8006eea0:
    slti	$v0,$v1,241
.L8006eea4:
    bnez	$v0,.L8006eed8
.L8006eea8:
    slti	$v0,$v1,240
.L8006eeac:
    lui	$v1,0x800e
.L8006eeb0:
    li	$v0,1
.L8006eeb4:
    sb	$v0,15307($v1)
.L8006eeb8:
    jal	FUN_8007638c
.L8006eebc:
    nop
.L8006eec0:
    bnez	$v0,.L8006eeec
.L8006eec4:
    li	$v0,1
.L8006eec8:
    jal	FUN_800358f8
.L8006eecc:
    addu $a0,$zero,$zero
.L8006eed0:
    j	.L8006eeb8
.L8006eed4:
    nop
.L8006eed8:
    beqz	$v0,.L8006eeec
.L8006eedc:
    addu $v0,$zero,$zero
.L8006eee0:
    jal	FUN_8006e43c
.L8006eee4:
    nop
.L8006eee8:
    addu $v0,$zero,$zero
.L8006eeec:
    lw	$ra,20($sp)
.L8006eef0:
    lw	$s0,16($sp)
.L8006eef4:
    jr	$ra
.L8006eef8:
    addiu	$sp,$sp,24
.size FUN_8006ede8, .-FUN_8006ede8

.section .text.FUN_800706dc, "ax", @progbits
.globl FUN_800706dc
.type FUN_800706dc, @function
FUN_800706dc:
.L800706dc:
    addiu	$sp,$sp,-24
.L800706e0:
    sw	$ra,20($sp)
.L800706e4:
    jal	FUN_8004d158
.L800706e8:
    sw	$s0,16($sp)
.L800706ec:
    jal	FUN_8002a8b0
.L800706f0:
    lui	$s0,0x800f
.L800706f4:
    jal	FUN_8002a8b0
.L800706f8:
    li	$a0,254
.L800706fc:
    addiu	$s0,$s0,10504
.L80070700:
    li	$v0,1
.L80070704:
    jal	FUN_80049b84
.L80070708:
    sb	$v0,20($s0)
.L8007070c:
    li	$v1,0x8000
.L80070710:
    addu	$v1,$s0,$v1
.L80070714:
    andi	$v0,$v0,0x1
.L80070718:
    sb	$v0,4778($v1)
.L8007071c:
    sb	$v0,38($s0)
.L80070720:
    lw	$ra,20($sp)
.L80070724:
    lw	$s0,16($sp)
.L80070728:
    jr	$ra
.L8007072c:
    addiu	$sp,$sp,24
.size FUN_800706dc, .-FUN_800706dc

.section .text.FUN_80070730, "ax", @progbits
.globl FUN_80070730
.type FUN_80070730, @function
FUN_80070730:
.L80070730:
    addiu	$sp,$sp,-24
.L80070734:
    lui	$v0,0x800f
.L80070738:
    lui	$a1,0x8011
.L8007073c:
    addiu	$a1,$a1,27296
.L80070740:
    sw	$ra,16($sp)
.L80070744:
    sw	$zero,10492($v0)
.L80070748:
    lw	$v0,392($a1)
.L8007074c:
    li	$v1,-241
.L80070750:
    and	$v0,$v0,$v1
.L80070754:
    ori	$v0,$v0,0x20
.L80070758:
    jal	FUN_80075580
.L8007075c:
    sw	$v0,392($a1)
.L80070760:
    jal	FUN_8002a8b0
.L80070764:
    nop
.L80070768:
    jal	FUN_800236bc
.L8007076c:
    li	$a0,1
.L80070770:
    jal	FUN_80023170
.L80070774:
    nop
.L80070778:
    lw	$ra,16($sp)
.L8007077c:
    nop
.L80070780:
    jr	$ra
.L80070784:
    addiu	$sp,$sp,24
.size FUN_80070730, .-FUN_80070730

.section .text.FUN_80070788, "ax", @progbits
.globl FUN_80070788
.type FUN_80070788, @function
FUN_80070788:
.L80070788:
    addiu	$sp,$sp,-32
.L8007078c:
    sw	$s2,24($sp)
.L80070790:
    addu $s2,$a0,$zero
.L80070794:
    sw	$s0,16($sp)
.L80070798:
    addu $s0,$zero,$zero
.L8007079c:
    lui	$v0,0x800f
.L800707a0:
    sw	$s1,20($sp)
.L800707a4:
    addiu	$s1,$v0,10376
.L800707a8:
    sw	$ra,28($sp)
.L800707ac:
    jal	FUN_80085c54
.L800707b0:
    addu $a0,$s0,$zero
.L800707b4:
    beqz	$v0,.L800707dc
.L800707b8:
    nop
.L800707bc:
    lw	$v0,108($s1)
.L800707c0:
    nop
.L800707c4:
    srl	$v0,$v0,0x5
.L800707c8:
    andi	$v0,$v0,0x1
.L800707cc:
    beqz	$v0,.L800707dc
.L800707d0:
    nop
.L800707d4:
    jal	FUN_8002a8b0
.L800707d8:
    addu $a0,$s0,$zero
.L800707dc:
    addiu	$s0,$s0,1
.L800707e0:
    slti	$v0,$s0,2
.L800707e4:
    bnez	$v0,.L800707ac
.L800707e8:
    nop
.L800707ec:
    lui	$s0,0x800f
.L800707f0:
    addiu	$s0,$s0,10376
.L800707f4:
    lw	$a0,108($s0)
.L800707f8:
    jal	FUN_8002a8b0
.L800707fc:
    srl	$a0,$a0,0x4
.L80070800:
    lw	$v0,112($s0)
.L80070804:
    nop
.L80070808:
    andi	$v0,$v0,0x3ff
.L8007080c:
    bnez	$v0,.L8007081c
.L80070810:
    nop
.L80070814:
    jal	FUN_8002a8b0
.L80070818:
    nop
.L8007081c:
    jal	FUN_80075604
.L80070820:
    addu $a0,$s2,$zero
.L80070824:
    bnez	$v0,.L80070838
.L80070828:
    li	$v0,5
.L8007082c:
    jal	FUN_8006e43c
.L80070830:
    nop
.L80070834:
    li	$v0,1
.L80070838:
    lw	$ra,28($sp)
.L8007083c:
    lw	$s2,24($sp)
.L80070840:
    lw	$s1,20($sp)
.L80070844:
    lw	$s0,16($sp)
.L80070848:
    jr	$ra
.L8007084c:
    addiu	$sp,$sp,32
.size FUN_80070788, .-FUN_80070788

.section .text.FUN_8006eefc, "ax", @progbits
.globl FUN_8006eefc
.type FUN_8006eefc, @function
FUN_8006eefc:
.L8006eefc:
    addiu	$sp,$sp,-24
.L8006ef00:
    sw	$s0,16($sp)
.L8006ef04:
    addu $s0,$a0,$zero
.L8006ef08:
    sw	$ra,20($sp)
.L8006ef0c:
    jal	FUN_8002a8b0
.L8006ef10:
    li	$a0,1
.L8006ef14:
    jal	FUN_800756ac
.L8006ef18:
    addu $a0,$s0,$zero
.L8006ef1c:
    lui	$v0,0x800f
.L8006ef20:
    addiu	$a1,$v0,10504
.L8006ef24:
    lb	$v0,8($a1)
.L8006ef28:
    lb	$v1,9($a1)
.L8006ef2c:
    nop
.L8006ef30:
    addu	$v0,$v0,$v1
.L8006ef34:
    lb	$v1,10($a1)
.L8006ef38:
    lb	$a0,11($a1)
.L8006ef3c:
    subu	$v0,$v0,$v1
.L8006ef40:
    subu	$v1,$v0,$a0
.L8006ef44:
    addiu	$v0,$v1,-1
.L8006ef48:
    bgtz	$v0,.L8006ef54
.L8006ef4c:
    li	$a2,1
.L8006ef50:
    addu $a2,$v1,$zero
.L8006ef54:
    lb	$v0,23($a1)
.L8006ef58:
    nop
.L8006ef5c:
    bnez	$v0,.L8006ef84
.L8006ef60:
    lui	$v0,0x800f
.L8006ef64:
    lw	$v0,4($a1)
.L8006ef68:
    nop
.L8006ef6c:
    lw	$v0,12($v0)
.L8006ef70:
    nop
.L8006ef74:
    andi	$v0,$v0,0x100
.L8006ef78:
    beqz	$v0,.L8006ef84
.L8006ef7c:
    lui	$v0,0x800f
.L8006ef80:
    sll	$a2,$a2,0x1
.L8006ef84:
    addiu	$a1,$v0,10504
.L8006ef88:
    lb	$v0,8($a1)
.L8006ef8c:
    lb	$v1,9($a1)
.L8006ef90:
    nop
.L8006ef94:
    addu	$v0,$v0,$v1
.L8006ef98:
    lb	$v1,10($a1)
.L8006ef9c:
    lb	$a0,11($a1)
.L8006efa0:
    subu	$v0,$v0,$v1
.L8006efa4:
    subu	$a0,$v0,$a0
.L8006efa8:
    slt	$v0,$a0,$a2
.L8006efac:
    lbu	$v1,10($a1)
.L8006efb0:
    beqz	$v0,.L8006efc0
.L8006efb4:
    addu	$v0,$v1,$a2
.L8006efb8:
    addu $a2,$a0,$zero
.L8006efbc:
    addu	$v0,$v1,$a2
.L8006efc0:
    sb	$v0,10($a1)
.L8006efc4:
    lw	$ra,20($sp)
.L8006efc8:
    lw	$s0,16($sp)
.L8006efcc:
    jr	$ra
.L8006efd0:
    addiu	$sp,$sp,24
.size FUN_8006eefc, .-FUN_8006eefc

.section .text.FUN_80070260, "ax", @progbits
.globl FUN_80070260
.type FUN_80070260, @function
FUN_80070260:
.L80070260:
    addiu	$sp,$sp,-24
.L80070264:
    addu $a1,$zero,$zero
.L80070268:
    lui	$v0,0x800f
.L8007026c:
    addiu	$a0,$v0,10504
.L80070270:
    lui	$v1,0x800f
.L80070274:
    sw	$zero,10492($v1)
.L80070278:
    li	$v1,7
.L8007027c:
    sw	$ra,16($sp)
.L80070280:
    sh	$v1,10504($v0)
.L80070284:
    lw	$v0,180($a0)
.L80070288:
    addiu	$a1,$a1,1
.L8007028c:
    sw	$zero,4760($a0)
.L80070290:
    sw	$v0,216($a0)
.L80070294:
    li	$v0,0x9284
.L80070298:
    addu	$a0,$a0,$v0
.L8007029c:
    slti	$v0,$a1,2
.L800702a0:
    bnez	$v0,.L80070284
.L800702a4:
    lui	$v1,0x800f
.L800702a8:
    addiu	$v1,$v1,10504
.L800702ac:
    lui	$v0,0x1
.L800702b0:
    addu	$a1,$v1,$v0
.L800702b4:
    lhu	$v0,12($v1)
.L800702b8:
    lw	$a0,10092($a1)
.L800702bc:
    addiu	$v0,$v0,1
.L800702c0:
    sh	$v0,12($v1)
.L800702c4:
    slti	$v0,$a0,9999
.L800702c8:
    beqz	$v0,.L800702d4
.L800702cc:
    addiu	$v0,$a0,1
.L800702d0:
    sw	$v0,10092($a1)
.L800702d4:
    jal	FUN_8007fab0
.L800702d8:
    nop
.L800702dc:
    jal	FUN_800991e0
.L800702e0:
    nop
.L800702e4:
    lw	$ra,16($sp)
.L800702e8:
    nop
.L800702ec:
    jr	$ra
.L800702f0:
    addiu	$sp,$sp,24
.size FUN_80070260, .-FUN_80070260

.section .text.FUN_80070850, "ax", @progbits
.globl FUN_80070850
.type FUN_80070850, @function
FUN_80070850:
.L80070850:
    lui	$v0,0x800f
.L80070854:
    lw	$v0,10508($v0)
.L80070858:
    addiu	$sp,$sp,-48
.L8007085c:
    sw	$ra,40($sp)
.L80070860:
    sw	$s1,36($sp)
.L80070864:
    sw	$s0,32($sp)
.L80070868:
    lhu	$a0,4($v0)
.L8007086c:
    jal	FUN_80098f8c
.L80070870:
    nop
.L80070874:
    slti	$v0,$v0,4
.L80070878:
    beqz	$v0,.L80070888
.L8007087c:
    lui	$v0,0x800f
.L80070880:
    j	.L80070940
.L80070884:
    sw	$zero,10492($v0)
.L80070888:
    lui	$v0,0x800f
.L8007088c:
    addiu	$s0,$v0,10376
.L80070890:
    lw	$v0,116($s0)
.L80070894:
    li	$s1,1
.L80070898:
    bne	$v0,$s1,.L800708fc
.L8007089c:
    lui	$v0,0x8011
.L800708a0:
    lw	$a0,112($s0)
.L800708a4:
    lui	$v0,0xaaaa
.L800708a8:
    ori	$v0,$v0,0xaaab
.L800708ac:
    multu	$a0,$v0
.L800708b0:
    lui	$v0,0x8002
.L800708b4:
    addiu	$t0,$v0,-13632
.L800708b8:
    lw	$a1,0($t0)
.L800708bc:
    lw	$a2,4($t0)
.L800708c0:
    lw	$a3,8($t0)
.L800708c4:
    sw	$a1,16($sp)
.L800708c8:
    sw	$a2,20($sp)
.L800708cc:
    sw	$a3,24($sp)
.L800708d0:
    mfhi	$a1
.L800708d4:
    srlv	$v1,$a1,$s1
.L800708d8:
    sllv	$v0,$v1,$s1
.L800708dc:
    addu	$v0,$v0,$v1
.L800708e0:
    subu	$a0,$a0,$v0
.L800708e4:
    sll	$a0,$a0,0x2
.L800708e8:
    addu	$v0,$sp,$a0
.L800708ec:
    lhu	$a0,16($v0)
.L800708f0:
    jal	FUN_80028358
.L800708f4:
    nop
.L800708f8:
    lui	$v0,0x8011
.L800708fc:
    jal	FUN_8007fdec
.L80070900:
    sb	$s1,27686($v0)
.L80070904:
    li	$v1,-1
.L80070908:
    beq	$v0,$v1,.L8007092c
.L8007090c:
    lui	$v0,0x800f
.L80070910:
    lw	$v0,116($s0)
.L80070914:
    nop
.L80070918:
    slti	$v0,$v0,41
.L8007091c:
    bnez	$v0,.L8007092c
.L80070920:
    lui	$v0,0x800f
.L80070924:
    j	.L80070944
.L80070928:
    li	$v0,6
.L8007092c:
    lw	$v1,10492($v0)
.L80070930:
    nop
.L80070934:
    slti	$v1,$v1,1801
.L80070938:
    beqz	$v1,.L80070944
.L8007093c:
    li	$v0,7
.L80070940:
    li	$v0,2
.L80070944:
    lw	$ra,40($sp)
.L80070948:
    lw	$s1,36($sp)
.L8007094c:
    lw	$s0,32($sp)
.L80070950:
    jr	$ra
.L80070954:
    addiu	$sp,$sp,48
.size FUN_80070850, .-FUN_80070850

.section .text.FUN_80070958, "ax", @progbits
.globl FUN_80070958
.type FUN_80070958, @function
FUN_80070958:
.L80070958:
    lui	$v0,0x800f
.L8007095c:
    addiu	$v0,$v0,10504
.L80070960:
    lh	$v1,28($v0)
.L80070964:
    nop
.L80070968:
    addu	$v1,$v1,$v0
.L8007096c:
    lui	$v0,0x1
.L80070970:
    addu	$v1,$v1,$v0
.L80070974:
    li	$v0,3
.L80070978:
    jr	$ra
.L8007097c:
    sb	$v0,9512($v1)
.size FUN_80070958, .-FUN_80070958

.section .text.FUN_80070980, "ax", @progbits
.globl FUN_80070980
.type FUN_80070980, @function
FUN_80070980:
.L80070980:
    addiu	$sp,$sp,-24
.L80070984:
    lui	$v0,0x800f
.L80070988:
    sw	$s0,16($sp)
.L8007098c:
    lui	$s0,0x800f
.L80070990:
    sw	$zero,10492($v0)
.L80070994:
    li	$v0,8
.L80070998:
    sh	$v0,10504($s0)
.L8007099c:
    sw	$ra,20($sp)
.L800709a0:
    jal	FUN_800aadac
.L800709a4:
    addiu	$s0,$s0,10504
.L800709a8:
    jal	FUN_800703e0
.L800709ac:
    nop
.L800709b0:
    lw	$v0,4($s0)
.L800709b4:
    nop
.L800709b8:
    lbu	$v0,3($v0)
.L800709bc:
    li	$a0,771
.L800709c0:
    sll	$v0,$v0,0x18
.L800709c4:
    sra	$v0,$v0,0x18
.L800709c8:
    jal	FUN_80028358
.L800709cc:
    sh	$v0,28($s0)
.L800709d0:
    lw	$ra,20($sp)
.L800709d4:
    lw	$s0,16($sp)
.L800709d8:
    jr	$ra
.L800709dc:
    addiu	$sp,$sp,24
.size FUN_80070980, .-FUN_80070980

.section .text.FUN_800709e0, "ax", @progbits
.globl FUN_800709e0
.type FUN_800709e0, @function
FUN_800709e0:
.L800709e0:
    addiu	$sp,$sp,-24
.L800709e4:
    lui	$v1,0x8011
.L800709e8:
    lui	$v0,0x800f
.L800709ec:
    lw	$a0,10492($v0)
.L800709f0:
    li	$v0,1
.L800709f4:
    sw	$ra,16($sp)
.L800709f8:
    sb	$v0,27686($v1)
.L800709fc:
    slti	$v0,$a0,60
.L80070a00:
    beqz	$v0,.L80070a18
.L80070a04:
    li	$v0,60
.L80070a08:
    jal	FUN_8007fdec
.L80070a0c:
    nop
.L80070a10:
    j	.L80070a34
.L80070a14:
    lui	$v0,0x800f
.L80070a18:
    bne	$a0,$v0,.L80070a28
.L80070a1c:
    li	$a0,2
.L80070a20:
    jal	FUN_8007b778
.L80070a24:
    li	$a1,1
.L80070a28:
    jal	FUN_8007638c
.L80070a2c:
    nop
.L80070a30:
    lui	$v0,0x800f
.L80070a34:
    lw	$v0,10492($v0)
.L80070a38:
    nop
.L80070a3c:
    slti	$v0,$v0,90
.L80070a40:
    beqz	$v0,.L80070a70
.L80070a44:
    lui	$v1,0x800e
.L80070a48:
    li	$v0,1
.L80070a4c:
    sb	$v0,15307($v1)
.L80070a50:
    jal	FUN_8007638c
.L80070a54:
    nop
.L80070a58:
    bnez	$v0,.L80070a74
.L80070a5c:
    li	$v0,3
.L80070a60:
    jal	FUN_800358f8
.L80070a64:
    addu $a0,$zero,$zero
.L80070a68:
    j	.L80070a50
.L80070a6c:
    nop
.L80070a70:
    li	$v0,2
.L80070a74:
    lw	$ra,16($sp)
.L80070a78:
    nop
.L80070a7c:
    jr	$ra
.L80070a80:
    addiu	$sp,$sp,24
.size FUN_800709e0, .-FUN_800709e0

.section .text.FUN_80070a84, "ax", @progbits
.globl FUN_80070a84
.type FUN_80070a84, @function
FUN_80070a84:
.L80070a84:
    addiu	$sp,$sp,-24
.L80070a88:
    sw	$ra,16($sp)
.L80070a8c:
    jal	FUN_8007f07c
.L80070a90:
    nop
.L80070a94:
    jal	FUN_80028358
.L80070a98:
    li	$a0,769
.L80070a9c:
    lw	$ra,16($sp)
.L80070aa0:
    nop
.L80070aa4:
    jr	$ra
.L80070aa8:
    addiu	$sp,$sp,24
.size FUN_80070a84, .-FUN_80070a84
