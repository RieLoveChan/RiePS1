void __attribute__((section(".text.FUN_80023500")))
FUN_80023500(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "lui $v0,%hi(DAT_800ac88c)\n\t"
        "lw $v0,%lo(DAT_800ac88c)($v0)\n\t"
        "addiu $sp,$sp,-24\n\t"
        "bnez $v0,1f\n\t"
        "sw $ra,16($sp)\n\t"
        "jal FUN_80029390\n\t"
        "nop\n\t"
        "jal FUN_80026940\n\t"
        "li $a0,0x107\n\t"
        "jal FUN_80025b18\n\t"
        "li $a0,1\n\t"
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
