"""Ein Level: Terrain, Objekte, Stimmung -- fertig fuer die Anzeige."""
import math
import re

from ..parser import Unsicher
from ..parser import textur
from ..parser.terrain import Terrain, _des_lesen
from ..parser.sco import Skript


# Vorschau-Stimmungen. *** Ausdruecklich KEINE gemessenen Werte. ***
# Sie dienen dazu, das Terrain ueberhaupt beurteilen zu koennen,
# solange die echten Lichtdaten nicht sicher gelesen werden.
STIMMUNGEN = {
    "neutral":   {"nebel": "#5a6a78", "ambient": "#8899aa",
                  "sonne": "#ffffff", "sicht": 900},
    "tiefsee":   {"nebel": "#0b1a2a", "ambient": "#2a4a6a",
                  "sonne": "#4a7aaa", "sicht": 420},
    "gruen":     {"nebel": "#1e3a2a", "ambient": "#3a6a4a",
                  "sonne": "#8ac08a", "sicht": 520},
    "warm":      {"nebel": "#3a2a1a", "ambient": "#7a5a3a",
                  "sonne": "#ffd0a0", "sicht": 700},
    "bedrohlich": {"nebel": "#2a1015", "ambient": "#5a2a30",
                   "sonne": "#ff8080", "sicht": 380},
}


def _kind_gedreht(drehung, v):
    """Eine Kind-Translation mit der Instanzdrehung drehen.

    *** DIESELBE Deutung wie im Viewer (drehungAusAquanox): ***
        M = Rz(W0) * Rx(W1) * Ry(W2)     Winkel in Grad
    -- an 161 Rohrpaaren gemessen (siehe web/viewer.js). Der Viewer
    baut die three.js-Euler-Matrix 'ZXY' (x=W1, y=W2, z=W0) und
    konjugiert sie mit dem Achstausch (T*M*T). *** Genau deshalb
    gilt die ROHE Euler-Matrix direkt in AquaNox-Achsen: *** in
    aq-Koordinaten ist R_aq = T*(T*M*T)*T = M, also Rz um die
    HOCHACHSE. Wer hier noch einmal die Achsen tauscht, dreht W0
    um die aq-y-Achse -- eine 90-Grad-Probe kippte den Signalstab
    zur Seite statt ihn stehen zu lassen (am 13.08. gemessen).
    """
    d = list(drehung or (0.0, 0.0, 0.0))
    while len(d) < 3:
        d.append(0.0)
    w0, w1, w2 = (math.radians(float(d[i] or 0.0)) for i in range(3))
    cx, sx = math.cos(w1), math.sin(w1)
    cy, sy = math.cos(w2), math.sin(w2)
    cz, sz = math.cos(w0), math.sin(w0)
    tx, ty, tz = float(v[0]), float(v[1]), float(v[2])
    rx = ((cy * cz - sy * sz * sx) * tx + (-cx * sz) * ty
          + (sy * cz + cy * sz * sx) * tz)
    ry = ((cy * sz + sy * cz * sx) * tx + (cx * cz) * ty
          + (sy * sz - cy * cz * sx) * tz)
    rz = (-cx * sy) * tx + sx * ty + (cx * cy) * tz
    return [rx, ry, rz]


class Level:
    """Alles, was der Viewer ueber ein Level braucht."""

    def __init__(self, name):
        self.name = name
        self.terrain = None
        self.skript = None
        self.fog = {}
        self.farbkarte = None          # data:-URI aus material_s.tga
        self.lightmap = None           # data:-URI aus lightmap.dds
        self.lightmap_masse = None
        self.neigungskarte = None      # Alphakanal als Falschfarbe
        self.selektormap = None        # material_s.tga MIT Alpha
        self.detailtexturen = {}       # "0"/"1"/"3" -> data-URI
        self.kachelung = {}            # W0..W3 aus material.des
        self.szene_objekte = None      # aus parser/szene.py
        self.kartenordner = None       # aus Game_SetLightCache
        self.terrainordner = None      # woher das Terrain wirklich kam
        self.skriptpfad = None         # abweichendes Skript (Stationen)
        self.anzeigename = name        # was im Kopf steht
        self._osd_speicher = {}        # OSD-Verweis -> Meshpfad
        self.hinweise = []

    # ------------------------------------------------------------------
    @classmethod
    def laden(cls, projekt, name, fortschritt=None, skript=None):
        """Eine Karte laden.

        skript: ein ABWEICHENDER Skriptpfad. Damit lassen sich die
        Stationen zeigen -- sie liegen in denselben Karten wie die
        Missionen, bringen aber ein eigenes .sco mit:
            map\\1n2\\script\\sta_entropointII.sco
        Alle 25 sind vorhanden und lesbar (58 bis 155 Knoten, 23 bis
        71 mit Position), und alle liegen in Karten MIT Terrain.
        """
        lv = cls(name)
        lv.skriptpfad = skript
        b = projekt.bestand

        # *** ERST DAS SKRIPT, DANN DAS TERRAIN. ***
        # 13 der 43 Karten haben keinen eigenen map\<name>\terrain-
        # Ordner (2n1, 2n2, 3h4, 4h3, 4n2, 5h1, 5h4, 6h1, 6h2, 6h4,
        # inst_asylum, inst_fightclub, inst_succubus). Sie leihen den
        # Ordner einer anderen Karte, und WELCHEN, steht allein im
        # Skript:
        #     Game_SetLightCache(node0, "map/<ORDNER>/Lmsh/", ...)
        # Wer stur map\<name>\terrain liest, zeigt bei knapp einem
        # Drittel aller Karten gar kein Terrain.
        if fortschritt:
            fortschritt(f"{name}: Skript wird gelesen ...")
        if skript:
            pfad = skript.replace("\\", "/").lower()
            if not pfad.endswith(".sco"):
                pfad += ".sco"
            roh = b.lesen(pfad)
        else:
            pfad = f"map/{name}/script/{name}.sco"
            roh = b.lesen(pfad)
            if roh is None:
                for p in b.eintraege:
                    if (p.startswith(f"map/{name}/script/")
                            and p.endswith(".sco")):
                        pfad, roh = p, b.lesen(p)
                        break
        if roh is None:
            lv.hinweise.append("kein Missionsskript gefunden")
        else:
            lv.skript = Skript.laden(roh, pfad)
            lv.hinweise.extend(lv.skript.hinweise)
            # Die Objekte mit Lage und OSD-Verweis (parser/szene.py).
            try:
                from ..parser import szene as _sz
                lv.szene_objekte, lv.kartenordner, _z = _sz.lies(
                    lv.skript.aufrufe)
                mit = sum(1 for o in lv.szene_objekte if o.vollstaendig)
                lv.hinweise.append(
                    f"Szene: {len(lv.szene_objekte)} Knoten, {mit} mit "
                    f"Position, Kartenordner "
                    f"{lv.kartenordner or '(nicht gefunden)'}")
            except Exception as e:
                lv.hinweise.append(f"Szene nicht lesbar: {e}")

        ordner = lv._terrainordner(b, name)
        lv.terrainordner = ordner
        if ordner != name:
            lv.hinweise.append(
                f"kein eigenes Terrain -- geliehen von map/{ordner}/ "
                f"(aus Game_SetLightCache)")

        if fortschritt:
            fortschritt(f"{name}: Terrain wird gelesen ...")
        lv.terrain = Terrain.laden(b, ordner)
        lv.hinweise.extend(lv.terrain.hinweise)

        # Die Farbkarte -- RGB aus material_s.tga. Der Alphakanal
        # misst die Gelaenderauheit; WAS er auswaehlt, ist offen
        # (parser/textur.py).
        if fortschritt:
            fortschritt(f"{name}: Farbkarte wird aufbereitet ...")
        roh = b.lesen(f"map/{ordner}/terrain/material_s.tga")
        if roh is not None:
            lv.farbkarte = textur.farbkarte(roh, groesse=512)
            lv.neigungskarte = textur.neigungskarte(roh, groesse=256)
            if lv.farbkarte is None:
                lv.hinweise.append("material_s.tga nicht als Bild lesbar "
                                   "-- Terrain wird nach Hoehe gefaerbt")
        else:
            lv.hinweise.append("keine material_s.tga -- Terrain wird nach "
                               "Hoehe gefaerbt")

        # Die Lightmap als zweite Schicht, deutlich verkleinert.
        roh = b.lesen(f"map/{ordner}/terrain/lightmap.dds")
        if roh is not None:
            im = textur.bild_laden(roh)
            if im is not None:
                lv.lightmap = textur.als_datenuri(im, groesse=512)
                lv.lightmap_masse = list(im.size)

        # Die Materialschichten des Terrains. Es gibt sie nicht
        # ueberall und nicht luckenlos: 23 Karten haben 0/1/3,
        # fuenf haben 0/1/2/3, zwei nur 0/3 -- *** material_2 fehlt
        # meistens ***, die Nummern sind also keine laufende Reihe.
        lv.selektormap = textur.selektormap(
            b.lesen(f"map/{ordner}/terrain/material_s.tga"))
        lv.kachelung = textur.kachelung(
            b.lesen(f"map/{ordner}/terrain/material.des"))
        for i in range(4):
            roh = b.lesen(f"map/{ordner}/terrain/material_{i}.dds")
            if roh is not None:
                # Die Schichten liegen als 256er und 512er vor und
                # werden vielfach gekachelt -- hier lohnt die volle
                # Groesse, weil man beim Heranzoomen direkt auf sie
                # schaut.
                uri = textur.detailtextur(roh, groesse=512)
                if uri:
                    lv.detailtexturen[str(i)] = uri
        if lv.detailtexturen:
            lv.hinweise.append(
                f"Materialschichten: {', '.join(sorted(lv.detailtexturen))} "
                f"(Kachelung {lv.kachelung or 'unbekannt'})")

        # fog.des gehoert zur MISSION, nicht zum geliehenen Ordner --
        # deshalb zuerst unter dem eigenen Namen suchen.
        for p in (f"map/{name}/fog/fog.des", f"map/{name}/fog.des",
                  f"map/{ordner}/fog/fog.des", f"map/{ordner}/fog.des"):
            roh = b.lesen(p)
            if roh is not None:
                lv.fog = _des_lesen(roh)
                wt = lv.fog.get('waterdepth')
                if isinstance(wt, (int, float)) and lv.terrain:
                    lv.terrain.fog_wassertiefe = float(wt)
                break

        return lv

    def _terrainordner(self, bestand, name):
        """Der Ordner, aus dem das Terrain wirklich kommt.

        Der eigene Name gewinnt, wenn es ihn gibt. Sonst der Ordner
        aus Game_SetLightCache -- an 88 Skripten belegt (Handoff 415).
        Bleibt beides erfolglos, wird der eigene Name genommen; dann
        meldet Terrain.laden() den Fehler.
        """
        def hat(o):
            return bestand.lesen(f"map/{o}/terrain/hmap.tga") is not None

        if hat(name):
            return name
        k = (self.kartenordner or "").strip().strip("/").lower()
        if k and k != name and hat(k):
            return k
        return name

    # ------------------------------------------------------------------
    def stimmung(self, name="neutral"):
        """Die Lichtstimmung. Aus fog.des, sonst Vorschau.

        *** Was aus fog.des kommt, ist gemessen; alles andere ist
        Vorschau und wird als solche gekennzeichnet. ***
        """
        s = dict(STIMMUNGEN.get(name, STIMMUNGEN["neutral"]))
        s["quelle"] = "vorschau"
        s["belegt"] = []

        # fog.des dokumentiert sich selbst: "This is the viewing distance
        # in water, that is covered by the fog."
        for feld in ("viewingdistance", "distance", "fogdistance", "range"):
            if feld in self.fog and isinstance(self.fog[feld], (int, float)):
                s["sicht"] = float(self.fog[feld])
                s["quelle"] = "fog.des"
                s["belegt"].append(f"sicht aus fog.des:{feld}")
                break
        for feld in ("color", "fogcolor", "farbe"):
            if feld in self.fog:
                w = self.fog[feld]
                if isinstance(w, str) and re.fullmatch(r"#?[0-9a-fA-F]{6}", w):
                    s["nebel"] = "#" + w.lstrip("#")
                    s["quelle"] = "fog.des"
                    s["belegt"].append(f"nebelfarbe aus fog.des:{feld}")
                break
        return s

    def objekte(self, hoechstens=600):
        if self.skript is None:
            return []
        return [o.as_dict() for o in self.skript.objekte[:hoechstens]]

    # ------------------------------------------------------------------
    def welt(self, projekt, hoechstens=90, mit_meshes=True,
             wichtig_namen=()):
        """Die Objekte des Levels mit Lage und Modell.

        *** Die Kette, an allen 88 Skripten belegt: ***
            Node_CreateNode("nod_generic", NAME)
            Body_SetCS(node, Position, Drehung)
            Node_ParseIniFile(node, "osd/<grp>/<n>.osd")
        und aus der OSD [visual] namemesh -> vfx\\msh\\<stamm>.msb.

        Die Meshes stehen in LOKALEN Koordinaten; ihre Weltlage
        kommt allein aus Body_SetCS. Z ist die Hochachse.
        """
        from ..parser import szene as _sz
        from ..parser import msb as _msb
        from ..parser import desbaum as _db

        if self.szene_objekte is None:
            return {"objekte": [], "meshes": {}, "hinweise":
                    ["kein Skript gelesen"]}

        aus = []
        meshes = {}          # Meshpfad -> Geometrie (einmal je Datei)
        fehlend = []
        nativ = []           # nod_fx_light aus den OSDs, je INSTANZ
        # *** SPAWN UND WEGPUNKTE IMMER MITNEHMEN. *** Das Fenster
        # der ersten `hoechstens` Knoten liesse sie sonst fallen:
        # in 1h1 steht player1 an Stelle 224, die drei nav_waypoints
        # ab 296 (gemessen) -- alle hinter dem 90er-Fenster, obwohl
        # gerade sie editierbar sein sollen.
        # wichtig_namen: Endpunkte der Wegpunkt-Kanten, die KEINE
        # nod_waypoint-Knoten sind -- dogfight baut seine Renn-
        # Wegpunkte als NOD_Position, 3h4 zielt auf ein Schiff.
        # Ohne diesen Zusatz laegen die Linien dort ins Leere.
        wichtig = ("spawn", "wegpunkt")
        wichtig_namen = set(wichtig_namen)
        kandidaten = list(self.szene_objekte[:hoechstens]) + [
            o for o in self.szene_objekte[hoechstens:]
            if o.art in wichtig or o.name in wichtig_namen]
        for o in kandidaten:
            if not o.vollstaendig:
                continue
            eintrag = {"name": o.name, "art": o.art,
                       # var ist die eindeutige Kennung (siehe
                       # parser/szene.py) -- ohne sie laesst sich
                       # eine Aenderung keinem Body_SetCS zuordnen.
                       "var": o.var, "proto": o.proto,
                       "position": list(o.position),
                       "drehung": list(o.drehung or (0, 0, 0)),
                       # Nur Wegpunkte haben einen (WayPoint_SetRadius);
                       # bei allen anderen bleibt er None.
                       "radius": o.radius,
                       "osd": o.osd or "", "mesh": None}
            if mit_meshes and o.osd:
                # Alle Teile des Objekts, nicht nur das erste Mesh --
                # sonst fehlt vom Geschuetzturm alles ausser dem
                # Sockel. Siehe _osd_teile().
                teile = self._osd_teile(projekt, o.osd)
                brauchbar = []
                for t in teile:
                    mp = t["mesh"]
                    if mp not in meshes:
                        g = self._mesh_geometrie(projekt, mp)
                        if g:
                            meshes[mp] = g
                        else:
                            fehlend.append(mp)
                            continue
                    brauchbar.append(t)
                if brauchbar:
                    eintrag["mesh"] = brauchbar[0]["mesh"]
                    # Die weiteren Teile mit ihrem lokalen Versatz.
                    if len(brauchbar) > 1:
                        eintrag["teile"] = brauchbar[1:]
                elif o.osd:
                    fehlend.append(o.osd)
            # *** NATIVE LICHTER DIESER INSTANZ. *** Jede Instanz
            # derselben OSD bekommt ihr eigenes Licht an ihrer
            # Weltposition: Instanzlage + GEDREHTE Kind-Translation
            # (beim Spawner-Stil traegt der Spawner die Translation,
            # das Licht-Kind steht auf (0,0,0)).
            if o.osd:
                for li in self._osd_lichter(projekt, o.osd):
                    r = _kind_gedreht(o.drehung, li["versatz"])
                    nativ.append({
                        "x": o.position[0] + r[0],
                        "y": o.position[1] + r[1],
                        "z": o.position[2] + r[2],
                        "rgb": li["rgb"], "range": li["range"],
                        "blinkend": li["blinkend"],
                        "objekt": o.name, "osd": o.osd,
                    })
            aus.append(eintrag)

        # Die Texturen aller geladenen Meshes -- jede nur EINMAL,
        # auch wenn zwanzig Objekte sie benutzen. Ohne dieses
        # Zusammenlegen waere die Datenmenge ein Vielfaches.
        bilder, fehlende_tex = {}, []
        if mit_meshes:
            namen = set()
            for g in meshes.values():
                for gr in g.get("gruppen") or []:
                    n = (gr.get("textur") or "").strip()
                    if n:
                        namen.add(n)
            # 512 statt 256: die meisten Objekttexturen liegen im
            # Original als 256 oder 512 vor, und beim Heranzoomen
            # sieht man den Unterschied deutlich. als_datenuri()
            # verkleinert nur, wenn das Bild GROESSER ist -- ein
            # 256er Original bleibt also 256 und kostet nichts extra.
            #
            # *** MIT ALPHAKANAL. *** Wer ihn wegwirft, bekommt
            # schwarze Rechtecke um jede Pflanze. Die Art des Kanals
            # kommt mit, damit die Ansicht Freisteller (alphaTest)
            # von Glas (echte Transparenz) unterscheiden kann.
            for n in sorted(namen):
                bp = textur.aufloesen(projekt.bestand, n, self.terrainordner)
                roh_t = projekt.bestand.lesen(bp) if bp else None
                uri, alphaart = (textur.objekttextur(roh_t, groesse=512)
                                 if roh_t else (None, "keine"))
                if uri:
                    bilder[n] = {"bild": uri, "alpha": alphaart}
                else:
                    fehlende_tex.append(n)

        hinweise = [f"{len(aus)} Objekte, {len(meshes)} verschiedene "
                    f"Modelle geladen."]
        if nativ:
            blink = sum(1 for l in nativ if l["blinkend"])
            hinweise.append(
                f"{len(nativ)} native OSD-Lichter (nod_fx_light), "
                f"davon {blink} blinkend -- read-only")
        if bilder or fehlende_tex:
            hinweise.append(
                f"Objekttexturen: {len(bilder)} geladen"
                + (f", {len(fehlende_tex)} nicht gefunden "
                   f"({', '.join(fehlende_tex[:5])}"
                   + (" ..." if len(fehlende_tex) > 5 else "") + ")"
                   if fehlende_tex else ""))

        return {"objekte": aus, "meshes": meshes, "bilder": bilder,
                "nativ_lichter": nativ,
                "fehlende_texturen": sorted(set(fehlende_tex))[:12],
                "fehlend": sorted(set(fehlend))[:12],
                "hinweise": hinweise}

    def _osd_teile(self, projekt, osd_verweis):
        """Alle sichtbaren Teile einer OSD, samt ihrer Lage im Objekt.

        *** EIN OBJEKT IST OFT MEHR ALS EIN MESH. *** Die OSD ist ein
        Baum: neben [visual] gibt es [child0], [child1] ... und jedes
        Kind hat wieder [visual] und eigene Kinder.

            [visual] namemesh = gen_turret_basis.msh     der Sockel
            [child0] translation = 0.0, 0.0, 10.917
                     rotation0   = 0.0, 0.0, 0.0
                     [visual] namemesh = gen_turret_addon2.msh
                     [child0] namecla = nod_turret_gun
                              [visual] ...               die Kanone

        Wer nur das erste namemesh nimmt, zeigt vom Geschuetzturm nur
        den Sockel. In 901 geprueften OSD-Dateien kommt [child0]
        1.270-mal vor, [child1] 499-mal.

        *** translation und rotation0 stehen IM [childN]-Abschnitt ***,
        nicht in [localcs]. [localcs] gibt es zwar 2.207-mal, aber die
        Lage der Kinder steht nicht dort.

        Rueckgabe: Liste von {"mesh", "versatz", "drehung", "tiefe"}.
        Die Werte sind LOKAL zum Vaterobjekt, in AquaNox-Achsen.
        """
        from ..parser import szene as _sz
        from ..parser import desbaum as _db

        schluessel = ("teile", osd_verweis)
        if schluessel in self._osd_speicher:
            return self._osd_speicher[schluessel]

        pfad = _sz.osd_pfad(osd_verweis)
        roh = projekt.bestand.lesen(pfad) if pfad else None
        aus = []
        if roh is not None:
            try:
                wurzeln, _ = _db.lies(roh, pfad)
            except Exception:
                wurzeln = []

            def vec3(knoten, feldname):
                for f in knoten.kinder:
                    if f.art == "feld" and str(f.name).lower() == feldname:
                        w = f.wert
                        if isinstance(w, list) and len(w) >= 3:
                            try:
                                return [float(w[0]), float(w[1]),
                                        float(w[2])]
                            except (TypeError, ValueError):
                                return None
                return None

            def mesh_von(knoten):
                """Das namemesh im [visual] DIESER Ebene -- nicht tiefer."""
                for k in knoten.kinder:
                    if k.art == "feld":
                        continue
                    if str(k.name).lower() != "visual":
                        continue
                    for f in k.kinder:
                        if (f.art == "feld"
                                and str(f.name).lower() in ("namemesh", "m0")
                                and isinstance(f.wert, str) and f.wert.strip()):
                            return _sz.mesh_pfad(f.wert.strip())
                return None

            def geh(knoten, versatz, drehung, tiefe):
                if tiefe > 6:
                    return
                mp = mesh_von(knoten)
                if mp and mp in projekt.bestand.eintraege:
                    aus.append({"mesh": mp, "versatz": list(versatz),
                                "drehung": list(drehung), "tiefe": tiefe})
                for k in knoten.kinder:
                    if k.art == "feld":
                        continue
                    if not str(k.name).lower().startswith("child"):
                        continue
                    t = vec3(k, "translation") or [0.0, 0.0, 0.0]
                    r = vec3(k, "rotation0") or [0.0, 0.0, 0.0]
                    # Die Versaetze summieren sich entlang der Kette.
                    # *** Die Drehung der Kinder wird NICHT verkettet
                    # -- sie ist in allen geprueften Faellen 0, und
                    # eine falsche Verkettung waere schlimmer als
                    # keine. ***
                    geh(k, [versatz[i] + t[i] for i in range(3)],
                        r, tiefe + 1)

            for w in wurzeln:
                geh(w, [0.0, 0.0, 0.0], [0.0, 0.0, 0.0], 0)

        self._osd_speicher[schluessel] = aus
        return aus

    @staticmethod
    def _osd_roh(projekt, pfad):
        """Rohdaten einer OSD -- die LOSE Datei im Spielordner gewinnt.

        *** Der Bestand kennt nur PAKs und dat/pak/extracted. ***
        Die seit 662c eingebauten nod_fx_light-Bloecke liegen aber
        als lose Dateien im Spielordner (vfx\\osd\\gen\\gen_pole*~.osd)
        -- genau so laedt sie auch die Engine, mit Vorrang vor den
        PAKs. Ohne diesen Vorrang saehe der Editor die alte Fassung
        ohne Licht und meldete ehrlich, aber falsch: kein Licht da.
        """
        import os as _os
        if pfad:
            voll = _os.path.join(projekt.ordner, *pfad.split("/"))
            if _os.path.isfile(voll):
                try:
                    with open(voll, "rb") as f:     # nur lesen
                        return f.read()
                except OSError:
                    pass
        return projekt.bestand.lesen(pfad) if pfad else None

    def _osd_lichter(self, projekt, osd_verweis):
        """Alle nod_fx_light-Bloecke einer OSD, mit Lage im Objekt.

        Zwei Bauformen (662c/663h):
          - DIREKTES Kind:  [childN] namecla nod_fx_light, eigene
            translation, [visual] type/rgb/range.
          - VORLAGEN-Kind eines nod_fx_spawn: der SPAWNER traegt die
            translation, das Licht-Kind darunter (0,0,0) und [life]
            -- das Licht wird im Takt gespawnt, also blinkt es
            (blinkend=True aus dem Spawner-Kontext).

        namecla steht je nach Stil DIREKT im [childN]-Block (so
        schreiben es die 662c-Bloecke) ODER in einem [class]-
        Unterblock (klassischer Stil, translation dann in [localcs]
        -- so haengt das nod_halo in gen_pole).

        Rueckgabe: Liste von {"versatz", "rgb", "range", "blinkend"},
        LOKAL zum Vaterobjekt, in AquaNox-Achsen.
        """
        from ..parser import szene as _sz
        from ..parser import desbaum as _db

        schluessel = ("lichter", osd_verweis)
        if schluessel in self._osd_speicher:
            return self._osd_speicher[schluessel]

        pfad = _sz.osd_pfad(osd_verweis)
        roh = self._osd_roh(projekt, pfad)
        aus = []
        if roh is not None:
            try:
                wurzeln, _ = _db.lies(roh, pfad or "")
            except Exception:
                wurzeln = []

            def feld(knoten, name):
                for f in knoten.kinder:
                    if f.art == "feld" and str(f.name).lower() == name:
                        return f.wert
                return None

            def block(knoten, name):
                for k in knoten.kinder:
                    if k.art != "feld" and str(k.name).lower() == name:
                        return k
                return None

            def vek(wert, n):
                if isinstance(wert, list) and len(wert) >= n:
                    try:
                        return [float(x) for x in wert[:n]]
                    except (TypeError, ValueError):
                        return None
                return None

            def klasse_von(knoten):
                w = feld(knoten, "namecla")
                if not w:
                    b = block(knoten, "class")
                    if b is not None:
                        w = feld(b, "namecla")
                return str(w or "").strip().lower()

            def translation_von(knoten):
                t = vek(feld(knoten, "translation"), 3)
                if t is None:
                    b = block(knoten, "localcs")
                    if b is not None:
                        t = vek(feld(b, "translation"), 3)
                return t or [0.0, 0.0, 0.0]

            def geh(knoten, versatz, spawner, tiefe):
                if tiefe > 6:
                    return
                for k in knoten.kinder:
                    if k.art == "feld":
                        continue
                    if not str(k.name).lower().startswith("child"):
                        continue
                    t = translation_von(k)
                    ort = [versatz[i] + t[i] for i in range(3)]
                    kl = klasse_von(k)
                    if kl == "nod_fx_light":
                        vis = block(k, "visual")
                        rgb = vek(feld(vis, "rgb"), 3) if vis else None
                        rw = vek(feld(vis, "range"), 2) if vis else None
                        aus.append({
                            "versatz": ort,
                            "rgb": rgb or [1.0, 1.0, 1.0],
                            "range": rw or [0.0, 100.0],
                            "blinkend": bool(spawner),
                        })
                    # Weiter absteigen -- beim Spawner haengt das
                    # Licht als Vorlagen-Kind eine Ebene tiefer.
                    # Drehungen werden wie in _osd_teile() NICHT
                    # verkettet (in allen geprueften Faellen 0).
                    geh(k, ort, spawner or kl == "nod_fx_spawn",
                        tiefe + 1)

            for w in wurzeln:
                geh(w, [0.0, 0.0, 0.0], False, 0)

        self._osd_speicher[schluessel] = aus
        return aus

    def _mesh_zu_osd(self, projekt, osd_verweis):
        """OSD-Verweis -> Meshpfad. Ueber [visual] namemesh."""
        from ..parser import szene as _sz
        from ..parser import desbaum as _db

        if osd_verweis in self._osd_speicher:
            return self._osd_speicher[osd_verweis]
        pfad = _sz.osd_pfad(osd_verweis)
        ergebnis = None
        roh = projekt.bestand.lesen(pfad) if pfad else None
        if roh is not None:
            wurzeln, _ = _db.lies(roh, pfad)
            name = self._feld_suchen(wurzeln, ("namemesh", "m0",
                                               "primarymesh"))
            if name:
                mp = _sz.mesh_pfad(name)
                if mp in projekt.bestand.eintraege:
                    ergebnis = mp
        self._osd_speicher[osd_verweis] = ergebnis
        return ergebnis

    @staticmethod
    def _feld_suchen(wurzeln, namen):
        """Den ersten passenden Feldwert im Baum finden."""
        gesucht = tuple(n.lower() for n in namen)

        def geh(k):
            if k.art == "feld" and k.name.lower() in gesucht:
                if isinstance(k.wert, str) and k.wert.strip():
                    return k.wert.strip()
            for kind in k.kinder:
                t = geh(kind)
                if t:
                    return t
            return None

        for w in wurzeln:
            t = geh(w)
            if t:
                return t
        return None

    def _mesh_geometrie(self, projekt, meshpfad):
        """Ein Mesh laden und auf das Noetige eindampfen."""
        from ..parser import msb as _msb
        roh = projekt.bestand.lesen(meshpfad)
        if roh is None:
            return None
        try:
            m = _msb.lies(roh)
        except Exception:
            return None
        eins = _msb.zusammenfassen(m, 30000)
        if not eins["indizes"]:
            return None
        # uv und gruppen sind schon berechnet -- sie wurden hier
        # frueher weggeworfen, und genau deshalb blieben die Objekte
        # im Level ohne Textur. "gruppen" sagt, welcher Indexbereich
        # welche Textur traegt; ohne das geht es nicht.
        return {"position": eins["position"], "normale": eins["normale"],
                "uv": eins["uv"], "gruppen": eins["gruppen"],
                "indizes": eins["indizes"], "bbox": m.get("bbox")}
    def _wegpunkt_kanten(self):
        """Die Wegpunkt-Verkettung, aufgeloest auf die Szenenobjekte.

        Die Kette steht NIRGENDS als Feld -- weder in den Wegpunkt-
        OSDs noch im Missionsskript. Sie steckt allein im Triggernetz
        des Dekompilats (parser/wegpunkte.py): Game_SetWayPoint-
        Aufrufe, verkettet ueber Erreicht-Flags (hart) und die
        Taskkey-/Ebenen-Folge (weich). Hier werden die Szenennamen
        aus den BindEasy-Bindungen auf die var-Kennungen der
        Szenenobjekte abgebildet -- nur damit kann die Ansicht die
        Linien beim Verschieben nachziehen.
        """
        if self.skriptpfad:
            return {"kanten": [], "hinweise": [
                "Stationsskript -- die Wegpunkt-Kette gehoert zur "
                "Mission, nicht zur Station"]}
        try:
            from ..parser import wegpunkte as _wp
            d = _wp.fuer_level(self.name)
        except Exception as e:
            return {"kanten": [], "hinweise":
                    [f"Wegpunkt-Kanten nicht lesbar: {e}"]}

        hinweise = list(d["hinweise"])
        # Szenenname -> Objekt. Wegpunkte gewinnen bei Namensgleich-
        # heit (Knotennamen kommen mehrfach vor: 349 CreateNode,
        # 258 Namen in 1h1); 3h4 zielt auch auf ein SCHIFF
        # (cra_scout1_1) -- deshalb nicht auf art=wegpunkt filtern.
        nach_name = {}
        for o in (self.szene_objekte or []):
            if not o.vollstaendig:
                continue
            alt = nach_name.get(o.name)
            if alt is None or (o.art == "wegpunkt"
                               and alt.art != "wegpunkt"):
                nach_name[o.name] = o

        kanten, fehlend = [], []
        for k in d["kanten"]:
            a = nach_name.get(k["von"])
            b = nach_name.get(k["nach"])
            if a is None or b is None:
                fehlend.append(k["von"] if a is None else k["nach"])
                continue
            kanten.append({
                "von": {"var": a.var, "name": a.name},
                "nach": {"var": b.var, "name": b.name},
                "art": k["art"],
                "wiederholt": k["wiederholt"],
                "beweglich": k["beweglich"],
                "zeile": k["zeile"],
            })
        if fehlend:
            hinweise.append(
                f"{len(fehlend)} Wegpunkt-Kante(n) ohne Szenenobjekt "
                f"({', '.join(sorted(set(fehlend))[:4])}) -- nicht "
                f"gezeichnet")
        return {"kanten": kanten, "hinweise": hinweise}

    def szene(self, schritt=4, stimmung="neutral", ueberhoehung=1.0,
              projekt=None, mit_meshes=True, hoechstens=90):
        """Das Datenpaket fuer den 3D-Viewer.

        Bewusst schlicht gehalten: ein flaches dict, das sich ohne
        weitere Umformung nach JavaScript schicken laesst.
        """
        t = self.terrain
        b = h = 0
        werte = []
        if t is not None and t.vorhanden:
            b, h, werte = t.raster(schritt)

        skal = t.skalierung() if t else Unsicher(1.0, Unsicher.UNBEKANNT)
        vers = t.versatz() if t else Unsicher(0.0, Unsicher.UNBEKANNT)

        welt = t.welt() if t else {"offset": [0, 0, 0], "scale": [1, 1, 1],
                                   "quelle": "keine"}

        # Die Wegpunkt-Verkettung aus dem Dekompilat -- leere Liste,
        # wenn die Karte keine kennt; der Grund steht in den
        # Hinweisen (ehrlich melden statt still nichts zeichnen).
        # VOR welt(), damit die Endpunkte der Kanten sicher ins
        # Objektfenster kommen (wichtig_namen).
        wk = self._wegpunkt_kanten()
        wk_namen = {k[s]["name"] for k in wk["kanten"]
                    for s in ("von", "nach")}

        # Die Objekte samt Modellen. Ohne Projekt (etwa im Test) nur
        # die Lageangaben ohne Geometrie.
        if projekt is not None:
            welt_daten = self.welt(projekt, hoechstens=hoechstens,
                                   mit_meshes=mit_meshes,
                                   wichtig_namen=wk_namen)
        else:
            welt_daten = {"objekte": self.objekte(), "meshes": {},
                          "hinweise": []}

        return {
            "level": self.anzeigename or self.name,
            "terrain": {
                "breite": b, "hoehe": h, "werte": werte,
                "schritt": schritt,
                "originalbreite": t.breite if t else 0,
                "originalhoehe": t.hoehe if t else 0,
                "skalierung": skal.as_dict(),
                "versatz": vers.as_dict(),
                "welt": welt,
                "ueberhoehung": ueberhoehung,
                "kennzahlen": t.kennzahlen() if t else {},
                "dateien": t.dateien if t else {},
                "kachelung": t.kachelung() if t else {},
            },
            "textur": {
                "farbkarte": self.farbkarte,
                "lightmap": self.lightmap,
                "lightmap_masse": self.lightmap_masse,
                "neigungskarte": self.neigungskarte,
                # Fuer die Materialmischung im Shader:
                "selektormap": self.selektormap,
                "detail": self.detailtexturen,
                "kachelung": self.kachelung,
            },
            # *** Die Wasseroberflaeche. *** waterdepth aus fog.des
            # ist die Hoehe, bis zu der das Terrain reicht: 65535 x
            # Scale[2] / 256 = 1024, und genau 1024 steht dort. Bei
            # mp_13 sind es 512 -- und die Hoehenkarte ist dort auch
            # nur halb ausgesteuert. Die Ebene liegt also GENAU auf
            # dem hoechsten moeglichen Gelaendepunkt.
            "wasser": {
                "tiefe": self.fog.get("waterdepth"),
                "sicht": self.fog.get("viewingdistance"),
                "truebung": self.fog.get("opacity"),
                "quelle": "fog.des" if self.fog else None,
            },
            "stimmung": self.stimmung(stimmung),
            "objekte": welt_daten["objekte"],
            "meshes": welt_daten["meshes"],
            "meshbilder": welt_daten.get("bilder") or {},
            # Die nod_fx_light-Bloecke aus den Objekt-OSDs (662c) --
            # READ-ONLY, der Viewer zeigt sie als eigene Gruppe.
            "nativ_lichter": welt_daten.get("nativ_lichter") or [],
            "wegpunkt_kanten": wk["kanten"],
            "wegpunkt_hinweise": wk["hinweise"],
            "kartenordner": self.kartenordner,
            "terrainordner": self.terrainordner,
            "hinweise": (self.hinweise + welt_daten.get("hinweise", [])
                         + wk["hinweise"]),
            "offen": [
                "Das Hoehenfeld liegt bei 0..4096 (welt = index * "
                "Scale), NICHT bei Offset. An 43 Karten geprueft: alle "
                "Objekte bis auf vier liegen im Raster, der mittlere "
                "Abstand zum Boden betraegt oft unter 40 Einheiten. "
                "WOFUER das Offset-Feld aus terrain.des gut ist, "
                "bleibt offen.",
                "Der Alphakanal von material_s.tga steigt monoton mit "
                "der Gelaendesteigung -- an sechs Karten mit je 64.516 "
                "Punkten gemessen, Korrelation +0,61 bis +0,79, "
                "Wertebereich 0..32. *** GEMESSEN ist nur das. *** "
                "Dass er zwischen material_0 (Sand) und material_1 "
                "(Fels) mischt, ist eine Deutung -- gut passend zu "
                "beiden Bildern, aber nicht an der Engine geprueft. "
                "Ebenso gedeutet: die Modulation mit Faktor 2 "
                "(128 = neutral, kommt in 28-43 % der Punkte vor) und "
                "W0..W3 als Zahl der Wiederholungen. Alles drei ist "
                "im Betrachter abschaltbar.",
            ],
        }





def missionsgraph(projekt, level, hoechstens=400):
    """Das Triggernetz einer Karte, fertig fuer die Anzeige.

    Fuehrt zusammen:
        parser/triggernetz.py   die Knoten und Kanten aus dem Dekompilat
        parser/mtake.py         Text, Sprecher, Stimmung, Bild, Ton

    Die Bilder und Toene werden NICHT eingebettet, sondern als
    aqua:-Verweise mitgegeben -- der Ton einer Karte waere sonst
    ueber ein Megabyte (siehe gui/schema.py).
    """
    from ..parser import triggernetz as _tn
    from ..parser import mtake as _mt

    pfad = _tn.dekompilat_finden(level)
    if not pfad:
        return {"level": level, "knoten": [], "kanten": [],
                "fehler": "kein Dekompilat gefunden. Erwartet wird "
                          f"{level}.lua in mod_docu\\an1_missionen_lua\\"}
    try:
        netz = _tn.lies(pfad, level)
    except Exception as e:
        return {"level": level, "knoten": [], "kanten": [],
                "fehler": f"{os.path.basename(pfad)}: {e}"}

    g = _tn.als_graph(netz, hoechstens=hoechstens)

    funk = _mt.Funk.laden(projekt.bestand, level)
    ohne = 0
    for k in g["knoten"]:
        aufgeloest = []
        for f in k["funk"]:
            a = funk.auf(f["key"], projekt.bestand)
            if not a["gefunden"]:
                ohne += 1
            aufgeloest.append({
                "key": f["key"],
                "text": a["text"],
                "sprecher": a["sprecher"],
                "stimmung": a["stimmung"],
                "person": a["person"],
                # Verweise, keine Daten -- siehe gui/schema.py
                "bild": (f"aqua:/bild/{a['bild']}?h=64"
                         if a["bild"] else None),
                "bild_gross": (f"aqua:/bild/{a['bild_gross']}?h=200"
                               if a.get("bild_gross") else None),
                "ton": f"aqua:/ton/{a['audio']}" if a["audio"] else None,
                "gefunden": a["gefunden"],
            })
        k["funk"] = aufgeloest

    g["funk_kennzahlen"] = funk.kennzahlen()
    if ohne:
        g["hinweise"].append(
            f"{ohne} Funk-Keys stehen in keiner mtake-Tabelle")
    for h in funk.hinweise:
        g["hinweise"].append(h)
    return g


def startbefehl(projekt, karte, fenster=False, protokoll=True):
    """Die Kommandozeile, die diese Karte direkt startet.

    *** DER SCHALTER HEISST -s UND IST SEIT 2001 EINGEBAUT. ***
        Aqua.exe -window -s map\\1n1\\script\\sp_1n1
    Er wurde in diesem Projekt 41 Handoff-Fassungen lang uebersehen,
    weil die Schaltersuche nach -[a-z][a-z0-9_]{1,24} suchte -- das
    verlangt hinter dem Minus mindestens ZWEI Zeichen. -s hat eines.

    Der Skriptpfad steht in dat\\sty\\mission_d.des als
    Name -> EngineScript (30 Kampagnenmissionen). Fuer Karten, die
    dort nicht stehen, wird map\\<karte>\\script\\<karte> gebildet.

    *** FALLSTRICKE, alle am Code belegt: ***
      - Der Trenner ist ein LEERZEICHEN. strtok kennt keine
        Anfuehrungszeichen; ein Pfad mit Leerzeichen geht nicht.
      - Folgt auf -s kein Token, ruft die Exe strcpy(ziel, NULL)
        und stuerzt ab. Deshalb wird hier nie ein leeres -s erzeugt.
      - Unbekannte Schalter sind unschaedlich: WinMain kopiert die
        Zeile per strncpy und sucht nur mit strstr, es gibt keinen
        Validator.

    Gibt (programm, argumente, hinweise) zurueck. *** Diese Funktion
    startet NICHTS *** -- sie stellt nur den Befehl zusammen.
    """
    import os as _os
    from ..parser import mtake as _mt

    hinweise = []
    n = (karte or "").strip().lower()
    if not n:
        return None, [], ["keine Karte angegeben"]

    # 1) Der offizielle Pfad aus mission_d.des
    skript = None
    try:
        for b in _mt._des_bloecke(
                projekt.bestand.lesen("dat/sty/mission_d.des"), "Mission"):
            if str(b.get("name") or "").strip().lower() == n:
                skript = (b.get("enginescript") or "").strip()
                break
    except Exception as e:
        hinweise.append(f"mission_d.des nicht lesbar: {e}")

    # 2) Sonst aus dem Kartennamen bilden
    if not skript:
        skript = f"map\\{n}\\script\\{n}"
        hinweise.append("Pfad aus dem Kartennamen gebildet -- die Karte "
                        "steht nicht in mission_d.des")

    skript = skript.replace("/", "\\")
    if not projekt.bestand.lesen(skript.replace("\\", "/").lower() + ".sco"):
        hinweise.append(f"{skript}.sco liegt nicht im Bestand")

    # Ein sp_-Skript derselben Karte als Rueckfall nennen: fuer
    # Kampagnenskripte OHNE Spielstand ist ungeprueft, ob sie laufen.
    sp = f"map/{n}/script/sp_{n}.sco"
    if sp in projekt.bestand.eintraege:
        hinweise.append(f"Falls die Kampagnenkarte ohne Spielstand hakt: "
                        f"map\\{n}\\script\\sp_{n}")

    if " " in skript:
        hinweise.append("*** Der Pfad enthaelt ein Leerzeichen -- strtok "
                        "bricht ihn dort ab. So geht es nicht. ***")

    exe = _os.path.join(projekt.ordner, "Aqua.exe")
    if not _os.path.isfile(exe):
        hinweise.append(f"Aqua.exe nicht gefunden unter {exe}")

    args = []
    if fenster:
        args.append("-window")
    if protokoll:
        args += ["-logfile", "-logunknown"]
    args += ["-s", skript]
    return exe, args, hinweise


def assetliste(projekt):
    """Alle platzierbaren Assets: OSD-Verweis, Gruppe, Name.

    1.267 OSD-Dateien unter vfx\\osd\\, in 38 Gruppen. Ob eine OSD
    ein Mesh hat, wird hier NICHT geprueft -- das kostet je Datei
    einen Baumdurchlauf. Von 400 Stichproben hatten 392 eines; die
    acht ohne melden sich beim Einfuegen.

    *** Die Tilde gehoert zur gekochten Fassung *** und muss aus dem
    Verweis heraus, sonst findet szene.osd_pfad() nichts.
    """
    aus = []
    for e in projekt.bestand.eintraege:
        if not e.startswith("vfx/osd/") or not e.endswith(".osd"):
            continue
        teile = e.split("/")
        gruppe = teile[2] if len(teile) > 3 else "(oben)"
        datei = teile[-1]
        name = datei.replace("~.osd", "").replace(".osd", "")
        # Der Verweis, wie ihn ein Skript schreibt: ohne vfx/, ohne ~
        verweis = e[len("vfx/"):].replace("~.osd", ".osd")
        aus.append({"verweis": verweis, "gruppe": gruppe,
                    "name": name, "datei": e})
    return sorted(aus, key=lambda x: (x["gruppe"], x["name"]))


def asset_geometrie(projekt, osd_verweis, level=None):
    """Ein einzelnes Asset zum Einfuegen aufbereiten.

    Liefert dasselbe Format wie welt(): meshes, bilder, teile --
    damit die 3D-Ansicht es ohne Sonderweg anzeigen kann.
    """
    lv = level or Level("_asset")
    lv._osd_speicher = {}
    teile = lv._osd_teile(projekt, osd_verweis)
    if not teile:
        return {"fehler": f"kein Mesh in {osd_verweis}"}

    meshes, bilder, fehlend = {}, {}, []
    for t in teile:
        mp = t["mesh"]
        if mp in meshes:
            continue
        g = lv._mesh_geometrie(projekt, mp)
        if g:
            meshes[mp] = g
        else:
            fehlend.append(mp)
    namen = set()
    for g in meshes.values():
        for gr in g.get("gruppen") or []:
            n = (gr.get("textur") or "").strip()
            if n:
                namen.add(n)
    for n in sorted(namen):
        bp = textur.aufloesen(projekt.bestand, n,
                              lv.terrainordner if level else None)
        roh = projekt.bestand.lesen(bp) if bp else None
        uri, art = (textur.objekttextur(roh, groesse=512)
                    if roh else (None, "keine"))
        if uri:
            bilder[n] = {"bild": uri, "alpha": art}

    brauchbar = [t for t in teile if t["mesh"] in meshes]
    return {
        "osd": osd_verweis,
        "mesh": brauchbar[0]["mesh"] if brauchbar else None,
        "teile": brauchbar[1:],
        "meshes": meshes,
        "bilder": bilder,
        "fehlend": fehlend,
    }


def stationen_lesen(projekt):
    """Die Stationen aus dat/sty/station_d.des.

    Gibt eine Liste von dicts: key, name, territorium, tiefe, skript,
    karte. Die Karte wird aus dem Skriptpfad map\\<karte>\\script\\...
    gezogen -- mehrere Stationen teilen sich eine Karte (1n2 hat
    sechs).
    """
    import re as _re
    from ..parser import mtake as _mt

    aus = []
    roh = projekt.bestand.lesen("dat/sty/station_d.des")
    for s in _mt._des_bloecke(roh, "Station"):
        k = _mt._zahl(s.get("key"))
        if k is None:
            continue
        # *** Das Feld heisst enginescript, nicht script. ***
        # In aquanox1_kampagnenstruktur.json steht es unter "script" --
        # das ist die aufbereitete Fassung, nicht der Originalname.
        skript = (s.get("enginescript") or s.get("script") or "")
        skript = skript.replace("/", "\\").replace("\\\\", "\\")
        t = _re.match(r"map\\([^\\]+)\\", skript)
        aus.append({
            "key": k,
            "name": str(s.get("name") or f"Station {k}").strip(),
            "territorium": _mt._zahl(s.get("territory")),
            "tiefe": _mt._zahl(s.get("depth")),
            "skript": skript,
            "karte": t.group(1).lower() if t else None,
        })
    return sorted(aus, key=lambda x: x["key"])


def stationsgraph(projekt, hoechstens=400, station=None):
    """Die Stationsdialoge im selben Format wie missionsgraph().

    Knoten sind die Optionen aus option~.des, Kanten die
    AddOption/SubOption-Verweise. Jeder dialog-Knoten traegt seine
    Gespraechs-Takes als Kacheln -- Text, Sprecher, Stimmung,
    Portrait, Ton.

    *** Haengt NICHT an der gewaehlten Karte. *** Die Dialoge
    gehoeren zur Kampagne, nicht zu einem Level.
    """
    from ..parser import stake as _st

    try:
        netz = _st.lies(projekt.bestand)
    except Exception as e:
        return {"level": "Stationsdialoge", "knoten": [], "kanten": [],
                "fehler": f"{type(e).__name__}: {e}"}

    # Stationsnamen fuer die Kopfzeile der Kacheln
    stationen = {}
    try:
        from ..parser import mtake as _mt
        for s in _mt._des_bloecke(
                projekt.bestand.lesen("dat/sty/station_d.des"), "Station"):
            k = _st._zahl(s.get("key"))
            if k is not None and s.get("name"):
                stationen[k] = str(s["name"]).strip()
    except Exception:
        pass

    _st.takes_anhaengen(netz, projekt.bestand, stationen)
    eb = _st.ebenen(netz)

    alle = sorted(netz.knoten.values(),
                  key=lambda n: (0 if n["funk"] else 1, -n["grad_aus"]))

    # *** Auf eine Station einschraenken. ***
    # Gezeigt werden ihre Dialoge und alles, was unmittelbar daran
    # haengt -- also auch die Mission oder das Briefing, das ein
    # Gespraech freischaltet. Ohne diese Nachbarn waeren die Knoten
    # zusammenhanglos.
    titel = "Stationsdialoge (option~.des + sdialog~.des)"
    if station is not None:
        eigene = set()
        for n in alle:
            d = netz.dialoge.get(n["typkey"])
            if n["art"] == "dialog" and d and d.get("station") == station:
                eigene.add(n["id"])
        nachbarn = set(eigene)
        for k in netz.kanten:
            if k["von"] in eigene:
                nachbarn.add(k["nach"])
            if k["nach"] in eigene:
                nachbarn.add(k["von"])
        alle = [n for n in alle if n["id"] in nachbarn]
        name = stationen.get(station, f"Station {station}")
        titel = f"{name} — Dialoge"
        if not eigene:
            titel = f"{name} — keine Dialoge"

    weggelassen = max(0, len(alle) - hoechstens)
    alle = alle[:hoechstens]
    behalten = {n["id"] for n in alle}

    knoten = []
    for n in alle:
        e = dict(n)
        e["ebene"] = eb.get(n["id"], 0)
        # Der Name steht in der Kopfzeile mit
        if n["name"]:
            e["befehle"] = [n["name"]] + list(n["befehle"])[:6]
        knoten.append(e)

    hinweise = list(netz.hinweise)
    if weggelassen:
        hinweise.append(f"{weggelassen} Knoten nicht gezeigt "
                        f"(Grenze {hoechstens})")
    return {
        "level": titel,
        "quelle": "option~.des",
        "knoten": knoten,
        "kanten": [k for k in netz.kanten
                   if k["von"] in behalten and k["nach"] in behalten],
        "kennzahlen": netz.kennzahlen(),
        "weggelassen": weggelassen,
        "hinweise": hinweise,
    }


def mesh_szene(projekt, pfad, hoechstens=60000):
    """Ein einzelnes .msb oder .msh zur Ansicht aufbereiten.

    Unabhaengig vom Level: zeigt die Geometrie so, wie sie in der
    Datei steht -- um den Ursprung. *** Die Meshes tragen KEINE
    Weltkoordinaten; ihre Lage in der Karte kommt aus dem
    Missionsskript. *** Wer hier etwas sieht, sieht das Modell,
    nicht seine Stelle in der Welt.
    """
    from ..parser import msb as _msb

    roh = projekt.bestand.lesen(pfad)
    if roh is None:
        return {"fehler": f"nicht gefunden: {pfad}"}
    try:
        m = _msb.lies(roh)
    except Exception as e:
        return {"fehler": f"{pfad}: {e}"}

    eins = _msb.zusammenfassen(m, hoechstens)
    k = _msb.kennzahlen(m)
    bb = m.get("bbox") or eins.get("bbox") or [-1, -1, -1, 1, 1, 1]
    weite = max(bb[3] - bb[0], bb[4] - bb[1], bb[5] - bb[2], 1.0)

    # Je Block eine eigene Textur -- bei Levelgeometrie sind es
    # Lightmaps, die an der Karte haengen; sie wird aus dem Pfad
    # erschlossen (map/<level>/lmsh/...).
    lv = None
    teile = pfad.split("/")
    if len(teile) > 2 and teile[0] == "map":
        lv = teile[1]

    bilder = {}          # Texturname -> data:-URI
    fehlend = []
    for name in k["texturen"]:
        bp = textur.aufloesen(projekt.bestand, name, lv)
        if not bp:
            fehlend.append(name)
            continue
        roh_t = projekt.bestand.lesen(bp)
        if roh_t is None:
            fehlend.append(name)
            continue
        # 256 genuegt: die Modelle sind klein, und zwoelf Texturen
        # zu 512 waeren mehrere Megabyte durch runJavaScript.
        uri = textur.als_datenuri(textur.bild_laden(roh_t), 256)
        if uri:
            bilder[name] = {"bild": uri, "datei": bp}
        else:
            fehlend.append(name)

    offen = [
        "Das Modell steht um den Ursprung -- .msb-Dateien tragen "
        "keine Weltkoordinaten. Wo es in der Karte steht, bestimmt "
        "das Missionsskript.",
    ]
    if fehlend:
        offen.append("nicht gefundene Texturen: " + ", ".join(fehlend[:8]))

    return {
        "art": "mesh",
        "pfad": pfad,
        "mesh": eins,
        "kennzahlen": k,
        "bbox": bb,
        "weite": weite,
        "texturen": k["texturen"],
        "bilder": bilder,
        "hinweise": m.get("hinweise", []),
        "offen": offen,
    }

    # ------------------------------------------------------------------