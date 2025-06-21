#include "..\include\rabinkarp.h"
#include <iostream>

int rabinKarp(std::string &patron, std::string &text, std::vector<int> &coincidencias_doc) {

    int b = 256;
    int m = patron.length();
    int n = text.length();
    int h = 1;
    int hp = 0;
    int ht = 0;
    int p = 101;
    int matches = 0;
    int doc = 0;

    for (int i = 0; i < m - 1; i++)
        h = (h * b) % p;

    for (int i = 0; i < m; i++){
        hp = (b * hp + patron[i]) % p;
        ht = (b * ht + text[i]) % p;
    }

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
                coincidencias_doc[doc]++;
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

/*int main(){
    
    std::string txt = "birthboy $birthday";
    std::string pat = "birth";

    std::vector<int> coincidencias_doc;
    coincidencias_doc.push_back(0);
    coincidencias_doc.push_back(0);
    int matches = rabinKarp(pat, txt, coincidencias_doc);

    std::cout << matches << std::endl;
    for (int doc : coincidencias_doc){
        std::cout << doc << " ";
    }
    std::cout << "\n";
    return 0;
}*/