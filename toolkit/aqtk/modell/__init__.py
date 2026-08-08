"""Datenmodell -- kennt weder Qt noch JavaScript.

Diese Schicht haelt den Zustand des Programms und laesst sich ohne
Oberflaeche testen. Sie ruft die Parser-Schicht auf und reicht deren
Ergebnisse in einer Form weiter, die die Oberflaeche unveraendert
anzeigen kann.
"""
from .projekt import Projekt
from .level import Level

__all__ = ["Projekt", "Level"]
