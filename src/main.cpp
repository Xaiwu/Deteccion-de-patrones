#include <iostream>
#include "..\include\LectorDocumentos.h"
#include "..\include\KMP.h"
#include "..\include\BM.h"
#include "..\include\RK.h"
#include <chrono>


int main(int argc, char* argv[]) {
    if (argc < 5) {
        std::cerr << "Uso: " << argv[0] << " <algoritmo> <carpeta> <archivo_patrones> <num_docs>\n";
        return 1;
    }
    std::string algoritmo = argv[1];
    std::string carpetaPath = argv[2];
    std::string archivoPatrones = argv[3];
    int num_documentos = std::stoi(argv[4]);

    std::string archivoTxt = "data/textoT.txt";
    std::string T;

    LectorDocumentos lector;
    std::vector<std::string> nombres_documentos = lector.leerPorLineas("data/orden_documentos.txt");
    std::vector<int> coincidencias_doc(nombres_documentos.size(), 0);

    // Si el archivo existe, cargarlo, si no, crearlo con lector y guardar
    if (std::filesystem::exists(archivoTxt)) {
        T = lector.cargarTxt(archivoTxt);
    } else {
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(archivoTxt, T);
    }

    // Leer todos los patrones
    std::vector<std::string> patrones = lector.leerPorLineas(archivoPatrones);
    std::vector<double> tiempos;
    std::vector<int> coincidencias;

    for (auto& patron : patrones) {
        auto start = std::chrono::high_resolution_clock::now();
        int veces = 0;
        if (algoritmo == "KMP") {
            veces = KMP(patron, T, coincidencias_doc);
        } else if (algoritmo == "BM") {
            veces = boyerMoore(patron, T, coincidencias_doc);
        } else if (algoritmo == "RK") {
            veces = rabinKarp(patron, T, coincidencias_doc);
        } else {
            std::cerr << "Algoritmo no reconocido.\n";
            return 1;
        }
        auto end = std::chrono::high_resolution_clock::now();
        double tiempo = std::chrono::duration<double>(end - start).count();
        tiempos.push_back(tiempo);
        coincidencias.push_back(veces);
    }

    // Calcular promedio
    double suma = std::accumulate(tiempos.begin(), tiempos.end(), 0.0);
    double promedio = suma / tiempos.size();
    int total_coincidencias = std::accumulate(coincidencias.begin(), coincidencias.end(), 0);
    

    std::cout << algoritmo << ";" << patrones.size()
              << ";" << promedio
              << ";" << total_coincidencias
              << ";" << num_documentos
              << std::endl;

    return 0;
}