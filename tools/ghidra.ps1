# ghidra.ps1 -- Ghidra headless auf Aqua.exe anwenden.
#
# WARUM EIN EIGENES SKRIPT: Der Spielordner heisst
# "Program Files (x86)". Die KLAMMERN brechen die Batch-Syntax von
# analyzeHeadless.bat. Deshalb liegt das Ghidra-Projekt unter
# C:\Tools\ghidra_projekte, und die Exe wird dorthin kopiert.
#
# Aufrufe:
#   .\ghidra.ps1                      -- Skripte laufen lassen (Standard)
#   .\ghidra.ps1 -Neu                 -- Exe neu importieren und analysieren
#   .\ghidra.ps1 -Skript MeinDing.java
#
# Die Analyse dauert rund 2 Minuten, ein Skriptlauf rund 30 Sekunden.

param(
    [switch]$Neu,
    [string]$Skript = "AquaExport.java",
    [string]$Argument = "C:\Tools\ghidra_projekte\ausgabe"
)

$ErrorActionPreference = "Stop"

$JDK     = "C:\Tools\jdk\jdk-21.0.12+8"
$GHIDRA  = "C:\Tools\ghidra\ghidra_12.1.2_PUBLIC"
$PROJ    = "C:\Tools\ghidra_projekte"
$NAME    = "AquaNox1"
$SPIEL   = "c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"

$env:JAVA_HOME = $JDK
$hl = "$GHIDRA\support\analyzeHeadless.bat"

if (-not (Test-Path $hl)) {
    Write-Output "Ghidra fehlt unter $GHIDRA"
    exit 1
}

if ($Neu) {
    Write-Output "--- Aqua.exe kopieren und neu analysieren ---"
    Copy-Item "$SPIEL\Aqua.exe" "$PROJ\Aqua.exe" -Force
    & $hl $PROJ $NAME -import "$PROJ\Aqua.exe" -overwrite
    Write-Output "--- benennen (Vtable-Scan + Meldungsstrings) ---"
    & $hl $PROJ $NAME -process Aqua.exe -noanalysis `
        -scriptPath "$PROJ\skripte" -postScript AquaBenennen.java
}

Write-Output "--- $Skript ---"
& $hl $PROJ $NAME -process Aqua.exe -noanalysis `
    -scriptPath "$PROJ\skripte" -postScript $Skript $Argument

# Ergebnisse zurueck ins Projekt holen
if (Test-Path "$PROJ\ausgabe") {
    New-Item -ItemType Directory -Force -Path "$SPIEL\mod_docu\ghidra_ausgabe" | Out-Null
    Copy-Item "$PROJ\ausgabe\*" "$SPIEL\mod_docu\ghidra_ausgabe\" -Force
    Remove-Item "$SPIEL\mod_docu\ghidra_ausgabe\symbole.csv" -Force -ErrorAction SilentlyContinue
    Write-Output "Ergebnisse in mod_docu\ghidra_ausgabe"
}
