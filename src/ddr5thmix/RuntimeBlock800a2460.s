.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a2460
.globl FUN_800a2460
.type FUN_800a2460, @function
FUN_800a2460:
.L800a2460:
/* 0x800a2460 */ addiu	$sp,$sp,-32
.L800a2464:
/* 0x800a2464 */ sw	$s1,20($sp)
.L800a2468:
/* 0x800a2468 */ addu	$s1,$a1,$zero
.L800a246c:
/* 0x800a246c */ sw	$s0,16($sp)
.L800a2470:
/* 0x800a2470 */ addiu	$s0,$zero,-1
.L800a2474:
/* 0x800a2474 */ andi	$a0,$a0,0xffff
.L800a2478:
/* 0x800a2478 */ addiu	$v1,$a0,-236
.L800a247c:
/* 0x800a247c */ sltiu	$v0,$v1,70
.L800a2480:
/* 0x800a2480 */ beq	$v0,$zero,.L800a2558
.L800a2484:
/* 0x800a2484 */ sw	$ra,24($sp)
.L800a2488:
/* 0x800a2488 */ lui	$v0,0x8002
.L800a248c:
/* 0x800a248c */ addiu	$v0,$v0,1112
.L800a2490:
/* 0x800a2490 */ sll	$v1,$v1,0x2
.L800a2494:
/* 0x800a2494 */ addu	$v1,$v1,$v0
.L800a2498:
/* 0x800a2498 */ lw	$v0,0($v1)
.L800a249c:
/* 0x800a249c */ sll	$zero,$zero,0x0
.L800a24a0:
/* 0x800a24a0 */ jr	$v0
.L800a24a4:
/* 0x800a24a4 */ sll	$zero,$zero,0x0
.L800a24a8:
/* 0x800a24a8 */ j	.L800a2558
.L800a24ac:
/* 0x800a24ac */ addiu	$s0,$zero,4
.L800a24b0:
/* 0x800a24b0 */ j	.L800a2558
.L800a24b4:
/* 0x800a24b4 */ addiu	$s0,$zero,5
.L800a24b8:
/* 0x800a24b8 */ j	.L800a2558
.L800a24bc:
/* 0x800a24bc */ addiu	$s0,$zero,6
.L800a24c0:
/* 0x800a24c0 */ j	.L800a2558
.L800a24c4:
/* 0x800a24c4 */ addiu	$s0,$zero,7
.L800a24c8:
/* 0x800a24c8 */ j	.L800a2558
.L800a24cc:
/* 0x800a24cc */ addiu	$s0,$zero,8
.L800a24d0:
/* 0x800a24d0 */ j	.L800a2558
.L800a24d4:
/* 0x800a24d4 */ addiu	$s0,$zero,9
.L800a24d8:
/* 0x800a24d8 */ j	.L800a2558
.L800a24dc:
/* 0x800a24dc */ addiu	$s0,$zero,10
.L800a24e0:
/* 0x800a24e0 */ j	.L800a2558
.L800a24e4:
/* 0x800a24e4 */ addiu	$s0,$zero,11
.L800a24e8:
/* 0x800a24e8 */ j	.L800a2558
.L800a24ec:
/* 0x800a24ec */ addiu	$s0,$zero,12
.L800a24f0:
/* 0x800a24f0 */ j	.L800a2558
.L800a24f4:
/* 0x800a24f4 */ addiu	$s0,$zero,13
.L800a24f8:
/* 0x800a24f8 */ j	.L800a2558
.L800a24fc:
/* 0x800a24fc */ addiu	$s0,$zero,14
.L800a2500:
/* 0x800a2500 */ j	.L800a2558
.L800a2504:
/* 0x800a2504 */ addiu	$s0,$zero,15
.L800a2508:
/* 0x800a2508 */ j	.L800a2558
.L800a250c:
/* 0x800a250c */ addiu	$s0,$zero,16
.L800a2510:
/* 0x800a2510 */ addiu	$s0,$zero,17
.L800a2514:
/* 0x800a2514 */ addiu	$a0,$zero,35
.L800a2518:
/* 0x800a2518 */ jal	0x8009d274
.L800a251c:
/* 0x800a251c */ ori	$a1,$zero,0xffff
.L800a2520:
/* 0x800a2520 */ addiu	$a0,$zero,37
.L800a2524:
/* 0x800a2524 */ jal	0x8009d274
.L800a2528:
/* 0x800a2528 */ ori	$a1,$zero,0xffff
.L800a252c:
/* 0x800a252c */ addiu	$a0,$zero,39
.L800a2530:
/* 0x800a2530 */ jal	0x8009d274
.L800a2534:
/* 0x800a2534 */ ori	$a1,$zero,0xffff
.L800a2538:
/* 0x800a2538 */ addiu	$a0,$zero,41
.L800a253c:
/* 0x800a253c */ jal	0x8009d274
.L800a2540:
/* 0x800a2540 */ ori	$a1,$zero,0xffff
.L800a2544:
/* 0x800a2544 */ j	.L800a255c
.L800a2548:
/* 0x800a2548 */ addiu	$v0,$zero,-1
.L800a254c:
/* 0x800a254c */ j	.L800a2558
.L800a2550:
/* 0x800a2550 */ addiu	$s0,$zero,18
.L800a2554:
/* 0x800a2554 */ addiu	$s0,$zero,19
.L800a2558:
/* 0x800a2558 */ addiu	$v0,$zero,-1
.L800a255c:
/* 0x800a255c */ beq	$s0,$v0,.L800a256c
.L800a2560:
/* 0x800a2560 */ addu	$a0,$s0,$zero
.L800a2564:
/* 0x800a2564 */ jal	0x8009d274
.L800a2568:
/* 0x800a2568 */ ori	$a1,$zero,0xffff
.L800a256c:
/* 0x800a256c */ slti	$v0,$s1,60
.L800a2570:
/* 0x800a2570 */ beq	$v0,$zero,.L800a2588
.L800a2574:
/* 0x800a2574 */ lui	$v0,0x800e
.L800a2578:
/* 0x800a2578 */ lw	$v1,2840($v0)
.L800a257c:
/* 0x800a257c */ sll	$v0,$s1,0x6
.L800a2580:
/* 0x800a2580 */ addu	$v0,$v0,$v1
.L800a2584:
/* 0x800a2584 */ sh	$zero,204($v0)
.L800a2588:
/* 0x800a2588 */ lw	$ra,24($sp)
.L800a258c:
/* 0x800a258c */ lw	$s1,20($sp)
.L800a2590:
/* 0x800a2590 */ lw	$s0,16($sp)
.L800a2594:
/* 0x800a2594 */ jr	$ra
.L800a2598:
/* 0x800a2598 */ addiu	$sp,$sp,32
.size FUN_800a2460, .-FUN_800a2460
