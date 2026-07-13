// Prints a one-shot JSON-ish summary of the current program: image base, entry
// point, language/compiler spec, memory block layout, function count, and the
// ghidra_psx_ldr PsyQ Version program-info field if one was detected.
// Intended for headless use: analyzeHeadless <project> -process <name> -noanalysis -postScript ReportProgramSummary.java
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.symbol.SymbolTable;

public class ReportProgramSummary extends GhidraScript {
    @Override
    protected void run() throws Exception {
        println("=== ReportProgramSummary ===");
        println("name=" + currentProgram.getName());
        println("imageBase=" + currentProgram.getImageBase());
        println("entryPoint=" + currentProgram.getSymbolTable().getExternalEntryPointIterator().next());
        println("language=" + currentProgram.getLanguageID());
        println("compilerSpec=" + currentProgram.getCompilerSpec().getCompilerSpecID());
        println("psyqVersion=" + currentProgram.getOptions("Program Information").getString("PsyQ Version", "(none)"));

        println("--- memory blocks ---");
        for (MemoryBlock b : currentProgram.getMemory().getBlocks()) {
            println(String.format("%-16s start=%-12s end=%-12s size=0x%-8x initialized=%s exec=%s",
                b.getName(), b.getStart(), b.getEnd(), b.getSize(), b.isInitialized(), b.isExecute()));
        }

        int funcCount = currentProgram.getFunctionManager().getFunctionCount();
        println("functionCount=" + funcCount);

        SymbolTable st = currentProgram.getSymbolTable();
        println("definedSymbolCount=" + st.getNumSymbols());

        println("--- first 20 functions by address ---");
        int shown = 0;
        for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
            if (shown++ >= 20) break;
            println(String.format("%-12s %s", f.getEntryPoint(), f.getName()));
        }
        println("=== end ===");
    }
}
