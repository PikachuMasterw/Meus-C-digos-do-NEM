#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
#include <string.h>
#include <time.h>
using namespace std;

int main(){
    int repetir = 0, coman = 0, tamanho = 0, num = 0, turno = 0;
    
	while(repetir == 0){
	int vida1, ataque[5];
    int IAvida1, IAtque[5], IA;
    float tela = 0, batalha = 0;
    float atkName[5], IAtkName[5];
    string player1, player2, pk1, pk2, resposta;
    
    system("CLS");
    
    if(tela == 0){ 
	 cout<<"              --PIKOMON--                                      \n";
     cout<<"                _______                                        \n";
     cout<<"               |       |         1 -Jogar                      \n";
     cout<<"               |---O---|         2 -Configurar                 \n";
     cout<<"               |_______|                                       \n";
     cout<<"                                         V.0.0.1[ALFA]         \n";
     cout<<"                                 0 -Sair                       \n";
     cin>>coman;
     
     	if((coman == 2) & (tela == 0)){
		 tela = 2;
	     }
	     
	     if((coman == 1) & (tela == 0)){
		 	tela = 1;
		 }
		 
		 if(tela == 2){
		 system("CLS");
		 cout<<"--CONFIGURAR--\n";
         cout<<"                                 \n";
         cout<<"                                 \n";
         cout<<"             NADA PRA VER AQUI!  \n";
         cout<<"                                 \n";
         cout<<"                                 \n";
         cout<<"                 0 -voltar       \n";
     	 cin>>coman;
		 }
		 
		 
		 if(tela == 1){
		 	for(int numRandom = 1; numRandom <= 100; numRandom++){
				
				system("cls");
				cout<<numRandom<<"/100\n";
			 }
			 char passaD;
			 system("cls");
			 cout<<"##- Ola Treinador!";
			 cin>>passaD;
			 system("cls");
			 cout<<"Prof. Palmeira- Me chame de Professor Palmeira!";
			 cin>>passaD;
			 system("cls");
			 cout<<"Prof. Palmeira- Eu sou um pesquisador de pikomons e explorei todo o mundo!";
			 cin>>passaD;
			 system("cls");
			 cout<<"Prof. Palmeira- Então... Eu esqueci o seu nome... Qual é o seu nome? (DIGITE O SEU NOME): ";
			 cin>>player1;
			 system("cls");
			 cout<<"Ah sim! Seu nome é "<<player1<<" !";
			 cin>>passaD;
			 system("cls");
			 cout<<"Prof. Palmeira- Você tem um amigo que conhece desde a sua infância, e ele é o meu neto!\nMas... tembém esqueci o nome dele...";
			 cin>>passaD;
			 system("cls");
			 cout<<"##- Vô!";
		 }
		 
	   }//fim da tela 1
	 
	     if((coman == 0) & (tela != 2)){
		 	tela = 0;
		 }
		 
		 if((coman == 0) & (tela == 0)){
		 	repetir = 1;
		 }
	 
}

    return 0;
}

