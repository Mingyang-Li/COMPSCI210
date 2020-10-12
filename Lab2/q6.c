#include <stdio.h>
int main()
{
    int rows;
    scanf("%d",&rows); //the number of rows
    
    //Type your code here
    int maxDots = 1 + (rows-1) * 2;
    int numDots =  1;
    int numSpaces = 0;
    // printf("last line has %d dots \n", maxDots);
    for (int i=0; i<rows; i++){
        if (i==0){
            numDots = 1;
        } else {
            numDots = numDots + 2;
        }
        //printf("current line has %d dots \n", numDots);
        numSpaces = maxDots - numDots;
        //printf("current line NEEDS %d spaces \n", numSpaces);
        if (numSpaces == 0){
            for (int j=0; j<numDots; j++){
                printf("*");
            }
        } else {
            // print spaces
            for (int k=0; k<numSpaces/2; k++){
                printf(" ");
            }
            // print dots
            for (int k=0; k<numDots; k++){
                printf("*");
            }
            // print spaces
            for (int k=0; k<numSpaces/2; k++){
                printf(" ");
            }
            printf("\n");
        }
    }

    return 0;
}
