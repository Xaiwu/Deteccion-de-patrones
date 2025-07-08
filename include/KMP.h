#ifndef KMP_H
#define KMP_H

#include <string>
#include <vector>

/**
 * @brief Calcula el arreglo de prefijos (PI) para el patrón dado.
 * 
 * @param patron Cadena patrón sobre la que se calculará el arreglo PI.
 * @return Vector de enteros con los valores del arreglo PI.
 */
std::vector<int> calcularPI(const std::string &patron);

/**
 * @brief Ejecuta el algoritmo KMP para buscar todas las ocurrencias del patrón en el texto.
 * 
 * @param patron Patrón a buscar.
 * @param T Texto donde se buscará el patrón.
 * @param coincidencias_doc Vector donde se almacenarán las coincidencias encontradas por documento.
 * @return Número de coincidencias encontradas.
 */
int KMP(const std::string &patron, const std::string &T, std::vector<int> &coincidencias_doc);

#endif // KMP_H