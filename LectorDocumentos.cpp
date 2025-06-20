#include "LectorDocumentos.h"

std::string LectorDocumentos::concatenarDocumentosConSeparador(std::string& carpeta, char separador) {
    namespace fs = std::filesystem; // Alias para filesystem, facilita el uso de fs::directory_iterator
    std::ostringstream oss;         // Stream para construir el string concatenado eficientemente
    bool primero = true;            // Bandera para saber si es el primer archivo (para no anteponer el separador)
    for (const auto& entry : fs::directory_iterator(carpeta)) { // Itera sobre cada archivo en la carpeta
        if (!entry.is_regular_file()) continue; // Si no es archivo regular (por ejemplo, es carpeta), lo salta
        std::ifstream archivo(entry.path());    // Abre el archivo para lectura
        std::string contenido((std::istreambuf_iterator<char>(archivo)), std::istreambuf_iterator<char>());
        // Lee todo el contenido del archivo en un string
        if (!primero) oss << separador; // Si no es el primero, agrega el separador antes del contenido
        oss << contenido;               // Agrega el contenido del archivo al stream
        primero = false;                // Después del primer archivo, siempre se agregará el separador antes
    }
    return oss.str(); // Devuelve el gran string concatenado con separadores
}