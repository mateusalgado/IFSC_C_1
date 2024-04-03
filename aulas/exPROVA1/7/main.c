#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int numero, soma =0,i=0;

    printf("Entre com um número e te darei a soma dos algarismos até ele:");
    scanf("%d", &numero);

    if(numero < 0)
    {
        printf("Número inválido");
    }
    else
    {
        do
        {
            soma = soma + (numero-i);
            i++;
        }
        while(i<numero);

        printf("Soma = %d",soma);
    }

    return 0;
}
