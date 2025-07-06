#ifndef RK_H
#define RK_H

#include <vector>
#include <string>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <cstring>

// Estructura para guardar el índice y el sufijo como std::string
struct suffix {
    int index;         // Índice de inicio del sufijo en el texto original
    std::string suff;  // El sufijo como string
};

// Función de comparación para ordenar sufijos
bool cmp(const suffix &a, const suffix &b);

// Construye el arreglo de sufijos de un texto dado
std::vector<int> buildSuffixArray(const std::string& txt);

// Crea un archivo .txt con el arreglo de sufijos
void crearTxt(const std::vector<int>& suffixArr);

#endif