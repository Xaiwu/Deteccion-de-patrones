// Algoritmo ingenuo para construir el arreglo de sufijos de un texto dado
#include "../include/suffixArray.h"
#include "../include/LectorDocumentos.h"


// Función de comparación usada por sort() para ordenar dos sufijos
bool cmp(const suffix &a, const suffix &b) {
    return a.suff < b.suff;
}

/* Función principal que recibe un texto 'txt' (std::string),
   construye y devuelve un arreglo de enteros con los índices
   de inicio de todos los sufijos ordenados */
std::vector<int> buildSuffixArray(const std::string& txt) {
    int n = txt.length();
    std::vector<suffix> suf(n);
    for (int i = 0; i < n; i++) {
        suf[i].index = i;
        suf[i].suff = txt.substr(i); // Copia el sufijo como string
    }

    std::sort(suf.begin(), suf.end(), cmp);

    std::vector<int> suffixArr(n);
    for (int i = 0; i < n; i++) {
        suffixArr[i] = suf[i].index;
    }
    return suffixArr;
}

// Funcion para crear un archivo .txt con el arreglo de sufijos
void crearTxt(const std::vector<int>& suffixArr) {
    std::ofstream salida("../data/suffixArray.txt");
    if (!salida) {
        std::cerr << "Error al crear el archivo de salida." << std::endl;
        return;
    }
    for (int idx : suffixArr) {
        salida << idx << " ";
    }
    salida.close();
}

// Programa principal para crear un arreglo de sufijos a partir de un texto dado
int main() {
    std::string ruta = "../data/textoT.txt";
    std::ifstream entrada(ruta);
    if (!entrada) {
        std::cerr << "Error al abrir el archivo: " << ruta << std::endl;
        return 1;
    }

    LectorDocumentos lector;
    std::string texto = lector.cargarTxt(ruta);

    std::vector<int> suffixArr = buildSuffixArray(texto);
    crearTxt(suffixArr);

    std::cout << "Arreglo de sufijos creado y guardado en 'suffixArray.txt'." << std::endl;   

    return 0;
}