@echo off
REM Ejecutar todas las pruebas organizadas por dataset
REM Cada dataset tendra un archivo para patrones variables y otro para documentos variables

REM Crear directorio de output si no existe
if not exist "output" mkdir output

set REPETICIONES=10

REM ====== DNA DATASET ======

REM DNA - Patrones variables (todos los algoritmos en un archivo)
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\DNA_patrones_variables.csv

set NUM_DOCS=1
set CARPETA=data\textos\DNA

REM DNA 100 patrones
set ARCHIVO_PAT=data\patrones\pDNA100.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
)

REM DNA 200 patrones
set ARCHIVO_PAT=data\patrones\pDNA200.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
)

REM DNA 300 patrones
set ARCHIVO_PAT=data\patrones\pDNA300.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
)

REM DNA 1000 patrones
set ARCHIVO_PAT=data\patrones\pDNA1000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
)

REM DNA 2000 patrones
set ARCHIVO_PAT=data\patrones\pDNA2000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_patrones_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM DNA - Documentos variables (todos los algoritmos en un archivo)
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\DNA_documentos_variables.csv

set ARCHIVO_PAT=data\patrones\pDNA.txt

REM DNA 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 10 documentos
set NUM_DOCS=10
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

REM DNA 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\DNA_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== ENGLISH DATASET ======

REM English - Patrones variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\English_patrones_variables.csv

set NUM_DOCS=1
set CARPETA=data\textos\English

REM English 100 patrones
set ARCHIVO_PAT=data\patrones\pEnglish100.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
)

REM English 200 patrones
set ARCHIVO_PAT=data\patrones\pEnglish200.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
)

REM English 300 patrones
set ARCHIVO_PAT=data\patrones\pEnglish300.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
)

REM English 1000 patrones
set ARCHIVO_PAT=data\patrones\pEnglish1000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
)

REM English 2000 patrones
set ARCHIVO_PAT=data\patrones\pEnglish2000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_patrones_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM English - Documentos variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\English_documentos_variables.csv

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
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

REM English 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

REM English 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\English_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== PROTEINS DATASET ======

REM Proteins - Patrones variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Proteins_patrones_variables.csv

set NUM_DOCS=1
set CARPETA=data\textos\Proteins

REM Proteins 100 patrones
set ARCHIVO_PAT=data\patrones\pProteins100.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
)

REM Proteins 200 patrones
set ARCHIVO_PAT=data\patrones\pProteins200.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
)

REM Proteins 300 patrones
set ARCHIVO_PAT=data\patrones\pProteins300.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
)

REM Proteins 1000 patrones
set ARCHIVO_PAT=data\patrones\pProteins1000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
)

REM Proteins 2000 patrones
set ARCHIVO_PAT=data\patrones\pProteins2000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_patrones_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM Proteins - Documentos variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Proteins_documentos_variables.csv

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
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

REM Proteins 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

REM Proteins 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Proteins_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM ====== SOURCES DATASET ======

REM Sources - Patrones variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Sources_patrones_variables.csv

set NUM_DOCS=1
set CARPETA=data\textos\Sources

REM Sources 100 patrones
set ARCHIVO_PAT=data\patrones\pSources100.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
)

REM Sources 200 patrones
set ARCHIVO_PAT=data\patrones\pSources200.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
)

REM Sources 300 patrones
set ARCHIVO_PAT=data\patrones\pSources300.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
)

REM Sources 1000 patrones
set ARCHIVO_PAT=data\patrones\pSources1000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
)

REM Sources 2000 patrones
set ARCHIVO_PAT=data\patrones\pSources2000.txt
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_patrones_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM Sources - Documentos variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\Sources_documentos_variables.csv

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
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

REM Sources 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

REM Sources 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do echo %%t >> output\Sources_documentos_variables.csv
)

if exist "data\textoT.txt" del data\textoT.txt

REM Crear archivo de log con timestamp de finalizacion
echo Todas las pruebas completadas: %date% %time% > output\log_completion.txt
