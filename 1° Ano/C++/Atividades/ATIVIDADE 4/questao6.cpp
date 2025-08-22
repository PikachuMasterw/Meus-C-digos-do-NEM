using namespace std;
#include <iostream>

int main()
{
   int itemA = 100.00, itemB = 59.00, itemC = 10.00; 
   int quantA, quantB, quantC;
   int finalA = 0, finalB = 0, finalC = 0;
   int S = 0; 
   
   cout << "INSTRUÇÕES: digite a quantidade de cada item/ ";
   cout << "digite zero caso deseje não entrar.\n\n";
   cout << "Você deseja entrar no site lojapoliticagem.com?\n";
   cout << "|1 e sim / 0 e não:\nDigite a sua resposta: ";
   cin >> S;
   cout << "\n";
   
   if(S != 0)
   {
   cout << "Bem vindo a lojinha. \n ";
   cout << "O que vai querer? : \n";
   
   cout << "____________________________\n";
   cout << "|Dedo de Elefante: ---------------------(100,00)\n";
   cout << "|Picanha: ---------------------(59,00)\n";
   cout << "|Língua de Boi: ---------------------(10,00)\n";
   cout << "____________________________\n\n";
   
   cout << "____________________________\n";
   cout << "CARRINHO: ";
   cout << "\n|1º (Dedo de Elefante): ";
   cin >> quantA;
   cout << "\n";
   cout << "|1º (Picanha): ";
    cin >> quantB;
    cout << "\n";
   cout << "|1º (Língua de Boi): ";
   cin >> quantC;
   cout<<"\n";
   cout << "____________________________\n\n";
   
   finalA = itemA * quantA;
   finalB = itemB * quantB;
   finalC = itemC * quantC;
   
   cout << "____________________________\n";
   cout << "NOTA FISCAL: ";
   cout << "|Dedo de Elefante: ---------------------" << finalA;
   cout << "\n";
   cout << "|Picanha: ---------------------" << finalB;
   cout << "\n";
   cout << "|Língua de Boi: ---------------------" << finalC;
   cout << "\n______________________________\n";
   
   
   }
   
    return 0;
}
