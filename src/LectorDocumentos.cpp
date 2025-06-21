#include "..\include\LectorDocumentos.h"
#include <iostream>
std::string LectorDocumentos::concatenarDocumentosConSeparador(std::string& carpeta, int max_documentos, char separador) {
    namespace fs = std::filesystem; // Alias para filesystem, facilita el uso de fs::directory_iterator
    std::ostringstream oss;         // Stream para construir el string concatenado eficientemente
    std::ofstream nombres("orden_documentos.txt");
    bool primero = true;            // Bandera para saber si es el primer archivo (para no anteponer el separador)
    int leidos = 0;                 // Cantidad de documentos leidos
    for (const auto& entry : fs::directory_iterator(carpeta)) { // Itera sobre cada archivo en la carpeta
        if (!entry.is_regular_file()) continue; // Si no es archivo regular (por ejemplo, es carpeta), lo salta
        if (max_documentos != -1 && leidos >= max_documentos) break; // Solo lee hasta max_docs
        std::ifstream archivo(entry.path());    // Abre el archivo para lectura
        std::string contenido((std::istreambuf_iterator<char>(archivo)), std::istreambuf_iterator<char>());
        // Lee todo el contenido del archivo en un string
        if (!primero) oss << separador; // Si no es el primero, agrega el separador antes del contenido
        oss << contenido;               // Agrega el contenido del archivo al stream
        primero = false;                // Después del primer archivo, siempre se agregará el separador antes
        nombres << entry.path().filename().string() << std::endl; // Escribimos el nombre del documentos en el txt
        leidos++;
    }
    return oss.str(); // Devuelve el gran string concatenado con separadores
}



std::vector<std::string> LectorDocumentos::leerPorLineas(const std::string& nombreArchivo) {
    std::vector<std::string> lineas; 
    std::ifstream archivo(nombreArchivo);
    std::string linea;
    while (std::getline(archivo, linea)) {
        lineas.push_back(linea);
    }
    return lineas;
}