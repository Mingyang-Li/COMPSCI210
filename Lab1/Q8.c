#include <stdio.h>
#include <string.h>
#include <stdlib.h> 

int main()
{
    int buffer_size = 50;
    char* buffer;
    buffer = (char*)malloc(buffer_size);
    fgets(buffer, buffer_size, stdin);
    int len = strlen(buffer) - 1;
    printf("Reverse of the string: ");

    // TODO: Insert code here...
    len=len-1; 
    while(len>=0) { 
        printf("%c",buffer[len]); 
        --len; 
    } 
    return 0;
}