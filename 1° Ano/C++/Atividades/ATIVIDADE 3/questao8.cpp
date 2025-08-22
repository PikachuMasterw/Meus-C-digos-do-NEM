#include <iostream>
using namespace std;

int main() {
    int b = 2, n = 1, i, mult = 1;
    
    cout<<"Digite a base da potência: ";
    cin>>b;
    
    cout<<"Digite o expoente da potência: ";
    cin>>n;
    
     if((b >= 2) or (n > 1)){
         for(i = 0; i < n; i++){
             mult = b * mult;
         }
         cout<<b<<"^"<<n<<" = "<<mult;
    }
    else{
        main();
    }
    return 0;
}
