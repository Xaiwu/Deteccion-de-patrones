#include <iostream>
#include "LectorDocumentos.h"

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Uso: " << argv[0] << " <carpeta>\n";
        return 1;
    }
    LectorDocumentos lector;
    std::string carpetaPath = argv[1];
    std::string T = lector.concatenarDocumentosConSeparador(carpetaPath);
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