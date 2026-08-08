"""Einstiegspunkt. Aufruf:  python -m aqtk.app"""
import sys
import os

# QtWebEngine braucht das VOR dem Erzeugen der QApplication.
# --allow-file-access-from-files ist noetig, damit die 3D-Ansicht
# three.js als ES-Modul von der Platte laden darf; ohne das
# behandelt Chromium jede file://-Datei als eigenen Ursprung und
# bricht den Import ab (die Ansicht bliebe schwarz).
os.environ.setdefault(
    "QTWEBENGINE_CHROMIUM_FLAGS",
    "--disable-gpu-vsync --allow-file-access-from-files")

from PySide6.QtWidgets import QApplication          # noqa: E402
from PySide6.QtCore import Qt                       # noqa: E402


def main():
    QApplication.setAttribute(Qt.AA_ShareOpenGLContexts, True)
    # *** Das aqua:-Schema MUSS vor der QApplication angemeldet
    # werden. *** Danach greift registerScheme() nicht mehr, und
    # zwar ohne Fehlermeldung -- die Portraits blieben leer und der
    # Ton stumm, ohne dass irgendwo etwas danebensteht.
    from .gui.schema import schema_anmelden
    schema_anmelden()
    app = QApplication(sys.argv)
    app.setApplicationName("AquaNox-1-Toolkit")
    from .gui.hauptfenster import Hauptfenster
    f = Hauptfenster()
    f.show()
    return app.exec()


if __name__ == "__main__":
    sys.exit(main())
