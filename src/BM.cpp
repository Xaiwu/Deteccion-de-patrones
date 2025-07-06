#include "..\include\BM.h"

// Función que construye la tabla de desplazamientos ("mal carácter")
void malCaracter(std::string& patron, int pLen, int badchar[N_CHARS]) {
    // Inicializa todas las entradas a -1
    for (int i = 0; i < N_CHARS; ++i)
        badchar[i] = -1;
    // Guarda la última posición de cada carácter en el patrón
    for (int i = 0; i < pLen; ++i)
        badchar[(unsigned char)patron[i]] = i;
}

// Busca cuántas veces aparece 'patron' en 'texto'
int boyerMoore(std::string& patron, std::string& texto, std::vector<int> &coincidencias_doc) {
    int pLen = patron.size();
    int tLen = texto.size();
    int veces = 0;

    int doc = 0;
    int badchar[N_CHARS];
    malCaracter(patron, pLen, badchar);

    int desplazamiento = 0;    // Desplazamiento actual
    while (desplazamiento <= tLen - pLen) {
        int j = pLen - 1;
        // Compara de derecha a izquierda
        while (j >= 0 && patron[j] == texto[desplazamiento + j])
            --j;
        if (j < 0) {
            ++veces;
            if (doc < coincidencias_doc.size())
                coincidencias_doc[doc]++;
            // Desplaza tras coincidencia completa
            desplazamiento += (desplazamiento + pLen < tLen) ? pLen - badchar[(unsigned char)texto[desplazamiento + pLen]]: 1;
        } else {
            // Desplaza según heurístico de "mal carácter"
            int bc = badchar[(unsigned char)texto[desplazamiento + j]];
            desplazamiento += std::max(1, j - bc);
        }
    }
    return veces;
}