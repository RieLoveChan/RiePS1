.set noreorder
.set noat
.set nomacro

.section .text.FUN_80098050
.globl FUN_80098050
.type FUN_80098050, @function
FUN_80098050:
/* Reads a 12-byte runtime record header, computes a tagged mode word
   (low 24 bits OR bit 31), forwards the header fields to the record-field
   propagator FUN_800980c4, and returns the tagged word (0 when the low
   24 bits are zero). Sole caller: FUN_80097eb8. */
.L80098050:
/* 0x80098050 */ addiu	$sp,$sp,-0x28
.L80098054:
/* 0x80098054 */ lui	$v0,0xff
.L80098058:
/* 0x80098058 */ ori	$v0,$v0,0xffff
.L8009805c:
/* 0x8009805c */ sw	$ra,0x20($sp)
.L80098060:
/* 0x80098060 */ sw	$s1,0x1c($sp)
.L80098064:
/* 0x80098064 */ sw	$s0,0x18($sp)
.L80098068:
/* 0x80098068 */ lw	$v1,0x0($a0)
.L8009806c:
/* 0x8009806c */ addiu	$a0,$a0,0x4
.L80098070:
/* 0x80098070 */ andi	$a2,$a2,0xffff
.L80098074:
/* 0x80098074 */ lw	$t0,0x0($a0)
.L80098078:
/* 0x80098078 */ lui	$s0,0x8000
.L8009807c:
/* 0x8009807c */ sw	$a3,0x14($sp)
.L80098080:
/* 0x80098080 */ andi	$a3,$a1,0xffff
.L80098084:
/* 0x80098084 */ addiu	$a0,$a0,0x4
.L80098088:
/* 0x80098088 */ sw	$a2,0x10($sp)
.L8009808c:
/* 0x8009808c */ and	$v0,$v1,$v0
.L80098090:
/* 0x80098090 */ or	$s1,$v0,$s0
.L80098094:
/* 0x80098094 */ lui	$v0,0xff00
.L80098098:
/* 0x80098098 */ and	$a1,$v1,$v0
.L8009809c:
/* 0x8009809c */ jal	0x800980c4
.L800980a0:
/* 0x800980a0 */ addu	$a2,$t0,$zero
.L800980a4:
/* 0x800980a4 */ beq	$s1,$s0,.L800980b0
.L800980a8:
/* 0x800980a8 */ addu	$v0,$zero,$zero
.L800980ac:
/* 0x800980ac */ addu	$v0,$s1,$zero
.L800980b0:
/* 0x800980b0 */ lw	$ra,0x20($sp)
.L800980b4:
/* 0x800980b4 */ lw	$s1,0x1c($sp)
.L800980b8:
/* 0x800980b8 */ lw	$s0,0x18($sp)
.L800980bc:
/* 0x800980bc */ jr	$ra
.L800980c0:
/* 0x800980c0 */ addiu	$sp,$sp,0x28
