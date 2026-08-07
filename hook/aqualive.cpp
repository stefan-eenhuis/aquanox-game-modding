// =====================================================================
//  AquaLive -- Proxy-DLL fuer AquaNox 1 (GOG, DRM-frei)
//  Stufe 1+2: Lua-Hot-Reload. Datei speichern -> laeuft sofort im Spiel.
//
//  LADEWEG: liegt als dinput8.dll neben Aqua.exe. Das Spiel importiert
//  DINPUT8.dll statisch; der Loader nimmt zuerst das Anwendungsverzeichnis.
//  Alle fuenf Exporte werden an das echte System32\dinput8.dll durchgereicht.
//
//  EINHAENGEPUNKT: NOD_Script::HeartBeat, Vtable 0x5f6218 Slot +0x20.
//  Diese Methode laeuft pro Frame auf dem Hauptthread UND setzt selbst
//  [0x668a40] auf den Lua-Zustand -- besser geht es nicht. Sie ist
//  __thiscall ohne Stackargumente (endet auf blankes `ret`), deshalb
//  genuegt ein __fastcall-Ersatz mit ecx/edx.
//
//  SICHERHEIT (ein Fehler hier nimmt den Prozess mit, anders als bei Lua):
//    * Fingerabdruck-Pruefung: die ersten Bytes jedes benutzten Ankers
//      muessen stimmen, sonst wird NICHTS gepatcht. Das ist praeziser als
//      eine Dateipruefsumme, weil es genau das validiert, was wir anfassen.
//    * Not-Aus: existiert mod_docu\live\OFF, bleibt die DLL untaetig.
//    * Alles wird nach mod_docu\live\hook.log protokolliert.
//    * Der Original-HeartBeat wird IMMER zuerst gerufen; unsere Arbeit
//      passiert danach und in einem __try-Block.
//
//  Adressen gelten fuer Aqua.exe SHA256 EE061C4F...  (Handoff Abschnitt 91)
// =====================================================================
#include <windows.h>
#include <stdio.h>

// GetAsyncKeyState (Stufe 7) steckt in user32; beim reinen /LD-Bau
// wird sie sonst nicht dazugelinkt.
#pragma comment(lib, "user32.lib")

// ---------------------------------------------------------- Adressen ---
static const DWORD A_SCRIPT_VTABLE   = 0x005f6218; // NOD_Script
static const int   VT_HEARTBEAT_OFF  = 0x20;
static const DWORD A_SCRIPT_HEARTBEAT= 0x0048d750;
static const DWORD A_LUA_STATE_SLOT  = 0x00668a40; // L = *(void**)(*(void**)hier)
static const DWORD A_LUA_DOBUFFER    = 0x005d5790; // (L, buf, size, name) -> int

// --- Stufe 3: die Menue-Bildschirmgrenze ---------------------------
// Zwei Dispatcher, je eine Sprungtabelle, beide mit derselben Grenze:
//   MENU_Open  0x58d520, cmp bei +5, Tabelle 0x58d6c0, setzt Flag 1
//   MENU_Close 0x58d760, cmp bei +9, Tabelle 0x58d908, setzt Flag 0
// 'cmp ebx,0x24' + 'ja raus' laesst Index 0..36 durch = 37 Bildschirme.
static const DWORD A_MENUOPEN        = 0x0058d520;
static const DWORD A_MENUCLOSE       = 0x0058d760;
// *** ACHTUNG, HIER LAG EIN FEHLER, DER DAS SPIEL ABSTUERZEN LIESS. ***
// Die Anweisung ist DREI Byte lang:
//     83 fb 24     cmp ebx, 0x24
//     ^  ^  ^
//    +5 +6 +7   (gerechnet ab A_MENUOPEN)
// Zu aendern ist das IMMEDIATE bei +7, nicht das Opcode-Byte bei +5.
// Der erste Anlauf schrieb 0x25 auf das Opcode und machte daraus
//     25 fb 24 56 57   and eax, 0x575624fb
// -- was die nachfolgenden 'push esi' und 'push edi' verschluckt hat,
// waehrend die Tabellenarme weiter 'pop edi/esi/ebx' machten.
// Ergebnis: zerlegter Stack und ein Absturz beim Menuewechsel mit
// "[TERMINATION] GUI_Menu_Interface::MENU_Open() No known menu type".
static const int   OFF_CMP_OPEN      = 7;    // das Immediate von cmp
static const int   OFF_CMP_CLOSE     = 11;   // dito, MENU_Close
static const DWORD A_MENUTAB_OPEN    = 0x0058d6c0;
static const DWORD A_MENUTAB_CLOSE   = 0x0058d908;
static const int   MENU_COUNT        = 37;   // heutige Zahl der Bildschirme

// Fingerabdruecke: erste Bytes der Funktionen, die wir benutzen.
struct Fingerprint { DWORD addr; const BYTE* bytes; size_t len; const char* name; };
static const BYTE FP_HEARTBEAT[] = {0x56,0x57,0x8b,0xf9,0x8d,0x87,0xa0,0x00};
static const BYTE FP_DOBUFFER [] = {0x55,0x8b,0xec,0x81,0xec,0xd4,0x01,0x00};
static const BYTE FP_MENUOPEN [] = {0x53,0x8b,0x5c,0x24,0x0c,0x83,0xfb,0x24,
                                    0x56,0x57,0x8b,0xf1};
static const BYTE FP_MENUCLOSE[] = {0x53,0x8b,0x5c,0x24,0x0c,0x56,0x57,0x33,
                                    0xff,0x83,0xfb,0x24};

typedef int  (__cdecl *fn_lua_dobuffer)(void* L, const char* buff,
                                        size_t size, const char* name);
typedef void (__fastcall *fn_heartbeat)(void* self, void* unused);

static fn_heartbeat g_origHeartBeat = NULL;
static char g_dir[MAX_PATH]  = {0};   // Verzeichnis der Aqua.exe
static char g_live[MAX_PATH] = {0};   // beobachtete .lua
static char g_log[MAX_PATH]  = {0};
static char g_off[MAX_PATH]  = {0};
static bool g_active = false;
static FILETIME g_lastWrite = {0,0};
static DWORD    g_lastSize  = 0xFFFFFFFF;
static unsigned g_frame = 0;
static unsigned g_reloads = 0;

// ------------------------------------------------------------- Log ---
static void logf(const char* fmt, ...)
{
    if (!g_log[0]) return;
    FILE* f = fopen(g_log, "a");
    if (!f) return;
    SYSTEMTIME t; GetLocalTime(&t);
    fprintf(f, "[%02d:%02d:%02d] ", t.wHour, t.wMinute, t.wSecond);
    va_list ap; va_start(ap, fmt);
    vfprintf(f, fmt, ap);
    va_end(ap);
    fputc('\n', f);
    fclose(f);
}

// ------------------------------------------------ Fingerabdruecke ---
static bool check_bytes(DWORD addr, const BYTE* want, size_t n, const char* what)
{
    __try {
        const BYTE* p = (const BYTE*)addr;
        for (size_t i = 0; i < n; ++i) {
            if (p[i] != want[i]) {
                logf("FINGERABDRUCK FALSCH bei %s (0x%08X): Byte %u ist %02X, "
                     "erwartet %02X -- DLL bleibt untaetig.", what, addr,
                     (unsigned)i, p[i], want[i]);
                return false;
            }
        }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("FINGERABDRUCK: Zugriffsfehler bei %s (0x%08X)", what, addr);
        return false;
    }
    logf("  ok  %-22s 0x%08X", what, addr);
    return true;
}

// ------------------------------------------------------- Hot-Reload ---
static void* lua_state()
{
    __try {
        void** slot = *(void***)A_LUA_STATE_SLOT;   // -> &NOD_Script.field_a0
        if (!slot) return NULL;
        return *slot;                                // der lua_State
    } __except (EXCEPTION_EXECUTE_HANDLER) { return NULL; }
}

static void run_file(const char* path)
{
    HANDLE h = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE,
                           NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (h == INVALID_HANDLE_VALUE) { logf("Datei nicht lesbar: %s", path); return; }
    DWORD size = GetFileSize(h, NULL);
    if (size == INVALID_FILE_SIZE || size == 0) { CloseHandle(h); return; }
    char* buf = (char*)malloc(size + 1);
    if (!buf) { CloseHandle(h); return; }
    DWORD got = 0;
    ReadFile(h, buf, size, &got, NULL);
    CloseHandle(h);
    buf[got] = 0;

    void* L = lua_state();
    if (!L) { logf("kein Lua-Zustand -- uebersprungen (%u Bytes)", got); free(buf); return; }

    fn_lua_dobuffer dobuffer = (fn_lua_dobuffer)A_LUA_DOBUFFER;
    int rc = -1;
    __try {
        rc = dobuffer(L, buf, got, "live.lua");
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("AUSNAHME in lua_dobuffer -- Skript verworfen");
        free(buf);
        return;
    }
    ++g_reloads;
    logf("Neu geladen (#%u): %u Bytes, Rueckgabe %d%s", g_reloads, got, rc,
         rc == 0 ? " (ok)" : " (Fehler -- Details stehen in log.txt des Spiels)");
    free(buf);
}

static void on_frame()
{
    // nur etwa viermal je Sekunde nachsehen; ein Dateizugriff pro Frame waere
    // Verschwendung bei 60+ fps
    if ((++g_frame % 15) != 0) return;

    WIN32_FILE_ATTRIBUTE_DATA fad;
    if (!GetFileAttributesExA(g_live, GetFileExInfoStandard, &fad)) return;
    if (fad.ftLastWriteTime.dwLowDateTime  == g_lastWrite.dwLowDateTime &&
        fad.ftLastWriteTime.dwHighDateTime == g_lastWrite.dwHighDateTime &&
        fad.nFileSizeLow == g_lastSize)
        return;

    bool first = (g_lastSize == 0xFFFFFFFF);
    g_lastWrite = fad.ftLastWriteTime;
    g_lastSize  = fad.nFileSizeLow;
    if (first) { logf("beobachte %s (%u Bytes)", g_live, fad.nFileSizeLow); return; }
    run_file(g_live);
}

static void __fastcall hooked_heartbeat(void* self, void* unused)
{
    g_origHeartBeat(self, unused);          // Original IMMER zuerst
    __try { on_frame(); }
    __except (EXCEPTION_EXECUTE_HANDLER) { }
}

// ================================================================
//  STUFE 3 -- DIE MENUE-BILDSCHIRMGRENZE ANHEBEN
// ================================================================
//  WAS HIER PASSIERT
//    Beide Dispatcher pruefen 'cmp ebx,0x24' und lassen Index 0..36
//    durch. Wir setzen die Grenze auf 0x25 (0..37) und legen fuer den
//    neuen Index 37 in JEDER Tabelle ein Ziel an.
//
//  WARUM DAS ZIEL EIN EIGENER CODE-SCHNIPSEL IST
//    Die Originalarme enden mit einem Sprung auf einen gemeinsamen
//    Ausgang, und der beginnt mit
//        mov ecx, [esi + ebx*4 + 0x3a4]
//    -- er indiziert ein Array MIT DEM MENUE-INDEX. Ein Index 37
//    wuerde dort also ueber den Rand greifen, und wie gross das Array
//    wirklich ist, wissen wir nicht.
//    Unser Arm laeuft deshalb GAR NICHT in den Ausgang, sondern stellt
//    den Stack her und kehrt sofort zurueck:
//        5f          pop edi
//        5e          pop esi
//        5b          pop ebx
//        c2 08 00    ret 8
//    Das ist genau das Funktionsende der Originale (zwei DWORD-
//    Argumente). Index 37 tut damit nichts und fasst nichts an.
//
//  RISIKO DIESES TESTS
//    Solange menuinterface~.des nur 37 Eintraege hat, ruft NIEMAND
//    mit Index 37 auf. Der Patch ist dann folgenlos -- und beweist
//    genau das, was er beweisen soll: dass die DLL Code im
//    Codesegment aendern kann und das Spiel danach normal laeuft.
//    Erst der naechste Schritt (die Datei erweitern) wuerde den neuen
//    Index tatsaechlich benutzen, und DANN wird die Frage nach der
//    Arraygroesse scharf.
static BYTE* g_stub = NULL;     // unser "tue nichts"-Arm
static bool  g_menu_patched = false;

// ================================================================
//  STUFE 4 -- BEOBACHTEN, NICHT AENDERN
// ================================================================
//  Zweck: die eine Frage beantworten, die statisch nicht zu klaeren
//  war -- wie weit reicht das Array bei [this+0x3a4], das beide
//  Dispatcher-Ausgaenge mit dem Menueindex indizieren?
//
//  Statt die Heap-Blockgroesse zu raten, lesen wir das Array selbst:
//  wo die gueltigen Zeiger aufhoeren, ist die Grenze.
//
//  Es wird NICHTS geschrieben. Der Hook ruft das Original immer aus.
static const DWORD A_ARRAY_OFF   = 0x3a4;
static DWORD g_ret_open   = A_MENUOPEN + 5;   // hinter die 5 geretteten Byte
static BYTE  g_saved_open[5] = {0};
static bool  g_watch_on   = false;
static int   g_dumped     = 0;      // Array nur ein paarmal ausgeben
static int   g_opencount  = 0;

static void log_array(void* self)
{
    if (!self) return;
    __try {
        DWORD* arr = (DWORD*)((BYTE*)self + A_ARRAY_OFF);
        logf("MENUE-ARRAY bei [this+0x%03X], this=0x%08X:",
             A_ARRAY_OFF, (DWORD)self);
        char zeile[200];
        for (int block = 0; block < 48; block += 8) {
            int n = sprintf(zeile, "   [%02d..%02d] ", block, block + 7);
            for (int i = block; i < block + 8 && i < 48; ++i)
                n += sprintf(zeile + n, "%08X ", arr[i]);
            logf("%s", zeile);
        }
        // Wo hoeren plausible Zeiger auf?
        int letzter = -1;
        for (int i = 0; i < 48; ++i) {
            DWORD v = arr[i];
            if (v >= 0x00400000 && v <= 0x7FFFFFFF) letzter = i;
        }
        logf("MENUE-ARRAY: letzter plausible Zeiger bei Index %d "
             "(erwartet 36, wenn das Array 37 Eintraege hat)", letzter);
        // Und die Heapgroesse, falls sie sich ermitteln laesst
        HANDLE heaps[32];
        DWORD n = GetProcessHeaps(32, heaps);
        for (DWORD h = 0; h < n; ++h) {
            SIZE_T sz = HeapSize(heaps[h], 0, self);
            if (sz != (SIZE_T)-1) {
                logf("MENUE-OBJEKT: Heap %u meldet Blockgroesse %u Byte "
                     "(0x%X). Array-Ende waere 0x%X bei 37 Eintraegen.",
                     h, (unsigned)sz, (unsigned)sz,
                     A_ARRAY_OFF + 37 * 4);
                break;
            }
        }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("MENUE-ARRAY: Zugriffsfehler beim Lesen -- uebersprungen.");
    }
}

// ================================================================
//  STUFE 5 -- DIE BILDSCHIRMOBJEKTE VERMESSEN
// ================================================================
//  Ziel: pruefen, ob sich ein bestehendes Bildschirmobjekt KLONEN
//  laesst. Ein Klon haette eine echte, funktionierende Menueklasse --
//  dann muesste niemand eine neue schreiben.
//
//  Je Objekt zwei Angaben:
//    VTABLE  (die ersten 4 Byte) -- gleiche Vtable = gleiche Klasse.
//            Kommt eine Vtable MEHRFACH vor, gibt es die Klasse schon
//            in mehreren Instanzen; dann ist Klonen aussichtsreich.
//    GROESSE ueber HeapSize, auf ALLEN Heaps des Prozesses -- das
//            Spiel benutzt nicht zwingend den Standardheap.
//  Es wird ausschliesslich gelesen.
static bool g_measured = false;

static void measure_screens(void* self)
{
    if (!self || g_measured) return;
    g_measured = true;
    __try {
        DWORD* arr = (DWORD*)((BYTE*)self + A_ARRAY_OFF);
        HANDLE heaps[64];
        DWORD nheaps = GetProcessHeaps(64, heaps);
        logf("--- Stufe 5: die 37 Bildschirmobjekte (%u Heaps) ---",
             nheaps);
        for (int i = 0; i < 37; ++i) {
            DWORD obj = arr[i];
            if (!obj) { logf("   [%02d] NULL", i); continue; }
            DWORD vtbl = 0xFFFFFFFF;
            __try { vtbl = *(DWORD*)obj; }
            __except (EXCEPTION_EXECUTE_HANDLER) { }
            SIZE_T sz = (SIZE_T)-1;
            for (DWORD h = 0; h < nheaps; ++h) {
                SIZE_T s = HeapSize(heaps[h], 0, (void*)obj);
                if (s != (SIZE_T)-1) { sz = s; break; }
            }
            if (sz != (SIZE_T)-1)
                logf("   [%02d] obj=0x%08X vtbl=0x%08X groesse=%u",
                     i, obj, vtbl, (unsigned)sz);
            else
                logf("   [%02d] obj=0x%08X vtbl=0x%08X groesse=?",
                     i, obj, vtbl);
        }
        // Mehrfach benutzte Vtables suchen -- je Vtable nur einmal
        // melden, damit das Protokoll lesbar bleibt.
        logf("--- Vtables mit mehreren Instanzen (klonbar) ---");
        int gefunden = 0;
        for (int i = 0; i < 37; ++i) {
            if (!arr[i]) continue;
            DWORD v = 0;
            __try { v = *(DWORD*)arr[i]; }
            __except (EXCEPTION_EXECUTE_HANDLER) { continue; }
            bool schon_gemeldet = false;
            for (int j = 0; j < i && !schon_gemeldet; ++j) {
                if (!arr[j]) continue;
                DWORD w = 0;
                __try { w = *(DWORD*)arr[j]; }
                __except (EXCEPTION_EXECUTE_HANDLER) { continue; }
                if (w == v) schon_gemeldet = true;
            }
            if (schon_gemeldet) continue;
            char idx[160]; int p = 0, n = 0;
            for (int j = 0; j < 37; ++j) {
                if (!arr[j]) continue;
                DWORD w = 0;
                __try { w = *(DWORD*)arr[j]; }
                __except (EXCEPTION_EXECUTE_HANDLER) { continue; }
                if (w == v) { ++n; if (p < 120) p += sprintf(idx + p, "%d ", j); }
            }
            if (n > 1) { logf("   vtbl 0x%08X: %d Instanzen -> Index %s",
                              v, n, idx); ++gefunden; }
        }
        if (!gefunden)
            logf("   KEINE -- jeder Bildschirm hat eine eigene Klasse.");
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("Stufe 5: Zugriffsfehler -- abgebrochen.");
    }
}

// ================================================================
//  STUFE 6 -- EIN 38. BILDSCHIRM
// ================================================================
//  Die Messung aus Stufe 5 macht den Weg frei:
//    * 34 der 37 Bildschirme teilen sich die Vtable 0x005FA83C.
//      Ein Klon waere die 35. Instanz einer vielfach benutzten
//      Klasse -- kein Sonderfall.
//    * Die Objekte liegen im Heap mit einem kleinsten Abstand von
//      0x80. Das ist die Objektgroesse (HeapSize schweigt, weil das
//      Spiel einen eigenen Allokator benutzt).
//
//  DER PLAN
//    1. Ein EIGENES Array mit 40 Eintraegen anlegen.
//    2. Bei jedem MENU_Open die 37 Originalzeiger hineinspiegeln --
//       so bleibt es aktuell, auch wenn das Spiel das Original
//       nachtraeglich beschreibt.
//    3. Ein Objekt klonen und als Eintrag [37] eintragen.
//    4. Die beiden Zugriffe
//           8b 8c 9e a4 03 00 00   mov ecx,[esi+ebx*4+0x3a4]
//       ersetzen durch
//           8b 0c 9d <adr32>       mov ecx,[ebx*4+unser_array]
//       -- beides GENAU 7 Byte, es passt ohne Verschiebung.
//    5. Die Grenze anheben (mit dem richtigen Offset diesmal).
//
//  WAS DAS BEWEISEN KANN UND WAS NICHT
//    Erreichbar ist Index 37 erst, wenn menuinterface~.des einen
//    38. Eintrag bekommt. Bis dahin zeigt dieser Schritt nur, dass
//    das umgezogene Array im normalen Betrieb traegt -- was fuer
//    sich genommen schon der schwierigste Teil ist.
static const DWORD A_ARRZUGRIFF1 = 0x0058d6ab;  // in MENU_Open
static const DWORD A_ARRZUGRIFF2 = 0x0058d8f3;  // in MENU_Close
// *** NICHT Index 3 oder 31 nehmen! *** Deren Tabellenarm ist
// 0x58d695 -- der FEHLERPFAD ("No known menu type"). Beide sind im
// Original gar keine gueltigen Bildschirme.
//
// Welcher Bildschirm geklont wird, steht in der Schalterdatei
// live\MENU38 -- einfach die Zahl hineinschreiben. So laesst sich
// durchprobieren, ohne die DLL neu zu bauen. Ohne Angabe: 5.
static DWORD KLON_QUELLE = 5;                   // controls
static const DWORD OBJ_GROESSE   = 0x80;
// Die gemeinsamen Ausgaenge beider Dispatcher -- dorthin springt
// jeder Arm, nachdem er sein Flag gesetzt hat.
static const DWORD A_AUSGANG_OPEN  = 0x0058d6a7;
static const DWORD A_AUSGANG_CLOSE = 0x0058d8ef;
static const BYTE FP_ARRZUGRIFF[] = {0x8b,0x8c,0x9e,0xa4,0x03,0x00,0x00};

static bool   g_want38 = false;   // Schalter live\MENU38
static DWORD  g_arr[40];          // unser Ersatzarray
static void*  g_klon = NULL;
static bool   g_arr_aktiv = false;

// Bei jedem MENU_Open aufgerufen: Original spiegeln, Klon halten.
static void spiegle_array(void* self)
{
    if (!g_arr_aktiv || !self) return;
    __try {
        DWORD* orig = (DWORD*)((BYTE*)self + A_ARRAY_OFF);
        for (int i = 0; i < 37; ++i) g_arr[i] = orig[i];
        g_arr[37] = (DWORD)g_klon;
        g_arr[38] = (DWORD)g_klon;
        g_arr[39] = (DWORD)g_klon;
    } __except (EXCEPTION_EXECUTE_HANDLER) { }
}

static bool baue_38(void* self)
{
    if (!self) return false;
    __try {
        DWORD* orig = (DWORD*)((BYTE*)self + A_ARRAY_OFF);
        void* quelle = (void*)orig[KLON_QUELLE];
        if (!quelle) { logf("STUFE 6: Quellobjekt %u ist NULL.",
                            KLON_QUELLE); return false; }
        DWORD vtbl = *(DWORD*)quelle;
        if (vtbl != 0x005FA83C) {
            logf("STUFE 6: Quellobjekt hat Vtable 0x%08X, erwartet "
                 "0x005FA83C -- abgebrochen.", vtbl);
            return false;
        }
        // 1. Klon anlegen
        g_klon = VirtualAlloc(NULL, OBJ_GROESSE * 2,
                              MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        if (!g_klon) { logf("STUFE 6: VirtualAlloc fehlgeschlagen.");
                       return false; }
        memcpy(g_klon, quelle, OBJ_GROESSE);
        logf("STUFE 6: Klon von Index %u (0x%08X) nach 0x%08X, "
             "%u Byte, vtbl 0x%08X",
             KLON_QUELLE, (DWORD)quelle, (DWORD)g_klon,
             OBJ_GROESSE, *(DWORD*)g_klon);

        // 2. Array fuellen
        for (int i = 0; i < 37; ++i) g_arr[i] = orig[i];
        g_arr[37] = g_arr[38] = g_arr[39] = (DWORD)g_klon;
        g_arr_aktiv = true;

        // 3. Die beiden Zugriffe umbiegen
        DWORD stellen[2] = {A_ARRZUGRIFF1, A_ARRZUGRIFF2};
        for (int i = 0; i < 2; ++i) {
            BYTE* p = (BYTE*)stellen[i];
            char name[40]; sprintf(name, "Arrayzugriff %d", i + 1);
            if (!check_bytes(stellen[i], FP_ARRZUGRIFF,
                             sizeof(FP_ARRZUGRIFF), name)) return false;
            DWORD old = 0;
            if (!VirtualProtect(p, 7, PAGE_EXECUTE_READWRITE, &old))
                return false;
            p[0] = 0x8B; p[1] = 0x0C; p[2] = 0x9D;   // mov ecx,[ebx*4+d32]
            *(DWORD*)(p + 3) = (DWORD)g_arr;
            VirtualProtect(p, 7, old, &old);
            logf("STUFE 6: 0x%08X -> mov ecx,[ebx*4+0x%08X]",
                 stellen[i], (DWORD)g_arr);
        }

        // 4. DIE SPRUNGTABELLEN. *** DAS HIER WURDE BEIM ERSTEN
        //    ANLAUF VERGESSEN, UND ES HAT DAS SPIEL GEKILLT. ***
        //    Der Ablauf in MENU_Open ist:
        //        cmp ebx,0x25             -> Index 37 erlaubt
        //        jmp [ebx*4 + Tabelle]    -> HIER stand 0x90909090
        //        <Arm> setzt ein Flag, springt zum Ausgang
        //        <Ausgang> liest das Array
        //    Der Arrayzugriff kommt also ERST NACH dem Tabellen-
        //    sprung. Ohne gueltigen Tabelleneintrag springt die
        //    Engine in nicht abgebildeten Speicher und der Prozess
        //    ist sofort weg -- ohne Meldung, ohne Popup.
        //    Wir nehmen den Arm von KLON_QUELLE: dann teilen sich
        //    31 und 37 ein Flag. Fuer den Nachweis genuegt das.
        //    Statt einen fremden Arm zu KOPIEREN (dessen Flag dann
        //    doppelt benutzt wuerde), bauen wir zwei eigene. Ein Arm
        //    besteht aus 'Flag setzen' + 'zum Ausgang springen'; das
        //    Flag koennen wir weglassen -- es merkt sich nur, welcher
        //    Bildschirm offen ist. Bleibt:
        //        e9 <rel32>    jmp <Ausgang>
        BYTE* arme = (BYTE*)VirtualAlloc(NULL, 64,
                                         MEM_COMMIT | MEM_RESERVE,
                                         PAGE_EXECUTE_READWRITE);
        if (!arme) { logf("STUFE 6: VirtualAlloc (Arme) fehlgeschlagen.");
                     return false; }
        DWORD ausgang[2] = {A_AUSGANG_OPEN, A_AUSGANG_CLOSE};
        DWORD* tab[2] = {(DWORD*)A_MENUTAB_OPEN, (DWORD*)A_MENUTAB_CLOSE};
        for (int i = 0; i < 2; ++i) {
            BYTE* arm = arme + i * 16;
            arm[0] = 0xE9;                                  // jmp rel32
            *(LONG*)(arm + 1) = (LONG)(ausgang[i] - (DWORD)(arm + 5));
            DWORD old = 0;
            if (!VirtualProtect(&tab[i][37], 4,
                                PAGE_EXECUTE_READWRITE, &old)) return false;
            tab[i][37] = (DWORD)arm;
            VirtualProtect(&tab[i][37], 4, old, &old);
            logf("STUFE 6: Sprungtabelle %d [37] = 0x%08X "
                 "(eigener Arm -> jmp 0x%08X)",
                 i + 1, (DWORD)arm, ausgang[i]);
        }

        // 5. Grenze anheben -- jetzt mit den richtigen Offsets
        BYTE* g1 = (BYTE*)(A_MENUOPEN  + OFF_CMP_OPEN);
        BYTE* g2 = (BYTE*)(A_MENUCLOSE + OFF_CMP_CLOSE);
        if (!(g1[-2] == 0x83 && g1[-1] == 0xFB &&
              g2[-2] == 0x83 && g2[-1] == 0xFB)) {
            logf("STUFE 6: 'cmp ebx,imm8' nicht gefunden -- Grenze "
                 "bleibt, Array ist aber umgezogen.");
            return true;
        }
        DWORD old = 0;
        VirtualProtect(g1, 1, PAGE_EXECUTE_READWRITE, &old);
        *g1 = 0x25; VirtualProtect(g1, 1, old, &old);
        VirtualProtect(g2, 1, PAGE_EXECUTE_READWRITE, &old);
        *g2 = 0x25; VirtualProtect(g2, 1, old, &old);
        logf("STUFE 6: Grenze  Open %02X %02X %02X   Close %02X %02X %02X",
             g1[-2], g1[-1], g1[0], g2[-2], g2[-1], g2[0]);
        logf("STUFE 6: *** BEREIT -- Index 37 zeigt auf den Klon ***");
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("STUFE 6: Ausnahme -- abgebrochen.");
        return false;
    }
}

// ================================================================
//  STUFE 7 -- DEN 38. BILDSCHIRM ERREICHBAR MACHEN
// ================================================================
//  Das Problem war: Index 37 existiert, aber nichts ruft ihn auf.
//  Was einen Bildschirm oeffnet, steht im Code jeder Menueklasse.
//
//  Die Loesung braucht weder Tastatur-Hook noch eigenen Thread:
//  wir sitzen bereits im Trampolin und sehen den Index, BEVOR die
//  Engine ihn benutzt. Haelt der Spieler die Umschalttaste F9,
//  tauschen wir ihn gegen 37 aus.
//
//  Der Index liegt beim Eintritt auf [esp+8]; im Trampolin, nach
//  pushad (32) und pushfd (4), also auf [esp+0x2C]. Genau dort
//  schreiben wir zurueck -- deshalb bekommt die Funktion unten
//  einen ZEIGER auf den Index, keine Kopie.
static bool g_want_swap = false;   // Schalter live\MENU38KEY
static int  g_swaps = 0;

// ================================================================
//  STUFE 8 -- DEN HAUPTMENUEPUNKT UMLEITEN
// ================================================================
//  GUI_Menu_Main::HeartBeat() (0x5747f0) meldet dem Aufrufer per
//  Objekt, was als naechstes geschehen soll. Der TYP im Objekt
//  bestimmt WAS:
//
//      0x00574dca   push 0xc          <- hier steht der Typ
//      0x00574dcc   mov  ecx, eax
//      0x00574dce   call 0x41d7b0     <- Konstruktor
//
//  Die Typenliste steht in Aqua_State_Menu::GetNameByType
//  (Sprungtabelle 0x41f588, 37 Eintraege) und ist im Klartext
//  auslesbar:
//      0 MT_MAIN         5 MT_CONTROLS    21 MT_GAMEOPTIONS
//      1 MT_SINGLEPLAYER 8 MT_PERFORMANCE 31 MT_INSTANTFIGHT
//      2 MT_MULTIPLAYER  9 MT_SOUND       35 MT_CINEMATICS
//      3 MT_SETUP       12 MT_PLAYERLIST  36 MT_JOYSTICK
//
//  Der Eingriff ist EIN BYTE. Welcher Typ, steht in der
//  Schalterdatei live\MENUTYP -- so laesst sich durchprobieren,
//  ohne die DLL neu zu bauen.
static const DWORD A_MAINTYP = 0x00574dca;   // das 'push imm8'
static int  g_maintyp = -1;                  // -1 = aus
static BYTE g_maintyp_alt = 0;

// ================================================================
//  STUFE 9 -- DER RICHTIGE WEG: EINEN MENUEZWEIG NACHBILDEN
// ================================================================
//  Stufe 8 ist gescheitert, weil sie die richtige Zahl an der
//  falschen Stelle aenderte. Die Sprungtabelle 0x574e60 hat FUENF
//  Eintraege -- einen je Hauptmenuepunkt:
//
//    [0] 0x574cd2  new(16), [eax+4]=1  (MT_SINGLEPLAYER), vt 0x5fa598
//    [1] 0x574d15  new(16), [eax+4]=18 (MT_MULTIPLAYER_CHOOSE)
//    [2] 0x574d9a  new(52), Typ-Konstruktor 12  <- ANDERE KLASSE
//    [3] 0x574d58  new(16), [eax+4]=3  (MT_SETUP), vt 0x5fa568
//    [4] 0x574e07  (Exit)
//
//  Die Zweige 0, 1 und 3 bauen ein schlankes "oeffne Menue X"-
//  Objekt: 16 Byte, der MENUETYP steht in +4, die Vtable in +0.
//  Zweig 2 baut etwas voellig anderes -- die 12 dort ist KEIN
//  Menuetyp, sondern ein Parameter jener Klasse.
//
//  Also bilden wir Zweig 0 nach, nur mit einem anderen Typ, und
//  biegen Tabelleneintrag [2] darauf um. Das Original bleibt
//  unangetastet; wir tauschen nur einen Zeiger.
// ================================================================
//  STUFE 10 -- DEN MISSIONSSTART BEOBACHTEN
// ================================================================
//  Ziel: der Menuepunkt soll DIREKT eine Mission starten, nicht
//  erst ein Menue oeffnen. Dafuer muss bekannt sein, welche
//  Funktion das Laden ausloest und wie sie aufgerufen wird.
//
//  Statt das statisch zu erraten -- was zweimal schiefging --
//  haengen wir uns an die Kandidaten und lassen das Spiel es uns
//  zeigen: einmal ueber Instant Fight eine Mission starten, und im
//  Protokoll steht die Signatur.
//
//  Kandidaten aus der Disassemblierung:
//      0x4580c0, 0x458570   rufen NOD_Game::PM_LoadScript
//  Es wird NUR gelesen und protokolliert; das Original laeuft
//  danach unveraendert weiter.
struct Beobachtet {
    DWORD addr;          // die Funktion
    const char* name;
    BYTE gerettet[8];    // die ueberschriebenen Byte
    int  laenge;         // wieviele davon gueltig sind
    DWORD rueck;         // wohin das Trampolin zurueckspringt
    int  treffer;
};
static Beobachtet g_beob[] = {
    {0x004580c0, "PM_LoadScript-Aufrufer A", {0}, 0, 0, 0},
    {0x00458570, "PM_LoadScript-Aufrufer B", {0}, 0, 0, 0},
};
static const int N_BEOB = sizeof(g_beob) / sizeof(g_beob[0]);
// Der Inline-Assembler kann keine Array-Indizierung -- die
// Ruecksprungziele brauchen deshalb je eine eigene Variable.
static DWORD g_rueck0 = 0, g_rueck1 = 0;

// Einen Zeiger als Text lesen, falls es einer ist.
static bool lies_text(DWORD v, char* aus, int max)
{
    aus[0] = 0;
    if (v < 0x10000) return false;
    __try {
        const char* s = (const char*)v;
        int k = 0;
        while (k < max - 1 && s[k] >= 0x20 && s[k] < 0x7f) {
            aus[k] = s[k]; ++k;
        }
        aus[k] = 0;
        return k >= 4;
    } __except (EXCEPTION_EXECUTE_HANDLER) { aus[0] = 0; return false; }
}

// *** STACK-OFFSETS: hier lag beim ersten Anlauf ein Fehler. ***
// Nach pushad (32) + pushfd (4) = 0x24 liegt die Ruecksprungadresse
// auf [esp+0x24], arg1 auf [esp+0x28], arg2 auf [esp+0x2C].
// ABER: jedes eigene 'push' verschiebt esp weiter. Wer zwei
// Argumente hintereinander holt, muss den Versatz mitzaehlen --
// sonst liest der zweite Zugriff die Ruecksprungadresse.
static void __cdecl log_laden(int nr, DWORD ecx, DWORD a1, DWORD a2)
{
    __try {
        if (nr < 0 || nr >= N_BEOB) return;
        ++g_beob[nr].treffer;
        logf("LADEN #%d [%s]: this=0x%08X arg1=0x%08X arg2=0x%08X",
             g_beob[nr].treffer, g_beob[nr].name, ecx, a1, a2);
        char t[96];
        if (lies_text(a1, t, sizeof(t)))
            logf("        arg1 -> \"%s\"", t);
        if (lies_text(a2, t, sizeof(t)))
            logf("        arg2 -> \"%s\"", t);
        // Sind es Objekte? Dann die ersten Felder zeigen -- oft
        // steht ein Textzeiger gleich am Anfang.
        DWORD werte[2] = {a1, a2};
        for (int i = 0; i < 2; ++i) {
            if (werte[i] < 0x10000) continue;
            __try {
                DWORD* p = (DWORD*)werte[i];
                logf("        arg%d[0..5] = %08X %08X %08X %08X "
                     "%08X %08X", i + 1,
                     p[0], p[1], p[2], p[3], p[4], p[5]);
                for (int k = 0; k < 6; ++k) {
                    if (lies_text(p[k], t, sizeof(t)))
                        logf("          arg%d+%d -> \"%s\"",
                             i + 1, k * 4, t);
                }
            } __except (EXCEPTION_EXECUTE_HANDLER) { }
        }
        // Und das this-Objekt
        __try {
            DWORD* p = (DWORD*)ecx;
            logf("        this[0..5] = %08X %08X %08X %08X %08X %08X",
                 p[0], p[1], p[2], p[3], p[4], p[5]);
        } __except (EXCEPTION_EXECUTE_HANDLER) { }
    } __except (EXCEPTION_EXECUTE_HANDLER) { }
}

// Zwei Trampoline, eines je Kandidat. Sie retten die ersten sechs
// Byte -- beide Funktionen beginnen mit 'sub esp, imm32' (6 Byte),
// das passt genau und zerschneidet keine Anweisung.
static __declspec(naked) void tramp_laden0()
{
    __asm {
        pushad
        pushfd
        mov  eax, [esp + 0x2C]      // arg2  (0x24 Rueck, 0x28 arg1)
        push eax                    // ab hier ist esp 4 kleiner
        mov  eax, [esp + 0x2C]      // arg1  = altes 0x28
        push eax
        push ecx
        push 0
        call log_laden
        add  esp, 0x10
        popfd
        popad
        sub  esp, 0x14c             // 81 ec 4c 01 00 00
        jmp  [g_rueck0]
    }
}
static __declspec(naked) void tramp_laden1()
{
    __asm {
        pushad
        pushfd
        mov  eax, [esp + 0x2C]      // arg2
        push eax
        mov  eax, [esp + 0x2C]      // arg1
        push eax
        push ecx
        push 1
        call log_laden
        add  esp, 0x10
        popfd
        popad
        sub  esp, 0x190             // 81 ec 90 01 00 00
        jmp  [g_rueck1]
    }
}

static void install_laden()
{
    void* tramp[2] = {(void*)&tramp_laden0, (void*)&tramp_laden1};
    for (int i = 0; i < N_BEOB; ++i) {
        BYTE* p = (BYTE*)g_beob[i].addr;
        __try {
            // beide beginnen mit 81 ec <imm32> = sub esp, imm32
            if (p[0] != 0x81 || p[1] != 0xEC) {
                logf("STUFE 10: 0x%08X beginnt mit %02X %02X, "
                     "erwartet 81 EC -- uebersprungen.",
                     g_beob[i].addr, p[0], p[1]);
                continue;
            }
            memcpy(g_beob[i].gerettet, p, 6);
            g_beob[i].laenge = 6;
            g_beob[i].rueck = g_beob[i].addr + 6;
            if (i == 0) g_rueck0 = g_beob[i].rueck;
            else        g_rueck1 = g_beob[i].rueck;
            DWORD old = 0;
            if (!VirtualProtect(p, 6, PAGE_EXECUTE_READWRITE, &old))
                continue;
            p[0] = 0xE9;
            *(LONG*)(p + 1) = (LONG)((BYTE*)tramp[i] - (p + 5));
            p[5] = 0x90;
            VirtualProtect(p, 6, old, &old);
            logf("STUFE 10: %s 0x%08X -> Trampolin 0x%08X "
                 "(gerettet: %02X %02X %02X %02X %02X %02X)",
                 g_beob[i].name, g_beob[i].addr, (DWORD)tramp[i],
                 g_beob[i].gerettet[0], g_beob[i].gerettet[1],
                 g_beob[i].gerettet[2], g_beob[i].gerettet[3],
                 g_beob[i].gerettet[4], g_beob[i].gerettet[5]);
        } __except (EXCEPTION_EXECUTE_HANDLER) {
            logf("STUFE 10: Ausnahme bei %s", g_beob[i].name);
        }
    }
}

static const DWORD A_MAINTAB   = 0x00574e60;  // die 5er-Tabelle
static const DWORD A_ZWEIG0    = 0x00574cd2;
static const DWORD A_NEW       = 0x004279e0;  // operator new
static const DWORD A_KEINSPEIC = 0x00574e1e;  // "kein Speicher"-Pfad
static const DWORD VT_MENUOEFF = 0x005fa598;  // Vtable aus Zweig 0
static BYTE* g_zweig = NULL;

static bool baue_zweig(int typ, int platz)
{
    if (platz < 0 || platz > 4) return false;
    // Der Tabelleneintrag muss auf einen der bekannten Zweige
    // zeigen -- sonst ist die Adresse falsch oder schon gepatcht.
    DWORD* tab = (DWORD*)A_MAINTAB;
    __try {
        DWORD alt = tab[platz];
        if (alt < 0x574000 || alt > 0x575000) {
            logf("STUFE 9: Tabelle[%d] = 0x%08X -- unplausibel, "
                 "nicht gepatcht.", platz, alt);
            return false;
        }
        g_zweig = (BYTE*)VirtualAlloc(NULL, 64, MEM_COMMIT | MEM_RESERVE,
                                      PAGE_EXECUTE_READWRITE);
        if (!g_zweig) { logf("STUFE 9: VirtualAlloc fehlgeschlagen.");
                        return false; }
        BYTE* p = g_zweig;
        // push 0x10
        *p++ = 0x6A; *p++ = 0x10;
        // call operator new  (rel32 von der FOLGEadresse aus)
        *p++ = 0xE8;
        *(LONG*)p = (LONG)(A_NEW - ((DWORD)p + 4)); p += 4;
        // add esp, 4
        *p++ = 0x83; *p++ = 0xC4; *p++ = 0x04;
        // test eax, eax
        *p++ = 0x85; *p++ = 0xC0;
        // je <kein Speicher>
        *p++ = 0x0F; *p++ = 0x84;
        *(LONG*)p = (LONG)(A_KEINSPEIC - ((DWORD)p + 4)); p += 4;
        // pop edi ; pop esi
        *p++ = 0x5F; *p++ = 0x5E;
        // mov dword [eax+4], <typ>
        *p++ = 0xC7; *p++ = 0x40; *p++ = 0x04;
        *(DWORD*)p = (DWORD)typ; p += 4;
        // mov dword [eax], <vtable>
        *p++ = 0xC7; *p++ = 0x00;
        *(DWORD*)p = VT_MENUOEFF; p += 4;
        // pop ebx
        *p++ = 0x5B;
        // add esp, 0xa8
        *p++ = 0x81; *p++ = 0xC4;
        *(DWORD*)p = 0xA8; p += 4;
        // ret 0x90
        *p++ = 0xC2; *p++ = 0x90; *p++ = 0x00;

        DWORD old = 0;
        if (!VirtualProtect(&tab[platz], 4, PAGE_EXECUTE_READWRITE, &old))
            return false;
        tab[platz] = (DWORD)g_zweig;
        VirtualProtect(&tab[platz], 4, old, &old);

        logf("STUFE 9: eigener Zweig bei 0x%08X (%d Byte)",
             (DWORD)g_zweig, (int)(p - g_zweig));
        logf("STUFE 9: Tabelle[%d]  0x%08X -> 0x%08X",
             platz, alt, tab[platz]);
        logf("STUFE 9: *** Hauptmenuepunkt %d oeffnet jetzt Menuetyp "
             "%d ***", platz, typ);
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("STUFE 9: Ausnahme -- nicht gepatcht.");
        return false;
    }
}

// ================================================================
//  STUFE 11 -- DER DIREKTE MISSIONSSTART
//
//  Warum Stufe 9 nur Menues oeffnen konnte:
//  Jeder Menue-HeartBeat hat ZWEI Rueckgabewege.
//      eax               = der naechste MENUEBILDSCHIRM
//      *(arg bei +0x8C)  = der naechste SPIELZUSTAND
//  Stufe 9 schrieb nach eax. Deshalb kam ein Menue, kein Spiel.
//
//  Der Zustandsweg ist in drei Funktionen unabhaengig bestaetigt:
//      GUI_Menu_SinglePlayer::HeartBeat 0x575000  ebx = arg+0x8C
//      GUI_Menu_Load::HeartBeat         0x575737  ebx = arg+0x8C
//      GUI_Menu_InstantFight::HeartBeat 0x575d87  edi = arg+0x8C
//
//  Der Instant-Fight-Bildschirm startet eine Mission bei 0x575ed4 so:
//      push 0x70 / new                      Zustandsobjekt, 112 Byte
//      push "ctrlsp.des" / 4295b0 / 429640  Steuerungsprofil
//      push ctrl / 0 / 0 / <Missionspfad>
//      call 0x4247e0                        Aqua_State_InstantFight
//      mov  [edi], eax                      <- der Zustandsparameter
//  Kein Spielstand, keine Station, kein Zwischenmenue.
//
//  Genau das bauen wir hier nach -- im Zweig des HAUPTmenues.
// ================================================================

// Die Zahlen stehen absichtlich als Literale im __asm-Block:
// 'static const DWORD' wuerde dort zu einem Speicherzugriff.
//   0x004279E0  operator new
//   0x004295B0  ctrlsp-Name aufloesen
//   0x00429640  Steuerungsprofil holen
//   0x0060845C  "ctrlsp.des" in der Exe
//   0x004247E0  Aqua_State_InstantFight(pfad, 0, 0, ctrl)  thiscall
// Die Sprungtabelle 0x574e60, im Spiel nachgemessen:
//     [0] 0x574cd2  Singleplayer   (Menuetyp 1)
//     [1] 0x574d15  Multiplayer    (Menuetyp 18)
//     [2] 0x574d9a  CREDITS        (52-Byte-Zustandsklasse)  <- "Nachtschicht"
//     [3] 0x574d58  Setup          (Menuetyp 3)
//     [4] 0x574e07  Beenden        (baut gar kein Objekt)
// Platz 2 ist der Punkt, der im Mod-PAK "Nachtschicht" heisst.
static char g_mission[MAX_PATH] = "map\\dogfight\\script\\dogfight";
static int  g_missionsplatz = 2;      // 2 = Credits = "Nachtschicht"
static int  g_starts = 0;

static __declspec(noinline) void* __cdecl mach_zustand()
{
    void* erg = NULL;
    const char* pfad = g_mission;
    __asm {
        push ebx
        push esi
        push edi

        push 0x70                  // Groesse des Zustandsobjekts
        mov  eax, 0x004279E0
        call eax
        add  esp, 4
        test eax, eax
        je   leer
        mov  esi, eax              // esi = das neue Objekt

        push 0x0060845C            // "ctrlsp.des"
        mov  eax, 0x004295B0
        call eax
        push eax
        mov  eax, 0x00429640
        call eax
        add  esp, 8                // beide Aufrufe sind cdecl

        push eax                   // ctrl
        push 0
        push 0
        mov  edx, pfad
        push edx                   // der Missionspfad
        mov  ecx, esi              // this
        mov  eax, 0x004247E0
        call eax                   // raeumt selbst auf (ret 0x10)
        mov  erg, eax
        jmp  fertig
    leer:
        mov  erg, 0
    fertig:
        pop  edi
        pop  esi
        pop  ebx
    }
    g_starts++;
    logf("STUFE 11: Missionsstart #%d  \"%s\"  ->  Zustand 0x%08X",
         g_starts, g_mission, (DWORD)erg);
    return erg;
}

static BYTE* g_mzweig = NULL;

static bool baue_missionszweig(int platz)
{
    if (platz < 0 || platz > 4) return false;
    DWORD* tab = (DWORD*)A_MAINTAB;
    __try {
        DWORD alt = tab[platz];
        if (alt < 0x574000 || alt > 0x575000) {
            logf("STUFE 11: Tabelle[%d] = 0x%08X -- unplausibel "
                 "(schon gepatcht?), nicht angefasst.", platz, alt);
            return false;
        }
        // Der Zielkonstruktor muss dort stehen, wo wir ihn vermuten.
        // 0x4247E0 beginnt mit 'sub esp' oder 'push' -- wir pruefen
        // nur, dass es ueberhaupt Code ist und kein Nullblock.
        BYTE* k = (BYTE*)0x004247E0;
        if (k[0] == 0x00 && k[1] == 0x00) {
            logf("STUFE 11: bei 0x004247E0 steht kein Code -- "
                 "nicht gepatcht.");
            return false;
        }

        g_mzweig = (BYTE*)VirtualAlloc(NULL, 64, MEM_COMMIT | MEM_RESERVE,
                                       PAGE_EXECUTE_READWRITE);
        if (!g_mzweig) { logf("STUFE 11: VirtualAlloc fehlgeschlagen.");
                         return false; }
        BYTE* p = g_mzweig;
        // Ab hier eine 1:1-Nachbildung des Credits-Zweiges 0x574dc0,
        // nur mit unserem Konstruktor statt dem der Credits-Klasse.
        // Das Original endet so -- Reihenfolge genau beibehalten, das
        // 'mov edx' MUSS vor die pops, sonst stimmt der Offset nicht:
        //     mov edx, [esp+0x140] / pop edi / pop esi
        //     mov [edx], eax / mov eax, [esp+4] / pop ebx
        //     add esp, 0xa8 / ret 0x90
        // call mach_zustand
        *p++ = 0xE8;
        *(LONG*)p = (LONG)((DWORD)&mach_zustand - ((DWORD)p + 4)); p += 4;
        // mov edx, [esp+0x140]
        //   Beim Eintritt in den Zweig liegen sub esp,0xa8 und die drei
        //   Register ebx/esi/edi auf dem Stack: 0xa8 + 12 = 0xb4 bis zur
        //   Ruecksprungadresse, das Argument steht 0x8C dahinter.
        //   Das Original rechnet an dieser Stelle genauso.
        *p++ = 0x8B; *p++ = 0x94; *p++ = 0x24;
        *(DWORD*)p = 0x140; p += 4;
        // pop edi ; pop esi
        *p++ = 0x5F; *p++ = 0x5E;
        // mov [edx], eax          <- der Zustandswechsel
        //   Ist eax 0 (kein Speicher), schreiben wir 0 -- dann bleibt
        //   alles, wie es war. Ein Sonderfall ist nicht noetig.
        *p++ = 0x89; *p++ = 0x02;
        // mov eax, [esp+4]        <- this: auf dem Bildschirm bleiben
        *p++ = 0x8B; *p++ = 0x44; *p++ = 0x24; *p++ = 0x04;
        // pop ebx
        *p++ = 0x5B;
        // add esp, 0xa8
        *p++ = 0x81; *p++ = 0xC4; *(DWORD*)p = 0xA8; p += 4;
        // ret 0x90
        *p++ = 0xC2; *p++ = 0x90; *p++ = 0x00;

        DWORD old = 0;
        if (!VirtualProtect(&tab[platz], 4, PAGE_EXECUTE_READWRITE, &old))
            return false;
        tab[platz] = (DWORD)g_mzweig;
        VirtualProtect(&tab[platz], 4, old, &old);

        logf("STUFE 11: Missionszweig bei 0x%08X (%d Byte)",
             (DWORD)g_mzweig, (int)(p - g_mzweig));
        logf("STUFE 11: Tabelle[%d]  0x%08X -> 0x%08X", platz, alt,
             tab[platz]);
        logf("STUFE 11: *** Hauptmenuepunkt %d startet jetzt DIREKT "
             "die Mission \"%s\" ***", platz, g_mission);
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("STUFE 11: Ausnahme -- nicht gepatcht.");
        return false;
    }
}

static bool patch_maintyp(int typ)
{
    // Fingerabdruck: an der Stelle MUSS '6a 0c' stehen (push 12).
    // Steht dort etwas anderes, ist die Adresse falsch oder schon
    // gepatcht -- dann nichts tun.
    BYTE* p = (BYTE*)A_MAINTYP;
    __try {
        if (p[0] != 0x6A) {
            logf("STUFE 8: bei 0x%08X steht %02X, erwartet 6A "
                 "(push imm8) -- nicht gepatcht.", A_MAINTYP, p[0]);
            return false;
        }
        g_maintyp_alt = p[1];
        DWORD old = 0;
        if (!VirtualProtect(p, 2, PAGE_EXECUTE_READWRITE, &old)) {
            logf("STUFE 8: VirtualProtect fehlgeschlagen.");
            return false;
        }
        p[1] = (BYTE)typ;
        VirtualProtect(p, 2, old, &old);
        logf("STUFE 8: 0x%08X  push %d -> push %d   (%02X %02X)",
             A_MAINTYP, g_maintyp_alt, typ, p[0], p[1]);
        logf("STUFE 8: *** der dritte Hauptmenuepunkt fuehrt jetzt "
             "zu Typ %d ***", typ);
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("STUFE 8: Zugriffsfehler -- nicht gepatcht.");
        return false;
    }
}

// Wird aus dem Trampolin per 'call' gerufen. __cdecl MUSS explizit
// stehen: bei /O2 darf MSVC statischen Funktionen sonst eine eigene
// Aufrufkonvention geben (Argumente in Registern), und der
// Inline-Assembler unten legt sie auf den Stack.
static void __cdecl log_menu_open(void* self, int* pindex)
{
    ++g_opencount;
    __try {
        int index = *pindex;
        // Stufe 6 einmalig aufbauen, danach nur noch spiegeln --
        // MUSS vor dem Austausch geschehen, sonst zeigt Index 37
        // noch ins Leere.
        if (g_want38 && !g_arr_aktiv) baue_38(self);
        else spiegle_array(self);

        // Stufe 7: F9 gehalten -> statt des angeforderten Bildschirms
        // den 38. oeffnen.
        if (g_want_swap && g_arr_aktiv && index != 37 &&
            (GetAsyncKeyState(VK_F9) & 0x8000)) {
            *pindex = 37;
            ++g_swaps;
            logf("MENU_Open  #%d: *** F9 -- Index %d wird zu 37 "
                 "(Austausch #%d), this=0x%08X ***",
                 g_opencount, index, g_swaps, (DWORD)self);
        } else {
            logf("MENU_Open  #%d: Index %d, this=0x%08X",
                 g_opencount, index, (DWORD)self);
        }
        if (g_dumped < 1) { ++g_dumped; log_array(self); }
        measure_screens(self);
    } __except (EXCEPTION_EXECUTE_HANDLER) { }
}

// Trampolin: sichert alles, meldet, stellt die 5 geretteten Bytes
// wieder her und springt zurueck in die Originalfunktion.
static __declspec(naked) void trampolin_open()
{
    __asm {
        pushad
        pushfd
        lea  eax, [esp + 0x2C]      // 32 (pushad) + 4 (pushfd) + 8 = arg2
        push eax                    // ZEIGER auf den Index -- Stufe 7
        push ecx                    //   darf ihn ueberschreiben
        call log_menu_open
        add  esp, 8
        popfd
        popad
        push ebx                    // 53          -- gerettetes Original
        mov  ebx, [esp + 0x0c]      // 8b 5c 24 0c
        jmp  [g_ret_open]
    }
}

static bool install_watch()
{
    // ACHTUNG REIHENFOLGE: laeuft Stufe 3 zuerst, steht in Byte 7
    // schon 0x25 statt 0x24 -- der volle 12-Byte-Fingerabdruck waere
    // dann falsch. Geprueft werden deshalb nur die FUENF Bytes, die
    // dieser Hook wirklich ueberschreibt.
    static const BYTE FP5[] = {0x53, 0x8b, 0x5c, 0x24, 0x0c};
    if (!check_bytes(A_MENUOPEN, FP5, sizeof(FP5),
                     "MENU_Open (erste 5 Byte)")) return false;
    BYTE* p = (BYTE*)A_MENUOPEN;
    memcpy(g_saved_open, p, 5);
    DWORD old = 0;
    if (!VirtualProtect(p, 5, PAGE_EXECUTE_READWRITE, &old)) {
        logf("BEOBACHTER: VirtualProtect fehlgeschlagen."); return false;
    }
    // e9 <rel32> = jmp trampolin_open
    LONG rel = (LONG)((BYTE*)&trampolin_open - (p + 5));
    p[0] = 0xE9;
    *(LONG*)(p + 1) = rel;
    VirtualProtect(p, 5, old, &old);
    logf("BEOBACHTER: MENU_Open 0x%08X -> Trampolin 0x%08X "
         "(gerettet: %02X %02X %02X %02X %02X)",
         A_MENUOPEN, (DWORD)&trampolin_open,
         g_saved_open[0], g_saved_open[1], g_saved_open[2],
         g_saved_open[3], g_saved_open[4]);
    g_watch_on = true;
    return true;
}

static bool patch_menu_limit(BYTE neu)
{
    // 1. Beide Funktionsanfaenge muessen stimmen
    if (!check_bytes(A_MENUOPEN,  FP_MENUOPEN,  sizeof(FP_MENUOPEN),
                     "GUI MENU_Open"))  return false;
    if (!check_bytes(A_MENUCLOSE, FP_MENUCLOSE, sizeof(FP_MENUCLOSE),
                     "GUI MENU_Close")) return false;

    // 2. Hinter beiden Tabellen muss die erwartete Fuellung liegen
    DWORD* t1 = (DWORD*)A_MENUTAB_OPEN;
    DWORD* t2 = (DWORD*)A_MENUTAB_CLOSE;
    __try {
        if (t1[MENU_COUNT] != 0x90909090 || t2[MENU_COUNT] != 0x90909090) {
            logf("MENUE: hinter den Tabellen steht nicht die erwartete "
                 "Fuellung (0x%08X / 0x%08X) -- nicht gepatcht.",
                 t1[MENU_COUNT], t2[MENU_COUNT]);
            return false;
        }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        logf("MENUE: Tabellen nicht lesbar -- nicht gepatcht.");
        return false;
    }

    // 3. Den Arm anlegen: pop edi / pop esi / pop ebx / ret 8
    g_stub = (BYTE*)VirtualAlloc(NULL, 64, MEM_COMMIT | MEM_RESERVE,
                                 PAGE_EXECUTE_READWRITE);
    if (!g_stub) { logf("MENUE: VirtualAlloc fehlgeschlagen."); return false; }
    const BYTE arm[] = {0x5f, 0x5e, 0x5b, 0xc2, 0x08, 0x00};
    memcpy(g_stub, arm, sizeof(arm));
    logf("MENUE: Arm angelegt bei 0x%08X (pop edi/esi/ebx; ret 8)",
         (DWORD)g_stub);

    // 4. Die zwei Grenzbytes und die zwei Tabelleneintraege setzen
    struct { void* addr; size_t len; const char* was; } stellen[] = {
        {(void*)(A_MENUOPEN  + OFF_CMP_OPEN),  1, "Grenze MENU_Open"},
        {(void*)(A_MENUCLOSE + OFF_CMP_CLOSE), 1, "Grenze MENU_Close"},
        {(void*)&t1[MENU_COUNT], 4, "Tabelle MENU_Open [37]"},
        {(void*)&t2[MENU_COUNT], 4, "Tabelle MENU_Close [37]"},
    };
    for (int i = 0; i < 4; ++i) {
        DWORD old = 0;
        if (!VirtualProtect(stellen[i].addr, stellen[i].len,
                            PAGE_EXECUTE_READWRITE, &old)) {
            logf("MENUE: VirtualProtect fehlgeschlagen bei %s",
                 stellen[i].was);
            return false;
        }
        if (stellen[i].len == 1) *(BYTE*)stellen[i].addr  = neu;
        else                     *(DWORD*)stellen[i].addr = (DWORD)g_stub;
        VirtualProtect(stellen[i].addr, stellen[i].len, old, &old);
    }

    // 5. Zurueckleser -- MIT KONTEXT.
    //    Nur den geschriebenen Wert zurueckzulesen beweist gar nichts:
    //    die Pruefung bestaetigt dann bloss sich selbst. Genau daran
    //    ist der erste Anlauf gescheitert. Geprueft wird deshalb, dass
    //    VOR dem Immediate weiterhin 83 fb (cmp ebx, imm8) steht.
    BYTE* p1 = (BYTE*)(A_MENUOPEN  + OFF_CMP_OPEN);
    BYTE* p2 = (BYTE*)(A_MENUCLOSE + OFF_CMP_CLOSE);
    bool ktx1 = (p1[-2] == 0x83 && p1[-1] == 0xFB);
    bool ktx2 = (p2[-2] == 0x83 && p2[-1] == 0xFB);
    DWORD e1 = t1[MENU_COUNT], e2 = t2[MENU_COUNT];
    bool ok = (*p1 == neu && *p2 == neu && ktx1 && ktx2 &&
               e1 == (DWORD)g_stub && e2 == (DWORD)g_stub);
    logf("MENUE: Grenze -> 0x%02X   Open: %02X %02X %02X   "
         "Close: %02X %02X %02X", neu,
         p1[-2], p1[-1], p1[0], p2[-2], p2[-1], p2[0]);
    logf("MENUE: Kontext 'cmp ebx,imm8' erhalten?  Open %s, Close %s",
         ktx1 ? "ja" : "NEIN", ktx2 ? "ja" : "NEIN");
    logf("MENUE: Tabelleneintrag [37]  Open 0x%08X, Close 0x%08X", e1, e2);
    logf("MENUE: %s", ok ? "*** PATCH SITZT ***"
                         : "PATCH NICHT VOLLSTAENDIG -- nachsehen!");
    g_menu_patched = ok;
    return ok;
}

// ------------------------------------------------------------ Setup ---
static bool patch_vtable()
{
    DWORD* slot = (DWORD*)(A_SCRIPT_VTABLE + VT_HEARTBEAT_OFF);
    DWORD cur = 0;
    __try { cur = *slot; }
    __except (EXCEPTION_EXECUTE_HANDLER) { logf("Vtable nicht lesbar"); return false; }
    if (cur != A_SCRIPT_HEARTBEAT) {
        logf("Vtable-Slot enthaelt 0x%08X, erwartet 0x%08X -- nicht gepatcht.",
             cur, A_SCRIPT_HEARTBEAT);
        return false;
    }
    DWORD old = 0;
    if (!VirtualProtect(slot, sizeof(DWORD), PAGE_READWRITE, &old)) return false;
    g_origHeartBeat = (fn_heartbeat)cur;
    *slot = (DWORD)&hooked_heartbeat;
    VirtualProtect(slot, sizeof(DWORD), old, &old);
    logf("Vtable 0x%08X+0x%02X: 0x%08X -> 0x%08X", A_SCRIPT_VTABLE,
         VT_HEARTBEAT_OFF, cur, (DWORD)&hooked_heartbeat);
    return true;
}

static void init()
{
    GetModuleFileNameA(NULL, g_dir, MAX_PATH);
    char* p = strrchr(g_dir, '\\'); if (p) *(p + 1) = 0;

    char base[MAX_PATH];
    sprintf(base, "%smod_docu\\live", g_dir);
    CreateDirectoryA(base, NULL);
    sprintf(g_log,  "%s\\hook.log", base);
    sprintf(g_live, "%s\\live.lua", base);
    sprintf(g_off,  "%s\\OFF", base);

    if (GetFileAttributesA(g_off) != INVALID_FILE_ATTRIBUTES) {
        logf("--- Not-Aus aktiv (%s vorhanden), DLL bleibt untaetig ---", g_off);
        return;
    }
    logf("=== AquaLive gestartet, Exe-Verzeichnis %s ===", g_dir);

    if (!check_bytes(A_SCRIPT_HEARTBEAT, FP_HEARTBEAT, sizeof(FP_HEARTBEAT),
                     "NOD_Script::HeartBeat")) return;
    if (!check_bytes(A_LUA_DOBUFFER, FP_DOBUFFER, sizeof(FP_DOBUFFER),
                     "lua_dobuffer")) return;
    if (!patch_vtable()) return;

    // Stufe 3 laeuft NUR, wenn die Schalterdatei da ist. So bleibt der
    // Lua-Hot-Reload unberuehrt, falls der Menuepatch Aerger macht.
    char schalter[MAX_PATH];
    sprintf(schalter, "%smod_docu\\live\\MENUPATCH", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        logf("--- Stufe 3: Menuegrenze (Schalter %s gefunden) ---",
             schalter);
        patch_menu_limit(0x25);          // 37 -> 38 Bildschirme
    } else {
        logf("Stufe 3 uebersprungen (keine Datei live\\MENUPATCH).");
    }

    // Stufe 6 wird im Trampolin aufgebaut, sobald der erste
    // MENU_Open durchlaeuft -- vorher gibt es kein this.
    sprintf(schalter, "%smod_docu\\live\\MENU38", g_dir);
    g_want38 = (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES);
    if (g_want38) {
        // Steht in der Datei eine Zahl, ist das der zu klonende
        // Bildschirm. 3 und 31 sind gesperrt -- ihr Tabellenarm ist
        // der Fehlerpfad.
        FILE* s = fopen(schalter, "r");
        if (s) {
            int q = -1;
            if (fscanf(s, "%d", &q) == 1 && q >= 0 && q <= 36 &&
                q != 3 && q != 31)
                KLON_QUELLE = (DWORD)q;
            else if (q == 3 || q == 31)
                logf("Stufe 6: Index %d ist der Fehlerpfad und wird "
                     "NICHT geklont -- bleibe bei %u.", q, KLON_QUELLE);
            fclose(s);
        }
    }
    logf("Stufe 6 (38. Bildschirm): %s   Klonquelle: Index %u",
         g_want38 ? "ANGEFORDERT" : "aus (keine Datei live\\MENU38)",
         KLON_QUELLE);

    sprintf(schalter, "%smod_docu\\live\\LADEWATCH", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        logf("--- Stufe 10: Missionsstart beobachten ---");
        install_laden();
    } else {
        logf("Stufe 10 uebersprungen (keine Datei live\\LADEWATCH).");
    }

    // Stufe 11: der direkte Missionsstart. In live\MISSIONSTART darf
    // stehen: "<Platz 0..4> <Missionspfad>". Beides ist freiwillig --
    // eine leere Datei bedeutet Platz 4 und die Standardmission.
    int platz11 = -1;
    sprintf(schalter, "%smod_docu\\live\\MISSIONSTART", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        FILE* s = fopen(schalter, "r");
        if (s) {
            int q = -1;
            char pfad[MAX_PATH] = {0};
            int n = fscanf(s, "%d %259[^\r\n]", &q, pfad);
            if (n >= 1 && q >= 0 && q <= 4) g_missionsplatz = q;
            if (n >= 2 && pfad[0]) {
                // fuehrende Leerzeichen abschneiden
                char* z = pfad; while (*z == ' ' || *z == '\t') z++;
                if (*z) { strncpy(g_mission, z, MAX_PATH - 1);
                          g_mission[MAX_PATH - 1] = 0; }
            }
            fclose(s);
        }
        logf("--- Stufe 11: Menuepunkt %d startet Mission \"%s\" ---",
             g_missionsplatz, g_mission);
        if (baue_missionszweig(g_missionsplatz)) platz11 = g_missionsplatz;
    } else {
        logf("Stufe 11 uebersprungen (keine Datei live\\MISSIONSTART).");
    }

    // Stufe 9: "<Platz> <Typ>" in live\MENUZWEIG, z.B. "2 31"
    sprintf(schalter, "%smod_docu\\live\\MENUZWEIG", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        FILE* s = fopen(schalter, "r");
        int platz = -1, typ = -1;
        if (s) { if (fscanf(s, "%d %d", &platz, &typ) != 2)
                     { platz = -1; typ = -1; } fclose(s); }
        if (platz == platz11) {
            logf("Stufe 9: Platz %d gehoert schon Stufe 11 -- "
                 "uebersprungen, damit sich beide nicht ueberschreiben.",
                 platz);
            platz = -1;
        }
        if (platz >= 0 && platz <= 4 && typ >= 0 && typ <= 36) {
            logf("--- Stufe 9: Menuepunkt %d -> Typ %d ---", platz, typ);
            baue_zweig(typ, platz);
        } else {
            logf("Stufe 9: live\\MENUZWEIG braucht zwei Zahlen "
                 "'<Platz 0..4> <Typ 0..36>' -- uebersprungen.");
        }
    } else {
        logf("Stufe 9 uebersprungen (keine Datei live\\MENUZWEIG).");
    }

    // Stufe 8: der Typ steht als Zahl in der Schalterdatei.
    sprintf(schalter, "%smod_docu\\live\\MENUTYP", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        FILE* s = fopen(schalter, "r");
        int typ = -1;
        if (s) { if (fscanf(s, "%d", &typ) != 1) typ = -1; fclose(s); }
        if (typ >= 0 && typ <= 36) {
            logf("--- Stufe 8: Hauptmenuepunkt -> Typ %d ---", typ);
            if (patch_maintyp(typ)) g_maintyp = typ;
        } else {
            logf("Stufe 8: in live\\MENUTYP steht keine Zahl von "
                 "0 bis 36 -- uebersprungen.");
        }
    } else {
        logf("Stufe 8 uebersprungen (keine Datei live\\MENUTYP).");
    }

    sprintf(schalter, "%smod_docu\\live\\MENU38KEY", g_dir);
    g_want_swap = (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES);
    logf("Stufe 7 (F9 oeffnet Bildschirm 37): %s",
         g_want_swap ? "AN -- F9 halten und einen Menuepunkt waehlen"
                     : "aus (keine Datei live\\MENU38KEY)");

    // Stufe 4 MUSS nach Stufe 3 laufen (siehe install_watch).
    sprintf(schalter, "%smod_docu\\live\\MENUWATCH", g_dir);
    if (GetFileAttributesA(schalter) != INVALID_FILE_ATTRIBUTES) {
        logf("--- Stufe 4: Beobachter (Schalter %s gefunden) ---",
             schalter);
        install_watch();
    } else {
        logf("Stufe 4 uebersprungen (keine Datei live\\MENUWATCH).");
    }

    g_active = true;
    logf("aktiv. Datei speichern und sie laeuft: %s", g_live);
}

// --------------------------------------- dinput8-Exporte durchreichen ---
static HMODULE g_real = NULL;
typedef HRESULT (WINAPI *t_DI8Create)(HINSTANCE, DWORD, const void*, void**, void*);
typedef HRESULT (WINAPI *t_NoArgs)(void);
typedef HRESULT (WINAPI *t_GetClass)(const void*, const void*, void**);
static t_DI8Create p_DI8Create = NULL;
static t_NoArgs    p_CanUnload = NULL, p_RegSvr = NULL, p_UnregSvr = NULL;
static t_GetClass  p_GetClass  = NULL;

static void load_real()
{
    char path[MAX_PATH];
    GetSystemDirectoryA(path, MAX_PATH);
    strcat(path, "\\dinput8.dll");
    g_real = LoadLibraryA(path);
    if (!g_real) { logf("echtes dinput8.dll nicht ladbar: %s", path); return; }
    p_DI8Create = (t_DI8Create)GetProcAddress(g_real, "DirectInput8Create");
    p_CanUnload = (t_NoArgs)  GetProcAddress(g_real, "DllCanUnloadNow");
    p_GetClass  = (t_GetClass)GetProcAddress(g_real, "DllGetClassObject");
    p_RegSvr    = (t_NoArgs)  GetProcAddress(g_real, "DllRegisterServer");
    p_UnregSvr  = (t_NoArgs)  GetProcAddress(g_real, "DllUnregisterServer");
}

// Die Namen DllCanUnloadNow/DllGetClassObject sind vom Windows-SDK
// (combaseapi.h) bereits deklariert -- eigene Definitionen kollidieren.
// Deshalb intern anders benennen und per Linker-Direktive unter dem
// erwarteten Namen exportieren. Die @N-Suffixe sind die stdcall-Dekoration
// (Argumentbytes): 5 Zeiger = @20, 3 = @12, keine = @0.
extern "C" HRESULT WINAPI Fwd_DirectInput8Create(HINSTANCE a, DWORD b,
                                                 const void* c, void** d, void* e)
{ return p_DI8Create ? p_DI8Create(a, b, c, d, e) : E_FAIL; }

extern "C" HRESULT WINAPI Fwd_DllCanUnloadNow(void)
{ return p_CanUnload ? p_CanUnload() : S_FALSE; }

extern "C" HRESULT WINAPI Fwd_DllGetClassObject(const void* a, const void* b, void** c)
{ return p_GetClass ? p_GetClass(a, b, c) : E_FAIL; }

extern "C" HRESULT WINAPI Fwd_DllRegisterServer(void)
{ return p_RegSvr ? p_RegSvr() : E_FAIL; }

extern "C" HRESULT WINAPI Fwd_DllUnregisterServer(void)
{ return p_UnregSvr ? p_UnregSvr() : E_FAIL; }

// Aqua.exe importiert nur DirectInput8Create -- geprueft. GetdfDIJoystick
// wird trotzdem durchgereicht, damit die DLL ein vollwertiger Ersatz bleibt.
extern "C" const void* WINAPI Fwd_GetdfDIJoystick(void)
{
    typedef const void* (WINAPI *t_fn)(void);
    t_fn f = g_real ? (t_fn)GetProcAddress(g_real, "GetdfDIJoystick") : NULL;
    return f ? f() : NULL;
}

#pragma comment(linker, "/export:DirectInput8Create=_Fwd_DirectInput8Create@20")
#pragma comment(linker, "/export:DllCanUnloadNow=_Fwd_DllCanUnloadNow@0")
#pragma comment(linker, "/export:DllGetClassObject=_Fwd_DllGetClassObject@12")
#pragma comment(linker, "/export:DllRegisterServer=_Fwd_DllRegisterServer@0")
#pragma comment(linker, "/export:DllUnregisterServer=_Fwd_DllUnregisterServer@0")
#pragma comment(linker, "/export:GetdfDIJoystick=_Fwd_GetdfDIJoystick@0")

BOOL APIENTRY DllMain(HMODULE hMod, DWORD reason, LPVOID)
{
    if (reason == DLL_PROCESS_ATTACH) {
        DisableThreadLibraryCalls(hMod);
        load_real();
        init();
    }
    return TRUE;
}
