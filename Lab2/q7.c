#include <stdio.h>

int factorial(int n){
    int f = 1;
    while (n){
        f *= n;
        n -= 1;
    }
    return f;
}

int main() {
    int n = 5;
    printf("%d! = %d", n, factorial(n));
}