// Finds every function that references a given global address (typically a
// pointer variable like PTR_DAT_800ac8e8) and prints each one's decompiled C,
// so a human/agent can grep the output for a specific struct-field offset
// (e.g. "+ 0x28") without having to decompile all ~2000 functions in the
// program one at a time. Intended for recovering which functions read/write
// a specific field of a struct reached only through a global pointer, per
// /docs/games/ddr-5th-mix-jp-screen-flow.md's open questions.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpFieldXrefs.java 0xADDR
import ghidra.app.decompiler.flatapi.FlatDecompilerAPI;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;

import java.util.LinkedHashSet;
import java.util.Set;

public class DumpFieldXrefs extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 1) {
            throw new IllegalArgumentException("Usage: DumpFieldXrefs.java 0xADDR");
        }

        Address target = currentProgram.getAddressFactory().getAddress(args[0]);
        FlatDecompilerAPI decompiler = new FlatDecompilerAPI(this);

        Set<Function> functions = new LinkedHashSet<>();
        ReferenceIterator refs = currentProgram.getReferenceManager().getReferencesTo(target);
        while (refs.hasNext()) {
            Reference r = refs.next();
            Function f = currentProgram.getFunctionManager().getFunctionContaining(r.getFromAddress());
            if (f != null) {
                functions.add(f);
            }
        }

        println("=== " + functions.size() + " functions reference " + target + " ===");
        for (Function f : functions) {
            println("=========================================================");
            println("FUNCTION " + f.getName() + " @ " + f.getEntryPoint()
                + " size=" + f.getBody().getNumAddresses());
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
