"""Texturen laden und fuer die 3D-Ansicht aufbereiten.

Pillow liest die DDS-Dateien des Spiels unmittelbar (geprueft an
map\\1h1\\terrain: material_0/1 256x256, material_3 512x512,
lightmap 2048x2048, radar_color 1024x1024 -- alle als RGBA). Ein
eigener DXT-Dekoder ist deshalb nicht noetig.

*** WAS BELEGT IST UND WAS NICHT ***
material_s.tga ist 256x256 mit 32 bpp. Gemessen an 1h1:
    R 115..210, G 96..191, B 66..130   -- braeunliche Farbtoene,
        ueber die ganze Karte verteilt. Das ist eine FARBKARTE.
    A  laeuft von 0 bis 32.

*** DER ALPHAKANAL IST EIN STUFENLOSER MISCHFAKTOR (0..32). ***
Frueher stand hier, seine Bedeutung sei ungeklaert, und es gebe
einen Widerspruch: "sieben Stufen passen nicht zu drei
material_*.dds". Der Widerspruch war ein Denkfehler -- die sieben
Werte sind einfach die, die in 1h1 VORKOMMEN. Andere Karten haben
andere: 2h1 dreizehn, 4h1 zehn, 6h3 sieben, 1n1 neun. Ein
Mischfaktor braucht keine feste Stufenzahl.

WAS ER MISST, an sechs Karten mit je 64.516 Punkten gemessen --
Steigung des Gelaendes gegen Alphawert:

    Karte   Korrelation   mittlere Steigung bei A=0 .. A=32
    1h1        +0,612          0,05 .. 0,46
    1n1        +0,754          0,06 .. 0,62
    4h1        +0,748          0,06 .. 0,49
    3h1        +0,705          0,04 .. 0,71
    6h3        +0,785          0,05 .. 0,44
    2h1        +0,645          0,08 .. 0,43

Der Anstieg ist in ALLEN sechs Karten ueber ALLE Zwischenstufen
monoton. A = 32 ist der Deckel, alles Steilere faellt dorthin.

*** WOZU die Engine ihn benutzt, ist damit noch nicht bewiesen ***
-- aber die Deutung liegt sehr nahe und wird vom Betrachter
benutzt: A mischt zwischen der Flachtextur material_0 (Sand, feine
Koernung) und der Steiltextur material_1 (geschichteter Fels).
Beide Bilder passen zu dieser Rolle. Die Mischung ist im
Betrachter abschaltbar.

DIE ZWEITE DEUTUNG betrifft die Grundfarbe: (128,128,128) ist mit
28 bis 43 Prozent der haeufigste Wert. Bei einer Modulation
"Endfarbe = Detail * Selektor * 2" waere genau 128 neutral. Das
passt zur Bauart von 2001 (DirectX-Stufe MODULATE2X). Auch das ist
eine Deutung, keine Messung an der Engine.
"""
import base64
import io as _io


def _pillow():
    try:
        from PIL import Image
        return Image
    except ImportError:
        return None


def bild_laden(rohdaten, name=""):
    """Oeffnet Bilddaten mit Pillow. Gibt ein Image oder None."""
    Image = _pillow()
    if Image is None or not rohdaten:
        return None
    try:
        im = Image.open(_io.BytesIO(rohdaten))
        im.load()
        return im
    except Exception:
        return None


def als_datenuri(im, groesse=512, format="PNG"):
    """Verkleinert ein Bild und gibt es als data:-URI zurueck.

    Warum verkleinern: Die Lightmap ist 2048x2048. Als PNG in
    Base64 waeren das mehrere Megabyte, die durch runJavaScript
    muessten. 512 genuegt fuer eine Uebersicht bei weitem.
    """
    if im is None:
        return None
    Image = _pillow()
    try:
        if im.mode not in ("RGB", "RGBA"):
            im = im.convert("RGBA")
        if max(im.size) > groesse:
            im = im.resize((groesse, groesse), Image.Resampling.BILINEAR)
        puffer = _io.BytesIO()
        im.save(puffer, format=format, optimize=False)
        roh = puffer.getvalue()
        art = "image/png" if format == "PNG" else "image/jpeg"
        return f"data:{art};base64," + base64.b64encode(roh).decode("ascii")
    except Exception:
        return None


def farbkarte(rohdaten_material_s, groesse=512):
    """Die RGB-Kanaele von material_s.tga als Farbtextur.

    Der Alphakanal wird VERWORFEN -- seine Bedeutung ist ungeklaert
    (siehe Modulkopf). Ohne dieses Verwerfen wuerde three.js die
    Flaechen durchsichtig zeichnen, weil A dort hoechstens 32 von
    255 betraegt.
    """
    im = bild_laden(rohdaten_material_s)
    if im is None:
        return None
    try:
        if im.mode == "RGBA":
            im = im.convert("RGB")          # Alpha bewusst weg
        return als_datenuri(im, groesse)
    except Exception:
        return None


def neigungskarte(rohdaten_material_s, groesse=512):
    """Der Alphakanal von material_s.tga als Falschfarbe.

    *** WAS DER ALPHAKANAL IST -- an drei Karten gemessen: ***
    Er steigt monoton mit der RAUHEIT des Gelaendes. Je
    Selektorpunkt (er deckt 4 x 4 Hoehenpunkte) wurde die Spanne
    zwischen hoechstem und niedrigstem Hoehenwert gebildet:

        1h1   A=0 -> 140    A=13 -> 393   A=25 -> 645   A=32 -> 1898
        2h1   A=0 -> 313    A=13 -> 517   A=24 -> 832   A=32 -> 1817
        3h1   A=0 -> 127    A=13 -> 743   A=26 -> 1266  A=32 -> 2670

    Bei allen dreien steigt die Rauheit ohne Ausnahme mit A, und
    A=32 ist der Deckel (alles Steilere faellt dorthin). Die
    Zwischenstufen sind je Karte verschieden -- 1h1 kennt sieben,
    2h1 dreizehn, 3h1 neun -- also ist der Wert je Karte auf ihren
    eigenen Wertebereich normiert.

    *** Damit ist belegt, WAS er misst. Wozu die Engine ihn
    benutzt, ist NICHT belegt. *** Naheliegend waere die Auswahl
    oder Mischung der Detailtexturen (flach = Sand oder Bewuchs,
    steil = Fels), aber das ist eine Vermutung.

    Die Darstellung ist eine Falschfarbe von blau (flach) ueber
    gruen nach rot (steil) -- ausdruecklich eine Hilfsansicht,
    kein Bild aus dem Spiel.
    """
    im = bild_laden(rohdaten_material_s)
    Image = _pillow()
    if im is None or Image is None:
        return None
    try:
        if im.mode != "RGBA":
            return None
        b, h = im.size
        alpha = im.split()[3]
        aus = Image.new("RGB", (b, h))
        px_a = alpha.load()
        px_z = aus.load()
        for y in range(h):
            for x in range(b):
                a = px_a[x, y]
                t = min(1.0, a / 32.0)
                if t < 0.5:                      # blau -> gruen
                    f = t * 2.0
                    px_z[x, y] = (0, int(80 + 175 * f), int(255 - 175 * f))
                else:                            # gruen -> rot
                    f = (t - 0.5) * 2.0
                    px_z[x, y] = (int(255 * f), int(255 - 155 * f), 0)
        return als_datenuri(aus, groesse)
    except Exception:
        return None


def detailtextur(rohdaten, groesse=256):
    """Eine material_N.dds als kachelbare Farbtextur.

    Kleiner als die Farbkarte, weil sie gekachelt wird -- 256 Pixel
    genuegen, und die Datenmenge geht durch runJavaScript().
    """
    im = bild_laden(rohdaten)
    if im is None:
        return None
    try:
        if im.mode != "RGB":
            im = im.convert("RGB")
        return als_datenuri(im, groesse)
    except Exception:
        return None


def objekttextur(rohdaten, groesse=512):
    """Eine Objekttextur MIT Alphakanal, samt Angabe seiner Art.

    Gibt (data-URI, art) zurueck. art ist eine von drei:

        "keine"  voll deckend -- der Alphakanal ist ueberall 250+
                 oder fehlt ganz
        "hart"   Freisteller: es gibt durchsichtige Stellen, aber so
                 gut wie keine Zwischenwerte. Pflanzen, Gitter,
                 Antennen. *** Dafuer genuegt alphaTest ***, und das
                 ist auch das Richtige: keine Sortierprobleme.
        "weich"  echte Zwischenwerte -- Fenster, Glas. Braucht
                 richtige Transparenz und damit Sortierung.

    *** GEMESSEN an 154 Texturen aus 1h1, 1n1 und 4h1: ***
        139 voll deckend
         10 hart freigestellt (org_plant04b ist zu 78 % durchsichtig,
            bei 0,0 % Zwischenwerten -- ein sauberer Freisteller)
          5 weich (windows_w und Geschwister, 67 % Zwischenwerte)

    Wer den Alphakanal wegwirft, bekommt schwarze Rechtecke um jede
    Pflanze -- genau das war vorher der Fall.
    """
    im = bild_laden(rohdaten)
    Image = _pillow()
    if im is None or Image is None:
        return None, "keine"
    try:
        if im.mode != "RGBA":
            return als_datenuri(im.convert("RGB"), groesse), "keine"
        werte = im.split()[3].getdata()
        n = len(werte)
        durchsichtig = sum(1 for v in werte if v < 250)
        if not durchsichtig:
            return als_datenuri(im.convert("RGB"), groesse), "keine"
        zwischen = sum(1 for v in werte if 8 < v < 247)
        art = "weich" if zwischen > n * 0.01 else "hart"
        return als_datenuri(im, groesse), art
    except Exception:
        return None, "keine"


def selektormap(rohdaten_material_s, groesse=256):
    """material_s.tga MIT Alphakanal, fuer die Mischung im Shader.

    Anders als farbkarte(): hier bleibt A erhalten, denn er ist der
    Mischfaktor zwischen Flach- und Steiltextur (siehe Modulkopf).
    A wird dabei von 0..32 auf 0..255 gestreckt, damit der Shader
    einfach 0..1 lesen kann und keine Magie kennen muss.

    *** Die Streckung mit 255/32 ist eine Setzung. *** Belegt ist
    nur, dass 32 der hoechste vorkommende Wert ist (an sechs Karten
    geprueft, in allen ist 32 der Deckel).
    """
    im = bild_laden(rohdaten_material_s)
    Image = _pillow()
    if im is None or Image is None:
        return None
    try:
        if im.mode != "RGBA":
            im = im.convert("RGBA")
        r, g, b, a = im.split()
        a = a.point(lambda v: min(255, int(v * 255 / 32)))
        return als_datenuri(Image.merge("RGBA", (r, g, b, a)), groesse)
    except Exception:
        return None


def kachelung(rohdaten_material_des):
    """Die Faktoren W0..W3 aus material.des.

    Die Datei ist Klartext und kurz:
        [Wrapping] { W0 = 110.0  W1 = 32.0  W2 = 256.0  W3 = 8.0 }

    *** WAS DIE ZAHL BEDEUTET, IST NICHT BELEGT. *** Der Betrachter
    liest sie als "so oft wiederholt sich die Textur ueber die
    ganze Karte" -- bei W0 = 110 und 4096 Welteinheiten waere eine
    Kachel also rund 37 Einheiten gross. Das sieht plausibel aus,
    ist aber nicht an der Engine geprueft. Andere Deutung waere
    "Welteinheiten je Kachel"; dann waere W0 = 110 eine 110
    Einheiten grosse Kachel. Deshalb ist der Faktor im Betrachter
    einstellbar.
    """
    aus = {}
    if not rohdaten_material_des:
        return aus
    try:
        text = rohdaten_material_des.decode("latin-1", "replace")
    except Exception:
        return aus
    import re as _re
    for m in _re.finditer(r"\bW(\d)\s*=\s*([-\d.]+)", text):
        try:
            aus[int(m.group(1))] = float(m.group(2))
        except ValueError:
            pass
    return aus


def aufloesen(bestand, name, level=None):
    """Einen Texturnamen aus einem Mesh in einen Dateipfad aufloesen.

    *** GEMESSEN: *** Meshes nennen ihre Texturen OHNE Endung und
    ohne Ordner, z.B. "ent_jumpstar_0", "windows_w", "lightmap0".
    Die Dateien liegen:
        vfx\\tex\\<name>.dds            die Objekttexturen
        map\\<level>\\ltex\\<name>.dds   die Lightmaps der Levelgeometrie
    Geprueft an ent_jumpstar_0, windows_w, atl_wblock3_2,
    atl_geb_detail01 (alle in vfx\\tex) und lightmap0 (26 Treffer,
    je einer pro Karte).

    *** Deshalb muss die Karte bekannt sein: "lightmap0" allein ist
    mehrdeutig. *** Ohne Karte wird die erste gefundene genommen --
    das ist dann womoeglich die falsche.

    Gibt den Pfad zurueck oder None.
    """
    if not name:
        return None
    n = name.strip().lower()
    kandidaten = []
    if level:
        kandidaten.append(f"map/{level}/ltex/{n}.dds")
        kandidaten.append(f"map/{level}/terrain/{n}.dds")
        kandidaten.append(f"map/{level}/tex/{n}.dds")
    kandidaten += [f"vfx/tex/{n}.dds", f"vfx/tex/{n}.tga",
                   f"vfx/tex/fx/{n}.dds", f"vfx/tex/fx/{n}.tga"]
    for k in kandidaten:
        if k in bestand.eintraege:
            return k
    # Zuletzt der Breitensuche-Weg: irgendwo im Bestand.
    for pfad in bestand.eintraege:
        datei = pfad.rsplit("/", 1)[-1]
        if datei.rsplit(".", 1)[0] == n and datei.endswith((".dds", ".tga")):
            return pfad
    return None


def info(rohdaten):
    """Kurzbeschreibung fuer den Asset-Browser."""
    im = bild_laden(rohdaten)
    if im is None:
        return None
    return {"breite": im.size[0], "hoehe": im.size[1],
            "modus": im.mode, "format": im.format}
