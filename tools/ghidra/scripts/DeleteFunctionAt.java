// Removes a function boundary at the given address(es), leaving the
// underlying instructions/disassembly untouched. For cleaning up spurious
// boundaries accidentally created by DumpFunctionDetail.java's
// auto-create-if-missing behavior when an address turns out to be a
// mid-body offset of an already-existing function rather than a real
// indirect-call entry point.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DeleteFunctionAt.java 0xADDR [0xADDR ...]
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;

public class DeleteFunctionAt extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException("Usage: DeleteFunctionAt.java 0xADDR [0xADDR ...]");
        }
        FunctionManager fm = currentProgram.getFunctionManager();
        for (String arg : args) {
            Address addr = currentProgram.getAddressFactory().getAddress(arg);
            Function f = fm.getFunctionAt(addr);
            if (f == null) {
                println("No function at " + addr + " (nothing to remove)");
                continue;
            }
            String name = f.getName();
            boolean removed = fm.removeFunction(addr);
            println((removed ? "Removed " : "Failed to remove ") + name + " @ " + addr);
        }
    }
}
