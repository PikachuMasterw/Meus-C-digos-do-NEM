#include <iostream>
using namespace std;

int main() {
    int num[999], fim, soma = 0;
    
    cout<<"Digite o quantidade de n° que você quer digitar: ";
    cin>>fim;
    
    for(int cont = 0; cont < fim; cont++){
        cout<<"\nDigite um n°: ";
        cin>>num[cont];
        
        if(num[cont] >= 0){
           soma = soma + num[cont]; 
        }
    }
    cout<<"\nMedia: ";
    num[fim] = soma / fim;
    cout<<"\n"<<num[fim];
    return 0;
}
