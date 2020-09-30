#include <stdio.h>

int main()
{
    
    int n;
    
    scanf("%d", &n);
    
    //type your code here
    int sum = 0;
    while (n > 0){
        if (sum == 0){
            sum += n;
        } else {
            sum *= n;
        }
        n -= 1;
    }
    printf("The result is %i", sum);
    
    return 0;
}