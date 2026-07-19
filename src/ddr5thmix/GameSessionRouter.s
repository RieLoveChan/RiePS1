# DDR 5th Mix game-session router and lifecycle callbacks.
# Semantic MIPS reconstruction from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat

.section .text.FUN_8004b800, "ax", @progbits
.globl FUN_8004b800
.type FUN_8004b800, @function
FUN_8004b800:
.L8004b800:
    addiu	$sp,$sp,-48
.L8004b804:
    sw	$s5,36($sp)
.L8004b808:
    addu $s5,$a0,$zero
.L8004b80c:
    sw	$s0,16($sp)
.L8004b810:
    addu $s0,$zero,$zero
.L8004b814:
    lui	$v0,0x800f
.L8004b818:
    sw	$s1,20($sp)
.L8004b81c:
    addiu	$s1,$v0,10504
.L8004b820:
    sw	$ra,40($sp)
.L8004b824:
    sw	$s4,32($sp)
.L8004b828:
    sw	$s3,28($sp)
.L8004b82c:
    sw	$s2,24($sp)
.L8004b830:
    lb	$v0,36($s1)
.L8004b834:
    nop
.L8004b838:
    beqz	$v0,.L8004b908
.L8004b83c:
    li	$v0,0x9284
.L8004b840:
    jal	FUN_80097e7c
.L8004b844:
    addu $a0,$s0,$zero
.L8004b848:
    beqz	$v0,.L8004b858
.L8004b84c:
    nop
.L8004b850:
    jal	FUN_8002a8b0
.L8004b854:
    addu $a0,$s0,$zero
.L8004b858:
    jal	FUN_80097e60
.L8004b85c:
    addu $a0,$s0,$zero
.L8004b860:
    beqz	$v0,.L8004b870
.L8004b864:
    nop
.L8004b868:
    jal	FUN_8002a8b0
.L8004b86c:
    addu $a0,$s0,$zero
.L8004b870:
    jal	FUN_80097e44
.L8004b874:
    addu $a0,$s0,$zero
.L8004b878:
    beqz	$v0,.L8004b888
.L8004b87c:
    nop
.L8004b880:
    jal	FUN_8002a8b0
.L8004b884:
    addu $a0,$s0,$zero
.L8004b888:
    jal	FUN_80097e28
.L8004b88c:
    addu $a0,$s0,$zero
.L8004b890:
    beqz	$v0,.L8004b8a0
.L8004b894:
    nop
.L8004b898:
    jal	FUN_8002a8b0
.L8004b89c:
    addu $a0,$s0,$zero
.L8004b8a0:
    jal	FUN_800497bc
.L8004b8a4:
    nop
.L8004b8a8:
    beqz	$v0,.L8004b8e8
.L8004b8ac:
    nop
.L8004b8b0:
    bnez	$s0,.L8004b8e8
.L8004b8b4:
    nop
.L8004b8b8:
    jal	FUN_80097e98
.L8004b8bc:
    addu $a0,$zero,$zero
.L8004b8c0:
    beqz	$v0,.L8004b8d0
.L8004b8c4:
    nop
.L8004b8c8:
    jal	FUN_8002a8b0
.L8004b8cc:
    addu $a0,$zero,$zero
.L8004b8d0:
    jal	FUN_80097ea8
.L8004b8d4:
    addu $a0,$zero,$zero
.L8004b8d8:
    beqz	$v0,.L8004b8e8
.L8004b8dc:
    nop
.L8004b8e0:
    jal	FUN_8002a8b0
.L8004b8e4:
    addu $a0,$zero,$zero
.L8004b8e8:
    lw	$v0,32($s1)
.L8004b8ec:
    nop
.L8004b8f0:
    sltiu	$v0,$v0,30
.L8004b8f4:
    beqz	$v0,.L8004b908
.L8004b8f8:
    li	$v0,0x9284
.L8004b8fc:
    jal	FUN_8002a8b0
.L8004b900:
    addu $a0,$s0,$zero
.L8004b904:
    li	$v0,0x9284
.L8004b908:
    addu	$s1,$s1,$v0
.L8004b90c:
    addiu	$s0,$s0,1
.L8004b910:
    slti	$v0,$s0,2
.L8004b914:
    bnez	$v0,.L8004b830
.L8004b918:
    li	$s2,1
.L8004b91c:
    addu $s0,$zero,$zero
.L8004b920:
    lui	$v0,0x800f
.L8004b924:
    addiu	$s4,$v0,10376
.L8004b928:
    lui	$v0,0x800f
.L8004b92c:
    addiu	$s3,$v0,10504
.L8004b930:
    addu $s1,$s3,$zero
.L8004b934:
    lb	$v0,36($s1)
.L8004b938:
    nop
.L8004b93c:
    beqz	$v0,.L8004b958
.L8004b940:
    subu	$v1,$s2,$s0
.L8004b944:
    lw	$v0,32($s1)
.L8004b948:
    nop
.L8004b94c:
    addiu	$v0,$v0,1
.L8004b950:
    j	.L8004b9c4
.L8004b954:
    sw	$v0,32($s1)
.L8004b958:
    sll	$v0,$v1,0x3
.L8004b95c:
    addu	$v0,$v0,$v1
.L8004b960:
    sll	$v0,$v0,0x3
.L8004b964:
    addu	$v0,$v0,$v1
.L8004b968:
    sll	$v0,$v0,0x2
.L8004b96c:
    addu	$v0,$v0,$v1
.L8004b970:
    sll	$v0,$v0,0x5
.L8004b974:
    addu	$v0,$v0,$v1
.L8004b978:
    sll	$v0,$v0,0x2
.L8004b97c:
    addu	$v0,$v0,$s3
.L8004b980:
    lb	$v1,36($v0)
.L8004b984:
    li	$v0,2
.L8004b988:
    bne	$v1,$v0,.L8004b9c8
.L8004b98c:
    li	$v0,0x9284
.L8004b990:
    lw	$v0,108($s4)
.L8004b994:
    nop
.L8004b998:
    srl	$v0,$v0,0x3
.L8004b99c:
    andi	$v0,$v0,0x1
.L8004b9a0:
    beqz	$v0,.L8004b9b0
.L8004b9a4:
    nop
.L8004b9a8:
    jal	FUN_8002a8b0
.L8004b9ac:
    addu $a0,$s0,$zero
.L8004b9b0:
    jal	FUN_80097d28
.L8004b9b4:
    addu $a0,$s0,$zero
.L8004b9b8:
    beqz	$v0,.L8004b9c8
.L8004b9bc:
    li	$v0,0x9284
.L8004b9c0:
    sb	$s2,36($s1)
.L8004b9c4:
    li	$v0,0x9284
.L8004b9c8:
    addu	$s1,$s1,$v0
.L8004b9cc:
    addiu	$s0,$s0,1
.L8004b9d0:
    slti	$v0,$s0,2
.L8004b9d4:
    bnez	$v0,.L8004b934
.L8004b9d8:
    nop
.L8004b9dc:
    jal	FUN_8006ffd8
.L8004b9e0:
    addiu	$a0,$s5,4
.L8004b9e4:
    bnez	$v0,.L8004b9f4
.L8004b9e8:
    lui	$v0,0x800b
.L8004b9ec:
    j	.L8004ba10
.L8004b9f0:
    li	$v0,2
.L8004b9f4:
    lw	$v0,-14104($v0)
.L8004b9f8:
    nop
.L8004b9fc:
    lbu	$v1,255($v0)
.L8004ba00:
    nop
.L8004ba04:
    bnez	$v1,.L8004ba10
.L8004ba08:
    li	$v0,10
.L8004ba0c:
    addu $v0,$zero,$zero
.L8004ba10:
    lw	$ra,40($sp)
.L8004ba14:
    lw	$s5,36($sp)
.L8004ba18:
    lw	$s4,32($sp)
.L8004ba1c:
    lw	$s3,28($sp)
.L8004ba20:
    lw	$s2,24($sp)
.L8004ba24:
    lw	$s1,20($sp)
.L8004ba28:
    lw	$s0,16($sp)
.L8004ba2c:
    jr	$ra
.L8004ba30:
    addiu	$sp,$sp,48
.size FUN_8004b800, .-FUN_8004b800

.section .text.FUN_8004bdec, "ax", @progbits
.globl FUN_8004bdec
.type FUN_8004bdec, @function
FUN_8004bdec:
.L8004bdec:
    addiu	$sp,$sp,-24
.L8004bdf0:
    lui	$v0,0x3fff
.L8004bdf4:
    lui	$v1,0x800f
.L8004bdf8:
    addiu	$a1,$v1,10376
.L8004bdfc:
    sw	$ra,16($sp)
.L8004be00:
    lw	$v1,112($a1)
.L8004be04:
    ori	$v0,$v0,0xffff
.L8004be08:
    sltu	$v0,$v0,$v1
.L8004be0c:
    beqz	$v0,.L8004be18
.L8004be10:
    nop
.L8004be14:
    sw	$zero,112($a1)
.L8004be18:
    jal	FUN_8006fe7c
.L8004be1c:
    addiu	$a0,$a0,4
.L8004be20:
    lw	$ra,16($sp)
.L8004be24:
    nop
.L8004be28:
    jr	$ra
.L8004be2c:
    addiu	$sp,$sp,24
.size FUN_8004bdec, .-FUN_8004bdec

.section .text.FUN_8004be30, "ax", @progbits
.globl FUN_8004be30
.type FUN_8004be30, @function
FUN_8004be30:
.L8004be30:
    addiu	$sp,$sp,-24
.L8004be34:
    sw	$ra,16($sp)
.L8004be38:
    jal	FUN_80070154
.L8004be3c:
    addiu	$a0,$a0,4
.L8004be40:
    lw	$ra,16($sp)
.L8004be44:
    nop
.L8004be48:
    jr	$ra
.L8004be4c:
    addiu	$sp,$sp,24
.size FUN_8004be30, .-FUN_8004be30

.section .text.FUN_8006fe7c, "ax", @progbits
.globl FUN_8006fe7c
.type FUN_8006fe7c, @function
FUN_8006fe7c:
.L8006fe7c:
    addiu	$sp,$sp,-32
.L8006fe80:
    sw	$s1,20($sp)
.L8006fe84:
    addu $s1,$a0,$zero
.L8006fe88:
    li	$a0,1
.L8006fe8c:
    sw	$ra,24($sp)
.L8006fe90:
    jal	FUN_8002a8b0
.L8006fe94:
    sw	$s0,16($sp)
.L8006fe98:
    lui	$v0,0x800f
.L8006fe9c:
    jal	FUN_8002a8b0
.L8006fea0:
    sb	$zero,10496($v0)
.L8006fea4:
    jal	FUN_8002a8b0
.L8006fea8:
    addu $a0,$zero,$zero
.L8006feac:
    jal	FUN_8002a8b0
.L8006feb0:
    nop
.L8006feb4:
    jal	FUN_8007ef8c
.L8006feb8:
    addu $a0,$zero,$zero
.L8006febc:
    addu $v1,$zero,$zero
.L8006fec0:
    lui	$v0,0x800f
.L8006fec4:
    addiu	$a2,$v0,10504
.L8006fec8:
    lui	$a1,0x1
.L8006fecc:
    li	$a0,2
.L8006fed0:
    addu	$v0,$v1,$a2
.L8006fed4:
    addu	$v0,$v0,$a1
.L8006fed8:
    sb	$a0,9512($v0)
.L8006fedc:
    addiu	$v1,$v1,1
.L8006fee0:
    slti	$v0,$v1,160
.L8006fee4:
    bnez	$v0,.L8006fed4
.L8006fee8:
    addu	$v0,$v1,$a2
.L8006feec:
    addu $v1,$zero,$zero
.L8006fef0:
    lui	$a2,0x1
.L8006fef4:
    li	$a1,-1
.L8006fef8:
    lui	$v0,0x800f
.L8006fefc:
    addiu	$a0,$v0,10504
.L8006ff00:
    addu	$v0,$a0,$a2
.L8006ff04:
    sh	$a1,9672($v0)
.L8006ff08:
    addiu	$v1,$v1,1
.L8006ff0c:
    slti	$v0,$v1,6
.L8006ff10:
    bnez	$v0,.L8006ff00
.L8006ff14:
    addiu	$a0,$a0,2
.L8006ff18:
    lui	$v1,0x800f
.L8006ff1c:
    li	$v0,27
.L8006ff20:
    sh	$v0,10504($v1)
.L8006ff24:
    addu $s0,$zero,$zero
.L8006ff28:
    jal	FUN_8006fdb4
.L8006ff2c:
    addu $a0,$s0,$zero
.L8006ff30:
    jal	FUN_8006fd04
.L8006ff34:
    addu $a0,$s0,$zero
.L8006ff38:
    addiu	$s0,$s0,1
.L8006ff3c:
    slti	$v0,$s0,2
.L8006ff40:
    bnez	$v0,.L8006ff28
.L8006ff44:
    li	$a0,1
.L8006ff48:
    lui	$s0,0x800f
.L8006ff4c:
    addiu	$s0,$s0,10504
.L8006ff50:
    li	$v0,-1
.L8006ff54:
    sh	$v0,18($s0)
.L8006ff58:
    sh	$v0,28($s0)
.L8006ff5c:
    addu $v0,$a0,$zero
.L8006ff60:
    sh	$zero,12($s0)
.L8006ff64:
    sh	$zero,14($s0)
.L8006ff68:
    sb	$zero,22($s0)
.L8006ff6c:
    sb	$v0,24($s0)
.L8006ff70:
    jal	FUN_8009ff8c
.L8006ff74:
    sh	$zero,30($s0)
.L8006ff78:
    sb	$v0,8($s0)
.L8006ff7c:
    sb	$zero,9($s0)
.L8006ff80:
    sb	$zero,10($s0)
.L8006ff84:
    sb	$zero,11($s0)
.L8006ff88:
    sb	$zero,20($s0)
.L8006ff8c:
    jal	FUN_8002a8b0
.L8006ff90:
    sw	$zero,0($s1)
.L8006ff94:
    jal	FUN_80028358
.L8006ff98:
    li	$a0,829
.L8006ff9c:
    addu $a0,$s1,$zero
.L8006ffa0:
    lui	$v1,0x800e
.L8006ffa4:
    lw	$a1,0($a0)
.L8006ffa8:
    addiu	$v1,$v1,-4344
.L8006ffac:
    sll	$v0,$a1,0x2
.L8006ffb0:
    addu	$v0,$v0,$v1
.L8006ffb4:
    lw	$v0,0($v0)
.L8006ffb8:
    nop
.L8006ffbc:
    jalr	$v0
.L8006ffc0:
    nop
.L8006ffc4:
    lw	$ra,24($sp)
.L8006ffc8:
    lw	$s1,20($sp)
.L8006ffcc:
    lw	$s0,16($sp)
.L8006ffd0:
    jr	$ra
.L8006ffd4:
    addiu	$sp,$sp,32
.size FUN_8006fe7c, .-FUN_8006fe7c

.section .text.FUN_8006ffd8, "ax", @progbits
.globl FUN_8006ffd8
.type FUN_8006ffd8, @function
FUN_8006ffd8:
.L8006ffd8:
    lui	$v0,0x800b
.L8006ffdc:
    lw	$v0,-14104($v0)
.L8006ffe0:
    addiu	$sp,$sp,-48
.L8006ffe4:
    sw	$ra,44($sp)
.L8006ffe8:
    sw	$s2,40($sp)
.L8006ffec:
    sw	$s1,36($sp)
.L8006fff0:
    sw	$s0,32($sp)
.L8006fff4:
    lbu	$v0,255($v0)
.L8006fff8:
    nop
.L8006fffc:
    beqz	$v0,.L80070014
.L80070000:
    addu $s2,$a0,$zero
.L80070004:
    li	$v0,14
.L80070008:
    sw	$v0,0($s2)
.L8007000c:
    j	.L8007013c
.L80070010:
    li	$v0,1
.L80070014:
    addu $a2,$zero,$zero
.L80070018:
    li	$t2,1
.L8007001c:
    lui	$v0,0x800f
.L80070020:
    addiu	$t0,$v0,10376
.L80070024:
    li	$a3,5
.L80070028:
    lui	$v0,0x800f
.L8007002c:
    addiu	$t1,$v0,10504
.L80070030:
    addu $a1,$t1,$zero
.L80070034:
    lb	$a0,36($a1)
.L80070038:
    nop
.L8007003c:
    bne	$a0,$t2,.L800700b0
.L80070040:
    li	$v0,0x9284
.L80070044:
    lbu	$v0,120($t0)
.L80070048:
    sllv	$v1,$a0,$a2
.L8007004c:
    or	$v0,$v0,$v1
.L80070050:
    subu	$v1,$a0,$a2
.L80070054:
    sb	$v0,120($t0)
.L80070058:
    sll	$v0,$v1,0x3
.L8007005c:
    addu	$v0,$v0,$v1
.L80070060:
    sll	$v0,$v0,0x3
.L80070064:
    addu	$v0,$v0,$v1
.L80070068:
    sll	$v0,$v0,0x2
.L8007006c:
    addu	$v0,$v0,$v1
.L80070070:
    sll	$v0,$v0,0x5
.L80070074:
    addu	$v0,$v0,$v1
.L80070078:
    sll	$v0,$v0,0x2
.L8007007c:
    addu	$v1,$v0,$t1
.L80070080:
    lbu	$v0,36($v1)
.L80070084:
    nop
.L80070088:
    sltiu	$v0,$v0,2
.L8007008c:
    beqz	$v0,.L8007009c
.L80070090:
    li	$v0,2
.L80070094:
    j	.L800700a8
.L80070098:
    sb	$a0,146($a1)
.L8007009c:
    li	$v0,3
.L800700a0:
    sb	$a3,146($a1)
.L800700a4:
    sb	$a3,146($v1)
.L800700a8:
    sb	$v0,36($a1)
.L800700ac:
    li	$v0,0x9284
.L800700b0:
    addu	$a1,$a1,$v0
.L800700b4:
    addiu	$a2,$a2,1
.L800700b8:
    slti	$v0,$a2,2
.L800700bc:
    bnez	$v0,.L80070034
.L800700c0:
    lui	$v0,0x800e
.L800700c4:
    lw	$v1,0($s2)
.L800700c8:
    addiu	$s1,$v0,-4344
.L800700cc:
    sll	$v1,$v1,0x2
.L800700d0:
    addu	$v1,$v1,$s1
.L800700d4:
    lw	$v0,60($v1)
.L800700d8:
    nop
.L800700dc:
    jalr	$v0
.L800700e0:
    addu $a0,$s2,$zero
.L800700e4:
    lw	$v1,0($s2)
.L800700e8:
    addu $s0,$v0,$zero
.L800700ec:
    beq	$s0,$v1,.L8007012c
.L800700f0:
    sll	$v0,$v1,0x2
.L800700f4:
    addu $a0,$s2,$zero
.L800700f8:
    addu	$v0,$v0,$s1
.L800700fc:
    lw	$v0,120($v0)
.L80070100:
    nop
.L80070104:
    jalr	$v0
.L80070108:
    addu $a1,$s0,$zero
.L8007010c:
    sll	$v0,$s0,0x2
.L80070110:
    addu	$v0,$v0,$s1
.L80070114:
    lw	$a1,0($s2)
.L80070118:
    lw	$v0,0($v0)
.L8007011c:
    nop
.L80070120:
    jalr	$v0
.L80070124:
    addu $a0,$s2,$zero
.L80070128:
    sw	$s0,0($s2)
.L8007012c:
    lw	$v0,0($s2)
.L80070130:
    nop
.L80070134:
    xori	$v0,$v0,0xe
.L80070138:
    sltiu	$v0,$v0,1
.L8007013c:
    lw	$ra,44($sp)
.L80070140:
    lw	$s2,40($sp)
.L80070144:
    lw	$s1,36($sp)
.L80070148:
    lw	$s0,32($sp)
.L8007014c:
    jr	$ra
.L80070150:
    addiu	$sp,$sp,48
.size FUN_8006ffd8, .-FUN_8006ffd8

.section .text.FUN_80070154, "ax", @progbits
.globl FUN_80070154
.type FUN_80070154, @function
FUN_80070154:
.L80070154:
    addiu	$sp,$sp,-32
.L80070158:
    sw	$s0,16($sp)
.L8007015c:
    addu $s0,$a0,$zero
.L80070160:
    li	$a0,1
.L80070164:
    sw	$ra,24($sp)
.L80070168:
    jal	FUN_8002a8b0
.L8007016c:
    sw	$s1,20($sp)
.L80070170:
    lui	$v0,0x800f
.L80070174:
    jal	FUN_8009643c
.L80070178:
    sb	$zero,10496($v0)
.L8007017c:
    beqz	$v0,.L80070198
.L80070180:
    addu $a0,$s0,$zero
.L80070184:
    jal	FUN_8002a8b0
.L80070188:
    addu $a0,$zero,$zero
.L8007018c:
    jal	FUN_8002a8b0
.L80070190:
    li	$a0,1
.L80070194:
    addu $a0,$s0,$zero
.L80070198:
    lui	$v1,0x800e
.L8007019c:
    lw	$a1,0($a0)
.L800701a0:
    addiu	$v1,$v1,-4344
.L800701a4:
    sll	$v0,$a1,0x2
.L800701a8:
    addu	$v0,$v0,$v1
.L800701ac:
    lw	$v0,120($v0)
.L800701b0:
    nop
.L800701b4:
    jalr	$v0
.L800701b8:
    addu $s1,$zero,$zero
.L800701bc:
    lui	$v0,0x800f
.L800701c0:
    addiu	$s0,$v0,10504
.L800701c4:
    addu $a0,$s1,$zero
.L800701c8:
    sw	$zero,32($s0)
.L800701cc:
    jal	FUN_8006fd04
.L800701d0:
    sb	$zero,36($s0)
.L800701d4:
    li	$v0,0x9284
.L800701d8:
    addu	$s0,$s0,$v0
.L800701dc:
    addiu	$s1,$s1,1
.L800701e0:
    slti	$v0,$s1,2
.L800701e4:
    bnez	$v0,.L800701c8
.L800701e8:
    addu $a0,$s1,$zero
.L800701ec:
    jal	FUN_8007ee38
.L800701f0:
    li	$a0,1
.L800701f4:
    lui	$s0,0x800f
.L800701f8:
    addiu	$s0,$s0,10504
.L800701fc:
    sw	$v0,4($s0)
.L80070200:
    li	$v0,-1
.L80070204:
    sh	$v0,18($s0)
.L80070208:
    sh	$v0,12($s0)
.L8007020c:
    sh	$v0,28($s0)
.L80070210:
    jal	FUN_8002a8b0
.L80070214:
    sb	$zero,22($s0)
.L80070218:
    li	$v1,16
.L8007021c:
    li	$v0,0x8000
.L80070220:
    addu	$v0,$s0,$v0
.L80070224:
    sb	$v1,41($s0)
.L80070228:
    sb	$v1,4781($v0)
.L8007022c:
    jal	FUN_8007f07c
.L80070230:
    sh	$zero,16($s0)
.L80070234:
    jal	FUN_8002a8b0
.L80070238:
    li	$a0,254
.L8007023c:
    jal	FUN_8007f67c
.L80070240:
    nop
.L80070244:
    jal	FUN_8005f088
.L80070248:
    nop
.L8007024c:
    lw	$ra,24($sp)
.L80070250:
    lw	$s1,20($sp)
.L80070254:
    lw	$s0,16($sp)
.L80070258:
    jr	$ra
.L8007025c:
    addiu	$sp,$sp,32
.size FUN_80070154, .-FUN_80070154

.section .text.FUN_80071240, "ax", @progbits
.globl FUN_80071240
.type FUN_80071240, @function
FUN_80071240:
.L80071240:
    jr	$ra
.L80071244:
    nop
.size FUN_80071240, .-FUN_80071240

.section .text.FUN_80071248, "ax", @progbits
.globl FUN_80071248
.type FUN_80071248, @function
FUN_80071248:
.L80071248:
    jr	$ra
.L8007124c:
    li	$v0,14
.size FUN_80071248, .-FUN_80071248

.section .text.FUN_80071250, "ax", @progbits
.globl FUN_80071250
.type FUN_80071250, @function
FUN_80071250:
.L80071250:
    jr	$ra
.L80071254:
    nop
.size FUN_80071250, .-FUN_80071250
