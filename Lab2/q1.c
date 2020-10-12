#include <stdio.h>

int array_calculation(int* array1, int* array2, int size){
    //type your code here
    int sum = 0;
    for (int i=0; i<size; i++){
        int tempSum = array1[i] * array2[i];
        sum += tempSum;
    }
    return sum;
} 