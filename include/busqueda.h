#ifndef BUSQUEDA_H
#define BUSQUEDA_H

#include <vector>
#include <algorithm>
#include <iterator>
#include <set>
#include <utility>

/**
 * @brief Calcula las posiciones donde inicia cada documento en el texto concatenado, usando un separador.
 * @param T Texto concatenado con documentos separados por un carácter.
 * @param separador Carácter separador de documentos.
 * @return Vector con las posiciones de inicio de cada documento.
 */
std::vector<int> posicionesPeso(std::string &T, char separador);

/**
 * @brief Encuentra el límite inferior (primer índice) donde el patrón P aparece en el arreglo de sufijos SA de T.
 * @param T Texto concatenado.
 * @param P Patrón a buscar.
 * @param SA Arreglo de sufijos.
 * @return Índice del límite inferior.
 */
int limiteMenor(std::string &T, std::string &P, std::vector<int> &SA);

/**
 * @brief Encuentra el límite superior (último índice) donde el patrón P aparece en el arreglo de sufijos SA de T.
 * @param T Texto concatenado.
 * @param P Patrón a buscar.
 * @param SA Arreglo de sufijos.
 * @return Índice del límite superior.
 */
int limiteMayor(std::string &T, std::string &P, std::vector<int> &SA);

/**
 * @brief Determina a qué documento pertenece una posición dada en el texto concatenado.
 * @param pos Posición en el texto.
 * @param posiciones Vector con las posiciones de inicio de cada documento.
 * @return Índice del documento correspondiente.
 */
int documentoDe(int pos, std::vector<int> &posiciones);

/**
 * @brief Devuelve el conjunto de documentos que contienen el patrón P y la cantidad total de apariciones.
 * @param P Patrón a buscar.
 * @param T Texto concatenado.
 * @param SA Arreglo de sufijos.
 * @param posciones Vector con las posiciones de inicio de cada documento.
 * @return Par con el conjunto de índices de documentos y el número total de apariciones.
 */
std::pair<std::set<int>, int> documentosQueContienen(std::string &P, std::string &T, std::vector<int> &SA, std::vector<int> &posciones);

#endif