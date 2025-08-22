#include <iostream>
using namespace std;

int main() {
    float num, fat = 1;
    
    cout<<"Digite um n°: ";
    cin>>num;
    
    while(num >= 1){
        for(int cont = 1; cont <= num; cont++){
            fat = cont * fat;
        }
        cout<<"\n"<<num<<" != "<<fat;
        fat = 1;
        cout<<"\nDigite um n°: ";
        cin>>num;
    }
    return 0;
}
