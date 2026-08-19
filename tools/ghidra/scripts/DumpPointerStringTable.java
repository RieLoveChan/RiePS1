// Reads a contiguous array of 32-bit pointers starting at an address, then
// dereferences each and prints up to 8 bytes at the target as an ASCII
// string (non-printable/zero bytes trimmed at the first zero). Built to
// inspect the DDR 5th Mix filename/resource-name table format: an array of
// pointers to fixed 8-byte name buffers (see FUN_800985c8's decompiled C at
// PTR_DAT_800e0804, docs/games/ddr-5th-mix-jp-symbol-map.csv row).
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpPointerStringTable.java 0xADDR COUNT
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;

public class DumpPointerStringTable extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2) {
            throw new IllegalArgumentException("Usage: DumpPointerStringTable.java 0xADDR COUNT");
        }

        Address base = currentProgram.getAddressFactory().getAddress(args[0]);
        int count = Integer.parseInt(args[1]);
        Memory mem = currentProgram.getMemory();

        for (int i = 0; i < count; i++) {
            Address entryAddr = base.add(i * 4L);
            int ptr = mem.getInt(entryAddr);
            Address target = currentProgram.getAddressFactory().getAddress(
                String.format("0x%08x", ptr));
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < 8; j++) {
                byte b = mem.getByte(target.add(j));
                if (b == 0) break;
                sb.append((b >= 0x20 && b < 0x7f) ? (char) b : '.');
            }
            println(String.format("%3d  %s -> %s  \"%s\"", i, entryAddr, target, sb.toString()));
        }
    }
}
