#include "..\include\LectorDocumentos.h"
#include <iostream>
#include <fstream>

int main(int argc, char* argv[]) {
    if (argc < 5) {
        std::cerr << "Uso: " << argv[0] << " <ruta_txt> <cantidad_patrones> <longitud_patron> <ruta_salida>\n";
        return 1;
    }

    std::string ruta = argv[1];
    int cantidad = std::stoi(argv[2]);
    int longitud = std::stoi(argv[3]);
    std::string ruta_salida = argv[4];

    LectorDocumentos lector;
    std::string texto = lector.cargarTxt(ruta);

    if (texto.empty()) {
        std::cerr << "No se pudo cargar el archivo o esta vacio.\n";
        return 1;
    }

    auto patrones = lector.extraerPatrones(texto, cantidad, longitud);

    std::ofstream salida(ruta_salida);
    if (!salida) {
        std::cerr << "No se pudo abrir el archivo de salida.\n";
        return 1;
    }
    for (const auto& patron : patrones) {
        salida << patron << std::endl;
    }
    salida.close();

    std::cout << "Patrones guardados en " << ruta_salida << std::endl;
    return 0;
}