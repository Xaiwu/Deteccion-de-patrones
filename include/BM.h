#ifndef BM_H
#define BM_H
#define N_CHARS 256 // Número de caracteres ASCII
#include <bits/stdc++.h>
#include <vector>

void malCaracter(std::string& patron, int pLen, int badchar[N_CHARS]);
int boyerMoore(std::string& texto, std::string& patron, std::vector<int> &coincidencias_doc);

#endif // BM_H