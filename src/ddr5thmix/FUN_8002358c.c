void __attribute__((section(".text.FUN_8002358c")))
FUN_8002358c(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "addiu $sp,$sp,-24\n\t"
        "sw $ra,16($sp)\n\t"
        "jal ResetGraph\n\t"
        "li $a0,1\n\t"
        "lui $v1,%hi(PTR_DAT_800ac8ec)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8ec)($v1)\n\t"
        "li $a0,1\n\t"
        "sb $a0,100($v0)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8ec)($v1)\n\t"
        "nop\n\t"
        "sb $zero,0($v0)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8ec)($v1)\n\t"
        "lui $v1,%hi(PTR_DAT_800ac8e8)\n\t"
        "sb $zero,4($v0)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8e8)($v1)\n\t"
        "nop\n\t"
        "sb $a0,9($v0)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8e8)($v1)\n\t"
        "nop\n\t"
        "sb $zero,11($v0)\n\t"
        "lui $v0,%hi(DAT_800f2900)\n\t"
        "jal FUN_8002a8b0\n\t"
        "sb $a0,%lo(DAT_800f2900+1)($v0)\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
