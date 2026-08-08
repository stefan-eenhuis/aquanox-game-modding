"""TGA lesen -- fuer die Hoehenkarte und die Selektormap.

WARUM EIGENER CODE UND NICHT PILLOW: Die Hoehenkarte ist 1025x1025 in
24 bpp unkomprimiert; davon wird nur EIN Kanal gebraucht. Ein eigener
Leser spart das Umkopieren ganzer RGB-Bilder und kommt mit den
Eigenheiten der Originale zurecht (TGA-2.0-Footer, Zeilenrichtung).
Pillow wird als Rueckfall benutzt, wenn ein Bild komprimiert ist.

Belegt in terrain_write.py: hmap.tga ist Typ 2 (unkomprimiert, RGB),
24 bpp, die Werte liegen als BGR mit drei gleichen Bytes vor.
"""
import struct


class TgaFehler(Exception):
    pass


def kopf_lesen(daten):
    """Liest den TGA-Kopf. Gibt ein dict zurueck."""
    if len(daten) < 18:
        raise TgaFehler("Datei zu kurz fuer einen TGA-Kopf")
    (idlen, cmaptyp, bildtyp, cmapstart, cmaplen, cmapbits,
     xoff, yoff, breite, hoehe, bpp, deskriptor) = struct.unpack(
        "<BBBHHBHHHHBB", daten[:18])
    return {
        "idlen": idlen, "cmaptyp": cmaptyp, "bildtyp": bildtyp,
        "cmaplen": cmaplen, "cmapbits": cmapbits,
        "breite": breite, "hoehe": hoehe, "bpp": bpp,
        "deskriptor": deskriptor,
        # Bit 5 des Deskriptors: 0 = unterste Zeile zuerst
        "oben_zuerst": bool(deskriptor & 0x20),
        "datenanfang": 18 + idlen + (cmaplen * (cmapbits // 8 or 1)
                                     if cmaptyp else 0),
    }


def hoehenfeld(daten):
    """Liest hmap.tga und gibt (breite, hoehe, werte) zurueck.

    *** DIE HOEHEN SIND 16 BIT, AUF ZWEI KANAELE VERTEILT. ***
    An map\\1h1\\terrain\\hmap.tga gemessen (1025 x 1025, 24 bpp,
    Bildtyp 2, unkomprimiert):
        Byte 0 (Blau)  ist IMMER 0        -- ueber die ganze Datei
        Byte 1 (Gruen) 0..255, 252 Stufen -- das UNTERE Byte
        Byte 2 (Rot)   4..242             -- das OBERE Byte
    also  hoehe = (rot << 8) | gruen.

    Damit sind Werte von 0 bis 65535 moeglich; gemessen wurden rund
    1.000 bis 62.000. Eine reine Graustufenlesung (nur ein Kanal)
    ergibt lauter Nullen -- daran ist der Fehler zu erkennen.

    HINWEIS ZU terrain_write.py: Jenes Werkzeug schreibt drei GLEICHE
    Bytes je Punkt (8-Bit-Graustufe). Das entspricht NICHT dem Aufbau
    der Originale und ergibt hier eine Karte mit hoechstens 255
    Hoehenstufen. Fuer den Betrachter ist das unerheblich -- beide
    Fassungen werden gelesen -- fuer einen Schreiber aber nicht.

    Zeile 0 des Ergebnisses ist die OBERSTE Zeile.
    Rueckgabe: Liste von int (0..65535), nicht bytearray.
    """
    k = kopf_lesen(daten)
    if k["bildtyp"] not in (2, 3):
        raise TgaFehler(f"Bildtyp {k['bildtyp']} wird nicht gelesen "
                        f"(nur 2 = RGB und 3 = Graustufen, je unkomprimiert)")
    b, h, bpp = k["breite"], k["hoehe"], k["bpp"]
    n = bpp // 8
    if n not in (1, 2, 3, 4):
        raise TgaFehler(f"{bpp} bpp wird nicht gelesen")
    anfang = k["datenanfang"]
    if len(daten) < anfang + b * h * n:
        raise TgaFehler(f"Datei zu kurz: {len(daten)} Byte, "
                        f"{anfang + b * h * n} erwartet")

    werte = [0] * (b * h)
    for y in range(h):
        # TGA speichert von unten nach oben, sofern Bit 5 nicht gesetzt ist
        quelle_y = y if k["oben_zuerst"] else (h - 1 - y)
        zeile = anfang + quelle_y * b * n
        ziel = y * b
        if n == 1:
            for x in range(b):
                werte[ziel + x] = daten[zeile + x]
        else:
            for x in range(b):
                p = zeile + x * n
                # BGR: [0]=Blau, [1]=Gruen (low), [2]=Rot (high)
                werte[ziel + x] = (daten[p + 2] << 8) | daten[p + 1]
    return b, h, werte


def rgba(daten):
    """Liest ein TGA als RGBA-bytearray. Fuer die Selektormap.

    Gibt (breite, hoehe, bytearray) mit 4 Byte je Punkt zurueck.
    """
    k = kopf_lesen(daten)
    if k["bildtyp"] not in (2, 3):
        raise TgaFehler(f"Bildtyp {k['bildtyp']} wird nicht gelesen")
    b, h, bpp = k["breite"], k["hoehe"], k["bpp"]
    n = bpp // 8
    anfang = k["datenanfang"]
    if len(daten) < anfang + b * h * n:
        raise TgaFehler("Datei zu kurz")
    aus = bytearray(b * h * 4)
    for y in range(h):
        quelle_y = y if k["oben_zuerst"] else (h - 1 - y)
        zeile = anfang + quelle_y * b * n
        for x in range(b):
            p = zeile + x * n
            z = (y * b + x) * 4
            if n == 1:
                g = daten[p]
                aus[z:z + 4] = bytes((g, g, g, 255))
            else:
                bl, gr, ro = daten[p], daten[p + 1], daten[p + 2]
                al = daten[p + 3] if n == 4 else 255
                aus[z:z + 4] = bytes((ro, gr, bl, al))
    return b, h, aus


def info(daten):
    """Kurzbeschreibung fuer den Asset-Browser, ohne die Bilddaten zu lesen."""
    try:
        k = kopf_lesen(daten)
    except TgaFehler as e:
        return {"fehler": str(e)}
    typen = {0: "leer", 1: "Palette", 2: "RGB", 3: "Graustufen",
             9: "Palette RLE", 10: "RGB RLE", 11: "Graustufen RLE"}
    return {
        "breite": k["breite"], "hoehe": k["hoehe"], "bpp": k["bpp"],
        "art": typen.get(k["bildtyp"], f"Typ {k['bildtyp']}"),
        "komprimiert": k["bildtyp"] >= 9,
        "oben_zuerst": k["oben_zuerst"],
    }
