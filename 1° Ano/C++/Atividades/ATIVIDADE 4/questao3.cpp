#include <iostream>
using namespace std;

int main() {
    float paisA = 5000000, paisB = 7000000;
    int ano = 1900, cnt = 0;
    
    while(paisA < paisB){
        paisA = paisA * 1.03;
        paisB = paisB * 1.02;
        ano++;
        cnt++;
        
        cout<<"\n_________________________________________________________\n";
        cout<<"Ano: "<<ano<<" ; País A: "<<paisA;
        cout<<"\nAno decorridos: "<<cnt<<" ; País B: "<<paisB;
         cout<<"\n________________________________________________________\n";
    }
    return 0;
}
