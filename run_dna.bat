@echo off
REM Patrones variables para DNA
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_bm_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_kmp_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_rk_DNA.csv

set REPETICIONES=10
set NUM_DOCS=1

REM DNA con 100 patrones
REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA100.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pDNA100.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_DNA.csv
    )
)

REM DNA con 200 patrones
REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA200.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pDNA200.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_DNA.csv
    )
)

REM DNA con 300 patrones
REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA300.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pDNA300.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_DNA.csv
    )
)

REM DNA con 1000 patrones
REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA1000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pDNA1000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_DNA.csv
    )
)

REM DNA con 2000 patrones
REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA2000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pDNA2000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_DNA.csv
    )
)

del data\textoT.txt

echo Pruebas de DNA completadas!
pause
