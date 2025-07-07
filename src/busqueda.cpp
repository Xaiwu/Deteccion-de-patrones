#include "..\include\busqueda.h"

std::vector<int> posicionesPeso( std::string &T, char separador){
    std::vector<int> posiciones;
    separador = '$';
    int doc = 0;

    for (int i = 0; i < T.size(); i++){
        if(T[i] == separador){
            posiciones[doc] = i;
            doc++;
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