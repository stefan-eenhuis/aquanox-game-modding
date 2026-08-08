"""Das URL-Schema aqua:/ -- Bilder und Ton aus dem Bestand.

*** WARUM NICHT data:-URIs: *** Die Portraits waeren tragbar (alle
84 zusammen 303 KB als WEBP), der Ton nicht. Eine Karte bringt 0,5
bis 1,5 MB Sprachdateien mit, als Base64 ein Drittel mehr. Das
alles durch runJavaScript() zu schicken, nur damit ein Nutzer
vielleicht zwei Zeilen anhoert, waere Verschwendung.

Mit dem Schema holt die Seite, was sie gerade braucht:

    aqua:/bild/<pfad im Bestand>?h=64     ein Bild, auf h Pixel hoch
    aqua:/ton/<pfad im Bestand>           eine Audiodatei roh

*** ZWEI FALLSTRICKE, beide praktisch belegt: ***
  1. registerScheme() MUSS VOR der QApplication-Erzeugung laufen.
     Danach greift es nicht mehr -- ohne Fehlermeldung.
  2. Der QBuffer braucht das Request-Objekt als Elternteil, sonst
     raeumt Python ihn weg, bevor Qt gelesen hat.

READ-ONLY: es wird ausschliesslich gelesen. Nichts wird ausgepackt,
nichts geschrieben, keine Spieldatei angefasst.
"""
import io
import os
import re
import urllib.parse

from PySide6.QtCore import QBuffer, QByteArray, QIODevice
from PySide6.QtWebEngineCore import (
    QWebEngineUrlScheme, QWebEngineUrlSchemeHandler,
)

SCHEMA = b"aqua"


def schema_anmelden():
    """Muss VOR QApplication(...) aufgerufen werden."""
    s = QWebEngineUrlScheme(SCHEMA)
    s.setSyntax(QWebEngineUrlScheme.Syntax.Path)
    s.setFlags(QWebEngineUrlScheme.Flag.SecureScheme
               | QWebEngineUrlScheme.Flag.LocalAccessAllowed
               | QWebEngineUrlScheme.Flag.ContentSecurityPolicyIgnored)
    QWebEngineUrlScheme.registerScheme(s)


class AquaSchema(QWebEngineUrlSchemeHandler):
    """Liefert Bilder und Ton aus dem geoeffneten Projekt."""

    def __init__(self, hole_bestand, melder=None, parent=None):
        super().__init__(parent)
        self._hole_bestand = hole_bestand
        self._melder = melder or (lambda t: None)
        self._bilder = {}          # (pfad, hoehe) -> bytes

    # ------------------------------------------------------------------
    def requestStarted(self, req):
        pfad = req.requestUrl().path()
        frage = req.requestUrl().query()
        try:
            self._bedienen(req, pfad, frage)
        except Exception as e:
            self._melder(f"aqua:{pfad} -- {type(e).__name__}: {e}")
            req.fail(QWebEngineUrlRequestJob_Fehler())

    # ------------------------------------------------------------------
    def _bedienen(self, req, pfad, frage):
        bestand = self._hole_bestand()
        if bestand is None:
            return self._leer(req)

        teile = pfad.lstrip("/").split("/", 1)
        if len(teile) != 2:
            return self._leer(req)
        art, datei = teile[0], urllib.parse.unquote(teile[1])
        datei = datei.replace("\\", "/").lower()

        if art == "bild":
            hoehe = 64
            m = re.search(r"h=(\d+)", frage)
            if m:
                hoehe = max(8, min(512, int(m.group(1))))
            daten = self._bild(bestand, datei, hoehe)
            return self._senden(req, daten, b"image/png")

        if art == "ton":
            roh = bestand.lesen(datei)
            if roh is None:
                return self._leer(req)
            art_mime = (b"audio/mpeg" if datei.endswith(".mp3")
                        else b"audio/wav")
            return self._senden(req, bytes(roh), art_mime)

        return self._leer(req)

    # ------------------------------------------------------------------
    def _bild(self, bestand, datei, hoehe):
        schluessel = (datei, hoehe)
        if schluessel in self._bilder:
            return self._bilder[schluessel]
        from ..parser import textur
        roh = bestand.lesen(datei)
        aus = b""
        if roh is not None:
            im = textur.bild_laden(roh)
            if im is not None:
                try:
                    from PIL import Image
                    if im.mode != "RGBA":
                        im = im.convert("RGBA")
                    if im.size[1] != hoehe:
                        # *** Seitenverhaeltnis wahren. *** Die
                        # Portraits sind quadratisch, andere Bilder
                        # nicht -- pauschal auf ein Quadrat zu
                        # skalieren verzerrt sie.
                        b = max(1, round(im.size[0] * hoehe / im.size[1]))
                        im = im.resize((b, hoehe), Image.Resampling.LANCZOS)
                    puffer = io.BytesIO()
                    im.save(puffer, format="PNG", optimize=False)
                    aus = puffer.getvalue()
                except Exception as e:
                    self._melder(f"Bild {datei}: {e}")
        self._bilder[schluessel] = aus
        return aus

    # ------------------------------------------------------------------
    def _senden(self, req, daten, mime):
        if not daten:
            return self._leer(req)
        puffer = QBuffer(req)          # req als Elternteil -- wichtig
        puffer.setData(QByteArray(daten))
        puffer.open(QIODevice.ReadOnly)
        req.reply(QByteArray(mime), puffer)

    def _leer(self, req):
        puffer = QBuffer(req)
        puffer.setData(QByteArray(b""))
        puffer.open(QIODevice.ReadOnly)
        req.reply(QByteArray(b"application/octet-stream"), puffer)


def QWebEngineUrlRequestJob_Fehler():
    from PySide6.QtWebEngineCore import QWebEngineUrlRequestJob
    return QWebEngineUrlRequestJob.Error.RequestFailed
