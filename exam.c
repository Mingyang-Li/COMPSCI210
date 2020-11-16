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
