# Detección de Patrones

## Requisitos

- **Compilador C++** (recomendado: g++ de MinGW o similar)
- Estructura de carpetas como en el repositorio (`src`, `include`, `data`, etc.)

## Compilación manual con g++

Abre una terminal en la raíz del proyecto y ejecuta:

### Compilar el ejecutable principal (`main.exe`):

```sh
cd src
g++ main.cpp LectorDocumentos.cpp KMP.cpp BM.cpp RK.cpp -I../include -o main.exe
```

### Compilar el ejecutable de búsqueda con Suffix Array (`busqueda.exe`):

```sh
g++ busqueda.cpp LectorDocumentos.cpp suffixArray.cpp -I../include -o busqueda.exe
```

### Compilar el ejecutable para generar un Suffix Array (`genera_suffixArray.exe`):

```sh
g++ suffixArray.cpp LectorDocumentos.cpp -I../include -o genera_suffixArray.exe
```

> **Nota:**  
> Si tus archivos fuente están en otras carpetas, ajusta las rutas según corresponda.  
> El parámetro `-I../include` asegura que los headers se encuentren correctamente.

> **IMPORTANTE:**  
> Para evitar errores de compilación por múltiples funciones `main`,  
> **debes descomentar el `main` de `suffixArray.cpp` solo cuando quieras generar el Suffix Array**  
> y comentar el `main` de `busqueda.cpp`.  
>  
> Cuando quieras compilar y ejecutar la búsqueda, **comenta el `main` de `suffixArray.cpp` y descomenta el de `busqueda.cpp`**.  
>  
> **Nunca deben estar ambos `main` activos al mismo tiempo.**


## Ejecución

### Ejecutar el programa principal

```sh
./main.exe <algoritmo> <carpeta_textos> <archivo_patrones> <num_docs>
```
- `<algoritmo>`: KMP, BM o RK
- `<carpeta_textos>`: Carpeta con los documentos de texto
- `<archivo_patrones>`: Archivo con los patrones a buscar
- `<num_docs>`: Número de documentos a usar

### Ejecutar búsqueda con Suffix Array

```sh
./busqueda.exe <suffix_array_file> <carpeta_textos> <num_docs> <archivo_patrones>
```
- `<suffix_array_file>`: Archivo con el Suffix Array
- `<carpeta_textos>`: Carpeta con los documentos de texto
- `<num_docs>`: Número de documentos a usar
- `<archivo_patrones>`: Archivo con los patrones a buscar

### Generar el Suffix Array

Para generar el Suffix Array, asegúrate de que el `main` de `suffixArray.cpp` esté **descomentado** y el de `busqueda.cpp` **comentado**.


```sh
./genera_suffixArray.exe <carpeta_textos> <num_docs>
```
- `<carpeta_textos>`: Carpeta con los documentos de texto a concatenar.
- `<num_docs>`: Número de documentos a usar para la concatenación.

Esto creará el archivo `data/suffixArray.txt` y mostrará información sobre el tiempo y espacio utilizado.




## Ejemplo de uso

```sh
./main.exe KMP ../data/textos/DNA ../data/patrones/pDNA100.txt 1
./busqueda.exe ../data/suffix_arrays/suffixArray_DNA_1.txt ../data/textos/DNA 1 ../data/patrones/pDNA100.txt
```

## Notas

- Asegúrate de que los archivos de entrada y salida existan y tengan el formato esperado.
- Si usas Windows, puedes ejecutar los scripts `.bat` incluidos para automatizar experimentos (recuerda descomentar las experimentaciones que quieras realizar).
