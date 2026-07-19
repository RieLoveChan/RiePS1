void __attribute__((section(".text.FUN_80023690")))
FUN_80023690(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "addiu $sp,$sp,-24\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8e8)\n\t"
        "lw $v1,%lo(PTR_DAT_800ac8e8)($v0)\n\t"
        "li $v0,4\n\t"
        "sw $ra,16($sp)\n\t"
        "jal FUN_800231b0\n\t"
        "sh $v0,34($v1)\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
