// Lists direct callers of one or more target functions, including each call
// site and a decompilation of every unique caller. This complements
// DumpFunctionDetail.java when a function returns a data pointer whose fields
// are only interpreted by its callers.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpFunctionCallers.java
//   0xADDR [0xADDR ...]
import ghidra.app.decompiler.flatapi.FlatDecompilerAPI;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.CodeUnit;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class DumpFunctionCallers extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException(
                "Usage: DumpFunctionCallers.java 0xADDR [0xADDR ...]");
        }

        Map<Function, Set<String>> callerSites = new LinkedHashMap<>();

        for (String arg : args) {
            Address target = currentProgram.getAddressFactory().getAddress(arg);
            Function targetFunction =
                currentProgram.getFunctionManager().getFunctionAt(target);
            String targetName = targetFunction == null
                ? target.toString()
                : targetFunction.getName();
            ReferenceIterator refs =
                currentProgram.getReferenceManager().getReferencesTo(target);
            int count = 0;

            println("=========================================================");
            println("CALLERS OF " + targetName + " @ " + target);
            while (refs.hasNext() && !monitor.isCancelled()) {
                Reference ref = refs.next();
                if (!ref.getReferenceType().isCall()) {
                    continue;
                }

                Address from = ref.getFromAddress();
                Function caller =
                    currentProgram.getFunctionManager().getFunctionContaining(from);
                CodeUnit unit = currentProgram.getListing().getCodeUnitAt(from);
                String callerName =
                    caller == null ? "(no function)" : caller.getName();
                String instruction =
                    unit == null ? "(no code unit)" : unit.toString();

                println(from + " " + callerName + " :: " + instruction);
                count++;
                if (caller != null) {
                    callerSites.computeIfAbsent(
                        caller, ignored -> new LinkedHashSet<>())
                        .add(targetName + " @ " + from);
                }
            }
            println("TOTAL DIRECT CALLS " + count);
        }

        FlatDecompilerAPI decompiler = new FlatDecompilerAPI(this);
        println("=========================================================");
        println("UNIQUE CALLER FUNCTIONS " + callerSites.size());
        for (Map.Entry<Function, Set<String>> entry : callerSites.entrySet()) {
            Function caller = entry.getKey();
            println("=========================================================");
            println("FUNCTION " + caller.getName() + " @ " +
                caller.getEntryPoint() + " size=" +
                caller.getBody().getNumAddresses());
            println("CALLS " + String.join(", ", entry.getValue()));
            try {
                println(decompiler.decompile(caller));
            }
            catch (Exception e) {
                println("(decompilation failed: " + e.getMessage() + ")");
            }
        }
        decompiler.dispose();
    }
}
