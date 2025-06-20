#ifndef LECTORDOCUMENTOS_H
#define LECTORDOCUMENTOS_H

#include <vector>
#include <string>
#include <fstream>

class LectorDocumentos {
public:
    // Lee el archivo y retorna un vector con cada línea como elemento
    std::vector<std::string> leerPorLineas(const std::string& nombreArchivo);
};

#endif // LECTORDOCUMENTOS_H