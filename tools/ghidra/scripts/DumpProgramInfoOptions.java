// Temporary diagnostic: dumps every "Program Information" option name/value,
// to check whether full auto-analysis has ever run (the "Analyzed" boolean)
// without mutating the program. Headless: -postScript DumpProgramInfoOptions.java
import ghidra.app.script.GhidraScript;
import ghidra.framework.options.Options;

public class DumpProgramInfoOptions extends GhidraScript {
    @Override
    protected void run() throws Exception {
        println("=== DumpProgramInfoOptions ===");
        Options opts = currentProgram.getOptions("Program Information");
        for (String name : opts.getOptionNames()) {
            println(name + " = " + opts.getValueAsString(name));
        }
        println("=== end ===");
    }
}
