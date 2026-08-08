"""Das Terrain eines Levels lesen.

GRUNDLAGE (terrain_write.py, aquanox_levelwelt.txt):
    map\\<level>\\terrain\\
        hmap.tga        1025 x 1025, 24 bpp   die Hoehen
        terrain.des     Offset, Scale, Triangulierung
        material.des    Kachelungsfaktoren W0..W3
        material_s.tga  256 x 256, 32 bpp     Selektormap
        material_0..3.dds                     die Materialien
        lightmap.dds    2048 x 2048 DXT3
        coral/grass/stone/fungus_01.tga  64x64 Detailtexturen

GEKLAERT (siehe welt() und skalierung()):
    welt_x = index_x * Scale[0] + Offset[0]      Karte -4096..+4096
    hoehe  = hmap_wert * Scale[2] / 256          0..WaterDepth

*** OFFEN UND HIER NICHT GERATEN: *** ob die Koordinaten in den
MISSIONSSKRIPTEN denselben Ursprung benutzen wie das Hoehenfeld.
Solange das ungeprueft ist, sind die Objektpositionen im Betrachter
nur ein Anhaltspunkt.
Ebenso offen: was der Alphakanal von material_s.tga auswaehlt
(sieben Stufen: 0, 6, 13, 18, 25, 31, 32).
"""
import os

from . import Unsicher
from . import tga


def _des_lesen(rohdaten):
    """Liest eine .des-Datei, egal ob Klartext oder gekocht.

    Gibt ein flaches dict {name_klein: wert} zurueck. Fuer die
    Terrain-Dateien genuegt das -- sie sind flach aufgebaut.
    """
    if rohdaten is None:
        return {}
    # Gekochte Dateien beginnen mit einem Nullbyte-behafteten Kopf,
    # Klartext mit '//' oder '['.
    ist_klartext = rohdaten[:1] in (b"/", b"[", b"\r", b"\n", b"\t", b" ")
    werte = {}
    if ist_klartext:
        text = rohdaten.decode("latin-1", "replace")
        for zeile in text.splitlines():
            z = zeile.split("//")[0].strip()
            if "=" not in z:
                continue
            name, _, wert = z.partition("=")
            werte[name.strip().lower()] = _zahl(wert.strip())
        return werte
    try:
        import descook
        baum = descook.parse(rohdaten)
        _flach(baum, werte)
    except Exception:
        pass
    return werte


def _flach(knoten, aus):
    """Traegt alle Felder eines descook-Baums flach ein."""
    if knoten is None:
        return
    folge = knoten if isinstance(knoten, (list, tuple)) else [knoten]
    for k in folge:
        for attr in ("entries", "eintraege", "fields", "felder"):
            for e in getattr(k, attr, []) or []:
                name = str(getattr(e, "name", "")).lower()
                if name:
                    aus[name] = getattr(e, "value", getattr(e, "wert", None))
        for attr in ("children", "kinder", "headers"):
            for kind in getattr(k, attr, []) or []:
                _flach(kind, aus)


def _zahl(s):
    """Wandelt einen Feldwert. Erkennt auch Zahlentripel.

    terrain.des schreibt Vektoren als "x, y, z" -- z.B.
        Offset = -4096.0, -4096.0, 0.0
        Scale  = 4.0, 4.0, 4.0
    Solche Werte werden als Liste zurueckgegeben.
    """
    s = s.strip().strip('"')
    if "," in s:
        teile = [t.strip() for t in s.split(",")]
        try:
            return [float(t) for t in teile]
        except ValueError:
            return s
    try:
        if "." in s or "e" in s.lower():
            return float(s)
        return int(s)
    except ValueError:
        return s


class Terrain:
    """Das Hoehenfeld eines Levels samt Skalierung."""

    def __init__(self, level):
        self.level = level
        self.breite = 0
        self.hoehe = 0
        self.werte = None            # bytearray, ein Byte je Punkt
        self.terrain_des = {}
        self.material_des = {}
        self.selektor = None         # (b, h, rgba) oder None
        self.dateien = {}            # name -> groesse
        self.fog_wassertiefe = None  # WaterDepth aus fog.des
        self.hinweise = []           # was nicht gelesen werden konnte

    # ------------------------------------------------------------------
    @classmethod
    def laden(cls, bestand, level):
        t = cls(level)
        basis = f"map/{level}/terrain"

        for name in ("hmap.tga", "terrain.des", "material.des",
                     "material_s.tga", "lightmap.dds", "radar_color.dds",
                     "material_0.dds", "material_1.dds",
                     "material_2.dds", "material_3.dds"):
            e = bestand.eintraege.get(f"{basis}/{name}")
            if e:
                t.dateien[name] = e.groesse

        roh = bestand.lesen(f"{basis}/hmap.tga")
        if roh is None:
            t.hinweise.append("hmap.tga nicht gefunden -- kein Terrain")
        else:
            try:
                t.breite, t.hoehe, t.werte = tga.hoehenfeld(roh)
            except Exception as e:
                t.hinweise.append(f"hmap.tga nicht lesbar: {e}")

        t.terrain_des = _des_lesen(bestand.lesen(f"{basis}/terrain.des"))
        t.material_des = _des_lesen(bestand.lesen(f"{basis}/material.des"))

        roh = bestand.lesen(f"{basis}/material_s.tga")
        if roh is not None:
            try:
                t.selektor = tga.rgba(roh)
            except Exception as e:
                t.hinweise.append(f"material_s.tga nicht lesbar: {e}")

        return t

    # ------------------------------------------------------------------
    @property
    def vorhanden(self):
        return self.werte is not None and self.breite > 0

    def _vec3(self, name, standard):
        w = self.terrain_des.get(name)
        if isinstance(w, list) and len(w) == 3:
            return [float(v) for v in w]
        if isinstance(w, (int, float)):
            return [float(w)] * 3
        return list(standard)

    def welt(self):
        """Die Abbildung Rasterpunkt -> Weltkoordinate.

        In map\\1h1\\terrain\\terrain.des steht:
            Offset = -4096.0, -4096.0, 0.0
            Scale  =     4.0,     4.0, 4.0
        Bei 1025 Punkten und Scale 4 sind das 1024 * 4 = 4096
        Welteinheiten Kantenlaenge.

        *** DAS OFFSET-FELD IST NICHT DER URSPRUNG DES RASTERS. ***
        Frueher stand hier "welt_x = index * scale + offset", also
        eine Karte von -4096 bis 0. Das ist an den Objektpositionen
        widerlegt. Gemessen an sieben Karten (1h1, 1h2, 1h3, 2h1,
        2h3, 3h1, 4h1) mit 1.184 Objekten aus Body_SetCS:

            Deutung                       im Raster   Median |Abstand
                                                      zum Boden|
            index*scale + offset  (-4096..0)     0 %  --
            index*scale           (0..+4096)   100 %  41..156   <== 6/7
            zentriert          (-2048..+2048)   14 %  67..518
            offset, Scale 8   (-4096..+4096)   100 %  44..314

        *** ES GILT: ***
            welt_x = index_x * scale[0]
            welt_y = ((hoehe - 1) - bildzeile) * scale[1]

        Nur so liegt JEDES Objekt im Raster.

        *** KORREKTUR AN DER ERSTEN FASSUNG DIESES ABSATZES. ***
        Hier stand "welt_y = index_y * scale[1]", belegt mit
        Medianen von 1,8 / 4,0 / 12,2 / -9,3 Einheiten. Die Zahlen
        stimmten, der Schluss nicht: das war der VORZEICHEN-
        BEHAFTETE Median, und der liegt auch bei falscher Zuordnung
        nahe null, weil sich zu hoch und zu tief aufheben.

        Mit dem Median des BETRAGS, gemessen an 36 Karten und 1.684
        statischen Objekten (Container, Tanks, Docks, Tuerme --
        Schiffe und Spawnpunkte ausgenommen, die schweben zu Recht):

            ohne Spiegelung   59,9   davon 41,2 % IM Boden
            mit  Spiegelung    7,6   davon  2,4 % im Boden

        Die uebrigen sechs Lagen (x gespiegelt, transponiert usw.)
        liegen zwischen 58,5 und 83,7. Einzelheiten in raster().

        *** WOFUER Offset dann gut ist, bleibt offen *** -- hier wird
        nichts dazu erfunden. Der Wert wird unveraendert
        mitgeliefert, damit ihn spaetere Arbeiten pruefen koennen.

        Die HOEHE braucht einen Teiler von 256, weil Scale[2] fuer
        ein Byte gilt, die Karte aber 16 Bit fuehrt. Siehe
        skalierung().
        """
        return {
            "offset": self._vec3("offset", (0.0, 0.0, 0.0)),
            "scale": self._vec3("scale", (1.0, 1.0, 1.0)),
            # Der Ursprung des Rasters -- gemessen, siehe oben.
            "ursprung": [0.0, 0.0],
            "ursprung_beleg": "an 7 Karten und 1.184 Objekten gemessen; "
                              "Offset als Ursprung ist widerlegt",
            "quelle": "terrain.des" if "offset" in self.terrain_des
                      else "Standardwerte",
        }

    # Die Hoehenwerte sind 16 Bit; Scale[2] gilt fuer ein Byte.
    # Deshalb muss durch 256 geteilt werden -- siehe skalierung().
    HOEHENTEILER = 256.0

    def skalierung(self):
        """Der Hoehenfaktor je Rohwert der Hoehenkarte.

        *** GEMESSEN, nicht geraten: ***
            hoehe_welt = hmap_wert * Scale[2] / 256

        Beleg an vier Karten (Scale[2] ist ueberall 4.0):
            1h2  hmap 0..65535  ->  0..1024.0
            3h1  hmap 0..65535  ->  0..1024.0
            2h1  hmap 12298..64980 -> 192.2..1015.3
            1h1  hmap 0..63702  ->  0..995.3
        *** Bei 1h2 und 3h1 erreicht die Karte den vollen
        16-Bit-Bereich, und das Ergebnis ist exakt 1024.0 --
        genau die WaterDepth aus fog.des jener Karten. ***
        Das kann kein Zufall sein: der Wertebereich 0..65535 bildet
        auf 0..WaterDepth ab.

        OFFEN BLEIBT, welche der beiden Lesarten die richtige ist:
            (a) wert * Scale[2] / 256     -- Scale gilt je Byte
            (b) wert / 65535 * WaterDepth -- Bezug ist die Wassertiefe
        Beide ergeben hier dasselbe, weil alle geprueften Karten
        Scale 4.0 und WaterDepth 1024 haben. Sollte je eine Karte
        davon abweichen, entscheidet sie die Frage. Gewaehlt ist (a),
        weil Scale aus terrain.des kommt und je Karte anders sein
        koennte.
        """
        w = self.terrain_des.get("scale")
        if isinstance(w, list) and len(w) == 3:
            f = float(w[2]) / self.HOEHENTEILER
            return Unsicher(
                f, Unsicher.WAHRSCHEINLICH,
                f"Scale[2] = {w[2]} / 256 = {f:.5f} je Rohwert. "
                f"An vier Karten geprueft; bei voller Aussteuerung "
                f"(65535) ergibt das genau die WaterDepth aus fog.des.")
        if isinstance(w, (int, float)):
            return Unsicher(float(w) / self.HOEHENTEILER,
                            Unsicher.MOEGLICH,
                            "Scale aus terrain.des (Einzelwert), / 256")
        return Unsicher(1.0 / self.HOEHENTEILER, Unsicher.UNBEKANNT,
                        "kein Scale-Feld in terrain.des; 1/256 angenommen")

    def wassertiefe(self):
        """WaterDepth aus fog.des -- die Gegenprobe zur Hoehenskalierung."""
        return self.fog_wassertiefe

    def versatz(self):
        w = self.terrain_des.get("offset")
        if isinstance(w, list) and len(w) == 3:
            return Unsicher(float(w[2]), Unsicher.WAHRSCHEINLICH,
                            f"Offset[2] = {w[2]} aus terrain.des")
        return Unsicher(0.0, Unsicher.UNBEKANNT, "kein Offset-Feld gefunden")

    def kachelung(self):
        """Die Faktoren W0..W3 aus material.des, soweit vorhanden."""
        aus = {}
        for i in range(4):
            for name in (f"w{i}", f"tiling{i}", f"tilingu{i}"):
                if name in self.material_des:
                    aus[f"W{i}"] = self.material_des[name]
                    break
        return aus

    def raster(self, schritt=4):
        """Gibt das Hoehenfeld ausgeduennt zurueck: (b, h, list[int]).

        1025 x 1025 sind ueber eine Million Punkte. Fuer die Ansicht
        genuegt jeder n-te; schritt=4 ergibt 257 x 257 = 66.049 Punkte.

        *** DIE ZEILEN LAUFEN HIER IN WELTREIHENFOLGE, NICHT IN
        BILDREIHENFOLGE. *** Ausgabezeile 0 liegt bei welt_y = 0.

        tga.hoehenfeld() liefert Zeile 0 als OBERSTE Bildzeile -- das
        ist fuer eine Bildanzeige richtig und wird von tga.rgba()
        genauso gemacht. Fuer die WELT ist es aber verkehrt herum:

            welt_y = ((hoehe - 1) - bildzeile) * Scale[1]

        Beleg (36 Karten, 1.684 statische Objekte, Kriterium ist der
        Median des BETRAGS vom Abstand zum Boden):

            Lage                Median|Abst|   |Abst|<30   im Boden
            identisch                  59,9       29,4 %     41,2 %
            *** y gespiegelt ***        7,6       75,8 %      2,4 %
            x gespiegelt               83,7       23,2 %     43,0 %
            beide                      72,2       26,1 %     36,4 %
            transponiert               78,1       26,7 %     42,7 %
            transp. + y                66,4       29,6 %     38,6 %
            transp. + x                58,5       29,2 %     31,1 %
            transp. + beide            72,6       25,7 %     42,5 %

        Die beste Lage ist um den Faktor 7,7 besser als die
        zweitbeste. Vorher steckten 41 Prozent der Container, Tanks
        und Gebaeude IM Boden, jetzt sind es 2,4.

        *** WARUM DAS SO LANGE UNBEMERKT BLIEB (v128, Abschnitt 424):
        dort wurde der VORZEICHENBEHAFTETE Median als Beleg genommen.
        Der liegt auch bei falscher Zuordnung nahe null, weil sich zu
        hoch und zu tief gegenseitig aufheben -- bei "identisch" sind
        es -9,0, was harmlos aussieht. Erst der Betrag zeigt es. ***

        WER DIESE FUNKTION AENDERT, muss die Texturen mitdrehen: die
        Farbkarte kommt ueber tga.rgba/Pillow und liegt in
        BILDreihenfolge. web/viewer.js spiegelt darum die
        v-Koordinate der Texturkoordinaten.
        """
        if not self.vorhanden:
            return 0, 0, []
        b, h, w = self.breite, self.hoehe, self.werte
        nb = (b + schritt - 1) // schritt
        nh = (h + schritt - 1) // schritt
        # Die Bildzeilen, die tatsaechlich genommen werden -- und
        # zwar von unten nach oben, damit Ausgabezeile 0 bei
        # welt_y = 0 liegt.
        zeilen = list(range(0, h, schritt))
        aus = []
        for y in reversed(zeilen):
            zeile = y * b
            for x in range(0, b, schritt):
                aus.append(w[zeile + x])
        return nb, nh, aus

    def kennzahlen(self):
        if not self.vorhanden:
            return {}
        w = self.werte
        return {"min": min(w), "max": max(w),
                "punkte": len(w), "breite": self.breite, "hoehe": self.hoehe}
