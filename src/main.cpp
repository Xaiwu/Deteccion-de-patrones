#include <iostream>
#include "..\include\LectorDocumentos.h"
#include "..\include\KMP.h"
#include "..\include\BM.h"
#include <chrono>

int main(int argc, char* argv[]) {
    if (argc < 4) {
        std::cerr << "Uso: " << argv[0] << " <algoritmo> <carpeta> <patron>\n";
        return 1;
    }
    std::string algoritmo = argv[1];
    std::string carpetaPath = argv[2];
    std::string patron = argv[3];
    int num_documentos = -1; // Por defecto leera todos
    if (argc >= 5) {
        num_documentos = std::stoi(argv[4]);
    }

    std::string archivoTxt = "data/textoT.txt"; //Dirección del texto T
    std::string T;

    LectorDocumentos lector;
    std::vector<std::string> nombres_documentos = lector.leerPorLineas("data/orden_documentos.txt");
    std::vector<int> coincidencias_doc(nombres_documentos.size(), 0);

    // Si el archivo existe, cargarlo, si no, crearlo con lector y guardar
    if (std::filesystem::exists(archivoTxt)) {
        T = lector.cargarTxt(archivoTxt);
    } else {
        LectorDocumentos lector;
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(archivoTxt, T);
    }

    if (algoritmo == "KMP") {
        auto start = std::chrono::high_resolution_clock::now();
        int veces = KMP(patron, T, coincidencias_doc);
        auto end = std::chrono::high_resolution_clock::now();
        double tiempo = std::chrono::duration<double>(end - start).count();
        std::cout << "KMP;" << patron << ";" << veces << ";" << tiempo << std::endl;
    } 
    
    else if (algoritmo == "BM") {
        auto start = std::chrono::high_resolution_clock::now();
        int veces = boyerMoore(patron, T, coincidencias_doc);
        auto end = std::chrono::high_resolution_clock::now();
        double tiempo = std::chrono::duration<double>(end - start).count();
        std::cout << "BM;" << patron << ";" << veces << ";" << tiempo << std::endl;
    }

    else {
        return 1;
    }
    return 0;
}