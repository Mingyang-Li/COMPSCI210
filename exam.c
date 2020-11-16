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
