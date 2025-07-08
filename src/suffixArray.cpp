// Algoritmo ingenuo para construir el arreglo de sufijos de un texto dado
#include "../include/suffixArray.h"
#include "../include/LectorDocumentos.h"
#include <filesystem>

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
    std::ofstream salida("data/suffixArray.txt");
    if (!salida) {
        std::cerr << "Error al crear el archivo de salida." << std::endl;
        return;
    }
    for (int i = 0; i < n; i++) {
        salida << suffixArr[i] << " ";
    }
    salida.close();
}

std::vector<int> cargarTxt(const std::string& ruta) {
    std::ifstream entrada(ruta);
    if (!entrada) return {};
    std::string contenido((std::istreambuf_iterator<char>(entrada)), std::istreambuf_iterator<char>());
    
    // Convertir el contenido a un vector de enteros
    std::vector<int> datos;
    std::istringstream iss(contenido);
    int valor;
    while (iss >> valor) {
        datos.push_back(valor);
    }
    return datos;
}
/*
// Programa principal para crear un arreglo de sufijos a partir de un texto dado
int main(int argc, char* argv[]) {
    if (argc < 3) {
        std::cerr << "Uso: " << argv[0] << " <carpeta> <num_docs>\n";
        return 1;
    }
    
    std::string carpetaPath = argv[1];
    int num_documentos = std::stoi(argv[2]);
    
    std::string archivoTxt = "data/textoT.txt";
    std::string T;

    LectorDocumentos lector;

    // Si el archivo existe, cargarlo, si no, crearlo con lector y guardar
    if (std::filesystem::exists(archivoTxt)) {
        T = lector.cargarTxt(archivoTxt);
    } else {
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(archivoTxt, T);
    }
    // Convertir string a char* para buildSuffixArray
    char* texto = new char[T.length() + 1];
    strcpy(texto, T.c_str());

    auto start = std::chrono::high_resolution_clock::now();
    int* suffixArr = buildSuffixArray(texto, T.length());
    crearTxt(suffixArr, T.length());
    auto end = std::chrono::high_resolution_clock::now();
    double tiempo = std::chrono::duration<double>(end - start).count();

    // Calcular espacio utilizado por el suffix array
    // Cada elemento del array es un int (4 bytes normalmente)
    size_t espacio_bytes = T.length() * sizeof(int);
    double espacio_kb = static_cast<double>(espacio_bytes) / 1024.0;
    double espacio_mb = espacio_kb / 1024.0;

    // Liberar memoria
    delete[] texto;
    delete[] suffixArr;

    // Extraer nombre del dataset de la carpeta
    std::string dataset = carpetaPath.substr(carpetaPath.find_last_of("/\\") + 1);
    
    std::cout << "SuffixArray;" << dataset << ";" << num_documentos << ";" << tiempo << ";" << espacio_mb << std::endl;
    return 0;
}
*/
