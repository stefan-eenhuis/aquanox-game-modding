#!/usr/bin/env python3
"""Lua-QUELLTEXT in eine .sco packen -- via dostring().

HINTERGRUND (Handoff Abschnitt 1 der Missionsdesign-Einschaetzung):
In Aqua.exe steckt der vollstaendige Lua-4.0-Parser (lparser.c-Fehlermeldungen
nachgewiesen), und `dostring` ist als Lua-Global registriert (luaL_reg-Tabelle
der Basisbibliothek @0x600328, Eintrag 6 -> 0x5e6950). `dostring` lehnt
vorkompilierten Bytecode ausdruecklich ab ("`dostring' cannot run pre-compiled
code") -- es uebersetzt also wirklich Quelltext.

=> Missionen koennen als lesbarer Lua-Quelltext geschrieben werden. Dieses Modul
   erzeugt die noetige .sco-Huelle bzw. haengt einen dostring-Aufruf an ein
   bestehendes Proto an.

WICHTIG zur CALL-Kodierung (der Fehler, der V10-V15 gekostet hat):
  A = Stackslot der Funktion = numparams des umgebenden Protos bei einem
      Statement-Aufruf ohne aktive Locals.
  B = Anzahl Rueckgabewerte (0 bei einem Statement).
Deshalb wird A hier IMMER aus proto.numparams abgeleitet, nie geraten.

NUETZLICH IM QUELLTEXT (alles als GLOBALE Namen, Lua 4.0 hat keine Module):
  Script_Log(text)          -> Zeile in log.txt   (Start mit -logfile -logunknown)
  Script_LogRaw(text)       -> dasselbe ohne Praefix
  Script_GetTime()          -> Zeit
  Script_Error(text)        -> [SCRIPTERROR]-Zeile
  format(fmt, ...)          -> wie sprintf     (string-Bibliothek, GLOBAL)
  sqrt/floor/abs/min/max/random/...            (math-Bibliothek, GLOBAL)
  tinsert/tremove/getn/sort/tostring/tonumber  (Basisbibliothek)
  Laufzeitfehler gehen ueber _ERRORMESSAGE -> Script_Error -> log.txt
"""
import lua4dis as L


def _dostring_call(proto, source, chunkname="modchunk"):
    """Instruktionen fuer  dostring(<source>, <chunkname>)  als Statement."""
    if isinstance(source, str):
        source = source.replace("\r\n", "\n")
    return [
        L.i_k("GETGLOBAL", proto.K("dostring")),
        L.i_k("PUSHSTRING", proto.K(source)),
        L.i_k("PUSHSTRING", proto.K(chunkname)),
        L.i_ab("CALL", proto.numparams, 0),
    ]


def append_to_proto(proto, source, chunkname="modchunk"):
    """Haengt den dostring-Aufruf VOR das abschliessende END eines Protos.

    Anhaengen ans Ende von __StartUp ist die risikoaermste Stelle: alles
    Originalverhalten ist dann schon gelaufen. Schlaegt der Quelltext fehl,
    steht das Level trotzdem.
    """
    assert L.op(proto.code[-1]) == "END", "Proto endet nicht auf END"
    ins = _dostring_call(proto, source, chunkname)
    proto.code = proto.code[:-1] + ins + [proto.code[-1]]
    return len(ins)


def find_global_proto(chunk, name):
    """Index des Protos, das per `CLOSURE n; SETGLOBAL <name>` gesetzt wird."""
    for pc, i in enumerate(chunk.code):
        if L.op(i) == "SETGLOBAL" and chunk.kstr[L.argU(i)] == name:
            for j in range(pc - 1, max(-1, pc - 6), -1):
                if L.op(chunk.code[j]) == "CLOSURE":
                    return L.argA(chunk.code[j])
    return None


def wrap_source(source, chunkname="mission", sourcename="@mod.lua"):
    """Baut eine KOMPLETTE, eigenstaendige .sco, deren main-Chunk nichts tut
    ausser dostring(<source>, <chunkname>). Der Quelltext definiert dann
    __InitLayout/__StartUp wie jede Originalmission."""
    p = L.Proto()
    p.source_raw = sourcename.encode("latin-1") + b"\x00"
    p.source = sourcename
    p.line = 0
    p.numparams = 0
    p.is_vararg = 0
    p.maxstack = 8
    p.lineinfo = b""
    p.code = _dostring_call(p, source, chunkname) + [L.i_op("END")]
    return L.save(p)


def check(path_or_bytes, expect_kstr=None):
    """Rueckleseprobe: laedt das Ergebnis erneut und disassembliert es."""
    data = open(path_or_bytes, "rb").read() if isinstance(path_or_bytes, str) else path_or_bytes
    top = L.loads(data)
    n = sum(1 for _ in L.walk(top))
    return top, n
