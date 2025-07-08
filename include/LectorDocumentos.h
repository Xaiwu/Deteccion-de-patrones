#ifndef LECTORDOCUMENTOS_H
#define LECTORDOCUMENTOS_H

#include <vector>
#include <string>
#include <fstream>
#include <filesystem>
#include <random>

/**
 * @brief Clase para operaciones de lectura y escritura de documentos de texto.
 */
class LectorDocumentos {
public:
    /**
     * @brief Concatena los archivos de una carpeta en un string, usando un separador.
     * @param carpeta Ruta de la carpeta que contiene los archivos.
     * @param max_documentos Número máximo de documentos a concatenar.
     * @param separador Carácter separador entre documentos (por defecto '$').
     * @return String con el contenido concatenado de los archivos.
     */
    std::string concatenarDocumentosConSeparador(std::string& carpeta, int max_documentos, char separador = '$');

    /**
     * @brief Lee un archivo de texto y retorna un vector con sus líneas.
     * @param nombreArchivo Ruta del archivo a leer.
     * @return Vector de strings, cada uno correspondiente a una línea del archivo.
     */
    std::vector<std::string> leerPorLineas(const std::string& nombreArchivo); 

    /**
     * @brief Carga el contenido de un archivo de texto en un string.
     * @param ruta Ruta del archivo a cargar.
     * @return String con el contenido del archivo.
     */
    std::string cargarTxt(std::string& ruta);

    /**
     * @brief Crea un archivo de texto con el contenido dado.
     * @param ruta Ruta donde se creará el archivo.
     * @param contenido Contenido a escribir en el archivo.
     */
    void crearTxt(const std::string& ruta, const std::string& contenido);

    /**
     * @brief Extrae patrones aleatorios de un texto.
     * @param texto Texto de donde extraer los patrones.
     * @param cantidad Número de patrones a extraer.
     * @param long_patron Longitud de cada patrón.
     * @return Vector de strings con los patrones extraídos.
     */
    std::vector<std::string> extraerPatrones(const std::string& texto, int cantidad, int long_patron);
};

#endif 