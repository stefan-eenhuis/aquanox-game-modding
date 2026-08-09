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
    QSlider, QTextBrowser, QDialog,
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
        self._letzte_auswahl = None    # was das Eigenschaftenfenster zeigt
        self._aenderungen = []         # verschobene Objekte
        self._eig_stumm = False
        self.setWindowTitle("AquaNox-1-Toolkit — Ansicht (read-only)")
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
        teiler.addWidget(self._eigenschaften())
        teiler.setStretchFactor(0, 0)
        teiler.setStretchFactor(1, 1)
        teiler.setStretchFactor(2, 0)
        teiler.setSizes([400, 820, 280])
        self.setCentralWidget(teiler)

    # ------------------------------------------------------------------
    def _eigenschaften(self):
        """Das Eigenschaftenfenster rechts.

        *** ES AENDERT NUR DIE ANSICHT. *** Was hier eingestellt wird,
        landet in einer Aenderungsliste und laesst sich als Text
        ausgeben -- geschrieben wird nichts. Solange nicht geklaert
        ist, wie viele PAKs die Engine liest (Handoff 471/474),
        waere alles andere leichtsinnig.
        """
        w = QWidget()
        lay = QVBoxLayout(w)
        lay.setContentsMargins(3, 6, 6, 6)

        self.eigkopf = QLabel("<i>Kein Objekt gewaehlt</i>")
        self.eigkopf.setWordWrap(True)
        self.eigkopf.setTextFormat(Qt.RichText)
        lay.addWidget(self.eigkopf)

        gitter = QVBoxLayout()
        self.felder = {}
        for gruppe, bez, achsen in (
                ("position", "Position (x, y, z)", ("x", "y", "z")),
                ("drehung", "Drehung (Grad)", ("0", "1", "2"))):
            lay.addWidget(QLabel(f"<b>{bez}</b>"))
            z = QHBoxLayout()
            for i, a in enumerate(achsen):
                f = QDoubleSpinBox()
                f.setRange(-100000.0, 100000.0)
                f.setDecimals(2)
                f.setSingleStep(10.0 if gruppe == "position" else 1.0)
                f.setKeyboardTracking(False)   # erst bei Enter/Fokus
                f.valueChanged.connect(self._eig_uebernehmen)
                f.setEnabled(False)
                self.felder[(gruppe, i)] = f
                z.addWidget(f)
            lay.addLayout(z)
        lay.addLayout(gitter)

        # *** Kein Skalierungsfeld. *** Body_SetCS kennt nur Lage und
        # Drehung; eine Skalierung gaebe es im Skript nicht wieder.
        hinweis = QLabel(
            "<span style='color:#888;font-size:11px'>"
            "Body_SetCS kennt nur Lage und Drehung — eine Skalierung "
            "liesse sich nicht ins Skript zurueckschreiben.</span>")
        hinweis.setWordWrap(True)
        lay.addWidget(hinweis)

        z0 = QHBoxLayout()
        self.eig_einfuegen = QPushButton("Asset einfuegen ...")
        self.eig_einfuegen.setToolTip(
            "Waehlt eines der 1.267 Assets und setzt es dort ab,\n"
            "wohin die Kamera blickt -- auf Terrainhoehe.")
        self.eig_einfuegen.clicked.connect(self._asset_einfuegen)
        z0.addWidget(self.eig_einfuegen)
        lay.addLayout(z0)

        z0b = QHBoxLayout()
        self.eig_duplizieren = QPushButton("Duplizieren")
        self.eig_duplizieren.setToolTip(
            "Legt eine Kopie 50 Einheiten daneben an.\n"
            "Sie erscheint in der Ausgabe als vier neue Zeilen:\n"
            "Node_CreateNode, Node_AddSon, Body_SetCS, "
            "Node_ParseIniFile.")
        self.eig_duplizieren.clicked.connect(self._eig_duplizieren)
        self.eig_duplizieren.setEnabled(False)
        z0b.addWidget(self.eig_duplizieren)
        lay.addLayout(z0b)

        z = QHBoxLayout()
        self.eig_zuruecksetzen = QPushButton("Zuruecksetzen")
        self.eig_zuruecksetzen.setToolTip(
            "Setzt dieses Objekt auf seine Werte aus dem Skript.")
        self.eig_zuruecksetzen.clicked.connect(self._eig_zuruecksetzen)
        self.eig_zuruecksetzen.setEnabled(False)
        z.addWidget(self.eig_zuruecksetzen)
        lay.addLayout(z)

        lay.addWidget(QLabel("<b>Aenderungen</b>"))
        self.aenderungsliste = QPlainTextEdit()
        self.aenderungsliste.setReadOnly(True)
        self.aenderungsliste.setPlaceholderText(
            "Noch nichts geaendert.\n\n"
            "1. Objekt in der 3D-Ansicht anklicken\n"
            "2. an einem Pfeil ziehen, oder oben die Zahlen aendern\n"
            "3. hier erscheinen die Skriptzeilen\n\n"
            "VERSCHOBENE Objekte lassen sich einspielen.\n"
            "NEUE (Duplizieren/Einfuegen) nur als Text ausgeben --\n"
            "sie brauchen zusaetzliche Befehle im Skript.")
        lay.addWidget(self.aenderungsliste, 1)

        # *** Der einzige Knopf, der eine Spieldatei anlegt. ***
        # Er laeuft durch schreiber.ziel_pruefen() und legt nie ein
        # vorhandenes PAK an.
        self.knopf_ausliefern = QPushButton("Alle Aenderungen speichern ...")
        self.knopf_ausliefern.setToolTip(
            "Uebernimmt ALLES: verschobene Objekte per\n"
            "Konstantentausch, neue per Quelltext an __StartUp.\n\n"
            "Patcht das Missionsskript und legt es als neues PAK ab\n"
            "oder lose in den Spielordner. Originale bleiben\n"
            "unangetastet.\n\n"
            "Neue Objekte (Duplizieren, Asset einfuegen) gehen nur\n"
            "ueber 'Als Text ausgeben' -- sie brauchen zusaetzliche\n"
            "Befehle im Skript, die ein Konstantentausch nicht\n"
            "erzeugen kann.")
        self.knopf_ausliefern.clicked.connect(self._einspielen)
        lay.addWidget(self.knopf_ausliefern)

        z2 = QHBoxLayout()
        knopf = QPushButton("Als Text ausgeben")
        knopf.setToolTip("Schreibt die Aenderungen in eine Textdatei.")
        knopf.clicked.connect(self._aenderungen_ausgeben)
        z2.addWidget(knopf)
        alles = QPushButton("Alle verwerfen")
        alles.clicked.connect(self._alle_verwerfen)
        z2.addWidget(alles)
        lay.addLayout(z2)
        return w

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
        self.kartenreiter = self.reiter.addTab(self.karten, "Karten")

        # --- Stationen. Sie sind KEINE Karten: mehrere Stationen
        #     teilen sich eine (1n2 hat sechs), und elf der 25 haben
        #     ueberhaupt keine Dialoge.
        self.stationen = QTreeWidget()
        self.stationen.setHeaderLabels(["Station", "Karte", "Tiefe",
                                        "Dialoge"])
        self.stationen.setColumnWidth(0, 170)
        self.stationen.setColumnWidth(1, 60)
        self.stationen.setColumnWidth(2, 60)
        self.stationen.itemClicked.connect(self._station_gewaehlt)
        self.stationen.itemDoubleClicked.connect(self._station_gewaehlt)
        self.stationsreiter = self.reiter.addTab(self.stationen, "Stationen")
        self.reiter.currentChanged.connect(self._quelle_gewechselt)

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

        # *** Der einzige Knopf, der etwas ausserhalb des Toolkits
        # tut. *** Er startet das Spiel -- lesend bleibt alles andere.
        self.startknopf = QPushButton("Karte im Spiel starten")
        self.startknopf.setToolTip(
            "Startet Aqua.exe mit -s <Skriptpfad>.\n"
            "Aendert nichts am Spiel; der Schalter ist seit 2001 da.")
        self.startknopf.clicked.connect(self._karte_starten)
        sl.addWidget(self.startknopf)

        z7 = QHBoxLayout()
        # Vollbild ist der Normalfall -- -window ist nur zum
        # Vergleichen neben dem Toolkit nuetzlich.
        self.startfenster = QCheckBox("im Fenster")
        self.startfenster.setChecked(False)
        self.startfenster.setToolTip(
            "Mit Haken: -window. Ohne: Vollbild.\n"
            "Im Fenster laesst sich das Spiel neben dem Toolkit "
            "vergleichen.")
        z7.addWidget(self.startfenster)
        self.startprotokoll = QCheckBox("Protokoll")
        self.startprotokoll.setChecked(True)
        self.startprotokoll.setToolTip(
            "-logfile -logunknown: schreibt log.txt mit "
            "[SCRIPTERROR]-Zeilen.")
        z7.addWidget(self.startprotokoll)
        z7.addStretch(1)
        sl.addLayout(z7)

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

        # --- Zwei Graphseiten: das Triggernetz der Karte und die
        #     Stationsdialoge der Kampagne. Beide benutzen dieselbe
        #     Seite (graph.html) und dasselbe Datenformat, haengen
        #     aber an verschiedenen Daten -- die Dialoge gehoeren zur
        #     Kampagne, nicht zu einer Karte.
        from .schema import AquaSchema, SCHEMA
        self._aqua = AquaSchema(
            lambda: self.projekt.bestand if self.projekt else None,
            self._sag, self)

        def graphseite():
            v = QWebEngineView()
            v.setPage(Seite(self._sag, v))
            e = v.settings()
            e.setAttribute(
                QWebEngineSettings.LocalContentCanAccessFileUrls, True)
            e.setAttribute(
                QWebEngineSettings.LocalContentCanAccessRemoteUrls, True)
            # Ohne das lehnt Chromium jedes play() ab, das nicht aus
            # einem echten Mausklick kommt -- und unsere Knoepfe
            # schicken den Klick durch einen eigenen Handler.
            e.setAttribute(
                QWebEngineSettings.PlaybackRequiresUserGesture, False)
            v.page().profile().installUrlSchemeHandler(SCHEMA, self._aqua)
            v.load(QUrl.fromLocalFile(os.path.join(WEB, "graph.html")))
            return v

        self.graph = graphseite()          # Missionsnetz
        self.dialoggraph = graphseite()    # Stationsdialoge
        self.blick.page().profile().installUrlSchemeHandler(
            SCHEMA, self._aqua)

        self.ansichten = QTabWidget()
        self.ansichten.addTab(self.blick, "3D-Ansicht")
        self.graphreiter = self.ansichten.addTab(self.graph, "Missionsnetz")
        self.dialogreiter = self.ansichten.addTab(
            self.dialoggraph, "Stationsdialoge")
        self.ansichten.currentChanged.connect(self._ansicht_gewechselt)
        lay.addWidget(self.ansichten, 3)

        # Die Auswahl aus der 3D-Ansicht abholen. Fuenf Mal je
        # Sekunde genuegt und spart die QWebChannel-Einrichtung.
        self._auswahluhr = QTimer(self)
        self._auswahluhr.setInterval(200)
        self._auswahluhr.timeout.connect(self._auswahl_abholen)
        self._auswahluhr.start()

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
            "— oder im Asset-Browser doppelklicken")
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
            "Was unsicher ist, wird als unsicher angezeigt — geraten "
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
    # ------------------------------------------------------------------
    def _auswahl_abholen(self):
        """Die Auswahl aus der 3D-Ansicht ins Eigenschaftenfenster.

        Wird per Zeitgeber abgefragt statt ueber QWebChannel -- das
        spart die ganze Kanal-Einrichtung, und bei fuenf Abfragen je
        Sekunde merkt niemand einen Unterschied.
        """
        if not self.level:
            return
        self.blick.page().runJavaScript(
            "window.aqtk.auswahl()", self._auswahl_zeigen)

    def _auswahl_zeigen(self, roh):
        try:
            d = json.loads(roh) if roh and roh != "null" else None
        except Exception:
            d = None
        if d == self._letzte_auswahl:
            return
        self._letzte_auswahl = d

        an = d is not None
        for f in self.felder.values():
            f.setEnabled(an)
        self.eig_zuruecksetzen.setEnabled(bool(d and d.get("geaendert")))
        self.eig_duplizieren.setEnabled(an)
        if not an:
            self.eigkopf.setText("<i>Kein Objekt gewaehlt</i><br>"
                                 "<span style='color:#888;font-size:11px'>"
                                 "In der 3D-Ansicht auf ein Objekt "
                                 "klicken.</span>")
            return

        kennung = d.get("variable") or "—"
        self.eigkopf.setText(
            f"<b>{d['name']}</b>"
            + (" <span style='color:#c88'>(geaendert)</span>"
               if d.get("geaendert") else "")
            + f"<br><span style='color:#888;font-size:11px'>"
            f"Variable {kennung} · {d.get('art', '')}"
            + (f" · {d['teile']} Zusatzteile" if d.get("teile") else "")
            + f"<br>{d.get('osd') or 'ohne OSD'}</span>")

        # Ohne Blockade loeste jedes Setzen ein valueChanged aus und
        # schriebe die Werte gleich wieder zurueck.
        self._eig_stumm = True
        for gruppe in ("position", "drehung"):
            werte = d.get(gruppe) or [0, 0, 0]
            for i in range(3):
                self.felder[(gruppe, i)].setValue(float(werte[i]))
        self._eig_stumm = False

    def _eig_uebernehmen(self, *_):
        if getattr(self, "_eig_stumm", False):
            return
        d = self._letzte_auswahl
        if not d:
            return
        pos = [self.felder[("position", i)].value() for i in range(3)]
        dre = [self.felder[("drehung", i)].value() for i in range(3)]
        self.blick.page().runJavaScript(
            f"window.aqtk.setzen({d['index']}, "
            f"{json.dumps(pos)}, {json.dumps(dre)})")
        self._letzte_auswahl = None      # erzwingt Neuanzeige
        QTimer.singleShot(60, self._aenderungen_abholen)

    def _asset_einfuegen(self):
        """Ein Asset aus der Liste in die Szene setzen.

        Die Geometrie wird hier nachgeladen -- sie ist noch nicht in
        der Szene, weil kein Objekt sie benutzt. Abgesetzt wird dort,
        wohin die Kamera blickt, auf Terrainhoehe.
        """
        if not self.projekt or not self.level:
            self._sag("Erst eine Karte laden.")
            return
        from ..modell.level import assetliste, asset_geometrie
        from .assetwahl import AssetWahl

        if not getattr(self, "_assetliste", None):
            self._assetliste = assetliste(self.projekt)
            self._sag(f"{len(self._assetliste)} Assets gefunden")

        dlg = AssetWahl(self._assetliste, self)
        if dlg.exec() != QDialog.Accepted:
            return
        a = dlg.auswahl()
        if not a:
            return

        self._sag(f"{a['name']} wird geladen ...")
        try:
            paket = asset_geometrie(self.projekt, a["verweis"], self.level)
        except Exception as e:
            self._sag(f"FEHLER beim Laden: {type(e).__name__}: {e}")
            return
        if paket.get("fehler"):
            self._sag(f"{a['name']}: {paket['fehler']}")
            return

        # *** Nur die Geometrie schicken, nicht die ganze Szene. ***
        # Ein voller szeneSetzen() waere bei 83 Objekten mit 75
        # Texturen unnoetig teuer.
        self.blick.page().runJavaScript(
            f"window.aqtk.einfuegen("
            f"{json.dumps(paket, ensure_ascii=False)}, "
            f"{json.dumps(a['name'] + '_neu')})")
        self._letzte_auswahl = None
        QTimer.singleShot(120, self._aenderungen_abholen)
        n = len(paket.get("meshes") or {})
        self._sag(f"{a['name']} eingefuegt ({n} Mesh(es), "
                  f"{len(paket.get('bilder') or {})} Texturen)")

    def _eig_duplizieren(self):
        d = self._letzte_auswahl
        if not d:
            return
        self.blick.page().runJavaScript(
            f"window.aqtk.duplizieren({d['index']}, [50, 50, 0])")
        self._letzte_auswahl = None
        QTimer.singleShot(80, self._aenderungen_abholen)
        self._sag(f"{d['name']} dupliziert -- die Kopie braucht im "
                  f"Skript vier neue Zeilen (siehe Ausgabe).")

    def _eig_zuruecksetzen(self):
        d = self._letzte_auswahl
        if not d or not d.get("ursprung"):
            return
        u = d["ursprung"]
        self.blick.page().runJavaScript(
            f"window.aqtk.setzen({d['index']}, "
            f"{json.dumps(u['position'])}, {json.dumps(u['drehung'])})")
        self._letzte_auswahl = None
        QTimer.singleShot(60, self._aenderungen_abholen)

    def _alle_verwerfen(self):
        self.blick.page().runJavaScript("window.aqtk.aenderungenVerwerfen()")
        self._letzte_auswahl = None
        QTimer.singleShot(80, self._aenderungen_abholen)

    def _aenderungen_abholen(self):
        self.blick.page().runJavaScript(
            "window.aqtk.aenderungen()", self._aenderungen_zeigen)
        self.blick.page().runJavaScript(
            "window.aqtk.neulinge()", self._neulinge_zeigen)

    def _neulinge_zeigen(self, roh):
        try:
            self._neulinge = json.loads(roh) if roh else []
        except Exception:
            self._neulinge = []
        self._text_auffrischen()

    def _aenderungen_zeigen(self, roh):
        try:
            self._aenderungen = json.loads(roh) if roh else []
        except Exception:
            self._aenderungen = []
        self._text_auffrischen()

    def _text_auffrischen(self):
        t = self._aenderungstext(self._aenderungen,
                                 getattr(self, "_neulinge", []), kurz=True)
        self.aenderungsliste.setPlainText(t)

    def _aenderungstext(self, liste, neulinge=None, kurz=False):
        """Die Aenderungen als Lua-Zeilen.

        *** Das ist Text zum Einbauen, kein Patch. *** Die Zeilen
        entsprechen dem, was im Dekompilat steht; wer sie uebernimmt,
        muss das Skript selbst neu uebersetzen -- oder auf den
        Patcher warten (Handoff 458, 474).
        """
        neulinge = neulinge or []
        z = []
        if not kurz:
            z += [f"# AquaNox-Toolkit -- Aenderungen an "
                  f"{self.level.name if self.level else '?'}",
                  f"# {len(liste)} verschoben, {len(neulinge)} neu.",
                  "# Die Zeilen entsprechen dem Dekompilat in "
                  "mod_docu\\an1_missionen_lua\\.",
                  "# Position und Drehung in AquaNox-Achsen "
                  "(Z ist die Hochachse).",
                  "#",
                  "# *** DAS IST TEXT ZUM EINBAUEN, KEIN PATCH. ***",
                  "# Das Toolkit schreibt nichts ins Spiel.", ""]

        if liste:
            if not kurz:
                z.append("# --- verschobene Objekte ---")
            for a in liste:
                v = a.get("variable") or a.get("name")
                p, dr = a["position"], a["drehung"]
                ap, ad = a["alt_position"], a["alt_drehung"]
                if not kurz:
                    z.append(f"# {a['name']}   vorher "
                             f"({ap[0]:.1f}, {ap[1]:.1f}, {ap[2]:.1f}) "
                             f"/ ({ad[0]:.2f}, {ad[1]:.2f}, {ad[2]:.2f})")
                z.append(
                    f"Body_SetCS({v}, MAT_Vector3({p[0]:.5f}, {p[1]:.5f}, "
                    f"{p[2]:.5f}), MAT_Vector3({dr[0]:.5f}, {dr[1]:.5f}, "
                    f"{dr[2]:.5f}))")

        if neulinge:
            z.append("")
            z.append("# --- neue Objekte ---")
            if not kurz:
                z += ["# *** Jedes braucht VIER Zeilen und eine freie "
                      "Variable. ***",
                      "# Die Namen nodeNEU1.. sind Vorschlaege -- im "
                      "Skript muessen sie",
                      "# eindeutig sein. Node_AddSon haengt den Knoten "
                      "in das Verzeichnis,",
                      "# in dem auch die Vorlage haengt; welches das "
                      "ist, steht im Skript.", ""]
            for i, n in enumerate(neulinge, 1):
                v = f"nodeNEU{i}"
                p, dr = n["position"], n["drehung"]
                z.append(f"# {n['name']}  (Vorlage: {n.get('vorlage')})")
                z.append(f'{v} = Node_CreateNode("nod_generic", '
                         f'"{n["name"]}")')
                z.append(f"Node_AddSon(<Verzeichnis>, {v})")
                z.append(
                    f"Body_SetCS({v}, MAT_Vector3({p[0]:.5f}, {p[1]:.5f}, "
                    f"{p[2]:.5f}), MAT_Vector3({dr[0]:.5f}, {dr[1]:.5f}, "
                    f"{dr[2]:.5f}))")
                if n.get("osd"):
                    z.append(f'Node_ParseIniFile({v}, "{n["osd"]}")')
                z.append("")
        return "\n".join(z)

    def _einspielen(self):
        """Die verschobenen Objekte ins Spiel bringen.

        *** Der einzige Weg, auf dem das Toolkit eine Spieldatei
        anlegt. *** Deshalb: erst zeigen, was passiert, dann fragen.
        Originale werden nie ueberschrieben -- schreiber.ziel_pruefen()
        laesst das gar nicht zu.

        NEUE Objekte gehen NICHT mit: sie brauchen Node_CreateNode
        und Node_AddSon, also zusaetzliche Befehle im Bytecode. Der
        Patcher tauscht nur Konstanten. Fuer sie bleibt die
        Textausgabe.
        """
        liste = getattr(self, "_aenderungen", None) or []
        neu = getattr(self, "_neulinge", None) or []

        if not liste and not neu:
            QMessageBox.information(
                self, "Nichts zu tun",
                "Es ist noch nichts geaendert.\n\n"
                "So geht es:\n"
                "  1. In der 3D-Ansicht auf ein Objekt klicken --\n"
                "     Rahmen und drei Pfeile erscheinen.\n"
                "  2. An einem Pfeil ziehen, oder rechts die Zahlen\n"
                "     aendern. Oder 'Asset einfuegen' fuer ein neues.\n"
                "  3. Dann wieder hierher.")
            return
        if not self.projekt or not self.level:
            return

        from ..schreiber import (freie_pak_nummer, eigene_pak_nummer,
                                 SchreibFehler)
        from ..schreiber import sco_position, mod as _mod

        spiel = self.projekt.ordner
        skript = (self.level.skriptpfad
                  or f"map/{self.level.name}/script/{self.level.name}.sco")
        skript = skript.replace("\\", "/").lower()
        if not skript.endswith(".sco"):
            skript += ".sco"
        roh = self.projekt.bestand.lesen(skript)
        if roh is None:
            self._sag(f"Skript nicht lesbar: {skript}")
            return

        # *** EIN PAK FUER ALLES. *** Gibt es unser Mod-PAK schon,
        # wird es wieder benutzt statt einen weiteren der 32 Slots zu
        # verbrauchen. Der Mod-Ordner sammelt, das PAK wird daraus
        # jedesmal komplett neu gebaut.
        eigen = eigene_pak_nummer(spiel)
        nummer = eigen if eigen is not None else freie_pak_nummer(spiel)
        schon = _mod.mod_lesen(spiel).get("dateien") or {}
        teile = []
        if liste:
            teile.append(f"{len(liste)} verschobene(s) Objekt(e) "
                         f"(Konstantentausch)")
        if neu:
            teile.append(f"{len(neu)} neue(s) Objekt(e) "
                         f"(Quelltext an __StartUp)")
        text = (
            f"{' und '.join(teile)} werden in\n  {skript}\n"
            f"uebernommen und abgelegt als\n\n"
            f"  A)  dat\\pak\\aquanox{nummer}.pak   (empfohlen, "
            f"abschaltbar)\n"
            f"  B)  lose unter {spiel}\\{skript.replace('/', chr(92))}\n\n"
            f"Originale werden nicht angefasst.")
        if eigen is not None:
            andere = [p for p in schon if p != skript]
            text += (
                f"\n\n*** Weg A nimmt UNSER vorhandenes "
                f"aquanox{eigen}.pak. *** Alle eigenen Aenderungen "
                f"liegen in einem einzigen Archiv, nicht in einem je "
                f"Aenderung -- die Engine liest nur 32 Slots.")
            if andere:
                text += (f"\nSchon darin: {len(andere)} weitere Datei(en), "
                         f"z.B. {andere[0]}. Sie bleiben erhalten.")
        if neu:
            text += (
                "\n\n*** ZU DEN NEUEN OBJEKTEN: *** sie kommen als "
                "Lua-Quelltext ans Ende von __StartUp, den die Engine "
                "per dostring uebersetzt. Ob ein so angelegter Knoten "
                "wirklich erscheint, ist NICHT geprueft -- moeglich, "
                "dass er entsteht, aber am Ursprung steht. Das "
                "entscheidet nur der Spieltest.")

        kasten = QMessageBox(self)
        kasten.setWindowTitle("Alle Aenderungen speichern")
        kasten.setText(text)
        a = kasten.addButton(f"A) aquanox{nummer}.pak",
                             QMessageBox.AcceptRole)
        b = kasten.addButton("B) lose Datei", QMessageBox.AcceptRole)
        kasten.addButton("Abbrechen", QMessageBox.RejectRole)
        kasten.exec()
        gewaehlt = kasten.clickedButton()
        if gewaehlt not in (a, b):
            self._sag("Abgebrochen.")
            return

        neue_bytes = roh
        # 1) Verschobene: Konstanten tauschen.
        if liste:
            try:
                neue_bytes, bericht = sco_position.anwenden(
                    neue_bytes, liste, self._sag)
            except Exception as e:
                self._sag(f"PATCH FEHLGESCHLAGEN: {type(e).__name__}: {e}")
                return
            for u in bericht["uebersprungen"]:
                self._sag(f"uebersprungen: {u['variable']} -- {u['grund']}")

        # 2) Neue: Quelltext anhaengen. *** Muss NACH dem Patchen
        # kommen *** -- sco_position sucht Body_SetCS-Muster, und der
        # angehaengte dostring-Aufruf enthaelt keine.
        if neu:
            from ..schreiber import sco_neu
            try:
                neue_bytes, b2 = sco_neu.anhaengen(
                    neue_bytes, neu, melder=self._sag)
                for u in b2["ungeprueft"]:
                    self._sag("ungeprueft: " + u)
            except Exception as e:
                self._sag(f"ANHAENGEN FEHLGESCHLAGEN: "
                          f"{type(e).__name__}: {e}")
                return

        dateien = {skript: neue_bytes}
        try:
            if gewaehlt is a:
                # Nicht pak_bauen(): das legte jedesmal ein neues
                # Archiv an. mod_aufnehmen() ergaenzt den Mod-Ordner
                # und baut daraus IMMER DASSELBE PAK neu.
                ziel, besch = _mod.mod_aufnehmen(spiel, dateien,
                                                 melder=self._sag)
                probe = _mod.probe_lesen(ziel, list(dateien))
                if probe["fehlend"]:
                    self._sag(f"WARNUNG: fehlt im Archiv: "
                              f"{probe['fehlend']}")
                else:
                    self._sag(f"Fertig. {os.path.basename(ziel)} enthaelt "
                              f"{probe['eintraege']} Datei(en) -- alle "
                              f"eigenen Aenderungen in einem Archiv. "
                              f"Zum Abschalten die Datei loeschen.")
            else:
                pfade = _mod.lose_ablegen(spiel, dateien, self._sag)
                self._sag(f"Fertig. Lose Dateien schlagen jedes PAK -- "
                          f"zum Abschalten loeschen: {pfade[0]}")
        except SchreibFehler as e:
            self._sag(f"ABGELEHNT: {e}")
        except Exception as e:
            self._sag(f"FEHLER: {type(e).__name__}: {e}")

    def _aenderungen_ausgeben(self):
        liste = getattr(self, "_aenderungen", None) or []
        neu = getattr(self, "_neulinge", None) or []
        if not liste and not neu:
            self._sag("Nichts geaendert.")
            return
        vorschlag = os.path.join(
            os.path.expanduser("~"),
            f"aquanox_aenderungen_{self.level.name}.txt")
        pfad, _ = QFileDialog.getSaveFileName(
            self, "Aenderungen ausgeben", vorschlag,
            "Textdatei (*.txt)")
        if not pfad:
            return
        try:
            with open(pfad, "w", encoding="utf-8") as f:
                f.write(self._aenderungstext(liste, neu) + "\n")
            self._sag(f"{len(liste)} verschoben, {len(neu)} neu "
                      f"-- geschrieben: {pfad}")
        except Exception as e:
            self._sag(f"Schreiben fehlgeschlagen: {e}")

    def _karte_starten(self):
        """Die gewaehlte Karte im Spiel starten.

        *** Das ist der einzige Punkt, an dem das Toolkit etwas
        ausserhalb seiner selbst tut. *** Deshalb wird der Befehl
        vorher gezeigt und muss bestaetigt werden -- niemand soll
        aus Versehen ein Spiel starten.
        """
        if not self.projekt or not self.level:
            self._sag("Erst eine Karte waehlen.")
            return
        from ..modell.level import startbefehl
        exe, args, hinweise = startbefehl(
            self.projekt, self.level.name,
            fenster=self.startfenster.isChecked(),
            protokoll=self.startprotokoll.isChecked())
        if not exe:
            self._sag("Startbefehl nicht bildbar: "
                      + "; ".join(hinweise))
            return

        zeile = f'"{exe}" ' + " ".join(args)
        text = (f"Folgender Befehl wird ausgefuehrt:\n\n{zeile}\n\n"
                f"Arbeitsverzeichnis: {self.projekt.ordner}")
        if hinweise:
            text += "\n\nHinweise:\n" + "\n".join("  - " + h
                                                  for h in hinweise)
        antwort = QMessageBox.question(
            self, "Karte im Spiel starten", text,
            QMessageBox.Yes | QMessageBox.Cancel, QMessageBox.Cancel)
        if antwort != QMessageBox.Yes:
            self._sag("Start abgebrochen.")
            return

        import subprocess
        try:
            subprocess.Popen([exe] + args, cwd=self.projekt.ordner)
            self._sag(f"gestartet: {zeile}")
        except Exception as e:
            self._sag(f"Start fehlgeschlagen: {type(e).__name__}: {e}")

    def _quelle_gewechselt(self, index):
        """Karten- oder Stationsliste gewaehlt -- passenden Graph zeigen.

        Bei Karten ist das Missionsnetz gemeint, bei Stationen die
        Dialoge. Die 3D-Ansicht bleibt unangetastet, wenn sie
        gerade offen ist -- sie passt zu beidem.
        """
        if self.ansichten.currentIndex() == 0:
            return
        if index == self.stationsreiter:
            self.ansichten.setCurrentIndex(self.dialogreiter)
        elif index == self.kartenreiter:
            self.ansichten.setCurrentIndex(self.graphreiter)

    def _stationen_fuellen(self):
        """Die Stationsliste, mit der Zahl ihrer Dialoge."""
        from ..modell.level import stationen_lesen
        self.stationen.clear()
        if not self.projekt:
            return
        try:
            liste = stationen_lesen(self.projekt)
        except Exception as e:
            self._sag(f"Stationen nicht lesbar: {e}")
            return
        # Wie viele Dialoge hat jede? Einmal zaehlen, nicht je Zeile.
        zaehler = {}
        try:
            from ..parser import stake as _st
            netz = _st.lies(self.projekt.bestand)
            for d in netz.dialoge.values():
                s = d.get("station")
                if s is not None:
                    zaehler[s] = zaehler.get(s, 0) + 1
        except Exception:
            pass

        for s in liste:
            n = zaehler.get(s["key"], 0)
            it = QTreeWidgetItem([s["name"], s["karte"] or "—",
                                  f"{s['tiefe']} m" if s["tiefe"] else "—",
                                  str(n) if n else "—"])
            it.setData(0, Qt.UserRole, s["key"])
            if not n:
                # Elf der 25 sind reine Handelsposten ohne Sprache.
                it.setForeground(0, Qt.GlobalColor.gray)
            it.setToolTip(0, f"Territorium {s['territorium']}\n"
                             f"{s['skript']}")
            self.stationen.addTopLevelItem(it)
        mit = sum(1 for s in liste if zaehler.get(s["key"]))
        self._sag(f"{len(liste)} Stationen, {mit} mit Dialogen")

    def _station_gewaehlt(self, item, spalte=0):
        """Station gewaehlt: 3D-Szene laden UND Dialoge filtern.

        Die Station hat ein eigenes Skript in derselben Karte -- der
        Level-Lader nimmt es statt des Missionsskripts. Terrain,
        Texturen und Wasser kommen aus der Karte.
        """
        key = item.data(0, Qt.UserRole)
        if key is None or not self.projekt:
            return
        self._station = key

        from ..modell.level import stationen_lesen
        eintrag = next((s for s in stationen_lesen(self.projekt)
                        if s["key"] == key), None)
        if eintrag and eintrag["karte"]:
            self._sag(f"{eintrag['name']}: Szene wird geladen "
                      f"(Karte {eintrag['karte']}) ...")
            try:
                lv = Level.laden(self.projekt, eintrag["karte"],
                                 fortschritt=self._sag,
                                 skript=eintrag["skript"])
                lv.anzeigename = f"{eintrag['name']} ({eintrag['karte']})"
                self.level = lv
                self._graph_fuer = None
                self._neu_zeichnen()
                self._infos_fuellen()
            except Exception as e:
                self._sag(f"FEHLER beim Laden der Station: "
                          f"{type(e).__name__}: {e}")

        # Der Reiter richtet sich danach, was gerade offen ist:
        # aus der 3D-Ansicht heraus bleibt man dort.
        if self.ansichten.currentIndex() != 0:
            self.ansichten.setCurrentIndex(self.dialogreiter)
            self._dialoge_zeigen(erzwingen=True)
        else:
            self._dialoge_fuer = "?"     # beim naechsten Wechsel neu

    def _ansicht_gewechselt(self, index):
        """Einen Graph erst bauen, wenn sein Reiter sichtbar wird.

        Das Missionsnetz kostet je nach Karte 300 bis 700 Knoten, die
        Dialoge 308 Knoten mit 1.237 Kacheln samt Portraits -- das
        laedt man nicht auf Verdacht mit.
        """
        if index == self.graphreiter:
            self._graph_zeigen()
        elif index == self.dialogreiter:
            self._dialoge_zeigen()

    def _graph_zeigen(self, erzwingen=False):
        """Das Triggernetz der gewaehlten Karte."""
        if not self.projekt or not self.level:
            return
        if not erzwingen and getattr(self, "_graph_fuer", None) \
                == self.level.name:
            return
        from ..modell.level import missionsgraph
        self._sag(f"{self.level.name}: Missionsnetz wird aufgebaut ...")
        try:
            g = missionsgraph(self.projekt, self.level.name)
        except Exception as e:
            self._sag(f"FEHLER beim Missionsnetz: {type(e).__name__}: {e}")
            return
        self._graph_fuer = self.level.name
        self.graph.page().runJavaScript(
            f"window.aqgraph.setzen({json.dumps(g, ensure_ascii=False)})")
        if g.get("fehler"):
            self._sag(f"Missionsnetz: {g['fehler']}")
        else:
            z = g.get("kennzahlen") or {}
            self._sag(f"{self.level.name}: {z.get('knoten')} Knoten, "
                      f"{z.get('kanten')} Kanten, "
                      f"{z.get('funksprueche')} Funkstellen")

    def _dialoge_zeigen(self, erzwingen=False):
        """Die Stationsdialoge der ganzen Kampagne.

        *** Haengen NICHT an der gewaehlten Karte *** -- deshalb wird
        einmal gebaut und dann behalten.
        """
        if not self.projekt:
            return
        station = getattr(self, "_station", None)
        if not erzwingen and getattr(self, "_dialoge_fuer", "?") == station:
            return
        from ..modell.level import stationsgraph
        self._sag("Stationsdialoge werden aufgebaut ..."
                  if station is None
                  else f"Dialoge der Station {station} ...")
        try:
            g = stationsgraph(self.projekt, station=station)
        except Exception as e:
            self._sag(f"FEHLER bei den Stationsdialogen: "
                      f"{type(e).__name__}: {e}")
            return
        self._dialoge_fuer = station
        self.dialoggraph.page().runJavaScript(
            f"window.aqgraph.setzen({json.dumps(g, ensure_ascii=False)})")
        z = g.get("kennzahlen") or {}
        self._sag(f"Stationsdialoge: {z.get('knoten')} Optionen, "
                  f"{z.get('kanten')} Verweise, "
                  f"{z.get('funksprueche')} Gespraechszeilen")

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
                         + (f" — {h(d['kapitel_name'])}"
                            if d["kapitel_name"] else ""))
        unter.append(f"Karte <code>{h(level)}</code>")
        s.append(f"<div style='color:#6a7884'>{' Â· '.join(unter)}</div>")

        # --- Prosa. AUSDRUECKLICH als Nacherzaehlung kennzeichnen.
        if d["prosa"]:
            s.append("<h3>Worum es geht</h3>")
            s.append(f"<div class='prosa'>{h(d['prosa'])}</div>")
            s.append(quelle(
                "Nacherzaehlung (englisch) — geschrieben nach den "
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
                     f"<tr><td class='k'>Sprecher</td><td>{spr or '—'}"
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
                o.get("mesh") or "—",
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
                      "aus (kein dat\\ und keine Aqua.exe) — versuche es "
                      "trotzdem.")
        if not p.oeffnen(fortschritt=self._sag):
            self._sag("Konnte nicht geoeffnet werden.")
            return
        self.projekt = p

        # Die Wissensdatenbank aus mod_docu -- rein zusaetzlich.
        # Fehlt sie, laeuft alles andere unveraendert weiter.
        self.meta = None
        self._meta_sichern()

        self._stationen_fuellen()


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
                                  "ja" if k["hat_terrain"] else "—",
                                  str(len(k["skripte"]))])
            it.setData(0, Qt.UserRole, name)
            if not d.get("name_de"):
                it.setForeground(1, Qt.GlobalColor.gray)
            if d.get("gefunden"):
                teile = []
                if d.get("kapitel") is not None:
                    teile.append(f"Kapitel {d['kapitel']}"
                                 + (f" — {d['kapitel_name']}"
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
                  f"{mit_namen} mit Missionsnamen — Doppelklick zum Laden")

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




