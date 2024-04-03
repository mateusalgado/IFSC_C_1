#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int num;

    printf("Informe um numero inteiro: ");
    scanf("%d", &num);

    printf("Raiz cubica = %d",(int) round(cbrt(num)));

    return 0;
}
