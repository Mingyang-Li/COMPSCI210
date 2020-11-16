#include <stdio.h>
int main()
{
    int x, y, z;
    int *a, *b;
    x = 0x4003;
    y = 5;
    a = &x;
    b = &z;
    z = x-y;
    (*b) ++;
    x = z++ - y;
    ++y;
    printf("x = %x \n", x);
    printf("y = %y \n", y );
    printf("z = %z \n", z);
    printf("a = %a \n", a);
    printf("b = %b \n", *b);
}

//q23
#include <stdio.h>
void foo(int *w, int *x, int *y, int *z);
int main()
{
    int a = 5, b = 4, c = 0, d = 0;
    foo(&a, &b, &c, &d);
    printf("a = %d \n", a);
    printf("b = %d \n d = %d \n", b, d);
}

void foo(int *w, int *x, int *y, int *z){
    while (*x > *y){
        *w *= -- (*x);
        (*z) ++;
    }
}

// q25
include <stdio.h>
int main()
{
    unsigned short w = 0xacd6;
    unsigned short x = 0x97f3;
    unsigned short y = 0x210d;
    unsigned short z = 0x85bd;
    w = w & 0xf00e;
    x = x ^ 0x736c;
    y = ~y;
    z = z | 0xbb41;
    
    printf("w = 0x%04x\n", w);
    printf("x = 0x%04x\n", x);
    printf("y = 0x%04x\n", y);
    printf("z = 0x%04x\n", z);
}

//q29
int main(int argc, char *argv[])
{
    printf("argc = %d\n", argc);
    printf("[1] = %s\n", argv[1]);
    printf("[2] = %c%c%c\n", *(argv[2] + 2), *argv[3], *argv[2]);
}

