// Lists every reference to one or more data addresses, including Ghidra's
// read/write classification, containing function, and source instruction.
// This is intentionally narrower than DumpFieldXrefs.java: use it to prove
// which references actually write a global before decompiling those writers.
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpDataXrefs.java 0xADDR [0xADDR ...]
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.CodeUnit;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;

public class DumpDataXrefs extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException(
                "Usage: DumpDataXrefs.java 0xADDR [0xADDR ...]");
        }

        for (String arg : args) {
            Address target = currentProgram.getAddressFactory().getAddress(arg);
            ReferenceIterator refs =
                currentProgram.getReferenceManager().getReferencesTo(target);
            int count = 0;

            println("=========================================================");
            println("DATA XREFS TO " + target);
            while (refs.hasNext() && !monitor.isCancelled()) {
                Reference ref = refs.next();
                Address from = ref.getFromAddress();
                Function function =
                    currentProgram.getFunctionManager().getFunctionContaining(from);
                CodeUnit unit = currentProgram.getListing().getCodeUnitAt(from);
                String functionName =
                    function == null ? "(no function)" : function.getName();
                String instruction = unit == null ? "(no code unit)" : unit.toString();

                println(from + " " + ref.getReferenceType() + " " +
                    functionName + " :: " + instruction);
                count++;
            }
            println("TOTAL " + count);
        }
    }
}
