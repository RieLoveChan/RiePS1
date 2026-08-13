.set noreorder
.set noat
.set nomacro

.section .text.FUN_80085558
.globl FUN_80085558
.type FUN_80085558, @function
FUN_80085558:
/* Runtime gameplay/resource helper. */
.L80085558:
/* 0x80085558 */ lui	$v0,0x800f
.L8008555c:
/* 0x8008555c */ addiu	$v1,$v0,10504
.L80085560:
/* 0x80085560 */ lb	$v0,36($v1)
.L80085564:
/* 0x80085564 */ addiu	$a1,$zero,2
.L80085568:
/* 0x80085568 */ beq	$v0,$a1,.L800855d8
.L8008556c:
/* 0x8008556c */ addu	$a3,$zero,$zero
.L80085570:
/* 0x80085570 */ addiu	$a0,$zero,4
.L80085574:
/* 0x80085574 */ beq	$v0,$a0,.L800855d8
.L80085578:
/* 0x80085578 */ ori	$v0,$zero,0x8000
.L8008557c:
/* 0x8008557c */ addu	$a2,$v1,$v0
.L80085580:
/* 0x80085580 */ lb	$v0,4776($a2)
.L80085584:
/* 0x80085584 */ sll	$zero,$zero,0x0
.L80085588:
/* 0x80085588 */ beq	$v0,$a1,.L800855d0
.L8008558c:
/* 0x8008558c */ sll	$zero,$zero,0x0
.L80085590:
/* 0x80085590 */ beq	$v0,$a0,.L800855d0
.L80085594:
/* 0x80085594 */ sll	$zero,$zero,0x0
.L80085598:
/* 0x80085598 */ lbu	$v0,146($v1)
.L8008559c:
/* 0x8008559c */ addiu	$v1,$zero,7
.L800855a0:
/* 0x800855a0 */ beq	$v0,$v1,.L800855b0
.L800855a4:
/* 0x800855a4 */ sll	$zero,$zero,0x0
.L800855a8:
/* 0x800855a8 */ bne	$v0,$zero,.L800855dc
.L800855ac:
/* 0x800855ac */ addu	$a0,$zero,$zero
.L800855b0:
/* 0x800855b0 */ lbu	$v0,4886($a2)
.L800855b4:
/* 0x800855b4 */ sll	$zero,$zero,0x0
.L800855b8:
/* 0x800855b8 */ beq	$v0,$v1,.L800855dc
.L800855bc:
/* 0x800855bc */ addiu	$a0,$zero,-1
.L800855c0:
/* 0x800855c0 */ bne	$v0,$zero,.L800855dc
.L800855c4:
/* 0x800855c4 */ addu	$a0,$zero,$zero
.L800855c8:
/* 0x800855c8 */ j 0x00855dc
.L800855cc:
/* 0x800855cc */ addiu	$a0,$zero,-1
.L800855d0:
/* 0x800855d0 */ j 0x00855dc
.L800855d4:
/* 0x800855d4 */ addiu	$a0,$zero,1
.L800855d8:
/* 0x800855d8 */ addu	$a0,$zero,$zero
.L800855dc:
/* 0x800855dc */ lui	$v1,0x800f
.L800855e0:
/* 0x800855e0 */ addiu	$v1,$v1,10504
.L800855e4:
/* 0x800855e4 */ sll	$v0,$a0,0x3
.L800855e8:
/* 0x800855e8 */ addu	$v0,$v0,$a0
.L800855ec:
/* 0x800855ec */ sll	$v0,$v0,0x3
.L800855f0:
/* 0x800855f0 */ addu	$v0,$v0,$a0
.L800855f4:
/* 0x800855f4 */ sll	$v0,$v0,0x2
.L800855f8:
/* 0x800855f8 */ addu	$v0,$v0,$a0
.L800855fc:
/* 0x800855fc */ sll	$v0,$v0,0x5
.L80085600:
/* 0x80085600 */ addu	$v0,$v0,$a0
.L80085604:
/* 0x80085604 */ sll	$v0,$v0,0x2
.L80085608:
/* 0x80085608 */ addu	$v0,$v0,$v1
.L8008560c:
/* 0x8008560c */ lbu	$v1,146($v0)
.L80085610:
/* 0x80085610 */ addiu	$v0,$zero,2
.L80085614:
/* 0x80085614 */ bne	$v1,$v0,.L80085620
.L80085618:
/* 0x80085618 */ sll	$zero,$zero,0x0
.L8008561c:
/* 0x8008561c */ addu	$a3,$v0,$zero
.L80085620:
/* 0x80085620 */ jr	$ra
.L80085624:
/* 0x80085624 */ addu	$v0,$a3,$zero
.size FUN_80085558, .-FUN_80085558
