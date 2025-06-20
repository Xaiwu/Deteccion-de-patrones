#include <iostream>
#include "LectorDocumentos.h"

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Uso: " << argv[0] << " <nombre_archivo>\n";
        return 1;
    }

    std::string nombreArchivo = argv[1];
    LectorDocumentos lector;
    std::vector<std::string> lineas = lector.leerPorLineas(nombreArchivo);

    // // Test de printeo
    // for (const auto& linea : lineas) {
    //     std::cout << linea << std::endl;
    // }

    return 0;
}