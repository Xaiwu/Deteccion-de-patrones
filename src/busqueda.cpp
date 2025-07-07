#include "..\include\busqueda.h"
#include "..\include\suffixArray.h"
#include "..\include\LectorDocumentos.h"

std::vector<int> posicionesPeso( std::string &T, char separador){
    std::vector<int> posiciones;
    separador = '$';

    for (int i = 0; i < T.size(); i++){
        if(T[i] == separador){
            posiciones.push_back(i);
        }
    }

    return posiciones;
}


int limiteMenor( std::string &T,  std::string &P, std::vector<int> &SA){
    int l = 0;
    int r = SA.size();

    while(l < r){
        int m = (l + r) / 2;
        if(T.compare(SA[m], P.size(), P) < 0)
            l = m + 1;
        else
            r = m;
    }
    return l;
}

int limiteMayor( std::string &T,  std::string &P, std::vector<int> &SA){
    int l = 0;
    int r = SA.size();

    while(l < r){
        int m = (l + r) / 2;
        if(T.compare(SA[m], P.size(), P) <= 0)
            l = m + 1;
        else
            r = m;
    }
    return l;
}

int documentoDe(int post,  std::vector<int> &posiciones){
    auto mI = std::upper_bound(posiciones.begin(), posiciones.end(), post);
    return std::distance(posiciones.begin(), mI);
}

std::set<int> documentosQueContienen( std::string &P,  std::string &T, std::vector<int> &SA, std::vector<int> &posciones){
    std::set<int> documentos;

    int l = limiteMenor(T,P,SA);
    int r = limiteMayor(T,P,SA);

    for(int i = l; i < r; i++){
        int pos = SA[i];
        int doc = documentoDe(pos, posciones);
        documentos.insert(doc);
    }
    int veces = r - l;
    return documentos;
}

int main(){
    LectorDocumentos lector;
    std::string T;
    std::vector<int> SA = cargarTxt("../data/suffix_arrays/suffixArray_DNA_5.txt");
    std::string rutaT = "../data/textoT.txt";
    std::string carpetaPath = "../data/textos/DNA";
    int num_documentos = 5; // Cambia esto por el número de documentos que quieras procesar
    if (std::filesystem::exists(rutaT)) {
        T = lector.cargarTxt(rutaT);
    } else {
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(rutaT, T);
    }
    std::string patron = "AGTATCTA"; // Cambia esto por el patrón que quieras buscar
    std::vector<int> posiciones = posicionesPeso(T, '$');

    std::set<int> documentos = documentosQueContienen(patron, T, SA, posiciones);
 
    for(int doc : documentos) {
        std::cout << "El patrón '" << patron << "' se encuentra en el documento: " << doc << std::endl;
    }
    return 0;
}