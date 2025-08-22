#include <iostream>
using namespace std;

int main() {
    int cod = 1;
    /*string 10, 33, 4;*/
    float money, saque, deposi, cheque;
    
    cout<<"Quanto você possui na sua conta? ";
    cin>>money;
    
    while(cod != 0){
        cout<<"\nSeu salário atual: "<<money;
        cout<<"\nDigite um código (Saque = 10; Depósito = 33; Cheque = 4; Finalizar = 0): ";
        cin>>cod;
        
        if(cod == 10){//saque
            cout<<"\nVocê vai realizar um saque!";
            cout<<"\nDigite o valor do saque: ";
            cin>>saque;
            
            money = money - saque;
            cout<<"\n*Você realizou um saque no valor de: R$"<<saque<<"; Seu salário é de: R$"<<money<<"\n";
        }
        
        if(cod == 33){//depósito
            cout<<"\nVocê vai realizar um depósito!";
            cout<<"\nDigite o valor do depósito: ";
            cin>>deposi;
            
            money = money + deposi;
            cout<<"\n*Você realizou um depósito no valor de: R$"<<deposi<<"; Seu salário é de: R$"<<money<<"\n";
        }
        
        if(cod == 4){//cheque
            cout<<"\nVocê vai pagar um cheque!";
            cout<<"\nDigite o valor do cheque: ";
            cin>>cheque;
            
            money = (money - cheque) - 0.50;
            cout<<"\n*Você pagou um cheque no valor de: R$"<<cheque<<"; Seu salário é de: R$"<<money<<"\n";
        }
    }
    return 0;
}
