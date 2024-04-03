#include <stdio.h>
#define MAX 10

int main()
{
    int i=1, j=MAX, numero=1;
    char letra = 'A';

    while(i<=MAX)
    {
        while(j>=i)
        {
            printf("%d%c",numero , letra);
            letra++;
            numero++;
            j--;
        }

        printf("\n");
        letra = 'A';
        numero = 1;
        j = MAX;
        i++;
    }
    return 0;
}
