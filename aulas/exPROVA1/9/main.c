#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int numero, contagem = 0;

    printf("Digite um valor:\n");
    scanf("%d", &numero);

    if(numero<1)
    {
        printf("erro \n");
    }
    else
    {
        printf("Valor lido: %d \n\n", numero);
        do
        {
            if(numero%2)
            {
                numero = numero*3+1;
                printf("Próximo valor é %d \n", numero);
                contagem++;
            }
            else
            {
                numero = numero/2;
                printf("Próximo valor é %d \n", numero);
                contagem++;
            }
        }
        while(numero != 1);

        printf("\nValor final 1 foi atingido em %d etapas \n", contagem);
    }
    return 0;
}
