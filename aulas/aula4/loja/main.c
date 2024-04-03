#include <stdio.h>
#include <stdlib.h>
#include <math.h>'

int main()
{
    int prestacoes;
    float valor,entrada;

    printf("Informe o valor do valor o produto: \n");

    scanf("%f", &valor);

    prestacoes = (valor/3);
    entrada = valor - 2*prestacoes;

    printf("Entrada = R$ %.2f. + 2 prestações de R$ %d,00", entrada, prestacoes);  return 0;
}
