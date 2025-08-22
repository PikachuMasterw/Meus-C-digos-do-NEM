#include <iostream>
using namespace std;

int main() {
    int num, inicio, fim;
    
    cout<<"Digite o ínicio do intervalo: ";
    cin>>inicio;
    
    cout<<"Digite o fim do intervalo: ";
    cin>>fim;
    
    for(num = inicio; num < fim; num++){
        
        if(num % 5 == 0){ 
            cout<<num<<", ";
        }
    }
    
    return 0;
}
