#include <iostream>
using namespace std;

int main() {
    int num, int1, int2;
    
    cout<<"Digite um número: ";
    cin>>num;
    
    if((num > 1) and (num < 12)){
        cout<<"O NÚMERO ESTÁ INCLUSO! ("<<num<<")";
    }
    
    else{
        cout<<"SEU NÚMERO NÃO ESTÁ INCLUSO! ("<<num<<")";
    }
    
    return 0;
}
