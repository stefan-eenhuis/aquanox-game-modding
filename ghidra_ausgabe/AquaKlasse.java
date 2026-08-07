// Dekompiliert alle Funktionen, deren Name ein Muster enthaelt.
//
// Aufruf:
//   -postScript AquaKlasse.java <Muster> <Ausgabedatei> [maxBytes]
// Beispiel:
//   -postScript AquaKlasse.java DES_Data C:\...\des_data.c
//
// Zusaetzlich wird zu jeder Funktion notiert, wer sie ruft und
// welche Zeichenketten sie benutzt -- das ordnet sie ein.
//
//@category AquaNox
//@author AquaLive

import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.Reference;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class AquaKlasse extends GhidraScript {

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            println("AquaKlasse: <Muster> <Ausgabedatei> [maxBytes]");
            return;
        }
        String muster = args[0];
        String datei  = args[1];
        int maxBytes  = (args.length > 2) ? Integer.parseInt(args[2]) : 4000;

        new File(datei).getParentFile().mkdirs();
        PrintWriter pw = new PrintWriter(new FileWriter(datei));
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);

        List<Function> treffer = new ArrayList<Function>();
        FunctionIterator it =
            currentProgram.getFunctionManager().getFunctions(true);
        while (it.hasNext()) {
            Function f = it.next();
            if (f.getName().contains(muster)) treffer.add(f);
        }

        pw.println("// ============================================");
        pw.println("// Muster: " + muster);
        pw.println("// Treffer: " + treffer.size() + " Funktionen");
        pw.println("// ============================================");
        pw.println();
        println("Muster '" + muster + "': " + treffer.size() + " Funktionen");

        int gross = 0;
        for (Function f : treffer) {
            if (monitor.isCancelled()) break;
            long n = f.getBody().getNumAddresses();
            pw.println("// --------------------------------------------");
            pw.println("// " + f.getName() + "   ab 0x" + f.getEntryPoint()
                       + "   " + n + " Byte");

            // Wer ruft die Funktion?
            Set<String> rufer = new TreeSet<String>();
            try {
                Iterator<Function> ci = f.getCallingFunctions(monitor).iterator();
                while (ci.hasNext()) rufer.add(ci.next().getName());
            } catch (Exception e) { }
            if (!rufer.isEmpty()) {
                pw.println("// gerufen von: " + kurz(rufer, 8));
            }

            // Welche Zeichenketten benutzt sie?
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
                            if (s.length() >= 3 && s.length() <= 70)
                                texte.add(s);
                        }
                    }
                }
            } catch (Exception e) { }
            if (!texte.isEmpty()) {
                pw.println("// Texte: " + kurz(texte, 10));
            }
            pw.println("// --------------------------------------------");

            if (n > maxBytes) {
                pw.println("// (uebersprungen: " + n + " Byte > " + maxBytes + ")");
                pw.println();
                gross++;
                continue;
            }
            try {
                DecompileResults r = di.decompileFunction(f, 180, monitor);
                if (r != null && r.decompileCompleted())
                    pw.println(r.getDecompiledFunction().getC());
                else
                    pw.println("// Dekompilation fehlgeschlagen");
            } catch (Exception ex) {
                pw.println("// Fehler: " + ex.getMessage());
            }
            pw.println();
        }
        pw.close();
        di.dispose();
        println("  geschrieben: " + datei + "   (" + gross + " zu gross)");
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
