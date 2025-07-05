#include "..\include\RK.h"

// Función que retorna la cantidad de veces que un patrón se repite en un conjunto de documentos y modifica un vector que contiene los documentos donde se encuentran
int rabinKarp(std::string &patron, std::string &text, std::vector<int> &coincidencias_doc) {

    int b = 256; // numero de caracteres de la tabla ASCII
    int m = patron.length(); // cantidad de letras del patrón
    int n = text.length(); // cantidad de letras del texto compuesto
    int h = 1; // digito multiplicador de alto valor para el hash
    int hp = 0; // valor hash del patron
    int ht = 0; // valor hash para la sección del texto que se está comparando
    int p = 101; // valor primo que se utiliza para normalizar el valor hash dentro de un rango
    int matches = 0; // cantidad de coincidencias del patrón en el texto
    int doc = 0; // contador que al recorrer el texto indica el documento al que pertenece dicha sección

    // incializa el digito h
    for (int i = 0; i < m - 1; i++)
        h = (h * b) % p;

    // asigna el valor hash para hp y ht
    for (int i = 0; i < m; i++){
        hp = (b * hp + patron[i]) % p;
        ht = (b * ht + text[i]) % p;
    }

    // recorre el texto y compara los valores hash del patrón con el de la sección del texto actual
    // cuando encuentra un separador '$' aumenta el contador que indica que se cambió de documento
    // si encuentra una coincidencia en dos valores hash, comprueba los caracteres uno a uno por si es que ocurrio una colisión y dos strings distintos dieron el mismo valor hash
    // luego de cada iteración actualiza el valor hash ht para recorrer el texto completo
    for (int i = 0; i <= n - m; i++) {
        if (text[i] == '$') {
            doc++;
        }

        if (hp == ht) {
            bool match = true;
            for (int j = 0; j < m; j++){
                if (text[i + j] != patron[j]) {
                    match = false;
                    break;
                }
            }
            if (match) {
                matches++;
                if (doc < coincidencias_doc.size()) coincidencias_doc[doc]++;
            }
        }
        
        if (i < n - m){
            
            ht = (b * (ht - text[i] * h) + text[i + m]) % p;

            if (ht < 0)
                ht += p;
        }
    }
    return matches;
}