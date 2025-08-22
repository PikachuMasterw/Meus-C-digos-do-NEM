#include <iostream>
using namespace std;

int main() {
    float altura[20];
    
    cout<<"CALCULADORA DE ALTURAS!\n";
    
    altura[15] = 0;
    
    for(int cont = 1; cont <= 10; cont++){
        cout<<"\nDigite a altura n° ["<<cont<<"]: ";
        cin>>altura[cont];
        
        altura[15] = altura[15] + altura[cont];
    }
    
    altura[20] = altura[15] / 10;
    
    if(altura[20] < 1.5){
        cout<<"\nMedia da Turma: "<<altura[20];
        cout<<"\nSua turma é baixa!";
    }
    
    if(altura[20] > 1.75){
        cout<<"\nMedia da Turma: "<<altura[20];
        cout<<"\nSua turma é alta!";
    }
    
    if((altura[20] > 1.5) && (altura[20] < 1.75)){ 
        cout<<"\nMedia da Turma: "<<altura[20];
        cout<<"\nSua turma é média!";
    }
    
    return 0;
}
