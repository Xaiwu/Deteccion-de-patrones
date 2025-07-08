#ifndef BUSQUEDA_H
#define BUSQUEDA_H

#include <vector>
#include <algorithm>
#include <iterator>
#include <set>
#include <utility>

std::vector<int> posicionesPeso( std::string &T, char separador);
int limiteMenor( std::string &T, std::string &P, std::vector<int> &SA);
int limiteMayor( std::string &T,  std::string &P, std::vector<int> &SA);
int documentoDe(int pos,  std::vector<int> &posiciones);
std::pair<std::set<int>, int> documentosQueContienen( std::string &P,  std::string &T, std::vector<int> &SA, std::vector<int> &posciones);

#endif 