#include <stdio.h>
#include <stdlib.h>

int main()
{
    int soma = 0, num;

    do
    {
        printf("Entre com um numero para soma: ");
        scanf("%d", &num);

        soma = soma+num;
        printf("Resultado: %d \n", soma);
    }
    while(num!=0);

    return 0;
}
