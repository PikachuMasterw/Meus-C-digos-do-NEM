#include <iostream>
using namespace std;

int main() {
    float fah, inicio, fim;
    
    cout<<"Digite o início do intervalo: ";
    cin>>inicio;
    
    cout<<"Digite o fim do intervalo: ";
    cin>>fim;
    
    for(int tempCel = inicio; tempCel <= fim; tempCel++){
        cout<<"\nTemperatura em Celsius: "<<tempCel;
        fah = 1.8 * tempCel + 32;
        
        cout<<"\nTemperatura em Fahrenheit: "<<fah;
    }
    
    return 0;
}
