#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int numero, soma = 0;

    printf("Entre com um número e te darei a soma dos algarismos dele:");
    scanf("%d", &numero);
    if(numero < 0)
    {
        printf("Número inválido");
    }
    else
    {
        while(numero>0)
        {
            soma = soma + (numero%10);
            numero = numero/10;
        }
        printf("Soma = %d",soma);
    }

    return 0;
}
