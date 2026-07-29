// Finds instructions whose explicit operands contain one or more requested
// scalar values. This is useful for locating accesses to an unnamed structure
// field when only its byte offset is known (for example, 0x73c).
// Usage (headless): analyzeHeadless <project> -process <name> -noanalysis
//   -scriptPath tools/ghidra/scripts -postScript DumpScalarOperands.java
//   0xVALUE [0xVALUE ...]
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.scalar.Scalar;

import java.math.BigInteger;
import java.util.LinkedHashSet;
import java.util.Set;

public class DumpScalarOperands extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException(
                "Usage: DumpScalarOperands.java 0xVALUE [0xVALUE ...]");
        }

        Set<BigInteger> targets = new LinkedHashSet<>();
        for (String arg : args) {
            String normalized = arg.toLowerCase().startsWith("0x")
                ? arg.substring(2)
                : arg;
            targets.add(new BigInteger(normalized, 16));
        }

        int count = 0;
        InstructionIterator instructions =
            currentProgram.getListing().getInstructions(true);
        while (instructions.hasNext() && !monitor.isCancelled()) {
            Instruction instruction = instructions.next();
            boolean matched = false;
            for (int operand = 0;
                 operand < instruction.getNumOperands() && !matched;
                 operand++) {
                for (Object object : instruction.getOpObjects(operand)) {
                    if (object instanceof Scalar) {
                        Scalar scalar = (Scalar)object;
                        BigInteger value = new BigInteger(
                            Long.toUnsignedString(scalar.getUnsignedValue()));
                        if (targets.contains(value)) {
                            matched = true;
                            break;
                        }
                    }
                }
            }
            if (!matched) {
                continue;
            }

            Function function = currentProgram.getFunctionManager()
                .getFunctionContaining(instruction.getAddress());
            String functionName =
                function == null ? "(no function)" : function.getName();
            println(instruction.getAddress() + " " + functionName +
                " :: " + instruction);
            count++;
        }
        println("TOTAL " + count);
    }
}
