#include <iostream> 

using namespace std;

int main(){

    int sum = 0;
    cout << "Exercise 1.9: ";
    for(int i = 50; i<=100; i++)
    {
        sum += i;
    }

    cout << sum << endl;


    cout << "Exercise 1.10: ";

    int sum2 = 0;
    int val = 50;
    while(val <=100 && val >= 50){
        sum2 += val;
        val++;
    }

    cout << sum2 << endl;

    return 0;
}