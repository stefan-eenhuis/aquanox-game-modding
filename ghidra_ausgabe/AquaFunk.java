// Dekompiliert einzelne Funktionen nach Adresse und benennt sie.
//
// Aufruf:
//   -postScript AquaFunk.java <Ausgabedatei> <adr>=<name> [<adr>=<name> ...]
// Ein Name darf "-" sein, dann wird nicht umbenannt.
//
//@category AquaNox
//@author AquaLive

import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.SourceType;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class AquaFunk extends GhidraScript {

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            println("AquaFunk: <Ausgabedatei> <adr>=<name> ...");
            return;
        }
        String datei = args[0];
        new File(datei).getParentFile().mkdirs();
        PrintWriter pw = new PrintWriter(new FileWriter(datei));
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);

        for (int k = 1; k < args.length; k++) {
            if (monitor.isCancelled()) break;
            String[] teil = args[k].split("=");
            String adr = teil[0].trim();
            String name = (teil.length > 1) ? teil[1].trim() : "-";

            Address a;
            try { a = toAddr(Long.parseLong(adr, 16)); }
            catch (Exception e) { pw.println("// " + adr + " ungueltig"); continue; }

            Function f = getFunctionAt(a);
            if (f == null) {
                try { f = createFunction(a, null); } catch (Exception e) { }
            }
            if (f == null) f = getFunctionContaining(a);
            if (f == null) {
                pw.println("// 0x" + adr + "  keine Funktion");
                println("  0x" + adr + " keine Funktion");
                continue;
            }
            if (!name.equals("-") && f.getName().startsWith("FUN_")) {
                try { f.setName(name, SourceType.USER_DEFINED); } catch (Exception e) { }
            }

            pw.println("// --------------------------------------------");
            pw.println("// " + f.getName() + "   ab 0x" + f.getEntryPoint()
                       + "   " + f.getBody().getNumAddresses() + " Byte");
            Set<String> rufer = new TreeSet<String>();
            try {
                Iterator<Function> ci = f.getCallingFunctions(monitor).iterator();
                while (ci.hasNext()) rufer.add(ci.next().getName());
            } catch (Exception e) { }
            if (!rufer.isEmpty()) pw.println("// gerufen von: " + kurz(rufer, 10));

            Set<String> texte = new TreeSet<String>();
            try {
                InstructionIterator ii =
                    currentProgram.getListing().getInstructions(f.getBody(), true);
                while (ii.hasNext()) {
                    Instruction ins = ii.next();
                    for (Reference r : ins.getReferencesFrom()) {
                        Data d = getDataAt(r.getToAddress());
                        if (d != null && d.getValue() instanceof String) {
                            String s = ((String) d.getValue()).trim();
                            if (s.length() >= 3 && s.length() <= 70) texte.add(s);
                        }
                    }
                }
            } catch (Exception e) { }
            if (!texte.isEmpty()) pw.println("// Texte: " + kurz(texte, 12));
            pw.println("// --------------------------------------------");

            try {
                DecompileResults r = di.decompileFunction(f, 180, monitor);
                if (r != null && r.decompileCompleted())
                    pw.println(r.getDecompiledFunction().getC());
                else pw.println("// Dekompilation fehlgeschlagen");
            } catch (Exception ex) {
                pw.println("// Fehler: " + ex.getMessage());
            }
            pw.println();
            println("  0x" + adr + " -> " + f.getName());
        }
        pw.close();
        di.dispose();
    }

    private String kurz(Set<String> s, int max) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String x : s) {
            if (i >= max) { sb.append(", ... (+").append(s.size() - max).append(")"); break; }
            if (i > 0) sb.append(", ");
            sb.append(x.replace("\n", " ").replace("\r", ""));
            i++;
        }
        return sb.toString();
    }
}
