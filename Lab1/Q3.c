#include <stdio.h>
#include <string.h>

int main()
{

    char str1[40];
    char str2[40];
    
    scanf("%s", str1);
    scanf("%s", str2);
    
    //type your code here
    printf("The length of str1 is: %zu \n", strlen(str1));
    printf("The length of str2 is: %zu \n", strlen(str2));
    strcat(str1, str2);
    printf("%s \n", str1);
    printf("The length of str1 is: %zu \n", strlen(str1));
    printf("The length of str2 is: %zu \n", strlen(str2));
    return 0;
}