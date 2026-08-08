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

    # 2) Die Objektliste in der Oberflaeche
    def liste():
        n = f.objektliste.topLevelItemCount()
        print(f"\n-- Objektliste --  {n} Zeilen, "
              f"Reitertext '{f.untenreiter.tabText(f.objektreiter)}'")
        pruefe(n == 83, "83 Objekte in der Liste")
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

    def ende():
        print("\n-- Meldungen --\n" +
              "\n".join(f.meldungen.toPlainText().splitlines()[-6:]))
        print("\n" + ("ALLES OK" if not fehler
                      else f"{len(fehler)} FEHLER: " + "; ".join(fehler)))
        app.quit()
    QTimer.singleShot(8800, ende)


QTimer.singleShot(1300, lauf)
sys.exit(app.exec())
