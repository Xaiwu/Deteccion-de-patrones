#include "..\include\busqueda.h"
#include "..\include\suffixArray.h"
#include "..\include\LectorDocumentos.h"
#include <fstream>
#include <utility>

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

std::pair<std::set<int>, int> documentosQueContienen( std::string &P,  std::string &T, std::vector<int> &SA, std::vector<int> &posciones){
    std::set<int> documentos;

    int l = limiteMenor(T,P,SA);
    int r = limiteMayor(T,P,SA);

    for(int i = l; i < r; i++){
        int pos = SA[i];
        int doc = documentoDe(pos, posciones);
        documentos.insert(doc);
    }
    
    return std::make_pair(documentos, r - l);
}

int main(int argc, char* argv[]) {
    // Modo de uso: busqueda.exe [suffix_array_file] [carpeta_textos] [num_documentos] [archivo_patrones]
    if (argc < 5) {
        std::cerr << "Uso: " << argv[0] << " <suffix_array_file> <carpeta_textos> <num_documentos> <archivo_patrones>\n";
        return 1;
    }
    
    LectorDocumentos lector;
    std::string T;
    std::string rutaT = "data/textoT.txt";
    
    std::vector<int> SA = cargarTxt(argv[1]);
    std::string carpetaPath = argv[2]; // Ruta de la carpeta de documentos
    int num_documentos = std::stoi(argv[3]); 
    std::string archivoPatrones = argv[4]; // Archivo con los patrones

    if (std::filesystem::exists(rutaT)) {
        T = lector.cargarTxt(rutaT);
    } else {
        T = lector.concatenarDocumentosConSeparador(carpetaPath, num_documentos);
        lector.crearTxt(rutaT, T);
    }
    
    std::vector<int> posiciones = posicionesPeso(T, '$');

    // Leer patrones del archivo
    std::ifstream archivo(archivoPatrones);
    if (!archivo.is_open()) {
        std::cerr << "Error: No se pudo abrir el archivo de patrones: " << archivoPatrones << std::endl;
        return 1;
    }
    
    // Leer todos los patrones primero
    std::vector<std::string> patrones;
    std::string patron;
    while (std::getline(archivo, patron)) {
        if (!patron.empty()) {
            patrones.push_back(patron);
        }
    }
    archivo.close();
    
    int total_patrones = patrones.size();
    
    // Medir tiempo total de todos los patrones
    auto start = std::chrono::high_resolution_clock::now();
    
    int total_coincidencias = 0;
    size_t total_espacio_bytes = 0;
    
    // Procesar cada patrón
    for (const auto& patron : patrones) {
        auto resultado = documentosQueContienen(const_cast<std::string&>(patron), T, SA, posiciones);
        std::set<int> documentos = resultado.first;
        int coincidencias = resultado.second;
        
        total_coincidencias += coincidencias;
        total_espacio_bytes += documentos.size() * sizeof(int);
    }
    
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    std::cout << "SA;" << total_patrones << ";" << elapsed.count() << ";" << total_coincidencias << ";" << num_documentos << ";" << total_espacio_bytes << std::endl;
    return 0;
}