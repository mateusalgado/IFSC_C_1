#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    float lado1,lado2,diagonal;

    printf("Informe os valores dos lados do retângulo lado1 e lado2: ");

    scanf("%f %f", &lado1, &lado2);

    diagonal = sqrt(lado1*lado1 + lado2 * lado2);

    printf("diagonal = %.2f", diagonal);
    return 0;
}
