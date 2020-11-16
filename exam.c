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
    printf("x = %y \n", y );
    printf("x = %z \n", z);
    printf("x = %a \n", a);
    printf("x = %b \n", *b);


}
