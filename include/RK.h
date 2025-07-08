#ifndef RK_H
#define RK_H

#include <vector>
#include <string>

/**
 * @brief Realiza la búsqueda del patrón en el texto usando el algoritmo Rabin-Karp
 * @param patron El patrón a buscar
 * @param text El texto en el que se busca el patrón
 * @param coincidencias_doc Vector en el que se almacenan la cantidad de coincidencias que tiene cada documento
 * @return Cantidad de coincidencias encontradas
 */
int rabinKarp(std::string &patron, std::string &text, std::vector<int> &coincidencias_doc);

#endif
