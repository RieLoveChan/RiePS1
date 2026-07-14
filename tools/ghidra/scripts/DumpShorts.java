// Reads N consecutive signed 16-bit little-endian values starting at an
// address and prints each in decimal and hex. For small data tables (e.g. a
// menu's list of destination mode values) that don't warrant a full
// disassembly dump. Complements DumpJumpTable.java (which reads 32-bit
// function-pointer entries).
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpShorts.java 0xADDR N
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;

public class DumpShorts extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2) {
            throw new IllegalArgumentException("Usage: DumpShorts.java 0xADDR N");
        }

        Address base = currentProgram.getAddressFactory().getAddress(args[0]);
        int count = Integer.parseInt(args[1]);
        Memory mem = currentProgram.getMemory();

        for (int i = 0; i < count; i++) {
            Address entryAddr = base.add(i * 2L);
            short val = mem.getShort(entryAddr);
            println(String.format("[%d] %s -> %d (0x%04x)", i, entryAddr, val, val & 0xffff));
        }
    }
}
