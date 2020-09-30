#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(){

    char filename[10];
    scanf("%s",filename);
    
    //Type your code
    fgets(filename);
    fp = fopen(filename, "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);

    while ((read = getline(&line, &len, fp)) != -1) {
        printf("%s", line);
    }
    fclose(fp);


    return 0;
}