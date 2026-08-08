@echo off
rem AquaNox-1-Toolkit -- read-only Betrachter
rem Der Pfad enthaelt Klammern ("Program Files (x86)"). Deshalb steht
rem hier ueberall "..." und es wird KEIN Klammerblock benutzt --
rem cmd zerlegt sonst die Zeile falsch.
setlocal
cd /d "%~dp0"
python -m aqtk.app
if errorlevel 1 goto fehler
goto ende
:fehler
echo.
echo Start fehlgeschlagen. Haeufigste Ursachen:
echo   - PySide6 fehlt:  python -m pip install PySide6-Essentials PySide6-Addons pillow
echo   - python nicht im PATH
pause
:ende
endlocal
