#include <stdio.h>
#define MAX 10

int main()
{
    int j=MAX, numero=1;
    char letra = 'A';

    for(int  i=1; i<=MAX ; i++, numero = 1, j = MAX, letra = 'A')
    {
        for(j=MAX ; j>=i; j--,numero++, letra++)
        {
            printf("%d%c",numero, letra);
        }
        printf("\n");
    }
    return 0;
}
