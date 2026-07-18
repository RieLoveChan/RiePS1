void __attribute__((section(".text.FUN_800234cc")))
FUN_800234cc(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "lui $v0,%hi(DAT_800e2a60)\n\t"
        "lw $v0,%lo(DAT_800e2a60)($v0)\n\t"
        "addiu $sp,$sp,-24\n\t"
        "bnez $v0,1f\n\t"
        "sw $ra,16($sp)\n\t"
        "jal FUN_80022148\n\t"
        "addu $a0,$zero,$zero\n\t"
        "jal FUN_800231b0\n\t"
        "nop\n\t"
        "1:\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
