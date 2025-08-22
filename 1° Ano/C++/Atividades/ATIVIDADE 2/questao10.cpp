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
        cout<<"\nSua alíquota é de: "<<salario * 0.15<<" e você pagará R$"<<(salario * 0.15) - 75<<" em impostos ";
    }
    
    if(salario > 1000){
        cout<<"Seu salário ("<<salario<<") é faixa C!";
        cout<<"\nSua alíquota é de: "<<salario * 0.25<<" e você pagará R$"<<(salario * 0.25) - 175<<" em impostos ";
    }
    
    
    return 0;
}
