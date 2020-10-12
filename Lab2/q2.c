// Online C compiler to run C program online
#include <stdio.h>

void swap_cases (char* text){
    for (int i=0; i<strlen(text); i++){
        if (isalpha(text[i])){
            if (isupper(text[i])){
                // covert  to lower
                text[i] = text[i] + 32;
            } else {
                // cover to upper
                text[i] = text[i] - 32;
            }
        }
    }
    printf("%s\n",text);
}

int main() {
    char text[100] = "Hello World";
    printf("Before: %s\n",text);
    printf("After: ");
    swap_cases(text);
    printf("Done!\n");
}