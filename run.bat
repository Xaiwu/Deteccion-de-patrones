@echo off
REM Patrones variables
REM DNA 
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_bm_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_kmp_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_rk_DNA.csv

set REPETICIONES=10

REM DNA con 100 patrones
REM Número de repeticiones

REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pDNA100.txt

REM Número de documentos a leer, -1 si quiero usar todos
set NUM_DOCS=1

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
REM Carpeta de documentos
set CARPETA=data\textos\DNA

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
REM Carpeta de documentos
set CARPETA=data\textos\DNA

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
REM Carpeta de documentos
set CARPETA=data\textos\DNA

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
REM Carpeta de documentos
set CARPETA=data\textos\DNA

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





REM English
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_bm_English.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_kmp_English.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_rk_English.csv

REM English con 100 patrones
REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pEnglish100.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pEnglish100.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_English.csv
    )
)



REM English con 200 patrones
REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pEnglish200.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pEnglish200.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_English.csv
    )
)



REM English con 300 patrones
REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pEnglish300.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pEnglish300.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_English.csv
    )
)



REM English con 1000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pEnglish1000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pEnglish1000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_English.csv
    )
)



REM English con 2000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pEnglish2000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0

for /f "usebackq delims=" %%l in ("data\patrones\pEnglish2000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_English.csv
    )
)
del data\textoT.txt




REM Proteins
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_bm_Proteins.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_kmp_Proteins.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_rk_Proteins.csv

REM Proteins con 100 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pProteins100.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pProteins100.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Proteins.csv
    )
)



REM Proteins con 200 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pProteins200.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pProteins200.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Proteins.csv
    )
)


REM Proteins con 300 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pProteins300.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pProteins300.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Proteins.csv
    )
)



REM Proteins con 1000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pProteins1000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pProteins1000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Proteins.csv
    )
)



REM Proteins con 2000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pProteins2000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0

for /f "usebackq delims=" %%l in ("data\patrones\pProteins2000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Proteins.csv
    )
)
del data\textoT.txt





REM Sources
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_bm_Sources.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_kmp_Sources.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\resultados_rk_Sources.csv

REM Sources con 100 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pSources100.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pSources100.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Sources.csv
    )
)



REM Sources con 200 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pSources200.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pSources200.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Sources.csv
    )
)



REM Sources con 300 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pSources300.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pSources300.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Sources.csv
    )
)



REM Sources con 1000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pSources1000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pSources1000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Sources.csv
    )
)



REM Sources con 2000 patrones
REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patrones
set ARCHIVO_PAT=data\patrones\pSources2000.txt

REM Contar líneas en patrones.txt
set NUM_PAT=0
for /f "usebackq delims=" %%l in ("data\patrones\pSources2000.txt") do (
    set /a NUM_PAT+=1
)

setlocal enabledelayedexpansion


REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\resultados_rk_Sources.csv
    )
)
del data\textoT.txt












REM Numero de documentos variable

REM Crear archivos de salida para test con documentos variables
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_bm_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_kmp_DNA.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_rk_DNA.csv

echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_bm_English.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_kmp_English.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_rk_English.csv

echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_bm_Proteins.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_kmp_Proteins.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_rk_Proteins.csv

echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_bm_Sources.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_kmp_Sources.csv
echo algoritmo;patrones;tiempo_total;coincidencias;numdocs > output\doc\resultados_rk_Sources.csv

REM DNA con 5 documentos
REM Número de documentos
set NUM_DOCS=5

REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pDNA.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_DNA.csv
    )
)

del data\textoT.txt



REM DNA con 10 documentos
REM Número de documentos
set NUM_DOCS=10

REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pDNA.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_DNA.csv
    )
)

del data\textoT.txt



REM DNA con 20 documentos
REM Número de documentos
set NUM_DOCS=20

REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pDNA.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_DNA.csv
    )
)

del data\textoT.txt



REM DNA con 40 documentos
REM Número de documentos
set NUM_DOCS=40

REM Carpeta de documentos
set CARPETA=data\textos\DNA

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pDNA.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_DNA.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_DNA.csv
    )
)

del data\textoT.txt



REM English con 5 documentos
REM Número de documentos
set NUM_DOCS=5

REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pEnglish.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_English.csv
    )
)

del data\textoT.txt



REM English con 10 documentos
REM Número de documentos
set NUM_DOCS=10

REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pEnglish.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_English.csv
    )
)

del data\textoT.txt



REM English con 20 documentos
REM Número de documentos
set NUM_DOCS=20

REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pEnglish.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_English.csv
    )
)

del data\textoT.txt



REM English con 40 documentos
REM Número de documentos
set NUM_DOCS=40

REM Carpeta de documentos
set CARPETA=data\textos\English

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pEnglish.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_English.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_English.csv
    )
)

del data\textoT.txt



REM Proteins con 5 documentos
REM Número de documentos
set NUM_DOCS=5

REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pProteins.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Proteins.csv
    )
)

del data\textoT.txt



REM Proteins con 10 documentos
REM Número de documentos
set NUM_DOCS=10

REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pProteins.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Proteins.csv
    )
)

del data\textoT.txt



REM Proteins con 20 documentos
REM Número de documentos
set NUM_DOCS=20

REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pProteins.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Proteins.csv
    )
)

del data\textoT.txt



REM Proteins con 40 documentos
REM Número de documentos
set NUM_DOCS=40

REM Carpeta de documentos
set CARPETA=data\textos\Proteins

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pProteins.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Proteins.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Proteins.csv
    )
)

del data\textoT.txt



REM Sources con 5 documentos
REM Número de documentos
set NUM_DOCS=5

REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pSources.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Sources.csv
    )
)

del data\textoT.txt



REM Sources con 10 documentos
REM Número de documentos
set NUM_DOCS=10

REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pSources.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Sources.csv
    )
)

del data\textoT.txt



REM Sources con 20 documentos
REM Número de documentos
set NUM_DOCS=20

REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pSources.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Sources.csv
    )
)

del data\textoT.txt



REM Sources con 40 documentos
REM Número de documentos
set NUM_DOCS=40

REM Carpeta de documentos
set CARPETA=data\textos\Sources

REM Archivo de patron (solo un patrón)
set ARCHIVO_PAT=data\patrones\pSources.txt
set NUM_PAT=1

setlocal enabledelayedexpansion

REM Ejecutar cada algoritmo REPETICIONES veces y guardar el promedio global
for /L %%c in (1,1,%REPETICIONES%) do (
    for /f "tokens=*" %%t in ('src\main.exe KMP %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_kmp_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe BM %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_bm_Sources.csv
    )
    for /f "tokens=*" %%t in ('src\main.exe RK %CARPETA% %ARCHIVO_PAT% %NUM_DOCS%') do (
        echo %%t >> output\doc\resultados_rk_Sources.csv
    )
)

del data\textoT.txt

echo Terminado!
pause
