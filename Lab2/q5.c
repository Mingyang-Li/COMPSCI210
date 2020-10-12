#include <stdio.h>
int recursive_sequence(int n) {
    if (n >= 2) {
        return 2 * recursive_sequence(n - 2) + recursive_sequence(n - 1);
    } else {
        return n;
    }
}

int main() {
    int number;
    scanf("%d", &number);
    printf("recursive_sequence(%d) = %d", number, recursive_sequence(number));
    return 0;
}