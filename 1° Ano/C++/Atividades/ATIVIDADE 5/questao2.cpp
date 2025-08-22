#include <iostream>
using namespace std;

int main() {
      int nota[9999], media, soma = 0, limi;
      
      cout<<"Quantas notas serão digitadas: ";
      cin>>limi;
      
      for(int cont = 0; cont <= limi; cont++){
          cout<<"Digite a nota n° ["<<cont<<"]-(0 a 100): ";
          cin>>nota[cont];
          
          if(nota[cont] > 100 || nota[cont] < 0){
              nota[cont] = 50;
          }
          
          else{
              soma = nota[cont] + soma;
          }
      }
      
      media = soma / limi;
      cout<<"A média é "<<media;
      
    return 0;
}
