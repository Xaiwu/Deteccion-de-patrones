@echo off
setlocal enabledelayedexpansion

REM Crear directorio de output si no existe
if not exist "output" mkdir output
if not exist "data\suffix_arrays" mkdir data\suffix_arrays

set REPETICIONES=1

REM Lista de datasets
set DATASETS=DNA English Proteins Sources

REM Lista de cantidades de documentos
set DOCUMENTOS=1 5 10 20 40

REM Lista de tamaños de patrones
set TAMAÑOS_PATRONES=100 200 300 1000 2000

@REM REM ========================================
@REM REM PASO 1: CONSTRUIR SUFFIX ARRAYS
@REM REM ========================================
@REM echo.
@REM echo ====== PASO 1: CONSTRUYENDO SUFFIX ARRAYS ======
@REM echo.

@REM REM Crear archivo CSV para tiempos de construccion
@REM echo algoritmo;dataset;num_documentos;tiempo;espacio_mb > output\SuffixArray_construccion_tiempos.csv

@REM for %%d in (%DATASETS%) do (
@REM     echo Construyendo Suffix Arrays para %%d...
    
@REM     set CARPETA=data\textos\%%d
    
@REM     for %%n in (%DOCUMENTOS%) do (
@REM         echo   - Construyendo %%d con %%n documentos...
        
@REM         for /L %%c in (1,1,%REPETICIONES%) do (
@REM             if exist "data\textoT.txt" del data\textoT.txt
@REM             if exist "data\suffixArray.txt" del data\suffixArray.txt
@REM             for /f "tokens=*" %%t in ('src\suffixArray.exe !CARPETA! %%n') do echo %%t >> output\SuffixArray_construccion_tiempos.csv
@REM             if exist "data\suffixArray.txt" move "data\suffixArray.txt" "data\suffix_arrays\suffixArray_%%d_%%n.txt" >nul
@REM         )
@REM     )
@REM )

@REM echo Suffix Arrays construidos exitosamente.

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

@REM REM ========================================
@REM REM PASO 3: ALGORITMOS TRADICIONALES
@REM REM ========================================
@REM echo.
@REM echo ====== PASO 3: EJECUTANDO ALGORITMOS TRADICIONALES ======
@REM echo.

@REM REM Crear archivos CSV por dataset para algoritmos tradicionales
@REM for %%d in (%DATASETS%) do (
@REM     echo algoritmo;patrones;tiempo_total;coincidencias;numdocs;espacio_bytes > output\%%d_patrones_variables.csv
@REM     echo algoritmo;patrones;tiempo_total;coincidencias;numdocs;espacio_bytes > output\%%d_documentos_variables.csv
@REM )

@REM REM ===== PATRONES VARIABLES (1 documento) =====
@REM echo Ejecutando experimentos con patrones variables...

@REM for %%d in (%DATASETS%) do (
@REM     echo   Dataset %%d - patrones variables...
@REM     set CARPETA=data\textos\%%d
@REM     set NUM_DOCS=1
    
@REM     for %%p in (%TAMAÑOS_PATRONES%) do (
@REM         set ARCHIVO_PAT=data\patrones\p%%d%%p.txt
        
@REM         if exist "!ARCHIVO_PAT!" (
@REM             echo     - %%p patrones...
@REM             for /L %%c in (1,1,%REPETICIONES%) do (
@REM                 if exist "data\textoT.txt" del data\textoT.txt
@REM                 for /f "tokens=*" %%t in ('src\main.exe KMP !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
@REM                 for /f "tokens=*" %%t in ('src\main.exe BM !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
@REM                 for /f "tokens=*" %%t in ('src\main.exe RK !CARPETA! !ARCHIVO_PAT! !NUM_DOCS!') do echo %%t >> output\%%d_patrones_variables.csv
@REM             )
@REM         ) else (
@REM             echo       ADVERTENCIA: No se encontro !ARCHIVO_PAT!
@REM         )
@REM     )
@REM )

@REM REM ===== DOCUMENTOS VARIABLES (patron fijo) =====
@REM echo Ejecutando experimentos con documentos variables...

@REM for %%d in (%DATASETS%) do (
@REM     echo   Dataset %%d - documentos variables...
@REM     set CARPETA=data\textos\%%d
@REM     set ARCHIVO_PAT=data\patrones\p%%d.txt
    
@REM     if exist "!ARCHIVO_PAT!" (
@REM         for %%n in (%DOCUMENTOS%) do (
@REM             echo     - %%n documentos...
@REM             for /L %%c in (1,1,%REPETICIONES%) do (
@REM                 if exist "data\textoT.txt" del data\textoT.txt
@REM                 for /f "tokens=*" %%t in ('src\main.exe KMP !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
@REM                 for /f "tokens=*" %%t in ('src\main.exe BM !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
@REM                 for /f "tokens=*" %%t in ('src\main.exe RK !CARPETA! !ARCHIVO_PAT! %%n') do echo %%t >> output\%%d_documentos_variables.csv
@REM             )
@REM         )
@REM     ) else (
@REM         echo     ADVERTENCIA: No se encontro !ARCHIVO_PAT!
@REM     )
@REM )

@REM REM ========================================
@REM REM LIMPIEZA Y RESUMEN
@REM REM ========================================

@REM REM Limpiar archivos temporales finales
@REM if exist "data\textoT.txt" del data\textoT.txt

@REM REM Crear archivo de log con timestamp de finalizacion
@REM echo Experimentos completos finalizados: %date% %time% > output\log_experimentos_completos.txt
