#include <iostream>
using namespace std;

int main(){
    int salario;
    
    cout<<"Digite seu salário: ";
    cin>>salario;
    
    if(salario <= 500){
        cout<<"Seu salário ("<<salario<<") é faixa A!";
    }
    
    if((salario > 500) and (salario <= 1000)){
        cout<<"Seu salário ("<<salario<<") é faixa B!";
    }
    
    if(salario > 1000){
        cout<<"Seu salário ("<<salario<<") é faixa C!";
    }
    
    
    return 0;
}
