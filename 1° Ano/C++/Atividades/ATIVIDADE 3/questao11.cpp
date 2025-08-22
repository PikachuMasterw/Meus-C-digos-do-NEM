#include <iostream>
using namespace std;

int main() {
    int fim = 10, inicio = 1, num, i;
    
    cout<<"Defina um número para fazer a tabuada: ";
    cin>>num;
    
    for(i = inicio; i <= fim; i++){
        cout<<"\n"<<num<<" x "<<i<<" = "<<num * i;
    }
    return 0;
}
