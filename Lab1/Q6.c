#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(){

    char filename[10];
    scanf("%s",filename);
    
    //Type your code
    FILE* filePointer;
    int bufferLength = 255;
    char buffer[bufferLength];

    filePointer = fopen(filename, "r");

    while(fgets(buffer, bufferLength, filePointer)) {
        printf("%s", buffer);
    }

    fclose(filePointer);

    return 0;
}