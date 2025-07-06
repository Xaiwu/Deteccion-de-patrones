@echo off
REM Ejecutar todas las pruebas organizadas por dataset
REM Cada CSV contiene todos los algoritmos para un dataset especifico

REM Crear directorio de output si no existe
if not exist "output" mkdir output

set REPETICIONES=10

REM ====== DNA - DOCUMENTOS VARIABLES ======
echo Ejecutando DNA - Documentos variables...
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\DNA_documentos_variables.csv

set CARPETA=data\textos\DNA
set ARCHIVO_PAT=data\patrones\pDNA.txt

REM DNA 5 documentos
set NUM_DOCS=5
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 10 documentos
set NUM_DOCS=10
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 20 documentos
set NUM_DOCS=20
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 40 documentos
set NUM_DOCS=40
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== ENGLISH - DOCUMENTOS VARIABLES ======
echo Ejecutando English - Documentos variables...
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\English_documentos_variables.csv

set CARPETA=data\textos\English
set ARCHIVO_PAT=data\patrones\pEnglish.txt

REM English 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

REM English 10 documentos
set NUM_DOCS=10
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

REM English 20 documentos
set NUM_DOCS=20
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

REM English 40 documentos
set NUM_DOCS=40
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== PROTEINS - DOCUMENTOS VARIABLES ======
echo Ejecutando Proteins - Documentos variables...
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Proteins_documentos_variables.csv

set CARPETA=data\textos\Proteins
set ARCHIVO_PAT=data\patrones\pProteins.txt

REM Proteins 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

REM Proteins 10 documentos
set NUM_DOCS=10
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

REM Proteins 20 documentos
set NUM_DOCS=20
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

REM Proteins 40 documentos
set NUM_DOCS=40
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== SOURCES - DOCUMENTOS VARIABLES ======
echo Ejecutando Sources - Documentos variables...
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Sources_documentos_variables.csv

set CARPETA=data\textos\Sources
set ARCHIVO_PAT=data\patrones\pSources.txt

REM Sources 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

REM Sources 10 documentos
set NUM_DOCS=10
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

REM Sources 20 documentos
set NUM_DOCS=20
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

REM Sources 40 documentos
set NUM_DOCS=40
if exist "data\textoT.txt" del data\textoT.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM Crear archivo de log con timestamp de finalizacion
echo Todas las pruebas completadas: %date% %time% > output\log_completion.txt
echo.
echo ====== PRUEBAS COMPLETADAS ======
echo Se han generado 4 archivos CSV:
echo - DNA_documentos_variables.csv
echo - English_documentos_variables.csv
echo - Proteins_documentos_variables.csv
echo - Sources_documentos_variables.csv
echo.
echo Cada archivo contiene los resultados de los 3 algoritmos (KMP, BM, RK)
pause
