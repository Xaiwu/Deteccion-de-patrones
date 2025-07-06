#ifndef LECTORDOCUMENTOS_H
#define LECTORDOCUMENTOS_H

#include <vector>
#include <string>
#include <fstream>
#include <filesystem>
#include <random>


class LectorDocumentos {
public:
    // Concatena todos los archivos de una carpeta en un string con separador
    std::string concatenarDocumentosConSeparador(std::string& carpeta, int max_documentos, char separador = '$');
    std::vector<std::string> leerPorLineas(const std::string& nombreArchivo); 
    std::string cargarTxt(std::string& ruta);
    void crearTxt(const std::string& ruta, const std::string& contenido);
    std::vector<std::string> extraerPatrones(const std::string& texto, int cantidad, int long_patron);
};

#endif // LECTORDOCUMENTOS_H