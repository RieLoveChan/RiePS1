void __attribute__((section(".text.FUN_8002356c")))
FUN_8002356c(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "addiu $sp,$sp,-24\n\t"
        "sw $ra,16($sp)\n\t"
        "jal FUN_800231b0\n\t"
        "nop\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
