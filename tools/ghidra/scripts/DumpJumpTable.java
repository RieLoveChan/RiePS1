// Reads N consecutive 32-bit little-endian words starting at an address and
// prints each as a raw pointer value plus the function name at that address,
// if one exists. Intended for confirming MIPS switch-statement jump tables
// (arrays of case-target addresses) that Ghidra's decompiler couldn't
// recover on its own, per /docs/foundations/symbol-map-schema.md.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpJumpTable.java 0xADDR N
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.Memory;

public class DumpJumpTable extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2) {
            throw new IllegalArgumentException("Usage: DumpJumpTable.java 0xADDR N");
        }

        Address base = currentProgram.getAddressFactory().getAddress(args[0]);
        int count = Integer.parseInt(args[1]);
        Memory mem = currentProgram.getMemory();

        for (int i = 0; i < count; i++) {
            Address entryAddr = base.add(i * 4L);
            long raw = mem.getInt(entryAddr) & 0xffffffffL;
            Address target = currentProgram.getAddressFactory().getAddress(Long.toHexString(raw));
            Function f = currentProgram.getFunctionManager().getFunctionAt(target);
            println(String.format("[%d] %s -> 0x%08x  %s", i, entryAddr, raw,
                f != null ? f.getName() : "(no function at this address)"));
        }
    }
}
