.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009ab24
.globl FUN_8009ab24
.type FUN_8009ab24, @function
FUN_8009ab24:
.L8009ab24:
/* 0x8009ab24 */ lui	$v0,0x800e
.L8009ab28:
/* 0x8009ab28 */ lw	$v0,2844($v0)
.L8009ab2c:
/* 0x8009ab2c */ addiu	$sp,$sp,-32
.L8009ab30:
/* 0x8009ab30 */ sw	$ra,28($sp)
.L8009ab34:
/* 0x8009ab34 */ sw	$s2,24($sp)
.L8009ab38:
/* 0x8009ab38 */ sw	$s1,20($sp)
.L8009ab3c:
/* 0x8009ab3c */ sw	$s0,16($sp)
.L8009ab40:
/* 0x8009ab40 */ lbu	$v1,4($v0)
.L8009ab44:
/* 0x8009ab44 */ sll	$zero,$zero,0x0
.L8009ab48:
/* 0x8009ab48 */ sltiu	$v0,$v1,36
.L8009ab4c:
/* 0x8009ab4c */ beq	$v0,$zero,.L8009ae1c
.L8009ab50:
/* 0x8009ab50 */ addu	$s2,$zero,$zero
.L8009ab54:
/* 0x8009ab54 */ lui	$v0,0x8002
.L8009ab58:
/* 0x8009ab58 */ addiu	$v0,$v0,-2988
.L8009ab5c:
/* 0x8009ab5c */ sll	$v1,$v1,0x2
.L8009ab60:
/* 0x8009ab60 */ addu	$v1,$v1,$v0
.L8009ab64:
/* 0x8009ab64 */ lw	$v0,0($v1)
.L8009ab68:
/* 0x8009ab68 */ sll	$zero,$zero,0x0
.L8009ab6c:
/* 0x8009ab6c */ jr	$v0
.L8009ab70:
/* 0x8009ab70 */ sll	$zero,$zero,0x0
.L8009ab74:
/* 0x8009ab74 */ lui	$v1,0x800e
.L8009ab78:
/* 0x8009ab78 */ lw	$a0,2844($v1)
.L8009ab7c:
/* 0x8009ab7c */ addiu	$v0,$zero,16
.L8009ab80:
/* 0x8009ab80 */ sb	$v0,4($a0)
.L8009ab84:
/* 0x8009ab84 */ lw	$v0,2844($v1)
.L8009ab88:
/* 0x8009ab88 */ sll	$zero,$zero,0x0
.L8009ab8c:
/* 0x8009ab8c */ sb	$zero,5($v0)
.L8009ab90:
/* 0x8009ab90 */ lw	$v0,2844($v1)
.L8009ab94:
/* 0x8009ab94 */ j	.L8009ae1c
.L8009ab98:
/* 0x8009ab98 */ sw	$zero,96($v0)
.L8009ab9c:
/* 0x8009ab9c */ lui	$s0,0x800e
.L8009aba0:
/* 0x8009aba0 */ lw	$a1,2844($s0)
.L8009aba4:
/* 0x8009aba4 */ ori	$a2,$zero,0x8002
.L8009aba8:
/* 0x8009aba8 */ lbu	$a0,12($a1)
.L8009abac:
/* 0x8009abac */ jal	0x8002d13c
.L8009abb0:
/* 0x8009abb0 */ addiu	$a1,$a1,24
.L8009abb4:
/* 0x8009abb4 */ lw	$a0,2844($s0)
.L8009abb8:
/* 0x8009abb8 */ addiu	$v1,$zero,-1
.L8009abbc:
/* 0x8009abbc */ bne	$v0,$v1,.L8009ac04
.L8009abc0:
/* 0x8009abc0 */ sw	$v0,108($a0)
.L8009abc4:
/* 0x8009abc4 */ lw	$v0,96($a0)
.L8009abc8:
/* 0x8009abc8 */ sll	$zero,$zero,0x0
.L8009abcc:
/* 0x8009abcc */ sltiu	$v0,$v0,21
.L8009abd0:
/* 0x8009abd0 */ bne	$v0,$zero,.L8009abe8
.L8009abd4:
/* 0x8009abd4 */ addiu	$v0,$zero,34
.L8009abd8:
/* 0x8009abd8 */ sb	$v0,4($a0)
.L8009abdc:
/* 0x8009abdc */ lw	$v0,2844($s0)
.L8009abe0:
/* 0x8009abe0 */ sll	$zero,$zero,0x0
.L8009abe4:
/* 0x8009abe4 */ sb	$zero,5($v0)
.L8009abe8:
/* 0x8009abe8 */ lw	$v1,2844($s0)
.L8009abec:
/* 0x8009abec */ sll	$zero,$zero,0x0
.L8009abf0:
/* 0x8009abf0 */ lw	$v0,96($v1)
.L8009abf4:
/* 0x8009abf4 */ sll	$zero,$zero,0x0
.L8009abf8:
/* 0x8009abf8 */ addiu	$v0,$v0,1
.L8009abfc:
/* 0x8009abfc */ j	.L8009ae1c
.L8009ac00:
/* 0x8009ac00 */ sw	$v0,96($v1)
.L8009ac04:
/* 0x8009ac04 */ j	.L8009acbc
.L8009ac08:
/* 0x8009ac08 */ addiu	$v0,$zero,17
.L8009ac0c:
/* 0x8009ac0c */ lui	$s0,0x800e
.L8009ac10:
/* 0x8009ac10 */ lw	$a0,2844($s0)
.L8009ac14:
/* 0x8009ac14 */ sll	$zero,$zero,0x0
.L8009ac18:
/* 0x8009ac18 */ lbu	$v1,5($a0)
.L8009ac1c:
/* 0x8009ac1c */ addiu	$s1,$zero,1
.L8009ac20:
/* 0x8009ac20 */ beq	$v1,$s1,.L8009ac98
.L8009ac24:
/* 0x8009ac24 */ slti	$v0,$v1,2
.L8009ac28:
/* 0x8009ac28 */ beq	$v0,$zero,.L8009ac40
.L8009ac2c:
/* 0x8009ac2c */ addiu	$v0,$zero,2
.L8009ac30:
/* 0x8009ac30 */ beq	$v1,$zero,.L8009ac50
.L8009ac34:
/* 0x8009ac34 */ addu	$v0,$s2,$zero
.L8009ac38:
/* 0x8009ac38 */ j	.L8009ae20
.L8009ac3c:
/* 0x8009ac3c */ sll	$zero,$zero,0x0
.L8009ac40:
/* 0x8009ac40 */ beq	$v1,$v0,.L8009acb8
.L8009ac44:
/* 0x8009ac44 */ addu	$v0,$s2,$zero
.L8009ac48:
/* 0x8009ac48 */ j	.L8009ae20
.L8009ac4c:
/* 0x8009ac4c */ sll	$zero,$zero,0x0
.L8009ac50:
/* 0x8009ac50 */ lw	$a1,112($a0)
.L8009ac54:
/* 0x8009ac54 */ sll	$zero,$zero,0x0
.L8009ac58:
/* 0x8009ac58 */ beq	$a1,$zero,.L8009ac90
.L8009ac5c:
/* 0x8009ac5c */ sll	$a1,$a1,0x7
.L8009ac60:
/* 0x8009ac60 */ lw	$a0,108($a0)
.L8009ac64:
/* 0x8009ac64 */ jal	0x8002d3b0
.L8009ac68:
/* 0x8009ac68 */ addu	$a2,$zero,$zero
.L8009ac6c:
/* 0x8009ac6c */ addiu	$v1,$zero,-1
.L8009ac70:
/* 0x8009ac70 */ bne	$v0,$v1,.L8009ac84
.L8009ac74:
/* 0x8009ac74 */ addiu	$v0,$zero,2
.L8009ac78:
/* 0x8009ac78 */ lw	$v1,2844($s0)
.L8009ac7c:
/* 0x8009ac7c */ j	.L8009ae1c
.L8009ac80:
/* 0x8009ac80 */ sb	$v0,5($v1)
.L8009ac84:
/* 0x8009ac84 */ lw	$v0,2844($s0)
.L8009ac88:
/* 0x8009ac88 */ j	.L8009ae1c
.L8009ac8c:
/* 0x8009ac8c */ sb	$s1,5($v0)
.L8009ac90:
/* 0x8009ac90 */ j	.L8009ae1c
.L8009ac94:
/* 0x8009ac94 */ sb	$s1,5($a0)
.L8009ac98:
/* 0x8009ac98 */ addiu	$v0,$zero,19
.L8009ac9c:
/* 0x8009ac9c */ sb	$v0,4($a0)
.L8009aca0:
/* 0x8009aca0 */ lw	$v0,2844($s0)
.L8009aca4:
/* 0x8009aca4 */ sll	$zero,$zero,0x0
.L8009aca8:
/* 0x8009aca8 */ sb	$zero,5($v0)
.L8009acac:
/* 0x8009acac */ lw	$v0,2844($s0)
.L8009acb0:
/* 0x8009acb0 */ j	.L8009ae1c
.L8009acb4:
/* 0x8009acb4 */ sw	$zero,96($v0)
.L8009acb8:
/* 0x8009acb8 */ addiu	$v0,$zero,35
.L8009acbc:
/* 0x8009acbc */ sb	$v0,4($a0)
.L8009acc0:
/* 0x8009acc0 */ lw	$v0,2844($s0)
.L8009acc4:
/* 0x8009acc4 */ j	.L8009ae1c
.L8009acc8:
/* 0x8009acc8 */ sb	$zero,5($v0)
.L8009accc:
/* 0x8009accc */ lui	$s1,0x800e
.L8009acd0:
/* 0x8009acd0 */ lw	$v1,2844($s1)
.L8009acd4:
/* 0x8009acd4 */ sll	$zero,$zero,0x0
.L8009acd8:
/* 0x8009acd8 */ lbu	$s0,5($v1)
.L8009acdc:
/* 0x8009acdc */ sll	$zero,$zero,0x0
.L8009ace0:
/* 0x8009ace0 */ beq	$s0,$zero,.L8009acf8
.L8009ace4:
/* 0x8009ace4 */ addiu	$v0,$zero,1
.L8009ace8:
/* 0x8009ace8 */ beq	$s0,$v0,.L8009ad40
.L8009acec:
/* 0x8009acec */ addu	$v0,$s2,$zero
.L8009acf0:
/* 0x8009acf0 */ j	.L8009ae20
.L8009acf4:
/* 0x8009acf4 */ sll	$zero,$zero,0x0
.L8009acf8:
/* 0x8009acf8 */ lw	$v0,116($v1)
.L8009acfc:
/* 0x8009acfc */ sll	$zero,$zero,0x0
.L8009ad00:
/* 0x8009ad00 */ sll	$a2,$v0,0x7
.L8009ad04:
/* 0x8009ad04 */ beq	$a2,$zero,.L8009ad30
.L8009ad08:
/* 0x8009ad08 */ addiu	$v0,$zero,35
.L8009ad0c:
/* 0x8009ad0c */ lw	$a0,108($v1)
.L8009ad10:
/* 0x8009ad10 */ lw	$a1,120($v1)
.L8009ad14:
/* 0x8009ad14 */ jal	0x8002d1a0
.L8009ad18:
/* 0x8009ad18 */ sll	$zero,$zero,0x0
.L8009ad1c:
/* 0x8009ad1c */ lw	$v1,2844($s1)
.L8009ad20:
/* 0x8009ad20 */ addiu	$v0,$zero,1
.L8009ad24:
/* 0x8009ad24 */ sw	$zero,100($v1)
.L8009ad28:
/* 0x8009ad28 */ j	.L8009ae1c
.L8009ad2c:
/* 0x8009ad2c */ sb	$v0,5($v1)
.L8009ad30:
/* 0x8009ad30 */ sb	$v0,4($v1)
.L8009ad34:
/* 0x8009ad34 */ lw	$v0,2844($s1)
.L8009ad38:
/* 0x8009ad38 */ j	.L8009ae1c
.L8009ad3c:
/* 0x8009ad3c */ sb	$zero,5($v0)
.L8009ad40:
/* 0x8009ad40 */ jal	0x8002cec0
.L8009ad44:
/* 0x8009ad44 */ sll	$zero,$zero,0x0
.L8009ad48:
/* 0x8009ad48 */ lw	$a0,2844($s1)
.L8009ad4c:
/* 0x8009ad4c */ sll	$zero,$zero,0x0
.L8009ad50:
/* 0x8009ad50 */ lw	$v1,100($a0)
.L8009ad54:
/* 0x8009ad54 */ sll	$zero,$zero,0x0
.L8009ad58:
/* 0x8009ad58 */ sltiu	$v1,$v1,720
.L8009ad5c:
/* 0x8009ad5c */ beq	$v1,$zero,.L8009ad7c
.L8009ad60:
/* 0x8009ad60 */ sll	$zero,$zero,0x0
.L8009ad64:
/* 0x8009ad64 */ blez	$v0,.L8009ad90
.L8009ad68:
/* 0x8009ad68 */ sll	$zero,$zero,0x0
.L8009ad6c:
/* 0x8009ad6c */ bne	$v0,$s0,.L8009ad80
.L8009ad70:
/* 0x8009ad70 */ addiu	$v0,$zero,35
.L8009ad74:
/* 0x8009ad74 */ j	.L8009ad80
.L8009ad78:
/* 0x8009ad78 */ addiu	$v0,$zero,33
.L8009ad7c:
/* 0x8009ad7c */ addiu	$v0,$zero,35
.L8009ad80:
/* 0x8009ad80 */ sb	$v0,4($a0)
.L8009ad84:
/* 0x8009ad84 */ lw	$v0,2844($s1)
.L8009ad88:
/* 0x8009ad88 */ sll	$zero,$zero,0x0
.L8009ad8c:
/* 0x8009ad8c */ sb	$zero,5($v0)
.L8009ad90:
/* 0x8009ad90 */ lui	$v0,0x800e
.L8009ad94:
/* 0x8009ad94 */ lw	$v1,2844($v0)
.L8009ad98:
/* 0x8009ad98 */ sll	$zero,$zero,0x0
.L8009ad9c:
/* 0x8009ad9c */ lw	$v0,100($v1)
.L8009ada0:
/* 0x8009ada0 */ sll	$zero,$zero,0x0
.L8009ada4:
/* 0x8009ada4 */ addiu	$v0,$v0,1
.L8009ada8:
/* 0x8009ada8 */ j	.L8009ae1c
.L8009adac:
/* 0x8009adac */ sw	$v0,100($v1)
.L8009adb0:
/* 0x8009adb0 */ lui	$s0,0x800e
.L8009adb4:
/* 0x8009adb4 */ lw	$v0,2844($s0)
.L8009adb8:
/* 0x8009adb8 */ sll	$zero,$zero,0x0
.L8009adbc:
/* 0x8009adbc */ lw	$a0,108($v0)
.L8009adc0:
/* 0x8009adc0 */ jal	0x8009b93c
.L8009adc4:
/* 0x8009adc4 */ sll	$zero,$zero,0x0
.L8009adc8:
/* 0x8009adc8 */ lw	$v0,2844($s0)
.L8009adcc:
/* 0x8009adcc */ sll	$zero,$zero,0x0
.L8009add0:
/* 0x8009add0 */ lbu	$v1,16($v0)
.L8009add4:
/* 0x8009add4 */ addiu	$v0,$zero,1
.L8009add8:
/* 0x8009add8 */ bne	$v1,$v0,.L8009ae1c
.L8009addc:
/* 0x8009addc */ addiu	$s2,$zero,1
.L8009ade0:
/* 0x8009ade0 */ jal	0x8009b858
.L8009ade4:
/* 0x8009ade4 */ sll	$zero,$zero,0x0
.L8009ade8:
/* 0x8009ade8 */ j	.L8009ae20
.L8009adec:
/* 0x8009adec */ addu	$v0,$s2,$zero
.L8009adf0:
/* 0x8009adf0 */ lui	$v0,0x800e
.L8009adf4:
/* 0x8009adf4 */ lw	$v0,2844($v0)
.L8009adf8:
/* 0x8009adf8 */ sll	$zero,$zero,0x0
.L8009adfc:
/* 0x8009adfc */ lw	$a0,108($v0)
.L8009ae00:
/* 0x8009ae00 */ jal	0x8009b93c
.L8009ae04:
/* 0x8009ae04 */ sll	$zero,$zero,0x0
.L8009ae08:
/* 0x8009ae08 */ addiu	$s2,$zero,2
.L8009ae0c:
/* 0x8009ae0c */ lui	$v0,0x800e
.L8009ae10:
/* 0x8009ae10 */ lw	$v1,2844($v0)
.L8009ae14:
/* 0x8009ae14 */ addiu	$v0,$zero,1
.L8009ae18:
/* 0x8009ae18 */ sw	$v0,88($v1)
.L8009ae1c:
/* 0x8009ae1c */ addu	$v0,$s2,$zero
.L8009ae20:
/* 0x8009ae20 */ lw	$ra,28($sp)
.L8009ae24:
/* 0x8009ae24 */ lw	$s2,24($sp)
.L8009ae28:
/* 0x8009ae28 */ lw	$s1,20($sp)
.L8009ae2c:
/* 0x8009ae2c */ lw	$s0,16($sp)
.L8009ae30:
/* 0x8009ae30 */ jr	$ra
.L8009ae34:
/* 0x8009ae34 */ addiu	$sp,$sp,32
.size FUN_8009ab24, .-FUN_8009ab24
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009ae38
.globl FUN_8009ae38
.type FUN_8009ae38, @function
FUN_8009ae38:
.L8009ae38:
/* 0x8009ae38 */ addiu	$sp,$sp,-32
.L8009ae3c:
/* 0x8009ae3c */ sw	$s1,20($sp)
.L8009ae40:
/* 0x8009ae40 */ lui	$s1,0x800e
.L8009ae44:
/* 0x8009ae44 */ lw	$a1,2844($s1)
.L8009ae48:
/* 0x8009ae48 */ sw	$s0,16($sp)
.L8009ae4c:
/* 0x8009ae4c */ sw	$ra,28($sp)
.L8009ae50:
/* 0x8009ae50 */ sw	$s2,24($sp)
.L8009ae54:
/* 0x8009ae54 */ lbu	$v1,7($a1)
.L8009ae58:
/* 0x8009ae58 */ addiu	$s2,$zero,33
.L8009ae5c:
/* 0x8009ae5c */ beq	$v1,$s2,.L8009aef4
.L8009ae60:
/* 0x8009ae60 */ addu	$s0,$zero,$zero
.L8009ae64:
/* 0x8009ae64 */ slti	$v0,$v1,34
.L8009ae68:
/* 0x8009ae68 */ beq	$v0,$zero,.L8009ae80
.L8009ae6c:
/* 0x8009ae6c */ addiu	$v0,$zero,34
.L8009ae70:
/* 0x8009ae70 */ beq	$v1,$zero,.L8009ae90
.L8009ae74:
/* 0x8009ae74 */ addu	$v0,$s0,$zero
.L8009ae78:
/* 0x8009ae78 */ j	.L8009af10
.L8009ae7c:
/* 0x8009ae7c */ sll	$zero,$zero,0x0
.L8009ae80:
/* 0x8009ae80 */ beq	$v1,$v0,.L8009af08
.L8009ae84:
/* 0x8009ae84 */ addu	$v0,$s0,$zero
.L8009ae88:
/* 0x8009ae88 */ j	.L8009af10
.L8009ae8c:
/* 0x8009ae8c */ sll	$zero,$zero,0x0
.L8009ae90:
/* 0x8009ae90 */ lw	$a2,124($a1)
.L8009ae94:
/* 0x8009ae94 */ lbu	$a0,12($a1)
.L8009ae98:
/* 0x8009ae98 */ addiu	$a1,$a1,24
.L8009ae9c:
/* 0x8009ae9c */ sll	$a2,$a2,0x10
.L8009aea0:
/* 0x8009aea0 */ jal	0x8002d13c
.L8009aea4:
/* 0x8009aea4 */ ori	$a2,$a2,0x200
.L8009aea8:
/* 0x8009aea8 */ lw	$a0,2844($s1)
.L8009aeac:
/* 0x8009aeac */ addiu	$v1,$zero,-1
.L8009aeb0:
/* 0x8009aeb0 */ bne	$v0,$v1,.L8009aeec
.L8009aeb4:
/* 0x8009aeb4 */ sw	$v0,108($a0)
.L8009aeb8:
/* 0x8009aeb8 */ lw	$v0,96($a0)
.L8009aebc:
/* 0x8009aebc */ sll	$zero,$zero,0x0
.L8009aec0:
/* 0x8009aec0 */ sltiu	$v0,$v0,21
.L8009aec4:
/* 0x8009aec4 */ bne	$v0,$zero,.L8009aed0
.L8009aec8:
/* 0x8009aec8 */ addiu	$v0,$zero,34
.L8009aecc:
/* 0x8009aecc */ sb	$v0,7($a0)
.L8009aed0:
/* 0x8009aed0 */ lw	$v1,2844($s1)
.L8009aed4:
/* 0x8009aed4 */ sll	$zero,$zero,0x0
.L8009aed8:
/* 0x8009aed8 */ lw	$v0,96($v1)
.L8009aedc:
/* 0x8009aedc */ sll	$zero,$zero,0x0
.L8009aee0:
/* 0x8009aee0 */ addiu	$v0,$v0,1
.L8009aee4:
/* 0x8009aee4 */ j	.L8009af0c
.L8009aee8:
/* 0x8009aee8 */ sw	$v0,96($v1)
.L8009aeec:
/* 0x8009aeec */ j	.L8009af0c
.L8009aef0:
/* 0x8009aef0 */ sb	$s2,7($a0)
.L8009aef4:
/* 0x8009aef4 */ lw	$a0,108($a1)
.L8009aef8:
/* 0x8009aef8 */ jal	0x8009b93c
.L8009aefc:
/* 0x8009aefc */ addiu	$s0,$zero,1
.L8009af00:
/* 0x8009af00 */ j	.L8009af10
.L8009af04:
/* 0x8009af04 */ addu	$v0,$s0,$zero
.L8009af08:
/* 0x8009af08 */ addiu	$s0,$zero,2
.L8009af0c:
/* 0x8009af0c */ addu	$v0,$s0,$zero
.L8009af10:
/* 0x8009af10 */ lw	$ra,28($sp)
.L8009af14:
/* 0x8009af14 */ lw	$s2,24($sp)
.L8009af18:
/* 0x8009af18 */ lw	$s1,20($sp)
.L8009af1c:
/* 0x8009af1c */ lw	$s0,16($sp)
.L8009af20:
/* 0x8009af20 */ jr	$ra
.L8009af24:
/* 0x8009af24 */ addiu	$sp,$sp,32
.size FUN_8009ae38, .-FUN_8009ae38
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009af28
.globl FUN_8009af28
.type FUN_8009af28, @function
FUN_8009af28:
.L8009af28:
/* 0x8009af28 */ addiu	$sp,$sp,-48
.L8009af2c:
/* 0x8009af2c */ lui	$v0,0x800e
.L8009af30:
/* 0x8009af30 */ sw	$s5,36($sp)
.L8009af34:
/* 0x8009af34 */ addu	$s5,$v0,$zero
.L8009af38:
/* 0x8009af38 */ sw	$s3,28($sp)
.L8009af3c:
/* 0x8009af3c */ lw	$s3,2840($s5)
.L8009af40:
/* 0x8009af40 */ addiu	$a1,$zero,7168
.L8009af44:
/* 0x8009af44 */ sw	$s1,20($sp)
.L8009af48:
/* 0x8009af48 */ addu	$s1,$zero,$zero
.L8009af4c:
/* 0x8009af4c */ sw	$s6,40($sp)
.L8009af50:
/* 0x8009af50 */ addiu	$s6,$zero,-1
.L8009af54:
/* 0x8009af54 */ sw	$s4,32($sp)
.L8009af58:
/* 0x8009af58 */ ori	$s4,$zero,0xffff
.L8009af5c:
/* 0x8009af5c */ sw	$s2,24($sp)
.L8009af60:
/* 0x8009af60 */ addiu	$s2,$zero,176
.L8009af64:
/* 0x8009af64 */ sw	$ra,44($sp)
.L8009af68:
/* 0x8009af68 */ sw	$s0,16($sp)
.L8009af6c:
/* 0x8009af6c */ jal	0x8003bac8
.L8009af70:
/* 0x8009af70 */ addu	$a0,$s3,$zero
.L8009af74:
/* 0x8009af74 */ lui	$a0,0x800e
.L8009af78:
/* 0x8009af78 */ addiu	$a0,$a0,2912
.L8009af7c:
/* 0x8009af7c */ addu	$a1,$s3,$zero
.L8009af80:
/* 0x8009af80 */ jal	0x80095ce8
.L8009af84:
/* 0x8009af84 */ addiu	$a2,$zero,16
.L8009af88:
/* 0x8009af88 */ addu	$a0,$s1,$zero
.L8009af8c:
/* 0x8009af8c */ jal	0x8009d274
.L8009af90:
/* 0x8009af90 */ ori	$a1,$zero,0xffff
.L8009af94:
/* 0x8009af94 */ lw	$v1,2840($s5)
.L8009af98:
/* 0x8009af98 */ addiu	$a0,$zero,1
.L8009af9c:
/* 0x8009af9c */ lhu	$v0,4048($v1)
.L8009afa0:
/* 0x8009afa0 */ ori	$a1,$zero,0xffff
.L8009afa4:
/* 0x8009afa4 */ jal	0x8009d274
.L8009afa8:
/* 0x8009afa8 */ sw	$v0,4048($v1)
.L8009afac:
/* 0x8009afac */ addiu	$a0,$zero,33
.L8009afb0:
/* 0x8009afb0 */ jal	0x8009d274
.L8009afb4:
/* 0x8009afb4 */ ori	$a1,$zero,0xffff
.L8009afb8:
/* 0x8009afb8 */ addiu	$a0,$zero,34
.L8009afbc:
/* 0x8009afbc */ jal	0x8009d274
.L8009afc0:
/* 0x8009afc0 */ ori	$a1,$zero,0xffff
.L8009afc4:
/* 0x8009afc4 */ lui	$a0,0x800e
.L8009afc8:
/* 0x8009afc8 */ addiu	$a0,$a0,2848
.L8009afcc:
/* 0x8009afcc */ addiu	$a1,$s3,112
.L8009afd0:
/* 0x8009afd0 */ jal	0x80095ce8
.L8009afd4:
/* 0x8009afd4 */ addiu	$a2,$zero,64
.L8009afd8:
/* 0x8009afd8 */ lw	$v0,2840($s5)
.L8009afdc:
/* 0x8009afdc */ addu	$a0,$s1,$zero
.L8009afe0:
/* 0x8009afe0 */ jal	0x800a1f44
.L8009afe4:
/* 0x8009afe4 */ addu	$s0,$v0,$s2
.L8009afe8:
/* 0x8009afe8 */ beq	$v0,$s6,.L8009b00c
.L8009afec:
/* 0x8009afec */ sh	$zero,28($s0)
.L8009aff0:
/* 0x8009aff0 */ lhu	$a0,0($v0)
.L8009aff4:
/* 0x8009aff4 */ jal	0x800a25c4
.L8009aff8:
/* 0x8009aff8 */ sll	$zero,$zero,0x0
.L8009affc:
/* 0x8009affc */ andi	$v0,$v0,0xff
.L8009b000:
/* 0x8009b000 */ addiu	$v1,$zero,1
.L8009b004:
/* 0x8009b004 */ beq	$v0,$v1,.L8009b010
.L8009b008:
/* 0x8009b008 */ sll	$zero,$zero,0x0
.L8009b00c:
/* 0x8009b00c */ sh	$s4,28($s0)
.L8009b010:
/* 0x8009b010 */ addiu	$s1,$s1,1
.L8009b014:
/* 0x8009b014 */ sltiu	$v0,$s1,60
.L8009b018:
/* 0x8009b018 */ bne	$v0,$zero,.L8009afd8
.L8009b01c:
/* 0x8009b01c */ addiu	$s2,$s2,64
.L8009b020:
/* 0x8009b020 */ addu	$s1,$zero,$zero
.L8009b024:
/* 0x8009b024 */ lui	$v1,0x8
.L8009b028:
/* 0x8009b028 */ ori	$v1,$v1,0xbe48
.L8009b02c:
/* 0x8009b02c */ lui	$a1,0x8002
.L8009b030:
/* 0x8009b030 */ addu	$a0,$s3,$zero
.L8009b034:
/* 0x8009b034 */ sw	$v1,5924($a0)
.L8009b038:
/* 0x8009b038 */ lw	$v0,-2844($a1)
.L8009b03c:
/* 0x8009b03c */ addiu	$s1,$s1,1
.L8009b040:
/* 0x8009b040 */ sw	$v0,5920($a0)
.L8009b044:
/* 0x8009b044 */ sltiu	$v0,$s1,90
.L8009b048:
/* 0x8009b048 */ bne	$v0,$zero,.L8009b034
.L8009b04c:
/* 0x8009b04c */ addiu	$a0,$a0,8
.L8009b050:
/* 0x8009b050 */ lui	$v1,0x800e
.L8009b054:
/* 0x8009b054 */ lw	$v0,2840($v1)
.L8009b058:
/* 0x8009b058 */ sll	$zero,$zero,0x0
.L8009b05c:
/* 0x8009b05c */ sb	$zero,82($v0)
.L8009b060:
/* 0x8009b060 */ lw	$a0,2840($v1)
.L8009b064:
/* 0x8009b064 */ addiu	$v0,$zero,1
.L8009b068:
/* 0x8009b068 */ sb	$v0,83($a0)
.L8009b06c:
/* 0x8009b06c */ lw	$a0,2840($v1)
.L8009b070:
/* 0x8009b070 */ jal	0x800a3348
.L8009b074:
/* 0x8009b074 */ addiu	$a0,$a0,4880
.L8009b078:
/* 0x8009b078 */ jal	0x800a3294
.L8009b07c:
/* 0x8009b07c */ sll	$zero,$zero,0x0
.L8009b080:
/* 0x8009b080 */ lw	$ra,44($sp)
.L8009b084:
/* 0x8009b084 */ lw	$s6,40($sp)
.L8009b088:
/* 0x8009b088 */ lw	$s5,36($sp)
.L8009b08c:
/* 0x8009b08c */ lw	$s4,32($sp)
.L8009b090:
/* 0x8009b090 */ lw	$s3,28($sp)
.L8009b094:
/* 0x8009b094 */ lw	$s2,24($sp)
.L8009b098:
/* 0x8009b098 */ lw	$s1,20($sp)
.L8009b09c:
/* 0x8009b09c */ lw	$s0,16($sp)
.L8009b0a0:
/* 0x8009b0a0 */ jr	$ra
.L8009b0a4:
/* 0x8009b0a4 */ addiu	$sp,$sp,48
.size FUN_8009af28, .-FUN_8009af28
