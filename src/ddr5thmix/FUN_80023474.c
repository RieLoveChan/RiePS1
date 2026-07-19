void __attribute__((section(".text.FUN_80023474")))
FUN_80023474(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "addiu $sp,$sp,-24\n\t"
        "sw $ra,16($sp)\n\t"
        "jal FUN_800a0ce0\n\t"
        "nop\n\t"
        "blez $v0,1f\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8ec)\n\t"
        "lw $v1,%lo(PTR_DAT_800ac8ec)($v0)\n\t"
        "li $v0,1\n\t"
        "jal FUN_8002a7a4\n\t"
        "sb $v0,6($v1)\n\t"
        "jal FUN_8009b0a8\n\t"
        "nop\n\t"
        "jal FUN_800236cc\n\t"
        "nop\n\t"
        "jal FUN_80049d3c\n\t"
        "nop\n\t"
        "jal FUN_80023210\n\t"
        "li $a0,2\n\t"
        "1:\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
