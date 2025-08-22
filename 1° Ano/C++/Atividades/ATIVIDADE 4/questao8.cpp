#include <iostream>
using namespace std;

int main() {
      float salbase, salfinal, cod, maiorAbono = 0, abono;
      
     int maiorMatri, matricula = 0;
    
    cout<<"*Bem Vindo ao Brasil-Colonihals*\n";
    
    while(matricula >= 0){
        cout<<"\nDigite o código de matricula (N° negativo para encerrar): ";
        cin>>matricula;
        cout<<"\n ";
        
        if(matricula < 0){
            cout<<"Sistema finalizado, Windows 12 instalado.\n";
        }
        
        else{
        cout<<"\nDigite o seu salário: R$";
        cin>>salbase;
        
        cout<<"\nQual é o seu nível de desempenho no Brasil-Colonihals? (1 = Excelente; 2 = Bom; 3 = Regular): ";
        cin>>cod;
        
        if(cod == 1){//80%
        cout<<"Matricula: "<<matricula;
        abono = 0.8 * salbase;
        cout<<"\nSalário Original: R$"<<salbase;
        salfinal = salbase + abono;
        cout<<"\nSalário: R$"<<salfinal;
    }
        if(cod == 2){//50%
        cout<<"Matricula: "<<matricula;
        abono = 0.5 * salbase;
        cout<<"\nSalário Original: R$"<<salbase;
        salfinal = salbase + abono;
        cout<<"\nSalário: R$"<<salfinal;
    }
        if(cod == 3){//30%
        cout<<"Matricula: "<<matricula;
        abono = 0.3 * salbase;
        cout<<"\nSalário Original: R$"<<salbase;
        salfinal = salbase + abono;
        cout<<"\nSalário: R$"<<salfinal;
    }
    
        if(abono > maiorAbono){
        maiorAbono = abono;
        maiorMatri = matricula;
        }
        
        }//fim do else
    
    }//fim do while
        if(maiorMatri != 0){
            cout<<"\nFuncionário com maior abono - Matrícula: "<<maiorMatri<<", Abono: R$"<<maiorAbono;
        }
        else{
            cout<<"\nNenhum funcionário registrado.";
        }
    return 0;
}
