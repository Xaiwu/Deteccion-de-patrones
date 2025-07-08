@echo off
setlocal enabledelayedexpansion

REM Crear directorio de output si no existe
if not exist "output" mkdir output
if not exist "data\suffix_arrays" mkdir data\suffix_arrays

set REPETICIONES=20

REM Lista de datasets
set DATASETS=DNA English Proteins Sources

REM Lista de cantidades de documentos
set DOCUMENTOS=1 5 10 20 40

REM Lista de tamaños de patrones
set TAMAÑOS_PATRONES=100 200 300 1000 2000

REM ========================================
REM PASO 1: CONSTRUIR SUFFIX ARRAYS
REM ========================================
echo.
echo ====== PASO 1: CONSTRUYENDO SUFFIX ARRAYS ======
echo.

REM Crear archivo CSV para tiempos de construccion
echo algoritmo;dataset;num_documentos;tiempo;espacio_mb > output\SuffixArray_construccion_tiempos.csv

for %%d in (%DATASETS%) do (
    echo Construyendo Suffix Arrays para %%d...
    
    set CARPETA=data\textos\%%d
    
    for %%n in (%DOCUMENTOS%) do (
        echo   - Construyendo %%d con %%n documentos...
        
        for /L %%c in (1,1,%REPETICIONES%) do (
            if exist "data\textoT.txt" del data\textoT.txt
            if exist "data\suffixArray.txt" del data\suffixArray.txt
            for /f "tokens=*" %%t in ('src\suffixArray.exe !CARPETA! %%n') do echo %%t >> output\SuffixArray_construccion_tiempos.csv
            if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%%d_%%n.txt" >nul
        )
    )
)

echo Suffix Arrays construidos exitosamente.

REM ========================================
REM PASO 2: BUSQUEDAS CON SUFFIX ARRAY
REM ========================================
echo.
echo ====== PASO 2: EJECUTANDO BUSQUEDAS CON SUFFIX ARRAY ======
echo.

REM Crear archivos CSV por dataset con encabezados
for %%d in (%DATASETS%) do (
    echo algoritmo;cantidad_patrones;tiempo;coincidencias;num_documentos;espacio_bytes > output\Busqueda_SuffixArray_%%d_tiempos.csv
)

for %%d in (%DATASETS%) do (
    echo Ejecutando busquedas Suffix Array en %%d...
    
    set CARPETA=data\textos\%%d
    set SA_FILE=data\suffix_arrays\suffixArray_%%d_1.txt
    
    if exist "!SA_FILE!" (
        for %%p in (%TAMAÑOS_PATRONES%) do (
            echo   - %%d con %%p patrones...
            set PATRONES_FILE=data\patrones\p%%d%%p.txt
            
            if exist "!PATRONES_FILE!" (
                for /L %%c in (1,1,%REPETICIONES%) do (
                    if exist "data\textoT.txt" del data\textoT.txt
                    for /f "tokens=*" %%t in ('src\busqueda.exe !SA_FILE! !CARPETA! 1 !PATRONES_FILE!') do echo %%t >> output\Busqueda_SuffixArray_%%d_tiempos.csv
                )
            ) else (
                echo     ADVERTENCIA: No se encontro !PATRONES_FILE!
            )
        )
    ) else (
        echo   ADVERTENCIA: No se encontro !SA_FILE!
    )
)

echo Busquedas con Suffix Array completadas.

REM ========================================
REM PASO 3: ALGORITMOS TRADICIONALES
REM ========================================
echo.
echo ====== PASO 3: EJECUTANDO ALGORITMOS TRADICIONALES ======
echo.

REM Crear archivos CSV por dataset para algoritmos tradicionales
for %%d in (%DATASETS%) do (
    echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\%%d_patrones_variables.csv
    echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\%%d_documentos_variables.csv
)

REM ===== PATRONES VARIABLES (1 documento) =====
echo Ejecutando experimentos con patrones variables...

for %%d in (%DATASETS%) do (
    echo   Dataset %%d - patrones variables...
    set CARPETA=data\textos\%%d
    set NUM_DOCS=1
    
    for %%p in (%TAMAÑOS_PATRONES%) do (
        set ARCHIVO_PAT=data\patrones\p%%d%%p.txt
        
        if exist "!ARCHIVO_PAT!" (
            echo     - %%p patrones...
            for /L %%c in (1,1,%REPETICIONES%) do (
                if exist "data\textoT.txt" del data\textoT.txt
                for /f "tokens=*" %%t in ('src\main.exe KMP !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
                for /f "tokens=*" %%t in ('src\main.exe BM !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
                for /f "tokens=*" %%t in ('src\main.exe RK !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
            )
        ) else (
            echo       ADVERTENCIA: No se encontro !ARCHIVO_PAT!
        )
    )
)

REM ===== DOCUMENTOS VARIABLES (patron fijo) =====
echo Ejecutando experimentos con documentos variables...

for %%d in (%DATASETS%) do (
    echo   Dataset %%d - documentos variables...
    set CARPETA=data\textos\%%d
    set ARCHIVO_PAT=data\patrones\p%%d.txt
    
    if exist "!ARCHIVO_PAT!" (
        for %%n in (%DOCUMENTOS%) do (
            echo     - %%n documentos...
            for /L %%c in (1,1,%REPETICIONES%) do (
                if exist "data\textoT.txt" del data\textoT.txt
                for /f "tokens=*" %%t in ('src\main.exe KMP !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
                for /f "tokens=*" %%t in ('src\main.exe BM !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
                for /f "tokens=*" %%t in ('src\main.exe RK !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
            )
        )
    ) else (
        echo     ADVERTENCIA: No se encontro !ARCHIVO_PAT!
    )
)

REM ========================================
REM LIMPIEZA Y RESUMEN
REM ========================================

REM Limpiar archivos temporales finales
if exist "data\textoT.txt" del data\textoT.txt

REM Crear archivo de log con timestamp de finalizacion
echo Experimentos completos finalizados: %date% %time% > output\log_experimentos_completos.txt
