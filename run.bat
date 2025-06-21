@echo off
echo algoritmo;patron;coincidencias;tiempo;num_docs;num_patrones > resultados_kmp.csv

REM Número de repeticiones
set REPETICIONES=20

REM Carpeta de documentos
set CARPETA=DNA

REM Número de documentos a leer, -1 si quiero usar todos
set NUM_DOCS=1

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("patrones.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Leer patrones desde patrones.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "usebackq delims=" %%p in ("patrones.txt") do (
        for /f "tokens=*" %%t in ('main.exe KMP %CARPETA% %%p %NUM_DOCS%') do (
            echo %%t;!NUM_PAT! >> resultados_kmp.csv
        )
    )
)

pause