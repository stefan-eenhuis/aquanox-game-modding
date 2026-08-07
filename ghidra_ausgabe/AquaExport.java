// Exportiert die Ghidra-Erkenntnisse ueber Aqua.exe in Textdateien,
// damit sie ausserhalb von Ghidra weiterverwendet werden koennen.
//
// Aufruf (headless):
//   -postScript AquaExport.java <Ausgabeordner>
//
//@category AquaNox
//@author AquaLive

import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.DataType;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;
import ghidra.program.model.symbol.SymbolTable;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class AquaExport extends GhidraScript {

    // Die Adressen, die in der bisherigen Capstone-Arbeit von Hand
    // ermittelt wurden. Sie werden dekompiliert, damit sich die
    // Ergebnisse beider Werkzeuge vergleichen lassen.
    private static final String[][] BEKANNT = {
        {"005749d0", "GUI_Menu_Main__HeartBeat"},
        {"00575000", "GUI_Menu_SinglePlayer__HeartBeat"},
        {"00575737", "GUI_Menu_Load__HeartBeat"},
        {"00575d87", "GUI_Menu_InstantFight__HeartBeat"},
        {"004247e0", "Aqua_State_InstantFight__ctor"},
        {"004208c0", "Aqua_State_Game__ctor"},
        {"0058ac70", "MAI_Result__Init"},
        {"0058ac90", "MAI_Result__AddOrder"},
        {"0058d520", "MENU_Open"},
        {"0058d760", "MENU_Close"},
        {"00563300", "Savegame__Load"},
        {"005632a0", "Savegame__ctor"},
        {"0041f430", "Aqua_State_Menu__GetNameByType"},
        {"0048d750", "NOD_Script__HeartBeat"},
        {"004580c0", "NOD_Game__PM_LoadScript_Aufrufer"},
    };

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        String aus = (args.length > 0) ? args[0]
                                       : "C:\\Tools\\ghidra_projekte\\ausgabe";
        new File(aus).mkdirs();
        println("AquaExport: Ausgabe nach " + aus);

        schreibeFunktionsliste(aus);
        schreibeSymbole(aus);
        dekompiliereBekannte(aus);
        schreibeVergleich(aus);
    }

    // ------------------------------------------------ Funktionsliste ---
    private void schreibeFunktionsliste(String aus) throws Exception {
        PrintWriter pw = new PrintWriter(new FileWriter(aus + "\\funktionen.csv"));
        pw.println("adresse;name;bytes;aufrufer;ruft_auf");
        FunctionIterator it =
            currentProgram.getFunctionManager().getFunctions(true);
        int n = 0;
        while (it.hasNext() && !monitor.isCancelled()) {
            Function f = it.next();
            int rein = 0, raus = 0;
            try { rein = f.getCallingFunctions(monitor).size(); } catch (Exception e) { }
            try { raus = f.getCalledFunctions(monitor).size(); } catch (Exception e) { }
            pw.println("0x" + f.getEntryPoint() + ";" + f.getName() + ";"
                       + f.getBody().getNumAddresses() + ";" + rein + ";" + raus);
            n++;
        }
        pw.close();
        println("Funktionen gesamt: " + n);
    }

    // ------------------------------------------------------- Symbole ---
    private void schreibeSymbole(String aus) throws Exception {
        PrintWriter pw = new PrintWriter(new FileWriter(aus + "\\symbole.csv"));
        pw.println("adresse;name;typ;quelle");
        SymbolTable st = currentProgram.getSymbolTable();
        SymbolIterator it = st.getAllSymbols(true);
        int n = 0;
        while (it.hasNext() && !monitor.isCancelled()) {
            Symbol s = it.next();
            pw.println("0x" + s.getAddress() + ";" + s.getName() + ";"
                       + s.getSymbolType() + ";" + s.getSource());
            n++;
        }
        pw.close();
        println("Symbole gesamt: " + n);
    }

    // ------------------------------------------- die bekannten Stellen ---
    private void dekompiliereBekannte(String aus) throws Exception {
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        PrintWriter pw = new PrintWriter(new FileWriter(aus + "\\dekompiliert.c"));
        pw.println("// Dekompilat der Stellen, die zuvor mit Capstone von Hand");
        pw.println("// gelesen wurden. Zum Vergleich beider Werkzeuge.");
        pw.println();
        for (String[] e : BEKANNT) {
            if (monitor.isCancelled()) break;
            Address a = toAddr(Long.parseLong(e[0], 16));
            Function f = getFunctionContaining(a);
            pw.println("// ================================================");
            pw.println("// 0x" + e[0] + "   erwartet: " + e[1]);
            if (f == null) {
                pw.println("// *** Ghidra kennt hier KEINE Funktion ***");
                pw.println();
                println("  0x" + e[0] + "  keine Funktion");
                continue;
            }
            boolean genau = f.getEntryPoint().equals(a);
            pw.println("// Ghidra: " + f.getName() + " ab 0x"
                       + f.getEntryPoint() + ", " + f.getBody().getNumAddresses()
                       + " Byte" + (genau ? "" : "   *** ANFANG WEICHT AB ***"));
            pw.println("// ================================================");
            try {
                DecompileResults r = di.decompileFunction(f, 120, monitor);
                if (r != null && r.decompileCompleted()) {
                    pw.println(r.getDecompiledFunction().getC());
                } else {
                    pw.println("// Dekompilation fehlgeschlagen");
                }
            } catch (Exception ex) {
                pw.println("// Fehler: " + ex.getMessage());
            }
            pw.println();
            println("  0x" + e[0] + "  -> " + f.getName()
                    + (genau ? "" : "  (Anfang 0x" + f.getEntryPoint() + ")"));
        }
        pw.close();
        di.dispose();
    }

    // ------------------------------------- Gegenprobe zu den Capstone- ---
    //                                       Befunden dieser Sitzung
    private void schreibeVergleich(String aus) throws Exception {
        PrintWriter pw = new PrintWriter(new FileWriter(aus + "\\vergleich.txt"));
        pw.println("GEGENPROBE: Capstone-Befunde gegen Ghidra");
        pw.println("=========================================");
        pw.println();

        // 1. Ist 0x5747f0 wirklich eine eigene Funktion (und NICHT
        //    GUI_Menu_Main::HeartBeat)?
        pw.println("1. Der Irrtum 0x5747f0 vs 0x5749d0");
        for (String s : new String[]{"005747f0", "005749d0"}) {
            Address a = toAddr(Long.parseLong(s, 16));
            Function f = getFunctionContaining(a);
            pw.println("   0x" + s + " -> " + (f == null ? "keine Funktion"
                : f.getName() + " ab 0x" + f.getEntryPoint()
                  + " (" + f.getBody().getNumAddresses() + " Byte)"));
        }
        pw.println();

        // 2. Wer verweist auf die Sprungtabelle 0x574e60?
        pw.println("2. Die Sprungtabelle 0x574e60 -- Verweise darauf");
        listeVerweise(pw, 0x574e60L);
        pw.println();

        // 3. Wer ruft den Zustandskonstruktor?
        pw.println("3. Aufrufer von 0x4247e0 (Aqua_State_InstantFight)");
        listeVerweise(pw, 0x4247e0L);
        pw.println();

        // 4. Wer benutzt MAI_Result::AddOrder? -- das ist der Schluessel
        //    zur Kampagnen-Verkettung
        pw.println("4. Aufrufer von 0x58ac90 (MAI_Result::AddOrder)");
        listeVerweise(pw, 0x58ac90L);
        pw.println();

        // 5. Die Vtables, die als Menuebildschirme dienen
        pw.println("5. Verweise auf die Vtable-Adressen 0x5fa500..0x5fa720");
        for (long v = 0x5fa500L; v < 0x5fa720L; v += 4) {
            List<String> von = verweiseAuf(v);
            if (von.size() > 0) {
                pw.println("   0x" + Long.toHexString(v) + "  "
                           + von.size() + " Verweise: " + String.join(", ", von));
            }
        }
        pw.close();
    }

    private List<String> verweiseAuf(long ziel) {
        List<String> raus = new ArrayList<String>();
        try {
            Address a = toAddr(ziel);
            ReferenceIterator ri =
                currentProgram.getReferenceManager().getReferencesTo(a);
            while (ri.hasNext()) {
                Reference r = ri.next();
                raus.add("0x" + r.getFromAddress() + "(" + r.getReferenceType() + ")");
                if (raus.size() >= 12) break;
            }
        } catch (Exception e) { }
        return raus;
    }

    private void listeVerweise(PrintWriter pw, long ziel) {
        List<String> v = verweiseAuf(ziel);
        if (v.isEmpty()) {
            pw.println("   (keine Verweise gefunden)");
            return;
        }
        for (String s : v) {
            String adr = s.substring(2, s.indexOf('('));
            Function f = null;
            try { f = getFunctionContaining(toAddr(Long.parseLong(adr, 16))); }
            catch (Exception e) { }
            pw.println("   " + s + (f != null ? "   in " + f.getName() : ""));
        }
    }
}
