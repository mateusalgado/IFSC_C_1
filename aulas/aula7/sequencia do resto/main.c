#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    for(int numero = 150; numero >=1 ;)
    {
        printf("%d ", numero);
        numero = floor(numero/3);
    }

    return 0;
}
