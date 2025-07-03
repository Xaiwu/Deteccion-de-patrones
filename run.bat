@echo off
echo algoritmo;patron;coincidencias;tiempo;num_docs;num_patrones > output\resultados_bm.csv
echo algoritmo;patron;coincidencias;tiempo;num_docs;num_patrones > output\resultados_kmp.csv
echo algoritmo;patron;coincidencias;tiempo;num_docs;num_patrones > output\resultados_rk.csv

REM Número de repeticiones
set REPETICIONES=20

REM Carpeta de documentos
set CARPETA=data\textos

REM Número de documentos a leer, -1 si quiero usar todos
set NUM_DOCS=-1

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Leer patrones desde patrones.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "usebackq delims=" %%p in ("data\patrones.txt") do (
        for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %%p %NUM_DOCS%') do (
            echo %%t;!NUM_PAT! >> output\resultados_kmp.csv
        )
    )
)

for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "usebackq delims=" %%p in ("data\patrones.txt") do (
        for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %%p %NUM_DOCS%') do (
            echo %%t;!NUM_PAT! >> output\resultados_bm.csv
        )
    )
)

for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "usebackq delims=" %%p in ("data\patrones.txt") do (
        for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %%p %NUM_DOCS%') do (
            echo %%t;!NUM_PAT! >> output\resultados_rk.csv
        )
    )
)

REM Eliminar el archivo textoT.txt al final
del data\textoT.txt

pause