@echo off
echo algoritmo;patrones;tiempo_promedio;coincidencias;numdocs > output\resultados_bm.csv
echo algoritmo;patrones;tiempo_promedio;coincidencias;numdocs > output\resultados_kmp.csv
echo algoritmo;patrones;tiempo_promedio;coincidencias;numdocs > output\resultados_rk.csv


REM Número de repeticiones
set REPETICIONES=20

REM Carpeta de documentos
set CARPETA=data\textos

REM Archivo de patrones
set ARCHIVO_PAT=data\patronesDNA.txt

REM Número de documentos a leer, -1 si quiero usar todos
set NUM_DOCS=2

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk.csv
    )
)
del data\textoT.txt

pause
