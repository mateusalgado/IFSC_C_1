#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int numero, soma = 0;

    printf("Entre com um n�mero e te darei a soma dos algarismos dele:");
    scanf("%d", &numero);
    if(numero < 0)
    {
        printf("N�mero inv�lido");
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
