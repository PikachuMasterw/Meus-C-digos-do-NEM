#include <iostream>
using namespace std;

int main() {
    float num1, num2, aux = 1;
    
    cout<<"Digite um n°: ";
    cin>>num1;
    
    cout<<"Digite um n°: ";
    cin>>num2;
    
    for(int cont = 1; cont <= 2;cont++){
        aux = (num1 + num2) * aux;
    }
    cout<<"O resultado foi: "<<aux;
    return 0;
}
