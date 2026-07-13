// Exports every function in the current program as a CSV row matching
// /docs/foundations/symbol-map-schema.md. Confidence is assigned by a
// conservative heuristic since Ghidra's own SourceType vocabulary does not
// map cleanly onto the schema's tiers (the raw SourceType is preserved in
// its own column so a later pass can re-derive a better tier without
// re-running analysis):
//   - Default "FUN_########" names            -> unverified
//   - Any other name                          -> library_signature
//     (in this project's first export, every non-default name came from
//     ghidra_psx_ldr's PsyQ Signatures analyzer or its GTE macro segment,
//     not from manual review)
// source_status is always "decompiler_output_only" for a bulk export: no
// function has had its disassembly/decompilation read by a person yet.
//
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript ExportSymbolMap.java <outCsvPath>
import java.io.File;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.Symbol;

public class ExportSymbolMap extends GhidraScript {

    private static String csv(String s) {
        if (s == null) {
            s = "";
        }
        if (s.contains(",") || s.contains("\"") || s.contains("\n")) {
            s = "\"" + s.replace("\"", "\"\"") + "\"";
        }
        return s;
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException("Usage: ExportSymbolMap.java <outCsvPath>");
        }
        File outFile = new File(args[0]);
        int total = currentProgram.getFunctionManager().getFunctionCount();

        try (PrintWriter w = new PrintWriter(outFile, StandardCharsets.UTF_8.name())) {
            w.println("address,size,proposed_name,namespace,symbol_source_type,confidence," +
                "source_status,verification_evidence,caller_count,callee_count,overlay,notes");

            int done = 0;
            for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
                monitor.checkCancelled();
                monitor.setMessage("Exporting " + (++done) + "/" + total);

                String name = f.getName();
                Symbol sym = f.getSymbol();
                SourceType sourceType = sym != null ? sym.getSource() : SourceType.DEFAULT;
                String namespace = f.getParentNamespace() != null
                    ? f.getParentNamespace().getName() : "";
                if ("Global".equals(namespace)) {
                    namespace = "";
                }

                boolean isDefaultName = name.startsWith("FUN_");
                String confidence = isDefaultName ? "unverified" : "library_signature";
                String evidence = isDefaultName
                    ? ""
                    : "Non-default name from ghidra_psx_ldr auto-analysis "
                        + "(PsyQ Signatures analyzer or GTE macro segment); not independently reviewed.";

                int callerCount = f.getCallingFunctions(monitor).size();
                int calleeCount = f.getCalledFunctions(monitor).size();

                w.println(String.join(",",
                    "0x" + f.getEntryPoint().toString(),
                    Long.toString(f.getBody().getNumAddresses()),
                    csv(name),
                    csv(namespace),
                    csv(sourceType.toString()),
                    confidence,
                    "decompiler_output_only",
                    csv(evidence),
                    Integer.toString(callerCount),
                    Integer.toString(calleeCount),
                    "main",
                    ""
                ));
            }
        }
        println("Wrote " + total + " functions to " + outFile.getAbsolutePath());
    }
}
