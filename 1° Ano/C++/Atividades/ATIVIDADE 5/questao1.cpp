#include <iostream>
using namespace std;

int main() {
      int comando;
      string c[99];
      for(int n1 = 0; n1 != 99; n1 ++){
       cout<<"\nescreva o "<<n1<<" numero: ";
       cin>>comando;
       if(comando == 30){
            c[n1]= "30";
       }
       if(comando == -999){
           n1 = 98;
       }
      }
      
      for(int n2 = 0; n2 != 99; n2 ++){
      if(c[n2] == "30"){
          cout<<"\nlinha: "<<n2<<" = 30";
      }
      }
    return 0;
}
