// Prints disassembly and decompiled C for one or more functions, given by
// address (e.g. "0x80020700") as script args. Intended for manual review
// evidence when promoting a symbol-map row's source_status, per
// /docs/foundations/symbol-map-schema.md. If no function exists yet at an
// address (common for indirect call targets auto-analysis didn't reach,
// e.g. entries in a hand-rolled function-pointer table), creates one first
// via disassembly + CreateFunctionCmd so it can still be decompiled --
// this only adds a function boundary to the Ghidra project database, it
// does not modify the target binary.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpFunctionDetail.java 0xADDR [0xADDR ...]
import ghidra.app.cmd.function.CreateFunctionCmd;
import ghidra.app.decompiler.flatapi.FlatDecompilerAPI;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.CodeUnit;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Listing;

public class DumpFunctionDetail extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException("Usage: DumpFunctionDetail.java 0xADDR [0xADDR ...]");
        }

        FlatDecompilerAPI decompiler = new FlatDecompilerAPI(this);
        Listing listing = currentProgram.getListing();

        for (String arg : args) {
            Address addr = currentProgram.getAddressFactory().getAddress(arg);
            Function f = listing.getFunctionAt(addr);
            if (f == null) {
                if (listing.getInstructionAt(addr) == null) {
                    disassemble(addr);
                }
                CreateFunctionCmd cmd = new CreateFunctionCmd(addr);
                if (cmd.applyTo(currentProgram)) {
                    f = listing.getFunctionAt(addr);
                }
            }
            println("=========================================================");
            if (f == null) {
                println("No function at " + addr + " (skipping)");
                continue;
            }
            println("FUNCTION " + f.getName() + " @ " + f.getEntryPoint()
                + " size=" + f.getBody().getNumAddresses());
            println("--- disassembly ---");
            for (CodeUnit cu : listing.getCodeUnits(f.getBody(), true)) {
                println(cu.getAddress() + "  " + cu.toString());
            }
            println("--- decompiled C ---");
            try {
                println(decompiler.decompile(f));
            }
            catch (Exception e) {
                println("(decompilation failed: " + e.getMessage() + ")");
            }
        }
        decompiler.dispose();
    }
}
