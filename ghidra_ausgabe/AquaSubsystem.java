// Erschliesst mehrere Subsysteme in einem Lauf.
//
// Aufruf:
//   -postScript AquaSubsystem.java <Ordner> <Muster1> <Muster2> ...
// Je Muster entsteht <Ordner>\<muster>.c
//
// Zusaetzlich entsteht <Ordner>\_uebersicht.txt mit den Aufruf-
// beziehungen ZWISCHEN den Mustern -- so sieht man, welches
// Subsystem auf welchem aufsetzt.
//
//@category AquaNox
//@author AquaLive

import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
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

public class AquaSubsystem extends GhidraScript {

    private static final int MAXBYTES = 4500;

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            println("AquaSubsystem: <Ordner> <Muster> ...");
            return;
        }
        String ordner = args[0];
        new File(ordner).mkdirs();

        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);

        PrintWriter ue = new PrintWriter(new FileWriter(ordner + "\\_uebersicht.txt"));
        ue.println("SUBSYSTEME UND IHRE VERFLECHTUNG");
        ue.println("================================");
        ue.println();

        for (int m = 1; m < args.length; m++) {
            if (monitor.isCancelled()) break;
            String muster = args[m];
            String datei = ordner + "\\" + muster.toLowerCase()
                                              .replace("<", "").replace(">", "")
                           + ".c";

            List<Function> treffer = new ArrayList<Function>();
            FunctionIterator it =
                currentProgram.getFunctionManager().getFunctions(true);
            while (it.hasNext()) {
                Function f = it.next();
                if (f.getName().contains(muster)) treffer.add(f);
            }

            long summe = 0;
            for (Function f : treffer) summe += f.getBody().getNumAddresses();

            ue.println("--- " + muster + " ---");
            ue.println("   " + treffer.size() + " Funktionen, " + summe + " Byte");

            // Welche FREMDEN Funktionen ruft dieses Subsystem?
            Set<String> raus = new TreeSet<String>();
            Set<String> rein = new TreeSet<String>();
            for (Function f : treffer) {
                try {
                    Iterator<Function> ci = f.getCalledFunctions(monitor).iterator();
                    while (ci.hasNext()) {
                        String n = ci.next().getName();
                        if (!n.contains(muster) && !n.startsWith("FUN_")) raus.add(n);
                    }
                    Iterator<Function> pi = f.getCallingFunctions(monitor).iterator();
                    while (pi.hasNext()) {
                        String n = pi.next().getName();
                        if (!n.contains(muster) && !n.startsWith("FUN_")) rein.add(n);
                    }
                } catch (Exception e) { }
            }
            ue.println("   ruft:        " + kurz(raus, 14));
            ue.println("   gerufen von: " + kurz(rein, 14));
            ue.println();

            PrintWriter pw = new PrintWriter(new FileWriter(datei));
            pw.println("// Muster: " + muster + "   " + treffer.size()
                       + " Funktionen, " + summe + " Byte");
            pw.println();
            for (Function f : treffer) {
                if (monitor.isCancelled()) break;
                long n = f.getBody().getNumAddresses();
                pw.println("// --------------------------------------------");
                pw.println("// " + f.getName() + "   ab 0x" + f.getEntryPoint()
                           + "   " + n + " Byte");
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
                if (n > MAXBYTES) {
                    pw.println("// (uebersprungen: " + n + " Byte)");
                    pw.println();
                    continue;
                }
                try {
                    DecompileResults r = di.decompileFunction(f, 150, monitor);
                    if (r != null && r.decompileCompleted())
                        pw.println(r.getDecompiledFunction().getC());
                    else pw.println("// Dekompilation fehlgeschlagen");
                } catch (Exception ex) {
                    pw.println("// Fehler: " + ex.getMessage());
                }
                pw.println();
            }
            pw.close();
            println("  " + muster + ": " + treffer.size() + " Fn -> " + datei);
        }
        ue.close();
        di.dispose();
    }

    private String kurz(Set<String> s, int max) {
        if (s.isEmpty()) return "(keine)";
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String x : s) {
            if (i >= max) { sb.append(", ... (+").append(s.size() - max).append(")"); break; }
            if (i > 0) sb.append(", ");
            sb.append(x);
            i++;
        }
        return sb.toString();
    }
}
