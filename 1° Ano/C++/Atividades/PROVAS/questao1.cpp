#include <iostream>
using namespace std;

int main() {
    string nome;
    float nota1 = 61, nota2 = 31, nota3 = 11, notaFinal, recuperação = 101;
    
    cout<<"Digite o seu nome: ";
    cin>>nome;
    
    while(nota1 > 60){
    cout<<"\nDigite a sua primeira nota (MAX.: 60pts): ";
    cin>>nota1;
    }
    
    while(nota2 > 30){
    cout<<"\nDigite a sua segunda nota (MAX.: 30pts): ";
    cin>>nota2;
    }
    
    while(nota3 > 10){
    cout<<"\nDigite a sua terceira nota (MAX.: 10pts): ";
    cin>>nota3;
    }
    
    notaFinal = (nota1 + nota2 + nota3);
    
    if(notaFinal >= 60){
        cout<<"\n*Boletim*\n";
        cout<<"\nEstudante: "<<nome;
        cout<<"\nSua nota final foi: "<<notaFinal;
        cout<<"\nVocê foi aprovado!";
    }
    
    else{
        cout<<"\nVocê está de recuperação!\n ";
        cout<<"\nSua nota foi: "<<notaFinal;
        
        while(recuperação > 100){
        cout<<"\nDigite sua nota de recuperação (MAX.: 100pts): ";
        cin>>recuperação;
        }
        
        if(recuperação >= 60){
            cout<<"\n*Boletim*\n";
            cout<<"\nEstudante: "<<nome;
            cout<<"\nSua nota final foi: "<<recuperação;
            cout<<"\nVocê foi aprovado!";
        }
        
        else{
            cout<<"\n*Boletim*\n";
            cout<<"\nEstudante: "<<nome;
            cout<<"\nSua nota final foi: "<<recuperação;
            cout<<"\nVocê foi reprovado!";
        }
    }
    return 0;
}
