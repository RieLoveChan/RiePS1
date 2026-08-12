# DDR 5th Mix game-session gameplay states 4-7 callbacks.
# Semantic MIPS reconstruction from the hash-gated SLPM_868.97 revision.
# States: 5 (PREPARE), 4 (INTRO), 6 (DANCING), 7 (STAGE END).

.set noreorder
.set noat

.section .text.FUN_8006efd4, "ax", @progbits
.globl FUN_8006efd4
.type FUN_8006efd4, @function
FUN_8006efd4:
.L8006efd4:
    addiu	$sp,$sp,-24
.L8006efd8:
    lui	$v1,0x800f
.L8006efdc:
    li	$v0,1
.L8006efe0:
    sh	$v0,10504($v1)
.L8006efe4:
    lui	$v0,0x800f
.L8006efe8:
    sw	$zero,10492($v0)
.L8006efec:
    lui	$v0,0x8011
.L8006eff0:
    addiu	$v1,$v1,10504
.L8006eff4:
    sw	$ra,16($sp)
.L8006eff8:
    sh	$zero,7840($v0)
.L8006effc:
    lbu	$v0,146($v1)
.L8006f000:
    li	$a1,7
.L8006f004:
    beq	$v0,$a1,.L8006f054
.L8006f008:
    nop
.L8006f00c:
    beq	$v0,$zero,.L8006f038
.L8006f010:
    ori	$v0,$zero,0x8000
.L8006f014:
    addu	$a0,$v1,$v0
.L8006f018:
    lbu	$v0,4886($a0)
.L8006f01c:
    nop
.L8006f020:
    beq	$v0,$a1,.L8006f030
.L8006f024:
    nop
.L8006f028:
    bne	$v0,$zero,.L8006f03c
.L8006f02c:
    lui	$v0,0x800f
.L8006f030:
    sb	$zero,4778($a0)
.L8006f034:
    sb	$zero,38($v1)
.L8006f038:
    lui	$v0,0x800f
.L8006f03c:
    lbu	$v1,10650($v0)
.L8006f040:
    li	$v0,7
.L8006f044:
    beq	$v1,$v0,.L8006f058
.L8006f048:
    lui	$v0,0x800f
.L8006f04c:
    bne	$v1,$zero,.L8006f088
.L8006f050:
    li	$a0,2
.L8006f054:
    lui	$v0,0x800f
.L8006f058:
    addiu	$a1,$v0,10504
.L8006f05c:
    ori	$v0,$zero,0x8000
.L8006f060:
    addu	$a0,$a1,$v0
.L8006f064:
    lbu	$v1,4886($a0)
.L8006f068:
    li	$v0,7
.L8006f06c:
    beq	$v1,$v0,.L8006f084
.L8006f070:
    nop
.L8006f074:
    beq	$v1,$zero,.L8006f084
.L8006f078:
    li	$v0,1
.L8006f07c:
    sb	$v0,4778($a0)
.L8006f080:
    sb	$v0,38($a1)
.L8006f084:
    li	$a0,2
.L8006f088:
    jal	FUN_8007b778
.L8006f08c:
    li	$a1,1
.L8006f090:
    lw	$ra,16($sp)
.L8006f094:
    nop
.L8006f098:
    jr	$ra
.L8006f09c:
    addiu	$sp,$sp,24
.size FUN_8006efd4, .-FUN_8006efd4

.section .text.FUN_80070ab4, "ax", @progbits
.globl FUN_80070ab4
.type FUN_80070ab4, @function
FUN_80070ab4:
.L80070ab4:
    addiu	$sp,$sp,-24
.L80070ab8:
    sw	$ra,20($sp)
.L80070abc:
    jal	FUN_8007638c
.L80070ac0:
    sw	$s0,16($sp)
.L80070ac4:
    lui	$v0,0x800f
.L80070ac8:
    addiu	$s0,$v0,10376
.L80070acc:
    lw	$v1,116($s0)
.L80070ad0:
    li	$v0,1
.L80070ad4:
    bne	$v1,$v0,.L80070aec
.L80070ad8:
    li	$v0,12
.L80070adc:
    jal	FUN_80028358
.L80070ae0:
    li	$a0,820
.L80070ae4:
    lw	$v1,116($s0)
.L80070ae8:
    li	$v0,12
.L80070aec:
    bne	$v1,$v0,.L80070b14
.L80070af0:
    nop
.L80070af4:
    jal	FUN_8007f66c
.L80070af8:
    nop
.L80070afc:
    lui	$v0,0x800f
.L80070b00:
    lw	$v0,10508($v0)
.L80070b04:
    nop
.L80070b08:
    lhu	$a0,4($v0)
.L80070b0c:
    jal	FUN_8002a8b0
.L80070b10:
    nop
.L80070b14:
    lw	$v0,116($s0)
.L80070b18:
    nop
.L80070b1c:
    slti	$v0,$v0,10
.L80070b20:
    bne	$v0,$zero,.L80070b3c
.L80070b24:
    lui	$v0,0x8011
.L80070b28:
    addiu	$v0,$v0,27296
.L80070b2c:
    lw	$v1,392($v0)
.L80070b30:
    li	$a0,-241
.L80070b34:
    and	$v1,$v1,$a0
.L80070b38:
    sw	$v1,392($v0)
.L80070b3c:
    lw	$v0,116($s0)
.L80070b40:
    nop
.L80070b44:
    slti	$v0,$v0,8
.L80070b48:
    bne	$v0,$zero,.L80070b54
.L80070b4c:
    li	$a0,64
.L80070b50:
    addu	$a0,$zero,$zero
.L80070b54:
    jal	FUN_8005e6a8
.L80070b58:
    nop
.L80070b5c:
    lui	$v0,0x800f
.L80070b60:
    lw	$v0,10508($v0)
.L80070b64:
    nop
.L80070b68:
    lhu	$s0,4($v0)
.L80070b6c:
    jal	FUN_8007f06c
.L80070b70:
    nop
.L80070b74:
    bne	$s0,$v0,.L80070b9c
.L80070b78:
    lui	$v0,0x800f
.L80070b7c:
    jal	FUN_8007f64c
.L80070b80:
    nop
.L80070b84:
    li	$v1,2
.L80070b88:
    beq	$v0,$v1,.L80070b98
.L80070b8c:
    li	$a0,120
.L80070b90:
    jal	FUN_8007f598
.L80070b94:
    li	$a1,200
.L80070b98:
    lui	$v0,0x800f
.L80070b9c:
    lw	$v1,10492($v0)
.L80070ba0:
    nop
.L80070ba4:
    slti	$v1,$v1,28
.L80070ba8:
    beq	$v1,$zero,.L80070bb4
.L80070bac:
    li	$v0,4
.L80070bb0:
    li	$v0,5
.L80070bb4:
    lw	$ra,20($sp)
.L80070bb8:
    lw	$s0,16($sp)
.L80070bbc:
    jr	$ra
.L80070bc0:
    addiu	$sp,$sp,24
.size FUN_80070ab4, .-FUN_80070ab4

.section .text.FUN_8006f0a0, "ax", @progbits
.globl FUN_8006f0a0
.type FUN_8006f0a0, @function
FUN_8006f0a0:
.L8006f0a0:
    addiu	$sp,$sp,-24
.L8006f0a4:
    lui	$v0,0x800f
.L8006f0a8:
    addiu	$v1,$v0,10504
.L8006f0ac:
    sw	$ra,16($sp)
.L8006f0b0:
    lb	$v0,36($v1)
.L8006f0b4:
    li	$a1,2
.L8006f0b8:
    beq	$v0,$a1,.L8006f124
.L8006f0bc:
    li	$a0,4
.L8006f0c0:
    beq	$v0,$a0,.L8006f124
.L8006f0c4:
    ori	$v0,$zero,0x8000
.L8006f0c8:
    addu	$a2,$v1,$v0
.L8006f0cc:
    lb	$v0,4776($a2)
.L8006f0d0:
    nop
.L8006f0d4:
    beq	$v0,$a1,.L8006f11c
.L8006f0d8:
    nop
.L8006f0dc:
    beq	$v0,$a0,.L8006f11c
.L8006f0e0:
    nop
.L8006f0e4:
    lbu	$v0,146($v1)
.L8006f0e8:
    li	$v1,7
.L8006f0ec:
    beq	$v0,$v1,.L8006f0fc
.L8006f0f0:
    nop
.L8006f0f4:
    bne	$v0,$zero,.L8006f128
.L8006f0f8:
    addu	$a0,$zero,$zero
.L8006f0fc:
    lbu	$v0,4886($a2)
.L8006f100:
    nop
.L8006f104:
    beq	$v0,$v1,.L8006f128
.L8006f108:
    li	$a0,-1
.L8006f10c:
    bne	$v0,$zero,.L8006f128
.L8006f110:
    addu	$a0,$zero,$zero
.L8006f114:
    j	.L8006f128
.L8006f118:
    li	$a0,-1
.L8006f11c:
    j	.L8006f128
.L8006f120:
    li	$a0,1
.L8006f124:
    addu	$a0,$zero,$zero
.L8006f128:
    li	$v0,-1
.L8006f12c:
    bne	$a0,$v0,.L8006f138
.L8006f130:
    lui	$v1,0x800f
.L8006f134:
    addu	$a0,$zero,$zero
.L8006f138:
    addiu	$v1,$v1,10504
.L8006f13c:
    sll	$v0,$a0,0x3
.L8006f140:
    addu	$v0,$v0,$a0
.L8006f144:
    sll	$v0,$v0,0x3
.L8006f148:
    addu	$v0,$v0,$a0
.L8006f14c:
    sll	$v0,$v0,0x2
.L8006f150:
    addu	$v0,$v0,$a0
.L8006f154:
    sll	$v0,$v0,0x5
.L8006f158:
    addu	$v0,$v0,$a0
.L8006f15c:
    sll	$v0,$v0,0x2
.L8006f160:
    addu	$v0,$v0,$v1
.L8006f164:
    lb	$a2,37($v0)
.L8006f168:
    addu	$a0,$zero,$zero
.L8006f16c:
    li	$t0,16
.L8006f170:
    li	$a3,7
.L8006f174:
    li	$a1,1
.L8006f178:
    lbu	$v0,146($v1)
.L8006f17c:
    sb	$a2,39($v1)
.L8006f180:
    beq	$v0,$a3,.L8006f190
.L8006f184:
    sb	$t0,41($v1)
.L8006f188:
    bne	$v0,$zero,.L8006f1a0
.L8006f18c:
    nop
.L8006f190:
    sb	$zero,43($v1)
.L8006f194:
    sb	$zero,44($v1)
.L8006f198:
    j	.L8006f1ac
.L8006f19c:
    sb	$zero,45($v1)
.L8006f1a0:
    sb	$a1,43($v1)
.L8006f1a4:
    sb	$a1,44($v1)
.L8006f1a8:
    sb	$a1,45($v1)
.L8006f1ac:
    li	$v0,0x9284
.L8006f1b0:
    addu	$v1,$v1,$v0
.L8006f1b4:
    addiu	$a0,$a0,1
.L8006f1b8:
    slti	$v0,$a0,2
.L8006f1bc:
    bne	$v0,$zero,.L8006f178
.L8006f1c0:
    li	$v0,1
.L8006f1c4:
    lui	$v1,0x800e
.L8006f1c8:
    sb	$v0,15307($v1)
.L8006f1cc:
    jal	FUN_8007638c
.L8006f1d0:
    nop
.L8006f1d4:
    bne	$v0,$zero,.L8006f1ec
.L8006f1d8:
    lui	$v0,0x800f
.L8006f1dc:
    jal	FUN_800358f8
.L8006f1e0:
    addu	$a0,$zero,$zero
.L8006f1e4:
    j	.L8006f1cc
.L8006f1e8:
    nop
.L8006f1ec:
    lw	$ra,16($sp)
.L8006f1f0:
    sh	$zero,10520($v0)
.L8006f1f4:
    jr	$ra
.L8006f1f8:
    addiu	$sp,$sp,24
.size FUN_8006f0a0, .-FUN_8006f0a0

.section .text.FUN_80070bc4, "ax", @progbits
.globl FUN_80070bc4
.type FUN_80070bc4, @function
FUN_80070bc4:
.L80070bc4:
    addiu	$sp,$sp,-32
.L80070bc8:
    lui	$v0,0x800f
.L80070bcc:
    lui	$v1,0x800f
.L80070bd0:
    sw	$zero,10492($v0)
.L80070bd4:
    li	$v0,4
.L80070bd8:
    addu	$a0,$zero,$zero
.L80070bdc:
    sw	$ra,24($sp)
.L80070be0:
    jal	FUN_8002a8b0
.L80070be4:
    sh	$v0,10504($v1)
.L80070be8:
    lw	$ra,24($sp)
.L80070bec:
    nop
.L80070bf0:
    jr	$ra
.L80070bf4:
    addiu	$sp,$sp,32
.size FUN_80070bc4, .-FUN_80070bc4

.section .text.FUN_8006f1fc, "ax", @progbits
.globl FUN_8006f1fc
.type FUN_8006f1fc, @function
FUN_8006f1fc:
.L8006f1fc:
    addiu	$sp,$sp,-32
.L8006f200:
    sw	$s1,20($sp)
.L8006f204:
    addu	$s1,$zero,$zero
.L8006f208:
    lui	$v0,0x8010
.L8006f20c:
    sw	$s2,24($sp)
.L8006f210:
    addiu	$s2,$v0,10504
.L8006f214:
    lui	$v0,0x800f
.L8006f218:
    addiu	$v0,$v0,10504
.L8006f21c:
    sw	$s0,16($sp)
.L8006f220:
    addu	$s0,$v0,$zero
.L8006f224:
    lui	$a0,0x8011
.L8006f228:
    sw	$ra,28($sp)
.L8006f22c:
    lh	$v1,28($s0)
.L8006f230:
    addiu	$v0,$a0,7856
.L8006f234:
    sw	$zero,4($v0)
.L8006f238:
    lui	$v0,0x1
.L8006f23c:
    sw	$zero,7856($a0)
.L8006f240:
    addu	$v1,$v1,$s0
.L8006f244:
    addu	$v1,$v1,$v0
.L8006f248:
    li	$v0,3
.L8006f24c:
    sb	$v0,9512($v1)
.L8006f250:
    lw	$v1,48($s0)
.L8006f254:
    lw	$a0,60($s0)
.L8006f258:
    lw	$a1,68($s0)
.L8006f25c:
    lw	$a2,76($s0)
.L8006f260:
    li	$v0,500
.L8006f264:
    sh	$v0,46($s0)
.L8006f268:
    sw	$v1,52($s0)
.L8006f26c:
    sw	$a0,64($s0)
.L8006f270:
    sw	$a1,72($s0)
.L8006f274:
    sw	$a2,80($s0)
.L8006f278:
    lbu	$v0,10110($s2)
.L8006f27c:
    nop
.L8006f280:
    beq	$v0,$zero,.L8006f2f8
.L8006f284:
    srav	$v0,$v0,$s1
.L8006f288:
    andi	$v0,$v0,0x1
.L8006f28c:
    beq	$v0,$zero,.L8006f304
.L8006f290:
    nop
.L8006f294:
    jal	FUN_800a36f4
.L8006f298:
    addu	$a0,$s1,$zero
.L8006f29c:
    addu	$a0,$s1,$zero
.L8006f2a0:
    sll	$v1,$v0,0x5
.L8006f2a4:
    subu	$v1,$v1,$v0
.L8006f2a8:
    sll	$v1,$v1,0x2
.L8006f2ac:
    addu	$v1,$v1,$v0
.L8006f2b0:
    sll	$v1,$v1,0x3
.L8006f2b4:
    sw	$v1,112($s0)
.L8006f2b8:
    jal	FUN_800a3724
.L8006f2bc:
    sw	$v1,104($s0)
.L8006f2c0:
    sll	$v1,$v0,0x3
.L8006f2c4:
    subu	$v1,$v1,$v0
.L8006f2c8:
    sll	$v1,$v1,0x5
.L8006f2cc:
    addu	$v1,$v1,$v0
.L8006f2d0:
    sll	$v1,$v1,0x3
.L8006f2d4:
    li	$v0,1
.L8006f2d8:
    sllv	$v0,$v0,$s1
.L8006f2dc:
    sw	$v1,116($s0)
.L8006f2e0:
    sw	$v1,108($s0)
.L8006f2e4:
    lbu	$v1,10110($s2)
.L8006f2e8:
    nor	$v0,$zero,$v0
.L8006f2ec:
    and	$v1,$v1,$v0
.L8006f2f0:
    j	.L8006f304
.L8006f2f4:
    sb	$v1,10110($s2)
.L8006f2f8:
    lw	$v0,84($s0)
.L8006f2fc:
    nop
.L8006f300:
    sw	$v0,88($s0)
.L8006f304:
    lbu	$v1,146($s0)
.L8006f308:
    li	$v0,7
.L8006f30c:
    beq	$v1,$v0,.L8006f330
.L8006f310:
    li	$v0,0x9284
.L8006f314:
    beq	$v1,$zero,.L8006f330
.L8006f318:
    nop
.L8006f31c:
    lw	$v0,128($s0)
.L8006f320:
    nop
.L8006f324:
    addiu	$v0,$v0,1
.L8006f328:
    sw	$v0,128($s0)
.L8006f32c:
    li	$v0,0x9284
.L8006f330:
    addu	$s0,$s0,$v0
.L8006f334:
    addiu	$s1,$s1,1
.L8006f338:
    slti	$v0,$s1,2
.L8006f33c:
    bne	$v0,$zero,.L8006f250
.L8006f340:
    lui	$v0,0x800f
.L8006f344:
    li	$v1,2
.L8006f348:
    sw	$zero,10492($v0)
.L8006f34c:
    lui	$v0,0x800f
.L8006f350:
    jal	FUN_8007fc8c
.L8006f354:
    sh	$v1,10504($v0)
.L8006f358:
    jal	FUN_800991e0
.L8006f35c:
    nop
.L8006f360:
    jal	FUN_80028358
.L8006f364:
    li	$a0,771
.L8006f368:
    lw	$ra,28($sp)
.L8006f36c:
    lw	$s2,24($sp)
.L8006f370:
    lw	$s1,20($sp)
.L8006f374:
    lw	$s0,16($sp)
.L8006f378:
    jr	$ra
.L8006f37c:
    addiu	$sp,$sp,32
.size FUN_8006f1fc, .-FUN_8006f1fc

.section .text.FUN_8006f380, "ax", @progbits
.globl FUN_8006f380
.type FUN_8006f380, @function
FUN_8006f380:
.L8006f380:
    addiu	$sp,$sp,-32
.L8006f384:
    lui	$v0,0x800f
.L8006f388:
    sw	$s0,16($sp)
.L8006f38c:
    addiu	$s0,$v0,10504
.L8006f390:
    sw	$ra,28($sp)
.L8006f394:
    sw	$s2,24($sp)
.L8006f398:
    sw	$s1,20($sp)
.L8006f39c:
    lw	$v0,4($s0)
.L8006f3a0:
    nop
.L8006f3a4:
    lhu	$a0,4($v0)
.L8006f3a8:
    jal	FUN_80098f8c
.L8006f3ac:
    li	$s1,1
.L8006f3b0:
    lui	$v0,0x8011
.L8006f3b4:
    sb	$s1,27686($v0)
.L8006f3b8:
    lui	$v0,0x800f
.L8006f3bc:
    addiu	$s2,$v0,10376
.L8006f3c0:
    lw	$v1,116($s2)
.L8006f3c4:
    li	$v0,160
.L8006f3c8:
    bne	$v1,$v0,.L8006f3d8
.L8006f3cc:
    nop
.L8006f3d0:
    jal	FUN_80028358
.L8006f3d4:
    li	$a0,769
.L8006f3d8:
    jal	FUN_8007fdec
.L8006f3dc:
    nop
.L8006f3e0:
    li	$v1,-1
.L8006f3e4:
    bne	$v0,$v1,.L8006f484
.L8006f3e8:
    li	$v0,6
.L8006f3ec:
    lw	$v0,116($s2)
.L8006f3f0:
    nop
.L8006f3f4:
    slti	$v0,$v0,1801
.L8006f3f8:
    bne	$v0,$zero,.L8006f408
.L8006f3fc:
    nop
.L8006f400:
    j	.L8006f484
.L8006f404:
    li	$v0,7
.L8006f408:
    jal	FUN_8006e5d4
.L8006f40c:
    nop
.L8006f410:
    beq	$v0,$zero,.L8006f480
.L8006f414:
    lui	$a0,0x800b
.L8006f418:
    lw	$v0,-14104($a0)
.L8006f41c:
    nop
.L8006f420:
    sb	$s1,248($v0)
.L8006f424:
    lh	$v0,16($s0)
.L8006f428:
    nop
.L8006f42c:
    bne	$v0,$zero,.L8006f444
.L8006f430:
    lui	$v0,0x1
.L8006f434:
    lw	$v0,-14104($a0)
.L8006f438:
    nop
.L8006f43c:
    sb	$s1,241($v0)
.L8006f440:
    lui	$v0,0x1
.L8006f444:
    addu	$a1,$s0,$v0
.L8006f448:
    lbu	$v1,10110($a1)
.L8006f44c:
    li	$v0,1
.L8006f450:
    beq	$v1,$zero,.L8006f45c
.L8006f454:
    sh	$v0,16($s0)
.L8006f458:
    sb	$zero,22($s0)
.L8006f45c:
    lbu	$v0,10107($a1)
.L8006f460:
    nop
.L8006f464:
    beq	$v0,$zero,.L8006f484
.L8006f468:
    li	$v0,7
.L8006f46c:
    lw	$v0,-14104($a0)
.L8006f470:
    nop
.L8006f474:
    sb	$zero,241($v0)
.L8006f478:
    j	.L8006f400
.L8006f47c:
    sh	$zero,16($s0)
.L8006f480:
    li	$v0,4
.L8006f484:
    lw	$ra,28($sp)
.L8006f488:
    lw	$s2,24($sp)
.L8006f48c:
    lw	$s1,20($sp)
.L8006f490:
    lw	$s0,16($sp)
.L8006f494:
    jr	$ra
.L8006f498:
    addiu	$sp,$sp,32
.size FUN_8006f380, .-FUN_8006f380

.section .text.FUN_8006f49c, "ax", @progbits
.globl FUN_8006f49c
.type FUN_8006f49c, @function
FUN_8006f49c:
.L8006f49c:
    addiu	$sp,$sp,-48
.L8006f4a0:
    sw	$s1,36($sp)
.L8006f4a4:
    addu	$s1,$zero,$zero
.L8006f4a8:
    lui	$a0,0x8011
.L8006f4ac:
    lui	$v0,0x800f
.L8006f4b0:
    sw	$s0,32($sp)
.L8006f4b4:
    addiu	$s0,$v0,10376
.L8006f4b8:
    sw	$ra,40($sp)
.L8006f4bc:
    lw	$v0,116($s0)
.L8006f4c0:
    li	$v1,1
.L8006f4c4:
    slti	$v0,$v0,60
.L8006f4c8:
    beq	$v0,$zero,.L8006f4d8
.L8006f4cc:
    sb	$v1,27686($a0)
.L8006f4d0:
    jal	FUN_8002a8b0
.L8006f4d4:
    li	$a0,-1
.L8006f4d8:
    lw	$v1,116($s0)
.L8006f4dc:
    li	$v0,2
.L8006f4e0:
    bne	$v1,$v0,.L8006f564
.L8006f4e4:
    lui	$v0,0x800f
.L8006f4e8:
    addiu	$v1,$v0,10504
.L8006f4ec:
    lb	$v0,22($v1)
.L8006f4f0:
    nop
.L8006f4f4:
    beq	$v0,$zero,.L8006f50c
.L8006f4f8:
    nop
.L8006f4fc:
    lh	$v0,12($v1)
.L8006f500:
    nop
.L8006f504:
    bne	$v0,$zero,.L8006f564
.L8006f508:
    nop
.L8006f50c:
    lw	$a0,112($s0)
.L8006f510:
    lui	$v0,0xaaaa
.L8006f514:
    ori	$v0,$v0,0xaaab
.L8006f518:
    multu	$a0,$v0
.L8006f51c:
    lui	$v0,0x8002
.L8006f520:
    addiu	$t2,$v0,-13632
.L8006f524:
    lw	$a3,0($t2)
.L8006f528:
    lw	$t0,4($t2)
.L8006f52c:
    lw	$t1,8($t2)
.L8006f530:
    sw	$a3,16($sp)
.L8006f534:
    sw	$t0,20($sp)
.L8006f538:
    sw	$t1,24($sp)
.L8006f53c:
    mfhi	$a3
.L8006f540:
    srl	$v1,$a3,0x1
.L8006f544:
    sll	$v0,$v1,0x1
.L8006f548:
    addu	$v0,$v0,$v1
.L8006f54c:
    subu	$a0,$a0,$v0
.L8006f550:
    sll	$a0,$a0,0x2
.L8006f554:
    addu	$v0,$sp,$a0
.L8006f558:
    lhu	$a0,16($v0)
.L8006f55c:
    jal	FUN_80028358
.L8006f560:
    nop
.L8006f564:
    jal	FUN_8007fdec
.L8006f568:
    nop
.L8006f56c:
    jal	FUN_8006e5d4
.L8006f570:
    addu	$s0,$v0,$zero
.L8006f574:
    beq	$v0,$zero,.L8006f5ec
.L8006f578:
    lui	$a2,0x800b
.L8006f57c:
    lw	$v0,-14104($a2)
.L8006f580:
    li	$v1,1
.L8006f584:
    sb	$v1,248($v0)
.L8006f588:
    lui	$v0,0x800f
.L8006f58c:
    addiu	$a0,$v0,10504
.L8006f590:
    lh	$v0,16($a0)
.L8006f594:
    nop
.L8006f598:
    bne	$v0,$zero,.L8006f5b0
.L8006f59c:
    lui	$v0,0x1
.L8006f5a0:
    lw	$v0,-14104($a2)
.L8006f5a4:
    nop
.L8006f5a8:
    sb	$v1,241($v0)
.L8006f5ac:
    lui	$v0,0x1
.L8006f5b0:
    addu	$a1,$a0,$v0
.L8006f5b4:
    lbu	$v1,10110($a1)
.L8006f5b8:
    li	$v0,1
.L8006f5bc:
    beq	$v1,$zero,.L8006f5c8
.L8006f5c0:
    sh	$v0,16($a0)
.L8006f5c4:
    sb	$zero,22($a0)
.L8006f5c8:
    lbu	$v0,10107($a1)
.L8006f5cc:
    nop
.L8006f5d0:
    beq	$v0,$zero,.L8006f6b8
.L8006f5d4:
    li	$v0,7
.L8006f5d8:
    lw	$v0,-14104($a2)
.L8006f5dc:
    nop
.L8006f5e0:
    sb	$zero,241($v0)
.L8006f5e4:
    j	.L8006f6a4
.L8006f5e8:
    sh	$zero,16($a0)
.L8006f5ec:
    lui	$v0,0x800f
.L8006f5f0:
    addiu	$v1,$v0,10504
.L8006f5f4:
    lh	$v0,18($v1)
.L8006f5f8:
    li	$a0,1
.L8006f5fc:
    beq	$v0,$a0,.L8006f640
.L8006f600:
    li	$v0,-2
.L8006f604:
    bne	$s0,$v0,.L8006f644
.L8006f608:
    addiu	$v0,$s0,-1
.L8006f60c:
    lui	$v0,0x1
.L8006f610:
    addu	$v0,$v1,$v0
.L8006f614:
    lbu	$v0,10107($v0)
.L8006f618:
    nop
.L8006f61c:
    bne	$v0,$zero,.L8006f644
.L8006f620:
    addiu	$v0,$s0,-1
.L8006f624:
    jal	FUN_8009ff74
.L8006f628:
    sh	$a0,16($v1)
.L8006f62c:
    andi	$v0,$v0,0xff
.L8006f630:
    beq	$v0,$zero,.L8006f644
.L8006f634:
    addiu	$v0,$s0,-1
.L8006f638:
    jal	FUN_8007f07c
.L8006f63c:
    li	$s1,1
.L8006f640:
    addiu	$v0,$s0,-1
.L8006f644:
    sltiu	$v0,$v0,2
.L8006f648:
    beq	$v0,$zero,.L8006f6ac
.L8006f64c:
    lui	$v0,0x800f
.L8006f650:
    addiu	$s0,$v0,10504
.L8006f654:
    lh	$v0,16($s0)
.L8006f658:
    nop
.L8006f65c:
    bne	$v0,$zero,.L8006f6ac
.L8006f660:
    li	$s1,1
.L8006f664:
    lui	$v0,0x1
.L8006f668:
    addu	$v0,$s0,$v0
.L8006f66c:
    lbu	$v0,10110($v0)
.L8006f670:
    nop
.L8006f674:
    beq	$v0,$zero,.L8006f6a0
.L8006f678:
    lui	$v0,0x800f
.L8006f67c:
    jal	FUN_800705a4
.L8006f680:
    nop
.L8006f684:
    bne	$v0,$zero,.L8006f69c
.L8006f688:
    nop
.L8006f68c:
    li	$v0,1
.L8006f690:
    sb	$v0,22($s0)
.L8006f694:
    j	.L8006f6b8
.L8006f698:
    li	$v0,3
.L8006f69c:
    lui	$v0,0x800f
.L8006f6a0:
    sb	$zero,10526($v0)
.L8006f6a4:
    j	.L8006f6b8
.L8006f6a8:
    li	$v0,7
.L8006f6ac:
    bne	$s1,$zero,.L8006f6b8
.L8006f6b0:
    li	$v0,7
.L8006f6b4:
    li	$v0,6
.L8006f6b8:
    lw	$ra,40($sp)
.L8006f6bc:
    lw	$s1,36($sp)
.L8006f6c0:
    lw	$s0,32($sp)
.L8006f6c4:
    jr	$ra
.L8006f6c8:
    addiu	$sp,$sp,48
.size FUN_8006f49c, .-FUN_8006f49c

.section .text.FUN_8006f6cc, "ax", @progbits
.globl FUN_8006f6cc
.type FUN_8006f6cc, @function
FUN_8006f6cc:
.L8006f6cc:
    addiu	$sp,$sp,-32
.L8006f6d0:
    lui	$v0,0x800f
.L8006f6d4:
    sw	$s2,24($sp)
.L8006f6d8:
    addiu	$s2,$v0,10504
.L8006f6dc:
    li	$a0,1
.L8006f6e0:
    sw	$s0,16($sp)
.L8006f6e4:
    lui	$s0,0x1
.L8006f6e8:
    sw	$ra,28($sp)
.L8006f6ec:
    sw	$s1,20($sp)
.L8006f6f0:
    lh	$v0,28($s2)
.L8006f6f4:
    li	$v1,4
.L8006f6f8:
    addu	$v0,$v0,$s2
.L8006f6fc:
    addu	$v0,$v0,$s0
.L8006f700:
    jal	FUN_8002a8b0
.L8006f704:
    sb	$v1,9512($v0)
.L8006f708:
    addu	$s0,$s2,$s0
.L8006f70c:
    lbu	$v0,10107($s0)
.L8006f710:
    nop
.L8006f714:
    beq	$v0,$zero,.L8006f76c
.L8006f718:
    addu	$s1,$zero,$zero
.L8006f71c:
    addu	$s0,$s2,$zero
.L8006f720:
    lbu	$v1,146($s0)
.L8006f724:
    li	$v0,7
.L8006f728:
    beq	$v1,$v0,.L8006f758
.L8006f72c:
    li	$v0,0x9284
.L8006f730:
    beq	$v1,$zero,.L8006f758
.L8006f734:
    addu	$a0,$s1,$zero
.L8006f738:
    lw	$v0,84($s0)
.L8006f73c:
    lw	$a1,88($s0)
.L8006f740:
    jal	FUN_800a37f8
.L8006f744:
    subu	$a1,$v0,$a1
.L8006f748:
    addu	$a0,$s1,$zero
.L8006f74c:
    jal	FUN_80099628
.L8006f750:
    sw	$v0,100($s0)
.L8006f754:
    li	$v0,0x9284
.L8006f758:
    addu	$s0,$s0,$v0
.L8006f75c:
    addiu	$s1,$s1,1
.L8006f760:
    slti	$v0,$s1,2
.L8006f764:
    bne	$v0,$zero,.L8006f720
.L8006f768:
    nop
.L8006f76c:
    lw	$ra,28($sp)
.L8006f770:
    lw	$s2,24($sp)
.L8006f774:
    lw	$s1,20($sp)
.L8006f778:
    lw	$s0,16($sp)
.L8006f77c:
    jr	$ra
.L8006f780:
    addiu	$sp,$sp,32
.size FUN_8006f6cc, .-FUN_8006f6cc

.section .text.FUN_8006f784, "ax", @progbits
.globl FUN_8006f784
.type FUN_8006f784, @function
FUN_8006f784:
.L8006f784:
    addiu	$sp,$sp,-24
.L8006f788:
    lui	$v0,0x800f
.L8006f78c:
    lui	$v1,0x800f
.L8006f790:
    sw	$s0,16($sp)
.L8006f794:
    addiu	$s0,$v1,10504
.L8006f798:
    sw	$ra,20($sp)
.L8006f79c:
    sw	$zero,10492($v0)
.L8006f7a0:
    lh	$a0,16($s0)
.L8006f7a4:
    li	$v0,5
.L8006f7a8:
    bne	$a0,$zero,.L8006f7b8
.L8006f7ac:
    sh	$v0,10504($v1)
.L8006f7b0:
    jal	FUN_80028358
.L8006f7b4:
    li	$a0,771
.L8006f7b8:
    addu	$a0,$zero,$zero
.L8006f7bc:
    li	$a1,7
.L8006f7c0:
    addu	$v1,$s0,$zero
.L8006f7c4:
    lbu	$v0,146($v1)
.L8006f7c8:
    nop
.L8006f7cc:
    beq	$v0,$a1,.L8006f7f0
.L8006f7d0:
    nop
.L8006f7d4:
    beq	$v0,$zero,.L8006f7f4
.L8006f7d8:
    li	$v0,0x9284
.L8006f7dc:
    lh	$v0,46($v1)
.L8006f7e0:
    nop
.L8006f7e4:
    slti	$v0,$v0,500
.L8006f7e8:
    beq	$v0,$zero,.L8006f858
.L8006f7ec:
    nop
.L8006f7f0:
    li	$v0,0x9284
.L8006f7f4:
    addu	$v1,$v1,$v0
.L8006f7f8:
    addiu	$a0,$a0,1
.L8006f7fc:
    slti	$v0,$a0,2
.L8006f800:
    bne	$v0,$zero,.L8006f7c4
.L8006f804:
    nop
.L8006f808:
    lui	$v1,0x800f
.L8006f80c:
    addiu	$v1,$v1,10504
.L8006f810:
    lhu	$v0,12($v1)
.L8006f814:
    lb	$a1,8($v1)
.L8006f818:
    addiu	$v0,$v0,1
.L8006f81c:
    sh	$v0,14($v1)
.L8006f820:
    lb	$v0,9($v1)
.L8006f824:
    lb	$a0,10($v1)
.L8006f828:
    addu	$v0,$a1,$v0
.L8006f82c:
    subu	$v0,$v0,$a0
.L8006f830:
    lb	$a0,11($v1)
.L8006f834:
    lh	$v1,16($v1)
.L8006f838:
    nop
.L8006f83c:
    beq	$v1,$zero,.L8006f868
.L8006f840:
    subu	$v0,$v0,$a0
.L8006f844:
    slt	$v0,$a1,$v0
.L8006f848:
    beq	$v0,$zero,.L8006f870
.L8006f84c:
    lui	$v1,0x800f
.L8006f850:
    j	.L8006f878
.L8006f854:
    nop
.L8006f858:
    jal	FUN_80028358
.L8006f85c:
    li	$a0,769
.L8006f860:
    j	.L8006f80c
.L8006f864:
    lui	$v1,0x800f
.L8006f868:
    bgtz	$v0,.L8006f878
.L8006f86c:
    lui	$v1,0x800f
.L8006f870:
    li	$v0,-1
.L8006f874:
    sh	$v0,10518($v1)
.L8006f878:
    lw	$ra,20($sp)
.L8006f87c:
    lw	$s0,16($sp)
.L8006f880:
    jr	$ra
.L8006f884:
    addiu	$sp,$sp,24
.size FUN_8006f784, .-FUN_8006f784

.section .text.FUN_8006f888, "ax", @progbits
.globl FUN_8006f888
.type FUN_8006f888, @function
FUN_8006f888:
.L8006f888:
    addiu	$sp,$sp,-24
.L8006f88c:
    lui	$a0,0x8011
.L8006f890:
    lui	$v0,0x800f
.L8006f894:
    lh	$v1,10520($v0)
.L8006f898:
    li	$v0,1
.L8006f89c:
    sw	$ra,20($sp)
.L8006f8a0:
    sw	$s0,16($sp)
.L8006f8a4:
    beq	$v1,$zero,.L8006f9ac
.L8006f8a8:
    sb	$v0,27686($a0)
.L8006f8ac:
    lui	$v0,0x800f
.L8006f8b0:
    addiu	$a0,$v0,10376
.L8006f8b4:
    lw	$v1,116($a0)
.L8006f8b8:
    li	$v0,65
.L8006f8bc:
    bne	$v1,$v0,.L8006f954
.L8006f8c0:
    lui	$v0,0x800f
.L8006f8c4:
    lw	$a0,112($a0)
.L8006f8c8:
    lui	$v0,0xaaaa
.L8006f8cc:
    ori	$v0,$v0,0xaaab
.L8006f8d0:
    multu	$a0,$v0
.L8006f8d4:
    mfhi	$a2
.L8006f8d8:
    srl	$v1,$a2,0x2
.L8006f8dc:
    sll	$v0,$v1,0x1
.L8006f8e0:
    addu	$v0,$v0,$v1
.L8006f8e4:
    sll	$v0,$v0,0x1
.L8006f8e8:
    subu	$v1,$a0,$v0
.L8006f8ec:
    sltiu	$v0,$v1,6
.L8006f8f0:
    beq	$v0,$zero,.L8006f948
.L8006f8f4:
    lui	$v0,0x8002
.L8006f8f8:
    addiu	$v0,$v0,-13608
.L8006f8fc:
    sll	$v1,$v1,0x2
.L8006f900:
    addu	$v1,$v1,$v0
.L8006f904:
    lw	$v0,0($v1)
.L8006f908:
    nop
.L8006f90c:
    jr	$v0
.L8006f910:
    nop
.L8006f914:
    j	.L8006f940
.L8006f918:
    li	$a0,32
.L8006f91c:
    j	.L8006f940
.L8006f920:
    li	$a0,33
.L8006f924:
    j	.L8006f940
.L8006f928:
    li	$a0,34
.L8006f92c:
    j	.L8006f940
.L8006f930:
    li	$a0,35
.L8006f934:
    j	.L8006f940
.L8006f938:
    li	$a0,36
.L8006f93c:
    li	$a0,37
.L8006f940:
    jal	FUN_8007b778
.L8006f944:
    li	$a1,1
.L8006f948:
    lui	$v0,0x8011
.L8006f94c:
    sb	$zero,27685($v0)
.L8006f950:
    lui	$v0,0x800f
.L8006f954:
    addiu	$s0,$v0,10376
.L8006f958:
    lw	$v0,116($s0)
.L8006f95c:
    nop
.L8006f960:
    slti	$v0,$v0,66
.L8006f964:
    bne	$v0,$zero,.L8006f974
.L8006f968:
    nop
.L8006f96c:
    jal	FUN_8007638c
.L8006f970:
    nop
.L8006f974:
    lw	$v1,116($s0)
.L8006f978:
    li	$v0,95
.L8006f97c:
    bne	$v1,$v0,.L8006f9ac
.L8006f980:
    nop
.L8006f984:
    jal	FUN_8007638c
.L8006f988:
    nop
.L8006f98c:
    bne	$v0,$zero,.L8006f9a4
.L8006f990:
    nop
.L8006f994:
    jal	FUN_800358f8
.L8006f998:
    addu	$a0,$zero,$zero
.L8006f99c:
    j	.L8006f984
.L8006f9a0:
    nop
.L8006f9a4:
    jal	FUN_80027ed4
.L8006f9a8:
    nop
.L8006f9ac:
    jal	FUN_8007fdec
.L8006f9b0:
    nop
.L8006f9b4:
    lui	$v1,0x800f
.L8006f9b8:
    lw	$v1,10492($v1)
.L8006f9bc:
    addu	$a0,$v0,$zero
.L8006f9c0:
    slti	$v0,$v1,240
.L8006f9c4:
    bne	$v0,$zero,.L8006fa20
.L8006f9c8:
    li	$v0,7
.L8006f9cc:
    slti	$v0,$v1,301
.L8006f9d0:
    beq	$v0,$zero,.L8006f9e8
.L8006f9d4:
    li	$v0,2
.L8006f9d8:
    beq	$a0,$v0,.L8006f9e8
.L8006f9dc:
    li	$v0,-2
.L8006f9e0:
    bne	$a0,$v0,.L8006fa20
.L8006f9e4:
    li	$v0,7
.L8006f9e8:
    lui	$v0,0x800f
.L8006f9ec:
    addiu	$s0,$v0,10504
.L8006f9f0:
    lh	$v0,16($s0)
.L8006f9f4:
    nop
.L8006f9f8:
    beq	$v0,$zero,.L8006fa20
.L8006f9fc:
    li	$v0,8
.L8006fa00:
    jal	FUN_8007b960
.L8006fa04:
    nop
.L8006fa08:
    lh	$v0,14($s0)
.L8006fa0c:
    lhu	$v1,14($s0)
.L8006fa10:
    bltz	$v0,.L8006fa20
.L8006fa14:
    li	$v0,11
.L8006fa18:
    sh	$v1,12($s0)
.L8006fa1c:
    li	$v0,1
.L8006fa20:
    lw	$ra,20($sp)
.L8006fa24:
    lw	$s0,16($sp)
.L8006fa28:
    jr	$ra
.L8006fa2c:
    addiu	$sp,$sp,24
.size FUN_8006f888, .-FUN_8006f888

.section .text.FUN_8006fa30, "ax", @progbits
.globl FUN_8006fa30
.type FUN_8006fa30, @function
FUN_8006fa30:
.L8006fa30:
    addiu	$sp,$sp,-40
.L8006fa34:
    sw	$ra,36($sp)
.L8006fa38:
    sw	$s4,32($sp)
.L8006fa3c:
    sw	$s3,28($sp)
.L8006fa40:
    sw	$s2,24($sp)
.L8006fa44:
    sw	$s1,20($sp)
.L8006fa48:
    jal	FUN_80081e90
.L8006fa4c:
    sw	$s0,16($sp)
.L8006fa50:
    lui	$v0,0x800f
.L8006fa54:
    addiu	$a1,$v0,10504
.L8006fa58:
    lh	$v0,16($a1)
.L8006fa5c:
    nop
.L8006fa60:
    beq	$v0,$zero,.L8006fa7c
.L8006fa64:
    nop
.L8006fa68:
    lbu	$v0,11($a1)
.L8006fa6c:
    lbu	$v1,8($a1)
.L8006fa70:
    nop
.L8006fa74:
    addu	$v0,$v0,$v1
.L8006fa78:
    sb	$v0,11($a1)
.L8006fa7c:
    lhu	$v1,12($a1)
.L8006fa80:
    nop
.L8006fa84:
    sltiu	$v0,$v1,6
.L8006fa88:
    beq	$v0,$zero,.L8006fabc
.L8006fa8c:
    addu	$s1,$zero,$zero
.L8006fa90:
    lw	$v0,4($a1)
.L8006fa94:
    nop
.L8006fa98:
    lbu	$a0,3($v0)
.L8006fa9c:
    sll	$v0,$v1,0x10
.L8006faa0:
    sra	$v0,$v0,0xf
.L8006faa4:
    addu	$v0,$v0,$a1
.L8006faa8:
    lui	$v1,0x1
.L8006faac:
    addu	$v0,$v0,$v1
.L8006fab0:
    sll	$a0,$a0,0x18
.L8006fab4:
    sra	$a0,$a0,0x18
.L8006fab8:
    sh	$a0,9672($v0)
.L8006fabc:
    li	$s4,6
.L8006fac0:
    addu	$s3,$a1,$zero
.L8006fac4:
    addu	$s0,$s3,$zero
.L8006fac8:
    addu	$s2,$s1,$zero
.L8006facc:
    lbu	$v1,146($s0)
.L8006fad0:
    li	$v0,7
.L8006fad4:
    beq	$v1,$v0,.L8006fb6c
.L8006fad8:
    li	$v0,0x9284
.L8006fadc:
    beq	$v1,$zero,.L8006fb6c
.L8006fae0:
    addu	$a2,$zero,$zero
.L8006fae4:
    addu	$a1,$s2,$zero
.L8006fae8:
    addu	$v1,$a1,$s3
.L8006faec:
    lw	$v0,192($v1)
.L8006faf0:
    lw	$a0,156($v1)
.L8006faf4:
    addiu	$a2,$a2,1
.L8006faf8:
    addu	$v0,$v0,$a0
.L8006fafc:
    sw	$v0,192($v1)
.L8006fb00:
    slti	$v0,$a2,7
.L8006fb04:
    bne	$v0,$zero,.L8006fae8
.L8006fb08:
    addiu	$a1,$a1,4
.L8006fb0c:
    lh	$v0,188($s0)
.L8006fb10:
    nop
.L8006fb14:
    bgtz	$v0,.L8006fb2c
.L8006fb18:
    slti	$v0,$v0,8
.L8006fb1c:
    sh	$s4,188($s0)
.L8006fb20:
    lh	$v0,188($s0)
.L8006fb24:
    nop
.L8006fb28:
    slti	$v0,$v0,8
.L8006fb2c:
    bne	$v0,$zero,.L8006fb38
.L8006fb30:
    nop
.L8006fb34:
    sh	$s4,188($s0)
.L8006fb38:
    addu	$a0,$s1,$zero
.L8006fb3c:
    lhu	$v0,224($s0)
.L8006fb40:
    lhu	$a1,188($s0)
.L8006fb44:
    lw	$v1,220($s0)
.L8006fb48:
    lw	$a2,184($s0)
.L8006fb4c:
    addu	$v0,$v0,$a1
.L8006fb50:
    addu	$v1,$v1,$a2
.L8006fb54:
    sh	$v0,224($s0)
.L8006fb58:
    jal	FUN_8006e9ec
.L8006fb5c:
    sw	$v1,220($s0)
.L8006fb60:
    jal	FUN_8006e750
.L8006fb64:
    addu	$a0,$s1,$zero
.L8006fb68:
    li	$v0,0x9284
.L8006fb6c:
    addu	$s0,$s0,$v0
.L8006fb70:
    addu	$s2,$s2,$v0
.L8006fb74:
    addiu	$s1,$s1,1
.L8006fb78:
    slti	$v0,$s1,2
.L8006fb7c:
    bne	$v0,$zero,.L8006facc
.L8006fb80:
    nop
.L8006fb84:
    lw	$ra,36($sp)
.L8006fb88:
    lw	$s4,32($sp)
.L8006fb8c:
    lw	$s3,28($sp)
.L8006fb90:
    lw	$s2,24($sp)
.L8006fb94:
    lw	$s1,20($sp)
.L8006fb98:
    lw	$s0,16($sp)
.L8006fb9c:
    jr	$ra
.L8006fba0:
    addiu	$sp,$sp,40
.size FUN_8006fa30, .-FUN_8006fa30

.section .text.FUN_80070aac, "ax", @progbits
.globl FUN_80070aac
.type FUN_80070aac, @function
FUN_80070aac:
.L80070aac:
    jr	$ra
.L80070ab0:
    nop
.size FUN_80070aac, .-FUN_80070aac

.section .text.FUN_8007f598, "ax", @progbits
.globl FUN_8007f598
.type FUN_8007f598, @function
FUN_8007f598:
.L8007f598:
    addiu   $sp,$sp,-40
.L8007f59c:
    sw      $s0,16($sp)
.L8007f5a0:
    addu    $s0,$a0,$zero
.L8007f5a4:
    sw      $s2,24($sp)
.L8007f5a8:
    addu    $s2,$a1,$zero
.L8007f5ac:
    addiu   $a0,$zero,1
.L8007f5b0:
    sw      $ra,32($sp)
.L8007f5b4:
    sw      $s3,28($sp)
.L8007f5b8:
    jal     FUN_800358f8
.L8007f5bc:
    sw      $s1,20($sp)
.L8007f5c0:
    addu    $s1,$v0,$zero
.L8007f5c4:
    blez    $s0,.L8007f62c
.L8007f5c8:
    addiu   $s3,$zero,0xbe
.L8007f5cc:
    addu    $s2,$s1,$s2
.L8007f5d0:
    jal     FUN_8002a8b0
.L8007f5d4:
    nop
.L8007f5d8:
    jal     FUN_8002a8b0
.L8007f5dc:
    nop
.L8007f5e0:
    jal     FUN_8002a8b0
.L8007f5e4:
    nop
.L8007f5e8:
    jal     FUN_800358f8
.L8007f5ec:
    addiu   $a0,$zero,1
.L8007f5f0:
    addu    $v1,$v0,$zero
.L8007f5f4:
    slt     $v0,$s2,$v1
.L8007f5f8:
    bne     $v0,$zero,.L8007f62c
.L8007f5fc:
    slt     $v0,$v1,$s1
.L8007f600:
    bne     $v0,$zero,.L8007f62c
.L8007f604:
    sltu    $v0,$s3,$v1
.L8007f608:
    bne     $v0,$zero,.L8007f62c
.L8007f60c:
    andi    $v0,$s0,7
.L8007f610:
    bne     $v0,$zero,.L8007f620
.L8007f614:
    nop
.L8007f618:
    jal     FUN_8002a8b0
.L8007f61c:
    nop
.L8007f620:
    addiu   $s0,$s0,-1
.L8007f624:
    bgtz    $s0,.L8007f5d0
.L8007f628:
    nop
.L8007f62c:
    addu    $v0,$s0,$zero
.L8007f630:
    lw      $ra,32($sp)
.L8007f634:
    lw      $s3,28($sp)
.L8007f638:
    lw      $s2,24($sp)
.L8007f63c:
    lw      $s1,20($sp)
.L8007f640:
    lw      $s0,16($sp)
.L8007f644:
    jr      $ra
.L8007f648:
    addiu   $sp,$sp,40
.size FUN_8007f598, .-FUN_8007f598
