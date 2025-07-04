#ifndef KMP_H
#define KMP_H

#include <string>
#include <vector>


std::vector<int> calcularPI(const std::string &patron);
int KMP(const std::string &patron,const std::string &T,std::vector<int> &coincidencias_doc);

#endif // KMP_H
