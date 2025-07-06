// Algoritmo ingenuo para construir el arreglo de sufijos de un texto dado
#include "../include/suffixArray.h"
#include "../include/LectorDocumentos.h"

// Función de comparación usada por sort() para ordenar dos sufijos
// Devuelve true si a.suff es lexicográficamente menor que b.suff
bool cmp(const struct suffix &a, const struct suffix &b) {
    return strcmp(a.suff, b.suff) < 0;
}

/* Función principal que recibe un texto 'txt' de longitud n,
   construye y devuelve un arreglo de enteros con los índices
   de inicio de todos los sufijos ordenados */
int *buildSuffixArray(char *txt, int n) {
    // Array de estructuras para guardar cada sufijo y su posición
    std::vector<suffix> suf(n);
    for (int i = 0; i < n; i++) {
        suf[i].index = i;        // guardamos la posición actual
        suf[i].suff = txt + i;   // puntero al sufijo que comienza en i
    }

    // Ordena los sufijos
    std::sort(suf.begin(), suf.end(), cmp);

    // Construye el arreglo de sufijos con los índices ordenados
    int *suffixArr = new int[n];
    for (int i = 0; i < n; i++) {
        suffixArr[i] = suf[i].index;
    }

    // Devuelve el arreglo de índices
    return suffixArr;
}

// Funcion para crear un archivo .txt con el arreglo de sufijos
void crearTxt(int *suffixArr, int n) {
    std::ofstream salida("../data/suffixArray.txt");
    if (!salida) {
        std::cerr << "Error al crear el archivo de salida." << std::endl;
        return;
    }
    for (int i = 0; i < n; i++) {
        salida << suffixArr[i] << " ";
    }
    salida.close();
}

// Programa principal para crear un arreglo de sufijos a partir de un texto dado
int main() {
   // Leer archivo y construir el arreglo de sufijos
    std::string ruta = "../data/textoT.txt";
    std::ifstream entrada(ruta);
    if (!entrada) {
      std::cerr << "Error al abrir el archivo: " << ruta << std::endl;
      return 1;
    }

    LectorDocumentos lector;
    std::string texto = lector.cargarTxt(ruta);

    int* suffixArr = buildSuffixArray(texto.c_str(), texto.length());
    crearTxt(suffixArr, texto.length());

    // Liberar memoria
    delete[] suffixArr;

    std::cout << "Arreglo de sufijos creado y guardado en 'suffixArray.txt'." << std::endl;   
    
    return 0;
}