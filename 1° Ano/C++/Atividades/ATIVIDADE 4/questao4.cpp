#include <iostream>
using namespace std;

int main() {
    float chicoM = 1.50, jucaM = 1.10, ano = 2000, cnt = 0;
    
    while(jucaM < chicoM){
        chicoM = chicoM + 0.02;
        jucaM = jucaM + 0.03;
        ano++;
        cnt++;
        
        cout<<"\n_________________________________________________________\n";
        cout<<"Ano: "<<ano<<" ; Chico: "<<chicoM;
        cout<<"\nAno decorridos: "<<cnt<<" ; Juca: "<<jucaM;
         cout<<"\n________________________________________________________\n";
    }
    return 0;
}
