#include <iostream>
#include "LectorDocumentos.h"
#include "KMP.h"
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


    LectorDocumentos lector;
    std::string T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
    std::vector<std::string> nombres_documentos = lector.leerPorLineas("orden_documentos.txt");
    std::vector<int> coincidencias_doc(nombres_documentos.size(), 0);

    if (algoritmo == "KMP") {
        auto start = std::chrono::high_resolution_clock::now();
        int veces = KMP(patron, T, coincidencias_doc);
        auto end = std::chrono::high_resolution_clock::now();
        double tiempo = std::chrono::duration<double>(end - start).count();
        std::cout << "KMP;" << patron << ";" << veces << ";" << tiempo << std::endl;
    } else {
        return 1;
    }


    // std::cout << T << std::endl; // Ejemplo
    //En caso de querer crear un txt con el texto T concatenado y mirarlo:
    // std::string archivoSalida = "salidaDNA.txt";

    // std::ofstream salida(archivoSalida);
    // if(!salida){
    //     std::cerr << "No se pudo abrir el archivo\n";
    //     return 1;
    // }
    // salida << T;
    // salida.close();

    // std::cout << "Texto concatenado en " << archivoSalida << std::endl;
    return 0;
}