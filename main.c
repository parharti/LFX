#include <stdio.h>

extern void memset(char *dest, char value, int size);

int main() {
    char buffer[32];

    memset(buffer, 'A', 32);

    for (int i = 0; i < 32; i++) {
        printf("%c", buffer[i]);
    }
    printf("\n");

    return 0;
}
