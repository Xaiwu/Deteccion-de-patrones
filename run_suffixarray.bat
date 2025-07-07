@echo off
REM Ejecutar Suffix Array para todas las combinaciones de datasets y documentos
REM Genera tiempos de construccion del arreglo de sufijos

REM Crear directorios si no existen
if not exist "output" mkdir output
if not exist "data\suffix_arrays" mkdir data\suffix_arrays

set REPETICIONES=1

REM Crear archivo CSV con encabezados
echo algoritmo;dataset;num_documentos;tiempo;espacio_mb > output\SuffixArray_tiempos.csv

echo ====== EJECUTANDO SUFFIX ARRAY PARA TODOS LOS DATASETS ======

REM ====== DNA ======
echo Ejecutando DNA...

set CARPETA=data\textos\DNA
set DATASET_NAME=DNA

REM DNA 5 documentos
set NUM_DOCS=5
set DATASET_NAME=DNA
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM DNA 10 documentos
set NUM_DOCS=10
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM DNA 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM DNA 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM ====== ENGLISH ======
echo Ejecutando English...

set CARPETA=data\textos\English
set DATASET_NAME=English

REM English 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM English 10 documentos
set NUM_DOCS=10
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM English 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM English 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM ====== PROTEINS ======
echo Ejecutando Proteins...

set CARPETA=data\textos\Proteins
set DATASET_NAME=Proteins

REM Proteins 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Proteins 10 documentos
set NUM_DOCS=10
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Proteins 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Proteins 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM ====== SOURCES ======
echo Ejecutando Sources...

set CARPETA=data\textos\Sources
set DATASET_NAME=Sources

REM Sources 5 documentos
set NUM_DOCS=5
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Sources 10 documentos
set NUM_DOCS=10
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Sources 20 documentos
set NUM_DOCS=20
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Sources 40 documentos
set NUM_DOCS=40
for /L %%c in (1,1,%REPETICIONES%) do (
    if exist "data\textoT.txt" del data\textoT.txt
    if exist "data\suffixArray.txt" del data\suffixArray.txt
    for /f "tokens=*" %%t in ('src\suffixArray.exe %CARPETA% %NUM_DOCS%') do echo %%t >> output\SuffixArray_tiempos.csv
    if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%DATASET_NAME%_%NUM_DOCS%.txt"
)

REM Limpiar archivos temporales finales
if exist "data\textoT.txt" del data\textoT.txt

REM Crear archivo de log con timestamp de finalizacion
echo Suffix Array completado: %date% %time% > output\log_suffixarray_completion.txt

echo.
echo ====== SUFFIX ARRAY COMPLETADO ======
echo Se han generado los archivos:
echo - SuffixArray_tiempos.csv (en output\)
echo - suffixArray archivos individuales (en data\suffix_arrays\)
echo.
echo Los archivos contienen los tiempos de construccion del arreglo de sufijos
echo para cada dataset y numero de documentos
echo Los arrays de sufijos se guardaron como:
echo   - suffixArray_DNA_5.txt, suffixArray_DNA_10.txt, etc.
echo   - suffixArray_English_5.txt, suffixArray_English_10.txt, etc.
echo   - suffixArray_Proteins_5.txt, suffixArray_Proteins_10.txt, etc.
echo   - suffixArray_Sources_5.txt, suffixArray_Sources_10.txt, etc.
pause
