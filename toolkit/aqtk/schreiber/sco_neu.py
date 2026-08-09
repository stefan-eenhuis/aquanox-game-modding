"""Neue Objekte ins Missionsskript bringen -- ueber dostring().

*** DER PATCHER AUS sco_position.py KANN DAS NICHT. *** Er tauscht
Konstanten; ein neuer Knoten braucht zusaetzliche BEFEHLE, und die
verschoeben alle Sprungziele dahinter.

DER AUSWEG STEHT SEIT LANGEM IM HANDOFF: in Aqua.exe steckt der
vollstaendige Lua-4.0-Parser, und `dostring` ist als Lua-Global
registriert (luaL_reg-Tabelle @0x600328, Eintrag 6 -> 0x5e6950).
*** dostring lehnt vorkompilierten Bytecode ausdruecklich ab *** --
es uebersetzt wirklich Quelltext. mod_docu\\tools\\sco_lua.py haengt
einen solchen Aufruf an ein bestehendes Proto an.

Damit laesst sich lesbarer Lua-Text ans Ende von __StartUp haengen:

    nodeNEU1 = Node_CreateNode("nod_generic", "mein_pfahl")
    Node_AddSon(Node_Find("/Scenario_Static/Object"), nodeNEU1)
    Body_SetCS(nodeNEU1, MAT_Vector3(1,2,3), MAT_Vector3(0,0,0))
    Node_ParseIniFile(nodeNEU1, "osd/gen/gen_pole.osd")

*** WAS DARAN UNGEPRUEFT IST: *** ob ein so angelegter Knoten
wirklich erscheint. Der Handoff vermerkt als offen, ob Body_SetCS
einen Knoten NACH Node_EnterSimulation noch versetzt -- und
__StartUp laeuft spaet. Es kann sein, dass der Knoten entsteht, aber
am Ursprung steht, oder dass er gar nicht in die Simulation kommt.
*** Das entscheidet nur ein Spieltest. ***

Deshalb meldet dieses Modul seine Unsicherheit nach aussen, statt so
zu tun, als sei die Sache erledigt.
"""
import os
import sys


def _sco_lua():
    hier = os.path.dirname(os.path.abspath(__file__))
    tools = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(hier))), "tools")
    if tools not in sys.path:
        sys.path.insert(0, tools)
    import sco_lua
    return sco_lua


def _lua4dis():
    hier = os.path.dirname(os.path.abspath(__file__))
    tools = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(hier))), "tools")
    if tools not in sys.path:
        sys.path.insert(0, tools)
    import lua4dis
    return lua4dis


def quelltext(neulinge, verzeichnis=None):
    """Der Lua-Text, der die neuen Objekte anlegt.

    verzeichnis: der Node_Find-Pfad, unter den sie gehaengt werden.
    Ohne Angabe wird /Scenario_Static/Object genommen -- der Pfad,
    unter dem in 1h1 101 der 210 BindEasy-Aufrufe haengen.
    """
    v = verzeichnis or "/Scenario_Static/Object"
    z = ["-- vom AquaNox-Toolkit angehaengt",
         f"local _verz = Node_Find(\"{v}\")"]
    for i, n in enumerate(neulinge, 1):
        var = f"_neu{i}"
        p = n.get("position") or [0, 0, 0]
        d = n.get("drehung") or [0, 0, 0]
        name = str(n.get("name") or f"neu{i}").replace('"', "")
        z.append(f'{var} = Node_CreateNode("nod_generic", "{name}")')
        z.append(f"Node_AddSon(_verz, {var})")
        z.append(
            f"Body_SetCS({var}, MAT_Vector3({p[0]:.5f}, {p[1]:.5f}, "
            f"{p[2]:.5f}), MAT_Vector3({d[0]:.5f}, {d[1]:.5f}, "
            f"{d[2]:.5f}))")
        if n.get("osd"):
            osd = str(n["osd"]).replace("\\", "/").replace('"', "")
            z.append(f'Node_ParseIniFile({var}, "{osd}")')
    return "\n".join(z)


def anhaengen(roh_sco, neulinge, verzeichnis=None, melder=None):
    """Die neuen Objekte als dostring-Aufruf ans Skript haengen.

    Gibt (bytes, bericht) zurueck. Der Bericht nennt ausdruecklich,
    was ungeprueft bleibt -- wer das ueberliest, wundert sich sonst
    im Spiel.
    """
    if not neulinge:
        return roh_sco, {"angehaengt": 0, "quelltext": ""}

    sl = _sco_lua()
    l = _lua4dis()

    top = l.loads(roh_sco)
    if l.save(top) != roh_sco:
        raise RuntimeError(
            "lua4dis.save() liefert die Datei nicht byte-identisch "
            "zurueck -- ohne Rundlauf kein Anhaengen.")

    # An welches Proto? __StartUp ist der uebliche Einstieg -- dort
    # ist alles Originalverhalten schon gelaufen.
    #
    # *** find_global_proto() liefert den INDEX in kproto, nicht das
    # Proto selbst. *** append_to_proto() will aber das Proto.
    ziel = zielname = None
    for name in ("__StartUp", "__InitLayout"):
        try:
            i = sl.find_global_proto(top, name)
        except Exception:
            i = None
        if i is not None and 0 <= i < len(top.kproto or []):
            ziel, zielname = top.kproto[i], name
            break
    if ziel is None:
        raise RuntimeError(
            "Weder __StartUp noch __InitLayout gefunden -- ohne ein "
            "Zielproto laesst sich nichts anhaengen.")

    text = quelltext(neulinge, verzeichnis)
    sl.append_to_proto(ziel, text, chunkname="aqtk_neu")
    ergebnis = l.save(top)

    # Probe: laesst sich das Ergebnis wieder lesen?
    try:
        l.loads(ergebnis)
    except Exception as e:
        raise RuntimeError(f"Das Ergebnis ist nicht lesbar: {e}")

    bericht = {
        "angehaengt": len(neulinge),
        "proto": zielname,
        "quelltext": text,
        "byte_vorher": len(roh_sco),
        "byte_nachher": len(ergebnis),
        "ungeprueft": [
            "Ob ein in __StartUp angelegter Knoten wirklich erscheint, "
            "ist NICHT geprueft -- der Handoff fuehrt als offen, ob "
            "Body_SetCS nach Node_EnterSimulation noch versetzt.",
            "Das Verzeichnis (Node_Find-Pfad) ist geraten, wenn keines "
            "angegeben wurde. In 1h1 haengen 101 von 210 Objekten "
            "unter /Scenario_Static/Object -- die uebrigen woanders.",
        ],
    }
    if melder:
        melder(f"{len(neulinge)} neue Objekte an {zielname} angehaengt "
               f"({len(roh_sco)} -> {len(ergebnis)} Byte)")
    return ergebnis, bericht
