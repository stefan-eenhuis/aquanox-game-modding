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

// ---------------------------------------------------------- Adressen ---
static const DWORD A_SCRIPT_VTABLE   = 0x005f6218; // NOD_Script
static const int   VT_HEARTBEAT_OFF  = 0x20;
static const DWORD A_SCRIPT_HEARTBEAT= 0x0048d750;
static const DWORD A_LUA_STATE_SLOT  = 0x00668a40; // L = *(void**)(*(void**)hier)
static const DWORD A_LUA_DOBUFFER    = 0x005d5790; // (L, buf, size, name) -> int

// Fingerabdruecke: erste Bytes der Funktionen, die wir benutzen.
struct Fingerprint { DWORD addr; const BYTE* bytes; size_t len; const char* name; };
static const BYTE FP_HEARTBEAT[] = {0x56,0x57,0x8b,0xf9,0x8d,0x87,0xa0,0x00};
static const BYTE FP_DOBUFFER [] = {0x55,0x8b,0xec,0x81,0xec,0xd4,0x01,0x00};

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
