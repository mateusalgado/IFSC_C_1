#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    float prestacao,dias,acrecimo;

    printf("Informe os valores o valor da prestacao e total de dias de atraso: \n");

    scanf("%f %f", &prestacao, &dias);

    acrecimo = ((dias*0.001*prestacao) + (prestacao*0.02));

    printf("acrecimo = %.2f", acrecimo);
    return 0;
}
