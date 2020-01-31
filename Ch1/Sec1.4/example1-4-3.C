#include <iostream>

using namespace std;

int main(){

    int valmin = 0, valmax = 0;
    int truevalmin = 0, truevalmax = 0;
    int sum = 0;
    cout << "Let's sum a sequence of numbers. Input the first number: ";
    cin >> valmin ;
    cout << endl;
    cout << "Input the number to which we will sum: ";
    cin >> valmax;
    cout << endl;

    if(valmax < valmin){
        cout << "You changed the order of max and min. Imma correcting it for you :)" << endl;
        truevalmax = valmin;
        truevalmin = valmax;
        valmin = truevalmin;
        valmax = truevalmax;
    }

    cout << "We will sum from every number from " << valmin << " to " << valmax << endl;

    for(int i = valmin; i <= valmax; i++ ){

        sum += i;
    }

    cout << "The sum is " << sum << endl;

}