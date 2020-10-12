// Online C compiler to run C program online
#include <stdio.h>

void print_IP_address(unsigned int ip_address){
    //type your code here
    int n1 = (ip_address) & 0xFF;
    int n2 = (ip_address >> 8) & 0xFF;
    int n3 = (ip_address >> 16) & 0xFF;
    int n4 = (ip_address >> 24) & 0xFF;

    printf("%d.%d.%d.%d", n4, n3, n2, n1);
}

int main() {
    print_IP_address(0xC0441901);
    print_IP_address(0x9DF00823);
}


