"""Ein Asset zum Einfuegen auswaehlen.

1.267 OSD-Dateien in 38 Gruppen -- eine flache Liste waere
unbrauchbar. Deshalb Gruppenfilter plus Suche, und die zuletzt
benutzten oben.

Der Dialog waehlt nur aus; geladen und eingefuegt wird danach vom
Hauptfenster.
"""
from PySide6.QtCore import Qt
from PySide6.QtWidgets import (
    QDialog, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit, QComboBox,
    QTreeWidget, QTreeWidgetItem, QPushButton, QDialogButtonBox,
)


class AssetWahl(QDialog):
    """Auswahl eines OSD-Verweises."""

    # Ueber Aufrufe hinweg gemerkt -- wer ein Asset zehnmal setzt,
    # sucht es nicht zehnmal.
    zuletzt = []

    def __init__(self, assets, eltern=None):
        super().__init__(eltern)
        self.setWindowTitle("Asset einfuegen")
        self.resize(560, 520)
        self._assets = assets
        self._gewaehlt = None

        lay = QVBoxLayout(self)

        kopf = QHBoxLayout()
        kopf.addWidget(QLabel("Gruppe"))
        self.gruppe = QComboBox()
        gruppen = sorted({a["gruppe"] for a in assets})
        self.gruppe.addItem(f"alle ({len(assets)})")
        for g in gruppen:
            n = sum(1 for a in assets if a["gruppe"] == g)
            self.gruppe.addItem(f"{g} ({n})", g)
        self.gruppe.currentIndexChanged.connect(self._fuellen)
        kopf.addWidget(self.gruppe, 1)
        lay.addLayout(kopf)

        self.suche = QLineEdit()
        self.suche.setPlaceholderText(
            "Name enthaelt ... (z.B. turret, pole, dock)")
        self.suche.textChanged.connect(self._fuellen)
        lay.addWidget(self.suche)

        self.liste = QTreeWidget()
        self.liste.setHeaderLabels(["Name", "Gruppe", "OSD"])
        self.liste.setColumnWidth(0, 200)
        self.liste.setColumnWidth(1, 90)
        self.liste.itemDoubleClicked.connect(lambda *_: self.accept())
        self.liste.currentItemChanged.connect(self._gewaehlt_merken)
        lay.addWidget(self.liste, 1)

        self.info = QLabel("")
        self.info.setStyleSheet("color:#777;font-size:11px")
        self.info.setWordWrap(True)
        lay.addWidget(self.info)

        knoepfe = QDialogButtonBox(
            QDialogButtonBox.Ok | QDialogButtonBox.Cancel)
        knoepfe.button(QDialogButtonBox.Ok).setText("Einfuegen")
        knoepfe.accepted.connect(self.accept)
        knoepfe.rejected.connect(self.reject)
        lay.addWidget(knoepfe)

        self._fuellen()

    # ------------------------------------------------------------------
    def _fuellen(self):
        self.liste.clear()
        g = self.gruppe.currentData()
        wort = self.suche.text().strip().lower()

        # Zuletzt benutzte zuerst -- aber nur, wenn nicht gesucht wird.
        gezeigt = []
        if not wort and g is None and AssetWahl.zuletzt:
            for v in AssetWahl.zuletzt[:8]:
                a = next((x for x in self._assets
                          if x["verweis"] == v), None)
                if a:
                    it = QTreeWidgetItem(
                        [f"★ {a['name']}", a["gruppe"], a["verweis"]])
                    it.setData(0, Qt.UserRole, a)
                    self.liste.addTopLevelItem(it)
                    gezeigt.append(v)

        n = 0
        for a in self._assets:
            if g and a["gruppe"] != g:
                continue
            if wort and wort not in a["name"].lower():
                continue
            if a["verweis"] in gezeigt:
                continue
            it = QTreeWidgetItem([a["name"], a["gruppe"], a["verweis"]])
            it.setData(0, Qt.UserRole, a)
            self.liste.addTopLevelItem(it)
            n += 1
            if n > 600:          # sonst wird die Liste zaeh
                self.info.setText(
                    f"... mehr als 600 Treffer, Anzeige gekuerzt. "
                    f"Grenzen Sie mit Gruppe oder Suchwort ein.")
                return
        self.info.setText(f"{n} Treffer")

    def _gewaehlt_merken(self, it, _alt=None):
        self._gewaehlt = it.data(0, Qt.UserRole) if it else None
        if self._gewaehlt:
            self.info.setText(f"{self._gewaehlt['datei']}")

    def auswahl(self):
        if self._gewaehlt:
            v = self._gewaehlt["verweis"]
            if v in AssetWahl.zuletzt:
                AssetWahl.zuletzt.remove(v)
            AssetWahl.zuletzt.insert(0, v)
            del AssetWahl.zuletzt[12:]
        return self._gewaehlt
