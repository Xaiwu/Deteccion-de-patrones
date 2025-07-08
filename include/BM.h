#ifndef BM_H
#define BM_H
#define N_CHARS 256 // Número de caracteres ASCII
#include <bits/stdc++.h>
#include <vector>

/**
 * @brief Construye la tabla de desplazamientos para la heurística "mal carácter" del algoritmo Boyer-Moore
 * @param patron El patrón de búsqueda
 * @param pLen Longitud del patrón
 * @param badchar Array que almacenará la última posición de cada carácter en el patrón
 */
void malCaracter(std::string& patron, int pLen, int badchar[N_CHARS]);

/**
 * @brief Busca todas las ocurrencias de un patrón en un texto usando el algoritmo Boyer-Moore
 * @param texto El texto donde buscar el patrón
 * @param patron El patrón a buscar
 * @param coincidencias_doc Vector que cuenta las coincidencias por documento
 * @return Número total de coincidencias encontradas
 */
int boyerMoore(std::string& texto, std::string& patron, std::vector<int> &coincidencias_doc);

#endif // BM_H