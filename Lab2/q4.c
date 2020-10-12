#include<stdio.h>

int main(){

    FILE* file;

    char filename[10];

    int frequency_array[26];

    for(int i=0;i<26;i++){
        frequency_array[i]=0;
    }
    scanf("%s",filename);
    file=fopen(filename,"r");

    char c;

    int index;
    while(fscanf(file,"%c",&c)==1){
        if(c>='A' && c<='Z'){
            index=c-'A';
            frequency_array[index]++;
        } else if (c>='a' && c<='z'){
            index=c-'a';
            frequency_array[index]++;
        }
    }
    fclose(file);

    for(int i=0;i<26;i++){
        c='a'+i;
        printf("%c:%d",c,frequency_array[i]);
        if(i<25){
            printf(", ");
        }
    }
    printf("\n");
    return 0;

}