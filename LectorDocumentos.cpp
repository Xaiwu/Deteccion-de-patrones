#include "LectorDocumentos.h"

std::vector<std::string> LectorDocumentos::leerPorLineas(const std::string& nombreArchivo) {
    std::vector<std::string> lineas; 
    std::ifstream archivo(nombreArchivo);
    std::string linea;
    while (std::getline(archivo, linea)) {
        lineas.push_back(linea);
    }
    return lineas;
}