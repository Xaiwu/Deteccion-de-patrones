#ifndef LECTORDOCUMENTOS_H
#define LECTORDOCUMENTOS_H

#include <vector>
#include <string>
#include <fstream>
#include <filesystem>


class LectorDocumentos {
public:
    // Concatena todos los archivos de una carpeta en un string con separador
    std::string concatenarDocumentosConSeparador(std::string& carpeta, int max_documentos, char separador = '$');
    std::vector<std::string> leerPorLineas(const std::string& nombreArchivo); 
    std::string cargarTxt(std::string& ruta);
    void crearTxt(std::string& ruta, std::string& contenido);
};

#endif // LECTORDOCUMENTOS_H