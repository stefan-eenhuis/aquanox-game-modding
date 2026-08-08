"""Das Hauptfenster: Baum links, 3D-Ansicht rechts, Meldungen unten."""
import json
import os

from PySide6.QtCore import Qt, QUrl, QTimer
from PySide6.QtGui import QAction, QKeySequence
from PySide6.QtWidgets import (
    QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QSplitter, QTreeWidget,
    QTreeWidgetItem, QTabWidget, QPlainTextEdit, QLabel, QFileDialog,
    QComboBox, QCheckBox, QDoubleSpinBox, QPushButton, QLineEdit,
    QTableWidget, QTableWidgetItem, QStatusBar, QHeaderView, QMessageBox,
    QSlider, QTextBrowser,
)
from PySide6.QtWebEngineWidgets import QWebEngineView
from PySide6.QtWebEngineCore import QWebEnginePage, QWebEngineSettings

from ..modell import Projekt, Level
from ..modell.level import STIMMUNGEN


class Seite(QWebEnginePage):
    """Leitet die Meldungen der 3D-Ansicht ins Protokoll.

    Ohne das bleiben JavaScript-Fehler unsichtbar -- und die
    Ansicht ist dann einfach schwarz, ohne Hinweis worauf.
    """

    def __init__(self, melder, parent=None):
        super().__init__(parent)
        self._melder = melder

    def javaScriptConsoleMessage(self, stufe, text, zeile, quelle):
        # stufe ist ein Qt-Aufzaehlungswert, kein int -- int() darauf
        # wirft einen TypeError und verschluckt die Meldung.
        s = str(stufe).rsplit(".", 1)[-1]
        art = {"InfoMessageLevel": "JS",
               "WarningMessageLevel": "JS-WARNUNG",
               "ErrorMessageLevel": "JS-FEHLER"}.get(s, "JS")
        datei = str(quelle).rsplit("/", 1)[-1]
        self._melder(f"[{art}] {text}  ({datei}:{zeile})")


WEB = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))), "web")


class Hauptfenster(QMainWindow):

    def __init__(self):
        super().__init__()
        self.projekt = None
        self.level = None
        self.meta = None               # Wissensdatenbank aus mod_docu
        self.setWindowTitle("AquaNox-1-Toolkit â€” Ansicht (read-only)")
        self.resize(1500, 900)
        self._aufbauen()

    # ------------------------------------------------------------------
    def _aufbauen(self):
        self.setStatusBar(QStatusBar())
        self.statusBar().showMessage("Kein Projekt geoeffnet")

        m = self.menuBar().addMenu("&Projekt")
        a = QAction("Ordner &oeffnen ...", self)
        a.setShortcut(QKeySequence.Open)
        a.triggered.connect(self.ordner_oeffnen)
        m.addAction(a)
        m.addSeparator()
        b = QAction("&Beenden", self)
        b.triggered.connect(self.close)
        m.addAction(b)

        h = self.menuBar().addMenu("&Hilfe")
        i = QAction("Was dieses Programm (nicht) tut", self)
        i.triggered.connect(self._hinweis_readonly)
        h.addAction(i)

        teiler = QSplitter(Qt.Horizontal)
        teiler.addWidget(self._links())
        teiler.addWidget(self._rechts())
        teiler.setStretchFactor(0, 0)
        teiler.setStretchFactor(1, 1)
        teiler.setSizes([420, 1080])
        self.setCentralWidget(teiler)

    # ------------------------------------------------------------------
    def _links(self):
        w = QWidget()
        lay = QVBoxLayout(w)
        lay.setContentsMargins(6, 6, 3, 6)

        knopf = QPushButton("AquaNox-Ordner oeffnen ...")
        knopf.clicked.connect(self.ordner_oeffnen)
        lay.addWidget(knopf)

        self.reiter = QTabWidget()

        # --- Karten
        self.karten = QTreeWidget()
        self.karten.setHeaderLabels(["Karte", "Mission", "Terrain",
                                     "Skripte"])
        self.karten.setColumnWidth(0, 90)
        self.karten.setColumnWidth(1, 170)
        self.karten.setColumnWidth(2, 60)
        self.karten.itemDoubleClicked.connect(self._karte_gewaehlt)
        self.reiter.addTab(self.karten, "Karten")

        # --- Assets
        assets = QWidget()
        al = QVBoxLayout(assets)
        al.setContentsMargins(0, 4, 0, 0)
        zeile = QHBoxLayout()
        self.kat = QComboBox()
        self.kat.addItems(["alle", "map", "script", "des", "textur",
                           "mesh", "audio", "sonstige"])
        self.kat.currentTextChanged.connect(self._assets_fuellen)
        self.suche = QLineEdit()
        self.suche.setPlaceholderText("Pfad enthaelt ...")
        self.suche.returnPressed.connect(self._assets_fuellen)
        zeile.addWidget(self.kat)
        zeile.addWidget(self.suche, 1)
        al.addLayout(zeile)
        self.tabelle = QTableWidget(0, 5)
        self.tabelle.setHorizontalHeaderLabels(
            ["Pfad", "Quelle", "Groesse", "Typ", "verdeckt"])
        self.tabelle.horizontalHeader().setSectionResizeMode(
            0, QHeaderView.Stretch)
        self.tabelle.setEditTriggers(QTableWidget.NoEditTriggers)
        self.tabelle.cellDoubleClicked.connect(self._asset_geoeffnet)
        al.addWidget(self.tabelle)
        self.reiter.addTab(assets, "Assets")

        lay.addWidget(self.reiter, 1)

        # --- Regler fuer die Ansicht
        st = QWidget()
        sl = QVBoxLayout(st)
        sl.setContentsMargins(0, 4, 0, 0)

        z1 = QHBoxLayout()
        z1.addWidget(QLabel("Stimmung"))
        self.stimmung = QComboBox()
        self.stimmung.addItems(list(STIMMUNGEN))
        self.stimmung.currentTextChanged.connect(lambda _: self._neu_zeichnen())
        z1.addWidget(self.stimmung, 1)
        sl.addLayout(z1)

        z2 = QHBoxLayout()
        z2.addWidget(QLabel("Ueberhoehung"))
        self.ueber = QDoubleSpinBox()
        self.ueber.setRange(0.05, 20.0)
        self.ueber.setSingleStep(0.25)
        self.ueber.setValue(1.0)
        self.ueber.valueChanged.connect(lambda _: self._neu_zeichnen())
        z2.addWidget(self.ueber, 1)
        sl.addLayout(z2)

        z3 = QHBoxLayout()
        z3.addWidget(QLabel("Raster (jeder n-te Punkt)"))
        self.schritt = QComboBox()
        self.schritt.addItems(["2", "4", "8", "16"])
        self.schritt.setCurrentText("4")
        self.schritt.currentTextChanged.connect(lambda _: self._neu_zeichnen())
        z3.addWidget(self.schritt, 1)
        sl.addLayout(z3)

        self.draht = QCheckBox("Drahtgitter")
        self.draht.toggled.connect(
            lambda an: self._js(f"window.aqtk.drahtgitter({str(an).lower()})"))
        sl.addWidget(self.draht)

        z4 = QHBoxLayout()
        z4.addWidget(QLabel("Oberflaeche"))
        self.textur = QComboBox()
        # Die Falschfarbe zeigt den Alphakanal von material_s.tga --
        # er misst die Gelaenderauheit (an drei Karten belegt).
        self.textur.addItems(["Farbkarte", "Neigung (Falschfarbe)",
                              "nur Hoehe"])
        self.textur.currentIndexChanged.connect(self._textur_wechseln)
        z4.addWidget(self.textur, 1)
        sl.addLayout(z4)

        self.licht = QCheckBox("Lightmap (lightmap.dds)")
        self.licht.setChecked(True)
        self.licht.toggled.connect(
            lambda an: self._js(f"window.aqtk.licht({str(an).lower()})"))
        sl.addWidget(self.licht)

        self.wasser = QCheckBox("Wasseroberflaeche (waterdepth)")
        self.wasser.setChecked(True)
        self.wasser.toggled.connect(
            lambda an: self._js(f"window.aqtk.wasser({str(bool(an)).lower()})"))
        sl.addWidget(self.wasser)


        self.meshtextur = QCheckBox("Objekttexturen (vfx/tex/*.dds)")
        self.meshtextur.setChecked(True)
        self.meshtextur.toggled.connect(
            lambda an: self._js(
                f"window.aqtk.meshtextur({str(bool(an)).lower()})"))
        sl.addWidget(self.meshtextur)

        # Die Materialschichten des Spiels (material_0/1/3.dds), nach
        # dem Alphakanal der Selektormap gemischt. Siehe
        # parser/textur.py -- gemessen ist, dass A mit der Steigung
        # steigt; die Mischung selbst ist eine Deutung.
        self.detail = QCheckBox("Materialschichten (material_*.dds)")
        self.detail.setChecked(True)
        self.detail.toggled.connect(self._detail_wechseln)
        sl.addWidget(self.detail)

        z6 = QHBoxLayout()
        z6.addWidget(QLabel("Staerke"))
        self.detailstaerke = QSlider(Qt.Horizontal)
        self.detailstaerke.setRange(0, 100)
        self.detailstaerke.setValue(100)
        self.detailstaerke.valueChanged.connect(
            lambda _: self._detail_wechseln(self.detail.isChecked()))
        z6.addWidget(self.detailstaerke, 1)
        sl.addLayout(z6)

        # *** Nebel ist AUS, sonst sieht man fast nichts. ***
        # fog.des nennt fuer 1h1 eine Sichtweite von 500 -- im Spiel
        # richtig, fuer eine Uebersicht viel zu wenig: die Karte ist
        # 8192 Einheiten breit.
        self.nebel = QCheckBox("Nebel (aus fog.des)")
        self.nebel.setChecked(False)
        self.nebel.toggled.connect(self._nebel_wechseln)
        sl.addWidget(self.nebel)

        z5 = QHBoxLayout()
        z5.addWidget(QLabel("Sichtweite"))
        self.sicht = QComboBox()
        self.sicht.addItems(["aus fog.des", "1000", "2000", "4000", "8000"])
        self.sicht.currentTextChanged.connect(
            lambda _: self._nebel_wechseln(self.nebel.isChecked()))
        z5.addWidget(self.sicht, 1)
        sl.addLayout(z5)

        knopf_ueb = QPushButton("Ganzes Level zeigen")
        knopf_ueb.clicked.connect(
            lambda: self._js("window.aqtk.uebersicht()"))
        sl.addWidget(knopf_ueb)

        lay.addWidget(st)
        return w

    def _rechts(self):
        w = QWidget()
        lay = QVBoxLayout(w)
        lay.setContentsMargins(3, 6, 6, 6)

        self.blick = QWebEngineView()
        self.blick.setPage(Seite(self._sag, self.blick))
        # Die Ansicht liegt als Datei vor, three.js wird als ES-Modul
        # geladen. Chromium behandelt jede file://-Datei als eigenen
        # Ursprung und blockiert den Modulimport -- diese beiden
        # Einstellungen heben das fuer lokale Dateien auf.
        e = self.blick.settings()
        e.setAttribute(QWebEngineSettings.LocalContentCanAccessFileUrls, True)
        e.setAttribute(QWebEngineSettings.LocalContentCanAccessRemoteUrls, True)
        self.blick.load(QUrl.fromLocalFile(os.path.join(WEB, "viewer.html")))

        # --- Der Missionsgraph als zweite Seite neben der 3D-Ansicht
        self.graph = QWebEngineView()
        self.graph.setPage(Seite(self._sag, self.graph))
        ge = self.graph.settings()
        ge.setAttribute(QWebEngineSettings.LocalContentCanAccessFileUrls, True)
        ge.setAttribute(QWebEngineSettings.LocalContentCanAccessRemoteUrls, True)
        # Ohne das lehnt Chromium jedes play() ab, das nicht aus einem
        # echten Mausklick kommt -- und unsere Knoepfe schicken den
        # Klick durch einen eigenen Handler.
        ge.setAttribute(
            QWebEngineSettings.PlaybackRequiresUserGesture, False)
        # Der Schema-Handler holt Portraits und Ton aus dem Bestand.
        from .schema import AquaSchema, SCHEMA
        self._aqua = AquaSchema(
            lambda: self.projekt.bestand if self.projekt else None,
            self._sag, self.graph)
        for seite in (self.graph.page(), self.blick.page()):
            seite.profile().installUrlSchemeHandler(SCHEMA, self._aqua)
        self.graph.load(QUrl.fromLocalFile(os.path.join(WEB, "graph.html")))

        self.ansichten = QTabWidget()
        self.ansichten.addTab(self.blick, "3D-Ansicht")
        self.graphreiter = self.ansichten.addTab(self.graph, "Missionsgraph")
        self.ansichten.currentChanged.connect(self._ansicht_gewechselt)
        lay.addWidget(self.ansichten, 3)

        unten = QTabWidget()
        self.meldungen = QPlainTextEdit()
        self.meldungen.setReadOnly(True)
        unten.addTab(self.meldungen, "Meldungen")

        self.skriptsicht = QPlainTextEdit()
        self.skriptsicht.setReadOnly(True)
        unten.addTab(self.skriptsicht, "Skript")

        self.terrainsicht = QPlainTextEdit()
        self.terrainsicht.setReadOnly(True)
        unten.addTab(self.terrainsicht, "Terrain")

        # --- Objekte des geladenen Levels; Klick fliegt hin.
        self.objektliste = QTreeWidget()
        self.objektliste.setHeaderLabels(["Knoten", "Modell", "Position", "Art"])
        self.objektliste.setColumnWidth(0, 230)
        self.objektliste.setColumnWidth(1, 210)
        self.objektliste.setColumnWidth(2, 150)
        self.objektliste.setSortingEnabled(True)
        self.objektliste.itemClicked.connect(self._zu_objekt)
        self.objektliste.itemActivated.connect(self._zu_objekt)
        self.objektreiter = unten.addTab(self.objektliste, "Objekte")

        # --- Was wir ueber dieses Level wissen (JSON-Datenbank)
        self.levelinfo = QTextBrowser()
        self.levelinfo.setOpenExternalLinks(False)
        self.levelinfo.setHtml(
            "<p style='color:#888'>Noch keine Karte geladen.</p>")
        self.inforeiter = unten.addTab(self.levelinfo, "Level-Info")

        # --- .des/.osd als Baum
        db = QWidget()
        dl = QVBoxLayout(db)
        dl.setContentsMargins(0, 4, 0, 0)
        kopf = QHBoxLayout()
        self.desdatei = QLineEdit()
        self.desdatei.setPlaceholderText(
            "Pfad einer .des/.osd, z.B. dat/sty/mission_d.des  "
            "â€” oder im Asset-Browser doppelklicken")
        self.desdatei.returnPressed.connect(self._des_zeigen)
        knopf = QPushButton("anzeigen")
        knopf.clicked.connect(self._des_zeigen)
        kopf.addWidget(self.desdatei, 1)
        kopf.addWidget(knopf)
        dl.addLayout(kopf)
        self.desbaum = QTreeWidget()
        self.desbaum.setHeaderLabels(["Name", "Wert", "Typ"])
        self.desbaum.setColumnWidth(0, 280)
        self.desbaum.setColumnWidth(1, 340)
        dl.addWidget(self.desbaum)
        unten.addTab(db, "DES/OSD")

        lay.addWidget(unten, 1)
        self.untenreiter = unten
        return w

    # ------------------------------------------------------------------
    def _des_zeigen(self, pfad=None):
        """Zeigt eine .des/.osd als Baum -- gekocht wie Klartext."""
        from ..parser import desbaum
        if not self.projekt:
            self._sag("Erst ein Projekt oeffnen.")
            return
        if not isinstance(pfad, str) or not pfad:
            pfad = self.desdatei.text().strip()
        if not pfad:
            return
        pfad = pfad.replace("\\", "/").lower()
        self.desdatei.setText(pfad)
        roh = self.projekt.bestand.lesen(pfad)
        self.desbaum.clear()
        if roh is None:
            self._sag(f"nicht gefunden: {pfad}")
            return
        wurzeln, hinweise = desbaum.lies(roh, pfad)
        for h in hinweise:
            self._sag(f"{pfad}: {h}")
        for w in wurzeln:
            self.desbaum.addTopLevelItem(self._des_zweig(w))
        self.desbaum.expandToDepth(1)
        z = desbaum.zaehlen(wurzeln)
        v = desbaum.verweise(wurzeln)
        art = "gekocht" if desbaum.ist_gekocht(roh) else "Klartext"
        self._sag(f"{pfad}: {art}, {z['bloecke']} Bloecke, "
                  f"{z['felder']} Felder, {len(v)} Dateiverweise")
        self.untenreiter.setCurrentIndex(3)

    def _des_zweig(self, k):
        if k.art == "feld":
            wert = k.wert
            if isinstance(wert, list):
                wert = ", ".join(str(x) for x in wert)
            it = QTreeWidgetItem([k.name, str(wert)[:200], k.typ])
            # Dateiverweise hervorheben -- sie sind der Faden zu
            # anderen Dateien und fuer den Modder das Wichtigste.
            s = str(k.wert)
            if "." in s and ("\\" in s or "/" in s or
                             s.lower().endswith((".msh", ".msb", ".tga",
                                                 ".dds", ".osd", ".des",
                                                 ".col", ".mp3", ".sam"))):
                it.setForeground(1, Qt.GlobalColor.darkGreen)
            return it
        it = QTreeWidgetItem([f"[{k.name}]", f"{len(k.kinder)} Eintraege", ""])
        for kind in k.kinder:
            it.addChild(self._des_zweig(kind))
        return it

    # ------------------------------------------------------------------
    def _hinweis_readonly(self):
        QMessageBox.information(
            self, "Read-only",
            "Dieses Programm liest ausschliesslich.\n\n"
            "Es veraendert keine Originaldateien, patcht keine PAKs, "
            "schreibt keine .des, .osd oder .sco und erzeugt kein "
            "Mod-PAK. Die Parser-Schicht oeffnet Dateien nur mit \"rb\".\n\n"
            "Was unsicher ist, wird als unsicher angezeigt â€” geraten "
            "wird nichts.")

    def _asset_geoeffnet(self, zeile, _spalte):
        """Doppelklick im Asset-Browser: .des/.osd im Baum zeigen."""
        it = self.tabelle.item(zeile, 0)
        if it is None:
            return
        pfad = it.text()
        if pfad.endswith((".des", ".osd")):
            self._des_zeigen(pfad)
        elif pfad.endswith(".msb"):
            self._mesh_zeigen(pfad)
        else:
            self._sag(f"{pfad} -- anzeigen lassen sich .des und .osd "
                      f"(als Baum) sowie .msb (in 3D).")

    def _mesh_zeigen(self, pfad):
        """Ein einzelnes Mesh in der 3D-Ansicht zeigen."""
        from ..modell.level import mesh_szene
        if not self.projekt:
            return
        self._sag(f"lade Mesh {pfad} ...")
        d = mesh_szene(self.projekt, pfad)
        if "fehler" in d:
            self._sag(d["fehler"])
            return
        self._js(f"window.aqtk.meshZeigen({json.dumps(d, ensure_ascii=False)})")
        k = d["kennzahlen"]
        self._sag(f"{pfad}: {k['bloecke']} Bloecke, {k['eckpunkte']} "
                  f"Eckpunkte, {k['dreiecke']} Dreiecke, Texturen: "
                  f"{', '.join(k['texturen']) or '(keine)'}")

    def _textur_wechseln(self, index):
        art = ("farbe", "neigung", "aus")[max(0, min(2, index))]
        self._js(f"window.aqtk.textur('{art}')")
        if art == "neigung":
            self._sag("Falschfarbe: blau = flach, rot = steil. Der "
                      "Alphakanal von material_s.tga misst die "
                      "Gelaenderauheit -- wozu die Engine ihn benutzt, "
                      "ist offen.")

    def _sag(self, text):
        self.meldungen.appendPlainText(text)
        self.statusBar().showMessage(text, 6000)

    def _js(self, code):
        self.blick.page().runJavaScript(code)

    # ------------------------------------------------------------------
    def _ansicht_gewechselt(self, index):
        """Den Missionsgraph erst bauen, wenn er gebraucht wird.

        Er kostet je nach Karte 300 bis 700 Knoten samt Portraits --
        das laedt man nicht auf Verdacht mit.
        """
        if index == self.graphreiter and self.level is not None:
            if getattr(self, "_graph_fuer", None) != self.level.name:
                self._graph_zeigen()

    def _graph_zeigen(self):
        if not self.projekt or not self.level:
            return
        from ..modell.level import missionsgraph
        self._sag(f"{self.level.name}: Missionsgraph wird aufgebaut ...")
        try:
            g = missionsgraph(self.projekt, self.level.name)
        except Exception as e:
            self._sag(f"FEHLER beim Missionsgraph: {e}")
            return
        self._graph_fuer = self.level.name
        self.graph.page().runJavaScript(
            f"window.aqgraph.setzen({json.dumps(g, ensure_ascii=False)})")
        if g.get("fehler"):
            self._sag(f"Missionsgraph: {g['fehler']}")
        else:
            z = g.get("kennzahlen") or {}
            self._sag(f"{self.level.name}: {z.get('knoten')} Knoten, "
                      f"{z.get('kanten')} Kanten, "
                      f"{z.get('funksprueche')} Funkstellen")

    def _meta_sichern(self):
        """Die Wissensdatenbank laden, falls noch nicht geschehen.

        Sie haengt bewusst NICHT nur an ordner_oeffnen(): das Projekt
        kann auch von aussen gesetzt werden (Selbsttest, Skripte).
        Einmal geladen, bleibt sie liegen.
        """
        if self.meta is not None:
            return self.meta
        from ..modell.metadaten import Metadaten
        pfad = getattr(self.projekt, "pfad", None) if self.projekt else None
        self.meta = Metadaten.laden(projektpfad=pfad)
        if self.meta.vorhanden:
            self._sag(f"Wissensdatenbank: {len(self.meta.karten())} Level "
                      f"beschrieben (aus {self.meta.ordner})")
        else:
            for hw in self.meta.hinweise:
                self._sag(f"Wissensdatenbank: {hw}")
        return self.meta

    def _levelinfo_zeigen(self, level):
        """Was die Wissensdatenbank ueber diese Karte hergibt.

        Die Herkunft steht bei jedem Abschnitt dabei -- Spieltext,
        Messung oder Nacherzaehlung sind nicht dasselbe, und wer das
        vermischt, baut spaeter auf Sand.
        """
        self._meta_sichern()
        if self.meta is None or not self.meta.vorhanden:
            self.levelinfo.setHtml(
                "<p style='color:#a88'>Keine Wissensdatenbank gefunden.<br>"
                "Erwartet wird <code>aquanox1_missions.json</code> im "
                "Ordner <code>mod_docu</code> neben dem Toolkit.</p>"
                + "".join(f"<p style='color:#888'>{h}</p>"
                          for h in (self.meta.hinweise if self.meta else [])))
            self.untenreiter.setTabText(self.inforeiter, "Level-Info")
            return

        d = self.meta.fuer(level)
        if not d["gefunden"]:
            self.levelinfo.setHtml(
                f"<h2>{level}</h2><p style='color:#a88'>Zu dieser Karte "
                f"steht nichts in der Datenbank.</p>")
            self.untenreiter.setTabText(self.inforeiter, "Level-Info")
            return

        def h(x):
            """Text fuer HTML entschaerfen."""
            return (str(x).replace("&", "&amp;").replace("<", "&lt;")
                    .replace(">", "&gt;"))

        def liste(punkte):
            return ("<ul>" + "".join(f"<li>{h(p)}</li>" for p in punkte)
                    + "</ul>") if punkte else ""

        def quelle(t):
            return (f"<div style='color:#7a8894;font-size:11px;"
                    f"margin:-6px 0 8px'>{h(t)}</div>")

        s = ["""<style>
            body { font-family:'Segoe UI',sans-serif; font-size:13px; }
            h2 { margin:0 0 2px; }
            h3 { margin:16px 0 4px; font-size:13px; color:#5a7a96;
                 border-bottom:1px solid #d0d8e0; padding-bottom:2px; }
            ul { margin:2px 0 8px; padding-left:20px; }
            li { margin:1px 0; }
            table { border-collapse:collapse; margin:2px 0 8px; }
            td { padding:1px 12px 1px 0; vertical-align:top; }
            td.k { color:#6a7884; }
            .prosa { background:#f2f5f8; border-left:3px solid #7aa0c0;
                     padding:7px 10px; margin:2px 0 4px; }
            </style>"""]

        # --- Kopf
        titel = d["name_de"] or d["id"] or level
        s.append(f"<h2>{h(titel)}</h2>")
        unter = []
        if d["typ"]:
            unter.append(h(d["typ"]))
        if d["kapitel"] is not None:
            unter.append(f"Kapitel {h(d['kapitel'])}"
                         + (f" â€” {h(d['kapitel_name'])}"
                            if d["kapitel_name"] else ""))
        unter.append(f"Karte <code>{h(level)}</code>")
        s.append(f"<div style='color:#6a7884'>{' Â· '.join(unter)}</div>")

        # --- Prosa. AUSDRUECKLICH als Nacherzaehlung kennzeichnen.
        if d["prosa"]:
            s.append("<h3>Worum es geht</h3>")
            s.append(f"<div class='prosa'>{h(d['prosa'])}</div>")
            s.append(quelle(
                "Nacherzaehlung (englisch) â€” geschrieben nach den "
                "Briefings und Funkspruechen des Spiels, abgeglichen mit "
                "Komplettloesungen. Kein Text aus dem Spiel."))

        # --- Ziele und Hinweise: woertlicher Spieltext.
        if d["ziele"]:
            s.append("<h3>Missionsziele</h3>" + liste(d["ziele"]))
            s.append(quelle("woertlich aus dat/sty/briefing_d.des"))
        if d["hinweise"]:
            s.append("<h3>Hinweise aus dem Briefing</h3>"
                     + liste(d["hinweise"]))
            s.append(quelle("woertlich aus dat/sty/briefing_d.des"))

        # --- Stationen auf dieser Karte
        if d["stationen"]:
            s.append("<h3>Stationen auf dieser Karte</h3><table>")
            for st in d["stationen"]:
                s.append(
                    f"<tr><td><b>{h(st.get('name'))}</b></td>"
                    f"<td class='k'>Territorium {h(st.get('territory'))}</td>"
                    f"<td class='k'>Tiefe {h(st.get('depth'))} m</td>"
                    f"<td class='k'><code>{h(st.get('script'))}</code></td>"
                    f"</tr>")
            s.append("</table>")
            s.append(quelle("aus dat/sty/option~.des (Kampagnenstruktur)"))

        # --- Funk
        fk = d["funk"] or {}
        if fk.get("anzahl"):
            spr = ", ".join(h(x) for x in (fk.get("sprecher") or []))
            s.append(f"<h3>Funksprueche</h3><table>"
                     f"<tr><td class='k'>Anzahl</td><td>{h(fk['anzahl'])}"
                     f"</td></tr>"
                     f"<tr><td class='k'>Sprecher</td><td>{spr or 'â€”'}"
                     f"</td></tr>"
                     f"<tr><td class='k'>Tabelle</td>"
                     f"<td><code>{h(fk.get('datei'))}</code></td></tr>"
                     f"</table>")
            s.append(quelle("woertlich aus dat/sty/mtake_*.des"))

        # --- Technik
        tn = d["technik"] or {}
        if tn:
            s.append("<h3>Technik</h3><table>")
            for k, bez in (("script", "Skript"),
                           ("script_bytes", "Groesse (Byte)"),
                           ("osd_referenzen", "OSD-Verweise"),
                           ("nebenskripte", "Nebenskripte")):
                v = tn.get(k)
                if v:
                    if isinstance(v, list):
                        v = ", ".join(str(x) for x in v)
                    s.append(f"<tr><td class='k'>{bez}</td>"
                             f"<td>{h(v)}</td></tr>")
            s.append("</table>")
            for k, bez in (("verhalten", "Verhaltensbausteine"),
                           ("trigger", "Trigger"),
                           ("kommandos", "Kommandos"),
                           ("knotenklassen", "Knotenklassen")):
                v = tn.get(k)
                if isinstance(v, dict) and v:
                    teile = ", ".join(f"{h(a)} ({h(b)})"
                                      for a, b in list(v.items())[:18])
                    s.append(f"<p><b>{bez}:</b> {teile}"
                             + (" â€¦" if len(v) > 18 else "") + "</p>")
            s.append(quelle(
                "im Lua-Bytecode gezaehlt. Die Zahlen sind Vorkommen im "
                "Konstantenpool ('in N Funktionen benutzt'), nicht die "
                "Zahl der Aufrufe zur Laufzeit."))

        self.levelinfo.setHtml("".join(s))
        self.untenreiter.setTabText(
            self.inforeiter, f"Level-Info ({h(titel)})")

    def _detail_wechseln(self, an):
        """Materialschichten zu- oder abschalten."""
        s = self.detailstaerke.value() / 100.0
        self._js(f"window.aqtk.detail({str(bool(an)).lower()}, {s:.2f})")

    def _nebel_wechseln(self, an):
        """Nebel zu- oder abschalten.

        Ohne Nebel wird alles gezeigt, egal wie weit weg. Mit Nebel
        gilt entweder die Sichtweite aus fog.des oder ein fester Wert
        aus der Auswahlliste.
        """
        t = self.sicht.currentText()
        weite = 0 if not t.isdigit() else int(t)
        self._js(f"window.aqtk.nebel({str(bool(an)).lower()}, {weite})")

    def _objektliste_fuellen(self, objekte):
        """Fuellt den Reiter 'Objekte'. Klick fliegt hin."""
        self.objektliste.clear()
        for o in objekte:
            p = o.get("position") or [0, 0, 0]
            k = QTreeWidgetItem([
                o.get("name", "?"),
                o.get("mesh") or "â€”",
                f"{p[0]:.0f}, {p[1]:.0f}, {p[2]:.0f}",
                o.get("art", ""),
            ])
            if not o.get("mesh"):
                k.setForeground(0, Qt.GlobalColor.gray)
            self.objektliste.addTopLevelItem(k)
        self.untenreiter.setTabText(self.objektreiter,
                                    f"Objekte ({len(objekte)})")

    def _zu_objekt(self, k, _spalte=0):
        """Kamerafahrt zum angeklickten Objekt."""
        if k is None:
            return
        name = k.text(0)
        self._js(f"window.aqtk.zuObjekt({json.dumps(name)})")
        self._sag(f"fliege zu {name}")

    # ------------------------------------------------------------------
    def ordner_oeffnen(self):
        start = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
        ordner = QFileDialog.getExistingDirectory(
            self, "AquaNox-Installationsordner waehlen",
            start if os.path.isdir(start) else "")
        if not ordner:
            return
        self.meldungen.clear()
        self._sag(f"oeffne {ordner}")
        p = Projekt(ordner)
        if not p.gueltig:
            self._sag("WARNUNG: sieht nicht nach einer AquaNox-Installation "
                      "aus (kein dat\\ und keine Aqua.exe) â€” versuche es "
                      "trotzdem.")
        if not p.oeffnen(fortschritt=self._sag):
            self._sag("Konnte nicht geoeffnet werden.")
            return
        self.projekt = p

        # Die Wissensdatenbank aus mod_docu -- rein zusaetzlich.
        # Fehlt sie, laeuft alles andere unveraendert weiter.
        self.meta = None
        self._meta_sichern()

        u = p.uebersicht()
        self._sag(f"{u['dateien']} Dateien, {len(u['paks'])} Quellen, "
                  f"{u['ueberschrieben']} verdeckt")
        for nr, name, anzahl in u["paks"]:
            self._sag(f"   {name}: {anzahl}")
        for m in u["meldungen"]:
            self._sag(f"   Hinweis: {m}")
        self._karten_fuellen()
        self._assets_fuellen()

    def _karten_fuellen(self):
        """Die Kartenliste, mit dem Missionsnamen aus der Datenbank.

        Der Ordnername sagt nichts darueber, was in einer Karte
        passiert -- "1h1" merkt sich niemand, "ASYLUM" schon. Die
        Namen stehen woertlich in briefing_d.des; die 13 Level ohne
        Kampagne haben keinen und bekommen ihre Art (Instant Action,
        Multiplayer) in Grau.
        """
        self.karten.clear()
        self._meta_sichern()
        mit_namen = 0
        for name, k in self.projekt.karten().items():
            d = self.meta.fuer(name) if (self.meta and self.meta.vorhanden) \
                else {"gefunden": False}
            missionsname = d.get("name_de") or ""
            if missionsname:
                mit_namen += 1
            else:
                # Kein Missionsname -- dann wenigstens die Art.
                missionsname = d.get("typ") or ""

            it = QTreeWidgetItem([name, missionsname,
                                  "ja" if k["hat_terrain"] else "â€”",
                                  str(len(k["skripte"]))])
            it.setData(0, Qt.UserRole, name)
            if not d.get("name_de"):
                it.setForeground(1, Qt.GlobalColor.gray)
            if d.get("gefunden"):
                teile = []
                if d.get("kapitel") is not None:
                    teile.append(f"Kapitel {d['kapitel']}"
                                 + (f" â€” {d['kapitel_name']}"
                                    if d.get("kapitel_name") else ""))
                if d.get("typ"):
                    teile.append(d["typ"])
                if d.get("prosa"):
                    teile.append("")
                    teile.append(d["prosa"])
                if teile:
                    hinweis = "\n".join(teile)
                    it.setToolTip(0, hinweis)
                    it.setToolTip(1, hinweis)
            self.karten.addTopLevelItem(it)
        self.karten.resizeColumnToContents(0)
        self._sag(f"{self.karten.topLevelItemCount()} Karten gefunden, "
                  f"{mit_namen} mit Missionsnamen â€” Doppelklick zum Laden")

    def _assets_fuellen(self):
        if not self.projekt:
            return
        kat = self.kat.currentText()
        liste = self.projekt.liste(None if kat == "alle" else kat,
                                   self.suche.text())
        self.tabelle.setRowCount(len(liste))
        for r, e in enumerate(liste):
            for c, wert in enumerate((e["pfad"], e["quelle"],
                                      f"{e['groesse']:,}".replace(",", "."),
                                      e["typ"], e["ueberschreibt"])):
                self.tabelle.setItem(r, c, QTableWidgetItem(str(wert)))

    # ------------------------------------------------------------------
    def _karte_gewaehlt(self, item, _spalte):
        name = item.data(0, Qt.UserRole)
        if not name:
            return
        self._js(f"window.aqtk.meldung('{name} wird geladen ...')")
        self._sag(f"lade Karte {name} ...")
        QTimer.singleShot(30, lambda: self._karte_laden(name))

    def _karte_laden(self, name):
        try:
            self.level = Level.laden(self.projekt, name, fortschritt=self._sag)
        except Exception as e:
            self._sag(f"FEHLER beim Laden: {e}")
            self._js(f"window.aqtk.meldung('Fehler: {e}')")
            return
        self._neu_zeichnen()
        self._infos_fuellen()

    def _neu_zeichnen(self):
        if not self.level:
            return
        try:
            szene = self.level.szene(
                schritt=int(self.schritt.currentText()),
                stimmung=self.stimmung.currentText(),
                ueberhoehung=float(self.ueber.value()),
                projekt=self.projekt)
        except Exception as e:
            self._sag(f"FEHLER beim Aufbereiten: {e}")
            return
        daten = json.dumps(szene, ensure_ascii=False)
        self._js(f"window.aqtk.szeneSetzen({daten})")
        # Der Schalterstand wird nachgereicht, damit Oberflaeche und
        # Ansicht auch nach einem Neuladen der Seite uebereinstimmen.
        self._nebel_wechseln(self.nebel.isChecked())
        self._detail_wechseln(self.detail.isChecked())
        self._objektliste_fuellen(szene["objekte"])
        self._levelinfo_zeigen(self.level.name)
        # Der Graph wird erst gebaut, wenn sein Reiter sichtbar wird.
        self._graph_fuer = None
        if self.ansichten.currentIndex() == self.graphreiter:
            self._graph_zeigen()
        t = szene["terrain"]
        self._sag(f"{szene['level']}: Raster {t['breite']}x{t['hoehe']}, "
                  f"{len(szene['objekte'])} Objekte")

    def _infos_fuellen(self):
        lv = self.level
        if lv.terrain:
            z = [f"Terrain von {lv.name}", ""]
            for n, g in sorted(lv.terrain.dateien.items()):
                z.append(f"  {n:<22} {g:>10,} B".replace(",", "."))
            z += ["", "terrain.des:"]
            for k, v in sorted(lv.terrain.terrain_des.items()):
                z.append(f"  {k} = {v}")
            z += ["", "material.des:"]
            for k, v in sorted(lv.terrain.material_des.items()):
                z.append(f"  {k} = {v}")
            if lv.fog:
                z += ["", "fog.des:"]
                for k, v in sorted(lv.fog.items()):
                    z.append(f"  {k} = {v}")
            self.terrainsicht.setPlainText("\n".join(z))

        if lv.skript:
            s = lv.skript
            z = [f"Skript {s.pfad}", "", f"Kennzahlen: {s.kennzahlen()}", ""]
            z.append("Protos (Weg, Konstanten, Anweisungen):")
            for weg, k, c in s.protos[:60]:
                z.append(f"  {weg:<18} {k:>5} {c:>7}")
            if len(s.protos) > 60:
                z.append(f"  ... ({len(s.protos) - 60} weitere)")
            z += ["", "Asset-Verweise:"]
            for weg, t in s.asset_verweise()[:80]:
                z.append(f"  [{weg}] {t}")
            z += ["", "Hinweise:"]
            z += [f"  {h}" for h in s.hinweise]
            self.skriptsicht.setPlainText("\n".join(z))
        else:
            self.skriptsicht.setPlainText("kein Skript geladen")


