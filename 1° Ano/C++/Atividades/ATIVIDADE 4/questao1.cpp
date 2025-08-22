#include <iostream>
using namespace std;

int main() {
    int num = 1;
    
    while(num != -999){
        cout<<"\nDigite um n°: ";
        cin>>num;
        if(num != -999){
        cout<<"\n"<<num<<" * 3 = "<<num * 3;
        }
    }
    return 0;
}
