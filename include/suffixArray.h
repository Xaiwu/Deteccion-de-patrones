#ifndef RK_H
#define RK_H

#include <vector>
#include <string>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <cstring>

struct suffix {
    int index;   // índice de inicio del sufijo en el texto original
    char *suff;  // puntero al sufijo dentro del texto
};

bool cmp(const struct suffix &a, const struct suffix &b);
int *buildSuffixArray(char *txt, int n);
void crearTxt(int *suffixArr, int n);

#endif