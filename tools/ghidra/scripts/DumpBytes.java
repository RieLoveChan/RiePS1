// Reads N raw bytes starting at an address and prints them as hex plus an
// ASCII rendering (non-printable bytes shown as '.'), like a minimal hex
// dump. For inspecting embedded string/format data that isn't a clean
// null-terminated Ghidra-recognized string, or for spot-checking data
// tables byte-by-byte.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpBytes.java 0xADDR N
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;

public class DumpBytes extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2) {
            throw new IllegalArgumentException("Usage: DumpBytes.java 0xADDR N");
        }

        Address base = currentProgram.getAddressFactory().getAddress(args[0]);
        int count = Integer.parseInt(args[1]);
        Memory mem = currentProgram.getMemory();

        byte[] buf = new byte[count];
        mem.getBytes(base, buf);

        StringBuilder hex = new StringBuilder();
        StringBuilder ascii = new StringBuilder();
        for (int i = 0; i < count; i++) {
            int b = buf[i] & 0xff;
            hex.append(String.format("%02x ", b));
            ascii.append((b >= 0x20 && b < 0x7f) ? (char) b : '.');
            if (i % 16 == 15 || i == count - 1) {
                println(String.format("%s  %-48s %s", base.add(i - (i % 16)), hex.toString(), ascii.toString()));
                hex.setLength(0);
                ascii.setLength(0);
            }
        }
    }
}
