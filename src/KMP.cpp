#include "..\include\KMP.h"

// Búsqueda del prefijo más largo y que a su vez sea sufijo
std::vector<int> calcularPI(const std::string &patron) {
    int m = patron.length(); // Tamaño del patrón
    std::vector<int> PI(m); // Creación del vector PI que toma
    
    PI[0] = 0; // El primer caracter no tendrá sufijo por definición. Por lo tanto es 0

    int j = 0; // j se refiere al largo del prefijo, el cual iremos comparando conforme recorramos el patrón
    // Notemos que tomamos i = 1, porque no es necesario comparar el patrón en la misma posición.
    for(int i = 1; i < m; i++){
        // Mientras los caracteres no coincidan y j sea distinto de 0,
        // retrocedemos j usando el valor de PI[j-1] para buscar el siguiente prefijo más corto
        while(j > 0 && patron[i] != patron[j]){
            j = PI[j-1];
        }
        // Si el caracter coincide podemos asumir que un prefijo también es sufijo, este prefijo tendrá largo j
        if(patron[i] == patron[j])
        {
            j++;
        }  
        PI[i] = j;
    }
    return PI;
}

int KMP(const std::string &patron,const std::string &T, std::vector<int> &coincidencias_doc) {
    int veces = 0;
    int m = patron.length();
    int n = T.length();
    std::vector<int> PI = calcularPI(patron);

    int doc = 0; // Empieza en 0 porque tendré un arreglo con los nombres de los documentos
    int j = 0; // Índice para el patrón
    for (int i = 0; i < n; i++) {
        if(T[i] == '$') {
            doc++;
            j = 0; // Reiniciamos el j
            continue;
        }
        // Mientras no coincidan y j > 0, retrocede en el patrón usando PI
        while (j > 0 && T[i] != patron[j]) {
            j = PI[j-1];
        }
        // Si hay coincidencia, avanza en el patrón
        if (T[i] == patron[j]) {
            j++;
        }
        // Si se encontró una ocurrencia completa del patrón
        if (j == m) {
            veces++;
            if (doc < coincidencias_doc.size())
                coincidencias_doc[doc]++;
            j = PI[j-1]; 
        }
    }
    return veces;
}


// // Prueba de construcción de PI
// int main(){
//     std::string T = "bababababcababcabab";
//     std::string p = "aacaaab";
    
//     std::vector<int> PI = calcularPI(p);


//     std::cout << "Arreglo 2" << std::endl;
//     for(int i = 0; i < p.length(); ++i){    
//         std::cout << PI[i] << std::endl;
//     }

//     return 0;
// }