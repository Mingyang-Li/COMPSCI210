// Online C compiler to run C program online
#include <stdio.h>

int fibonacci(int n) {
   //type your code here
   if (n <= 1) 
      return n; 
   return fibonacci(n-1) + fibonacci(n-2); 
}

int main() {
    int n=5;
    for(int i = 0; i < n ; ++i){
        printf("%d ", fibonacci(i));
    }
}


