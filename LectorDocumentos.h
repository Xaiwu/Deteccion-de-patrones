#ifndef LECTORDOCUMENTOS_H
#define LECTORDOCUMENTOS_H

#include <vector>
#include <string>
#include <fstream>
#include <filesystem>


class LectorDocumentos {
public:
    // Concatena todos los archivos de una carpeta en un string con separador
    std::string concatenarDocumentosConSeparador(std::string& carpeta, char separador = '$');
};

#endif // LECTORDOCUMENTOS_H