"""Selbsttest: laedt 1h1 und prueft Nebel, Kamerafahrt und Objektliste.

Laeuft ohne Zutun durch und beendet sich selbst. Kein Schreibzugriff
auf Spieldateien -- das Toolkit ist read-only.
"""
import sys, os
here = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, here)
os.environ["QTWEBENGINE_CHROMIUM_FLAGS"] = "--disable-gpu-vsync --allow-file-access-from-files"
from PySide6.QtWidgets import QApplication
from PySide6.QtCore import Qt, QTimer
QApplication.setAttribute(Qt.AA_ShareOpenGLContexts, True)
app = QApplication(sys.argv)
from aqtk.gui.hauptfenster import Hauptfenster
f = Hauptfenster(); f.show()
from aqtk.modell import Projekt

fehler = []


def js(code, marke):
    """Fuehrt JS aus und druckt das Ergebnis unter einer Marke."""
    def zurueck(r):
        print(f"{marke}: {r}")
    f.blick.page().runJavaScript(code, zurueck)


def pruefe(bedingung, text):
    print(("  ok   " if bedingung else "  FEHL ") + text)
    if not bedingung:
        fehler.append(text)


def lauf():
    p = Projekt(r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox")
    p.oeffnen(); f.projekt = p; f._karten_fuellen()
    f._karte_laden("1h1")

    # 1) Grundzustand -- Nebel muss AUS sein, sonst sieht man nur
    #    einen Bruchteil der 8192 Einheiten breiten Karte.
    QTimer.singleShot(4200, lambda: js(
        "JSON.stringify(window.aqtk.zustand())", "ZUSTAND"))

    # 1b) Stehen die Objekte auf dem Terrain? Das ist der Pruefstein
    #     fuer die Weltabbildung -- liegt das Raster falsch, trifft
    #     kein Strahl.
    def bodenprobe(r):
        import json as _j
        d = _j.loads(r)
        print(f"BODENPROBE: {r}")
        pruefe(d.get("danebenGelegen") == 0,
               "jedes Objekt liegt ueber dem Terrainraster")
        pruefe((d.get("medianBetrag") or 9999) < 200,
               "Median-Abstand zum Boden unter 200 Einheiten")
    QTimer.singleShot(4300, lambda: f.blick.page().runJavaScript(
        "JSON.stringify(window.aqtk.bodenprobe())", bodenprobe))

    # 1c) Materialschichten und Wissensdatenbank
    def schichten(r):
        import json as _j
        d = _j.loads(r)
        print(f"SCHICHTEN: {r}")
        pruefe(d.get("detail") is True, "Materialschichten sind aktiv")
        pruefe(len(d.get("schichten") or []) >= 2,
               "mindestens zwei material_*.dds geladen")
    QTimer.singleShot(4350, lambda: f.blick.page().runJavaScript(
        "JSON.stringify({detail: window.aqtk.zustand().detail, "
        "detailStaerke: window.aqtk.zustand().detailStaerke, "
        "schichten: window.aqtk.zustand().schichten})", schichten))

    # 1d) Objekttexturen
    def meshtex(r):
        import json as _j
        d = _j.loads(r)
        print(f"MESHTEXTUR: {r}")
        pruefe((d.get("meshbilder") or 0) >= 5,
               "Objekttexturen wurden geladen")
        pruefe((d.get("objekteMitTextur") or 0) >= 30,
               "mindestens 30 Objekte tragen eine Textur")
        # Ohne Alphakanal steht jede Pflanze in einem schwarzen
        # Rechteck -- 1h1 hat Texturen beider Arten.
        pruefe((d.get("objekteMitAlpha") or 0) >= 5,
               "Alphakanal wird ausgewertet (Freisteller/Glas)")
    QTimer.singleShot(4380, lambda: f.blick.page().runJavaScript(
        "JSON.stringify({meshtextur: window.aqtk.zustand().meshtextur, "
        "objekteMitTextur: window.aqtk.zustand().objekteMitTextur, "
        "objekteMitAlpha: window.aqtk.zustand().objekteMitAlpha, "
        "meshbilder: window.aqtk.zustand().meshbilder})", meshtex))

    def levelinfo():
        t = f.levelinfo.toPlainText()
        print(f"\n-- Level-Info --  {len(t)} Zeichen, "
              f"Reiter '{f.untenreiter.tabText(f.inforeiter)}'")
        pruefe(f.meta is not None and f.meta.vorhanden,
               "Wissensdatenbank gefunden")
        pruefe("ASYLUM" in t or "Asylum" in t,
               "Missionsname im Text")
        pruefe("Topo" in t, "Station 'Topo's Asylum' genannt")
        pruefe(len(t) > 400, "Level-Info ist gefuellt")
        print("  Anfang:", " ".join(t.split())[:160])
    QTimer.singleShot(4450, levelinfo)

    # 2) Die Objektliste in der Oberflaeche.
    #    87 = die 83 aus dem 90er-Fenster PLUS player1 und die drei
    #    nav_waypoints -- Spawn und Wegpunkte werden seit dem
    #    Wegpunkt-Ausbau immer mitgenommen (level.py, welt()).
    def liste():
        n = f.objektliste.topLevelItemCount()
        print(f"\n-- Objektliste --  {n} Zeilen, "
              f"Reitertext '{f.untenreiter.tabText(f.objektreiter)}'")
        pruefe(n == 87, "87 Objekte in der Liste (83 + Spawn + 3 Wegpunkte)")
        if n:
            k = f.objektliste.topLevelItem(0)
            print(f"  erste Zeile: {k.text(0)} | {k.text(1)} | {k.text(2)}")
    QTimer.singleShot(4400, liste)

    # 3) Kamerafahrt zu einem Objekt -- Position vorher/nachher
    QTimer.singleShot(4600, lambda: js(
        "JSON.stringify(window.aqtk.zustand().kamera)", "KAMERA vorher"))
    QTimer.singleShot(4700, lambda: f._zu_objekt(
        f.objektliste.topLevelItem(0)))
    QTimer.singleShot(5900, lambda: js(
        "JSON.stringify(window.aqtk.zustand().kamera)", "KAMERA nachher"))

    # 4) Nebel zuschalten, feste Sichtweite 4000
    def nebel_an():
        f.nebel.setChecked(True)
        f.sicht.setCurrentText("4000")
    QTimer.singleShot(6100, nebel_an)
    QTimer.singleShot(6400, lambda: js(
        "String(window.aqtk.zustand().nebel)", "NEBEL an (erwartet 4000)"))

    # 5) Nebel wieder aus
    QTimer.singleShot(6700, lambda: f.nebel.setChecked(False))
    QTimer.singleShot(7000, lambda: js(
        "String(window.aqtk.zustand().nebel)", "NEBEL aus (erwartet null)"))

    # 6) Zurueck auf die Uebersicht
    QTimer.singleShot(7200, lambda: f._js("window.aqtk.uebersicht()"))
    QTimer.singleShot(8400, lambda: js(
        "JSON.stringify(window.aqtk.zustand().kamera)", "KAMERA Uebersicht"))

    # 7) Player Start: der Knopf springt zu player1 und WAEHLT ihn.
    QTimer.singleShot(8600, f._zum_player_start)

    def start_geprueft(r):
        import json as _j
        d = _j.loads(r) if r and r != "null" else None
        print(f"PLAYER START: {r}")
        pruefe(d is not None, "Player Start ist ausgewaehlt")
        pruefe(bool(d) and d.get("name") == "player1",
               "Auswahl heisst player1")
        pruefe(bool(d) and d.get("art") == "spawn", "Art ist spawn")
    QTimer.singleShot(9800, lambda: f.blick.page().runJavaScript(
        "window.aqtk.auswahl()", start_geprueft))

    # 8) Wegpunkte: sichtbar, waehlbar, mit Radius und Drahtkugel.
    QTimer.singleShot(9900, lambda: f._js(
        "window.aqtk.zuObjekt('node297')"))

    def wegpunkt_geprueft(r):
        import json as _j
        d = _j.loads(r)
        print(f"WEGPUNKT: {r}")
        pruefe(d.get("wegpunkte") == 3,
               "drei nav_waypoints in der Szene")
        pruefe(d.get("radiusKugel") is True,
               "Drahtkugel am gewaehlten Wegpunkt")
        a = d.get("auswahl") or {}
        pruefe(a.get("art") == "wegpunkt", "Auswahl ist ein Wegpunkt")
        pruefe(a.get("radius") == 350, "Radius 350 aus WayPoint_SetRadius")
    QTimer.singleShot(11000, lambda: f.blick.page().runJavaScript(
        "JSON.stringify(Object.assign({}, window.aqtk.zustand(), "
        "{auswahl: JSON.parse(window.aqtk.auswahl())}))",
        wegpunkt_geprueft))

    # 8b) Wegpunkt-KANTEN: 1h1 hat die Kette wp01 -> attack -> wp02
    #     (aus dem Dekompilat, parser/wegpunkte.py) -- zwei Kanten,
    #     und beide muessen als Linien in der Szene haengen.
    def kanten_geprueft(r):
        import json as _j
        d = _j.loads(r)
        print(f"WEGPUNKT-KANTEN: {r}")
        pruefe(d.get("wegpunktKanten") == 2,
               "zwei Wegpunkt-Kanten in 1h1 (wp01 -> attack -> wp02)")
        pruefe(d.get("wegpunktLinien") == 2,
               "beide Kanten sind als Linien in der Szene")
        pruefe(d.get("wegpunktLinienSichtbar") is True,
               "die Linien-Gruppe ist sichtbar")
    QTimer.singleShot(11050, lambda: f.blick.page().runJavaScript(
        "JSON.stringify({wegpunktKanten: window.aqtk.zustand()"
        ".wegpunktKanten, wegpunktLinien: window.aqtk.zustand()"
        ".wegpunktLinien, wegpunktLinienSichtbar: window.aqtk.zustand()"
        ".wegpunktLinienSichtbar})", kanten_geprueft))

    # 9) Wrapper-Lichter: die Pipeline GUI -> Ansicht -> Aenderungen.
    #    Unabhaengig vom Dateibestand (mod_docu\lichter.txt kann
    #    fehlen): eine Probeliste wird gesetzt, ein Licht verschoben,
    #    die Aenderung muss in der EIGENEN Map ankommen.
    def lichter_setzen():
        f._lichter = [
            {"x": 2561.22, "y": 2020.62, "z": 550.59, "r": 1.0,
             "g": 0.12, "b": 0.08, "intensitaet": 2.0, "radius": 500.0,
             "modus": 1, "periode_ms": 1500},
            {"x": 100.0, "y": 200.0, "z": 300.0, "r": 0.2,
             "g": 0.6, "b": 1.0, "intensitaet": 1.0, "radius": 250.0,
             "modus": 2, "periode_ms": 800},
        ]
        f._lichter_zeigen(auswahl=1)
    QTimer.singleShot(11100, lichter_setzen)
    QTimer.singleShot(11500, lambda: f._js(
        "window.aqtk.lichtSetzen(1, {position: [111, 222, 333]})"))

    def lichter_geprueft(r):
        import json as _j
        d = _j.loads(r)
        print(f"LICHTER: {r}")
        pruefe(d.get("lichter") == 2, "zwei Probelichter in der Szene")
        pruefe(d.get("lichtGewaehlt") == 1, "Licht 2 ist gewaehlt")
        ae = d.get("aenderungen") or []
        pruefe(len(ae) == 1 and ae[0].get("neu", {}).get("x") == 111,
               "Verschieben landet in der EIGENEN Lichter-Map")
        pruefe(d.get("geaendert") == 0,
               "Objekt-Aenderungsliste bleibt davon unberuehrt")
        pruefe(f.licht_zaehler.text() == "2/16", "Zaehler zeigt 2/16")
    QTimer.singleShot(12200, lambda: f.blick.page().runJavaScript(
        "JSON.stringify(Object.assign({}, window.aqtk.zustand(), "
        "{aenderungen: JSON.parse(window.aqtk.lichterAenderungen())}))",
        lichter_geprueft))

    # 10) Native OSD-Lichter: 1h1 hat 14 gen_pole-Instanzen im
    #     90er-Fenster, und die LOSEN vfx\osd\gen\gen_pole*~.osd
    #     tragen seit 662c einen nod_fx_light-Block als Vorlagen-
    #     Kind eines nod_fx_spawn (-> blinkend); gen_kai2/atl_dock3
    #     tragen ihn DIREKT (-> fest). Der Viewer muss sie als
    #     eigene READ-ONLY-Gruppe zeigen -- kein lichtIndex, also
    #     nie per Klick waehlbar. *** Keine festen Zahlen: *** die
    #     losen OSDs wachsen mit der Mod-Arbeit (am 13.08. kamen
    #     waehrend des Baus zwei dazu).
    def nativ_geprueft(r):
        import json as _j
        d = _j.loads(r)
        print(f"NATIVE LICHTER: {r}")
        pruefe((d.get("nativLichter") or 0) > 0,
               "native OSD-Lichter in der Szene (nod_fx_light, 662c)")
        pruefe((d.get("nativBlinkend") or 0) > 0,
               "Spawner-Stil wird als blinkend erkannt (gen_pole)")
        pruefe(d.get("nativSichtbar") is True,
               "native Lichtgruppe ist sichtbar")
        pruefe(d.get("nativReadOnly") is True,
               "native Lichtgruppe ist read-only (kein lichtIndex)")
        pruefe(f.nativ_zaehler.text().endswith("nativ (OSD, read-only)")
               and not f.nativ_zaehler.text().startswith("0 "),
               "GUI-Zaehler nennt die nativen Lichter")
    QTimer.singleShot(12400, lambda: f.blick.page().runJavaScript(
        "JSON.stringify({nativLichter: window.aqtk.zustand()"
        ".nativLichter, nativBlinkend: window.aqtk.zustand()"
        ".nativBlinkend, nativSichtbar: window.aqtk.zustand()"
        ".nativSichtbar, nativReadOnly: window.aqtk.zustand()"
        ".nativReadOnly})", nativ_geprueft))

    # 11) Radius-Rueckschreiben (drittes Suchmuster in sco_position,
    #     der in 658 notierte Ausbau): Wegpunkt waehlen, Radius auf
    #     500 stellen -- die Aenderung muss in der JS-Map landen,
    #     der Aenderungstext den WayPoint_SetRadius-Patch nennen,
    #     und der Speicher-Patch (1h1.sco NUR IM SPEICHER, wie die
    #     658er-Probe) muss die Rueckleseprobe bestehen. *** Erst
    #     NACH der Lichter-Probe: *** die prueft geaendert == 0.
    QTimer.singleShot(12500, lambda: f._js(
        "window.aqtk.zuObjekt('node297')"))

    def radius_aendern(r):
        import json as _j
        d = _j.loads(r) if r and r != "null" else None
        pruefe(bool(d) and d.get("art") == "wegpunkt",
               "Radius-Probe: node297 ist wieder gewaehlt")
        if not d:
            return
        f.blick.page().runJavaScript(
            f"window.aqtk.setzen({d['index']}, "
            f"{_j.dumps(d['position'])}, {_j.dumps(d['drehung'])}, 500)")
    QTimer.singleShot(13600, lambda: f.blick.page().runJavaScript(
        "window.aqtk.auswahl()", radius_aendern))

    def radius_geprueft(r):
        import json as _j
        liste = _j.loads(r) if r else []
        eintraege = [a for a in liste
                     if (a.get("variable") or a.get("name")) == "node297"]
        print(f"RADIUS-AENDERUNG: {eintraege}")
        pruefe(len(eintraege) == 1
               and eintraege[0].get("radius") == 500
               and eintraege[0].get("alt_radius") == 350,
               "Radius 350 -> 500 landet in der JS-Aenderungs-Map")
        text = f._aenderungstext(liste, [], kurz=True)
        pruefe("WayPoint_SetRadius(node297, 500)" in text,
               "Aenderungstext enthaelt den WayPoint_SetRadius-Patch")
        # Speicher-Patch + Rueckleseprobe wie die 658er-Probe: das
        # Original-Skript wird gelesen, im SPEICHER gepatcht und
        # wieder eingelesen -- keine Datei wird angefasst.
        from aqtk.schreiber import sco_position
        roh = f.projekt.bestand.lesen("map/1h1/script/1h1.sco")
        try:
            neu, bericht = sco_position.anwenden(roh, liste)
            g = [x for x in bericht["geaendert"]
                 if x["variable"] == "node297"]
            pruefe(len(g) == 1 and g[0].get("neu_radius") == 500.0
                   and g[0].get("alt_radius") == 350.0,
                   "Speicher-Patch: WayPoint_SetRadius 350 -> 500, "
                   "Ruecklesen bestanden (Probe 1-3)")
        except Exception as e:
            pruefe(False, f"Speicher-Patch: {type(e).__name__}: {e}")
    QTimer.singleShot(14000, lambda: f.blick.page().runJavaScript(
        "window.aqtk.aenderungen()", radius_geprueft))

    def radius_ansicht(r):
        import json as _j
        d = _j.loads(r)
        a = d.get("auswahl") or {}
        print(f"RADIUS-ANSICHT: {r}")
        pruefe(a.get("radius") == 500, "Auswahl traegt den neuen Radius")
        pruefe(d.get("radiusKugel") is True,
               "Drahtkugel ist live nachgezogen")
    QTimer.singleShot(14300, lambda: f.blick.page().runJavaScript(
        "JSON.stringify({radiusKugel: window.aqtk.zustand().radiusKugel, "
        "auswahl: JSON.parse(window.aqtk.auswahl())})", radius_ansicht))

    def ende():
        print("\n-- Meldungen --\n" +
              "\n".join(f.meldungen.toPlainText().splitlines()[-6:]))
        print("\n" + ("ALLES OK" if not fehler
                      else f"{len(fehler)} FEHLER: " + "; ".join(fehler)))
        app.quit()
    QTimer.singleShot(14700, ende)


QTimer.singleShot(1300, lauf)
sys.exit(app.exec())
