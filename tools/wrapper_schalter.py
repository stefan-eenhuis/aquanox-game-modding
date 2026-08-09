"""d3d8to9 ein- und ausschalten, mit Vergleichsstand.

*** DER WRAPPER AENDERT NICHTS AM SPIEL. *** Er ist eine zusaetzliche
d3d8.dll neben Aqua.exe; die Engine laedt sie statt der System-DLL,
weil Windows das Anwendungsverzeichnis zuerst durchsucht. Rueckweg
ist deshalb schlicht: Datei weg.

Dieses Skript macht daraus einen sauberen Schalter und sichert
vorher, was sich aendern KANN -- naemlich config.txt (Aufloesung und
Grafikschalter, die das Spiel beim ersten Start schreibt) und die
Protokolldateien.

AUFRUF
    wrapper_schalter.py stand      Was liegt vor?
    wrapper_schalter.py aus        Wrapper deaktivieren (umbenennen)
    wrapper_schalter.py ein        Wrapper wieder aktivieren
    wrapper_schalter.py sichern    Vergleichsstand ablegen
"""
import os
import shutil
import sys
import time

HIER = os.path.dirname(os.path.abspath(__file__))
DOC = os.path.abspath(os.path.join(HIER, ".."))
SPIEL = os.path.abspath(os.path.join(DOC, ".."))
ABLAGE = os.path.join(DOC, "wrapper_stand")

WRAPPER = os.path.join(SPIEL, "d3d8.dll")
AUS = os.path.join(SPIEL, "d3d8.dll.aus")

# Was sich durch einen Spielstart aendern kann.
BEWEGLICH = ("config.txt", "-logfile", "-logunknown", "d3d8.log",
             "ctrlsp.des", "ctrlmp.des")


def _groesse(p):
    return os.path.getsize(p) if os.path.isfile(p) else None


def stand():
    print("Spielordner: %s\n" % SPIEL)
    ein = os.path.isfile(WRAPPER)
    aus = os.path.isfile(AUS)
    print("  d3d8.dll        %s" % (
        "AKTIV (%d B)" % _groesse(WRAPPER) if ein else "-"))
    print("  d3d8.dll.aus    %s" % (
        "abgeschaltet (%d B)" % _groesse(AUS) if aus else "-"))
    if ein:
        try:
            b = open(WRAPPER, "rb").read()
            # Der DLL-Name steht als UTF-16 in der Datei.
            marke = "d3dx9_43.dll".encode("utf-16-le")
            print("  benoetigt d3dx9_43.dll: %s"
                  % ("ja" if marke in b else "nicht gefunden"))
            sys32 = r"C:\Windows\SysWOW64\d3dx9_43.dll"
            print("  d3dx9_43.dll vorhanden: %s"
                  % ("ja" if os.path.isfile(sys32) else "*** NEIN ***"))
        except Exception as e:
            print("  (nicht lesbar: %s)" % e)
    print("\n  Bewegliche Dateien im Spielordner:")
    for n in BEWEGLICH:
        p = os.path.join(SPIEL, n)
        if os.path.isfile(p):
            print("    %-14s %8d B   %s" % (
                n, _groesse(p),
                time.strftime("%d.%m.%Y %H:%M",
                              time.localtime(os.path.getmtime(p)))))
    if os.path.isdir(ABLAGE):
        staende = sorted(os.listdir(ABLAGE))
        print("\n  Gesicherte Staende: %d  %s"
              % (len(staende), ", ".join(staende[-3:])))


def sichern(marke=None):
    """Die beweglichen Dateien wegkopieren -- nie ueberschreiben."""
    marke = marke or ("mit_wrapper" if os.path.isfile(WRAPPER)
                      else "ohne_wrapper")
    ziel = os.path.join(ABLAGE, "%s_%s" % (
        time.strftime("%Y%m%d_%H%M%S"), marke))
    os.makedirs(ziel, exist_ok=True)
    n = 0
    for name in BEWEGLICH:
        p = os.path.join(SPIEL, name)
        if os.path.isfile(p):
            shutil.copy2(p, os.path.join(ziel, name))
            n += 1
    # Dateiliste des Wurzelverzeichnisses als Vergleichsgrundlage
    with open(os.path.join(ziel, "_dateiliste.txt"), "w",
              encoding="ascii", errors="replace") as f:
        for name in sorted(os.listdir(SPIEL)):
            p = os.path.join(SPIEL, name)
            if os.path.isfile(p):
                f.write("%-40s %10d\n" % (name, os.path.getsize(p)))
    print("Stand gesichert: %s  (%d Datei(en))" % (ziel, n))
    return ziel


def schalten(an):
    quelle, ziel = (AUS, WRAPPER) if an else (WRAPPER, AUS)
    if not os.path.isfile(quelle):
        print("Nichts zu tun -- %s liegt nicht vor."
              % os.path.basename(quelle))
        return
    if os.path.isfile(ziel):
        print("FEHLER: %s liegt bereits vor. Bitte von Hand klaeren."
              % os.path.basename(ziel))
        return
    os.rename(quelle, ziel)
    print("Wrapper ist jetzt %s." % ("AKTIV" if an else "ABGESCHALTET"))


if __name__ == "__main__":
    was = sys.argv[1] if len(sys.argv) > 1 else "stand"
    if was == "stand":
        stand()
    elif was == "sichern":
        sichern(sys.argv[2] if len(sys.argv) > 2 else None)
    elif was == "aus":
        schalten(False)
    elif was == "ein":
        schalten(True)
    else:
        print(__doc__)
