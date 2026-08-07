// Macht aus der rohen Ghidra-Analyse eine benannte Datenbank.
//
// Drei Schritte:
//   1. VTABLE-SCAN. Virtuelle Methoden werden nur ueber Funktions-
//      zeiger erreicht; die Autoanalyse findet sie deshalb nicht.
//      Wo drei oder mehr DWORDs hintereinander auf Code zeigen,
//      liegt eine Vtable -- dort legen wir Funktionen an.
//   2. BENENNUNG UEBER MELDUNGEN. Die KRASS-Engine pusht in fast
//      jeder Funktion ihren eigenen Namen als Zeichenkette, z.B.
//      "GUI_Menu_Main::HeartBeat()". Wer den String benutzt, heisst
//      so. Das benennt Funktionen zu Tausenden.
//   3. HANDARBEIT. Was in der bisherigen Capstone-Arbeit ermittelt
//      wurde, wird zusaetzlich eingetragen.
//
//@category AquaNox
//@author AquaLive

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSetView;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.DataIterator;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;
import ghidra.program.model.symbol.SourceType;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AquaBenennen extends GhidraScript {

    // Was Capstone bereits zutage gefoerdert hat.
    private static final String[][] HANDARBEIT = {
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
        {"005d5790", "lua_dobuffer"},
        {"004279e0", "operator_new"},
        {"004279f0", "operator_delete"},
        {"00524340", "TERMINATION"},
        {"00520620", "str_copy"},
        {"00520750", "str_len"},
    };

    private int neueFunktionen = 0;
    private int benannt = 0;
    private int handarbeit = 0;

    @Override
    public void run() throws Exception {
        String aus = "C:\\Tools\\ghidra_projekte\\ausgabe";
        new File(aus).mkdirs();
        PrintWriter pw = new PrintWriter(new FileWriter(aus + "\\benennung.txt"));

        pw.println("SCHRITT 1: VTABLE-SCAN");
        pw.println("======================");
        vtableScan(pw);
        pw.println();

        pw.println("SCHRITT 2: BENENNUNG UEBER MELDUNGSSTRINGS");
        pw.println("==========================================");
        benenneUeberStrings(pw);
        pw.println();

        pw.println("SCHRITT 3: HANDARBEIT AUS DER CAPSTONE-PHASE");
        pw.println("============================================");
        traegtHandarbeitEin(pw);
        pw.println();

        pw.println("ERGEBNIS");
        pw.println("========");
        pw.println("  neu angelegte Funktionen: " + neueFunktionen);
        pw.println("  ueber Meldungen benannt:  " + benannt);
        pw.println("  von Hand eingetragen:     " + handarbeit);
        pw.println("  Funktionen jetzt gesamt:  "
                   + currentProgram.getFunctionManager().getFunctionCount());
        pw.close();

        println("neu angelegt: " + neueFunktionen
                + "   benannt: " + benannt
                + "   Handarbeit: " + handarbeit
                + "   gesamt: "
                + currentProgram.getFunctionManager().getFunctionCount());
    }

    // ---------------------------------------------------- 1. Vtables ---
    private void vtableScan(PrintWriter pw) throws Exception {
        AddressSetView code = currentProgram.getMemory().getExecuteSet();
        int vtables = 0;
        for (MemoryBlock b : currentProgram.getMemory().getBlocks()) {
            if (!b.isInitialized() || b.isExecute()) continue;
            long start = b.getStart().getOffset();
            long ende  = b.getEnd().getOffset() - 4;
            long a = start;
            while (a < ende && !monitor.isCancelled()) {
                // Wie viele DWORDs hintereinander zeigen auf Code?
                int lauf = 0;
                long p = a;
                while (p < ende) {
                    long z;
                    try { z = getInt(toAddr(p)) & 0xFFFFFFFFL; }
                    catch (Exception e) { break; }
                    if (z < 0x401000L || z > 0x5f0000L) break;
                    if (!code.contains(toAddr(z))) break;
                    lauf++;
                    p += 4;
                }
                if (lauf >= 3) {
                    vtables++;
                    for (int i = 0; i < lauf; i++) {
                        long z = getInt(toAddr(a + i * 4L)) & 0xFFFFFFFFL;
                        Address za = toAddr(z);
                        if (getFunctionAt(za) == null
                            && getFunctionContaining(za) == null) {
                            try {
                                Function f = createFunction(za, null);
                                if (f != null) neueFunktionen++;
                            } catch (Exception e) { }
                        }
                    }
                    a = p;
                } else {
                    a += 4;
                }
            }
        }
        pw.println("  Vtable-artige Bloecke gefunden: " + vtables);
        pw.println("  daraus neu angelegte Funktionen: " + neueFunktionen);
    }

    // ------------------------------------------- 2. Meldungs-Strings ---
    private void benenneUeberStrings(PrintWriter pw) throws Exception {
        Map<String, Integer> zaehler = new HashMap<String, Integer>();
        Set<String> vergeben = new HashSet<String>();
        int kandidaten = 0;

        DataIterator di = currentProgram.getListing().getDefinedData(true);
        while (di.hasNext() && !monitor.isCancelled()) {
            Data d = di.next();
            Object v = d.getValue();
            if (!(v instanceof String)) continue;
            String s = ((String) v).trim();
            // Muster: Klasse::Methode(  -- der Namensstempel der Engine
            int dd = s.indexOf("::");
            if (dd <= 0 || !s.contains("(")) continue;
            if (s.length() > 80 || s.contains(" ")) continue;
            kandidaten++;

            String name = s.substring(0, s.indexOf("(")).trim();
            name = name.replace("::", "__").replace("~", "dtor_");
            if (name.isEmpty()) continue;

            ReferenceIterator ri = currentProgram.getReferenceManager()
                                       .getReferencesTo(d.getAddress());
            while (ri.hasNext()) {
                Reference r = ri.next();
                Function f = getFunctionContaining(r.getFromAddress());
                if (f == null) continue;
                if (!f.getName().startsWith("FUN_")) continue;  // schon benannt

                String kandidat = name;
                if (vergeben.contains(kandidat)) {
                    int k = zaehler.containsKey(name) ? zaehler.get(name) : 1;
                    k++;
                    zaehler.put(name, k);
                    kandidat = name + "_" + k;
                }
                try {
                    f.setName(kandidat, SourceType.USER_DEFINED);
                    vergeben.add(kandidat);
                    benannt++;
                } catch (Exception e) { }
            }
        }
        pw.println("  Zeichenketten mit 'Klasse::Methode(': " + kandidaten);
        pw.println("  daraus benannte Funktionen:           " + benannt);
    }

    // --------------------------------------------------- 3. Handarbeit ---
    private void traegtHandarbeitEin(PrintWriter pw) throws Exception {
        for (String[] e : HANDARBEIT) {
            Address a = toAddr(Long.parseLong(e[0], 16));
            Function f = getFunctionAt(a);
            if (f == null) {
                f = getFunctionContaining(a);
                if (f != null && !f.getEntryPoint().equals(a)) {
                    pw.println("  0x" + e[0] + "  liegt INNERHALB von "
                               + f.getName() + " ab 0x" + f.getEntryPoint()
                               + "  -- nicht umbenannt");
                    continue;
                }
            }
            if (f == null) {
                try { f = createFunction(a, null); if (f != null) neueFunktionen++; }
                catch (Exception ex) { }
            }
            if (f == null) {
                pw.println("  0x" + e[0] + "  konnte nicht angelegt werden");
                continue;
            }
            String alt = f.getName();
            try {
                f.setName(e[1], SourceType.USER_DEFINED);
                handarbeit++;
                pw.println("  0x" + e[0] + "  " + alt + "  ->  " + e[1]);
            } catch (Exception ex) {
                pw.println("  0x" + e[0] + "  " + e[1] + " fehlgeschlagen: "
                           + ex.getMessage());
            }
        }
    }
}
