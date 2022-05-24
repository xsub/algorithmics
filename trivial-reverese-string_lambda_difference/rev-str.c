#include <stdio.h>
#include <string.h>

int main() {
    char str[]="abcdefg";
    printf ("String as input: %s\n", str);

    int len = strlen(str); 

    for (int i=0; i<len/2; i++)
    {
        int other_end = len-1-i;
        char c = str[other_end];
        str[other_end] = str[i];
        str[i] = c;
    }

    printf ("String reversed: %s\n", str);
}
