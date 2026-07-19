void __attribute__((section(".text.FUN_80023544")))
FUN_80023544(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "addiu $sp,$sp,-24\n\t"
        "lui $v0,%hi(DAT_800ac890)\n\t"
        "sw $ra,16($sp)\n\t"
        "sw $zero,%lo(DAT_800ac890)($v0)\n\t"
        "jal FUN_800231b0\n\t"
        "nop\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
