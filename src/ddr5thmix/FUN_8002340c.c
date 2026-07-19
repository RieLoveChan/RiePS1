void __attribute__((section(".text.FUN_8002340c")))
FUN_8002340c(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "lui $v0,%hi(DAT_800ac88c)\n\t"
        "lw $v0,%lo(DAT_800ac88c)($v0)\n\t"
        "addiu $sp,$sp,-24\n\t"
        "bnez $v0,3f\n\t"
        "sw $ra,16($sp)\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8ec)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8ec)($v0)\n\t"
        "nop\n\t"
        "lbu $v0,6($v0)\n\t"
        "nop\n\t"
        "beqz $v0,2f\n\t"
        "nop\n\t"
        "jal FUN_80049d3c\n\t"
        "nop\n\t"
        "jal FUN_80023210\n\t"
        "li $a0,2\n\t"
        "j 3f\n\t"
        "nop\n\t"
        "2:\n\t"
        "jal FUN_800a0cb0\n\t"
        "nop\n\t"
        "jal FUN_80023230\n\t"
        "li $a0,2\n\t"
        "3:\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
