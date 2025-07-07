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
    return documentos;
}

int main(int argc, char* argv[]) {
    // Modo de uso ..data/suffix_arrays/suffixArray_XXX_Y.txt ..data/textos/XXX num_doc patron
    LectorDocumentos lector;
    std::string T;
    std::vector<int> SA = cargarTxt(argv[1]);
    std::string rutaT = "../data/textoT.txt";
    std::string carpetaPath = argv[2]; // Cambia esto por la ruta de tu carpeta de documentos
    int num_documentos = std::stoi(argv[3]); // Cambia esto por el número de documentos que quieras procesar
    if (std::filesystem::exists(rutaT)) {
        T = lector.cargarTxt(rutaT);
    } else {
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(rutaT, T);
    }
    std::string patron = argv[4]; // Cambia esto por el patrón que quieras buscar
    std::vector<int> posiciones = posicionesPeso(T, '$');

    auto start = std::chrono::high_resolution_clock::now();
    std::set<int> documentos = documentosQueContienen(patron, T, SA, posiciones);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    size_t espacio_bytes = documentos.size() * sizeof(int);
    double espacio_kb = static_cast<double>(espacio_bytes) / 1024.0;
    double espacio_mb = espacio_kb / 1024.0;

    std::cout << "SA;" << elapsed.count() << ";" << num_documentos << ";" << espacio_bytes << std::endl;
    return 0;
}