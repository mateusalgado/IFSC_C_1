#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <windows.h>
#include <string.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    float teorico, medido, erro;
    int menu = 1;

    do
    {
        switch(menu)
        {
        case 1:
            printf("Entre o valor medido: ");
            scanf("%f", &medido);

            printf("Entre o valor teorico: ");
            scanf("%f", &teorico);

            erro = ((teorico - medido)/teorico)*100;
            printf("Erro: %10.2f %% \n", erro);

            fflush(stdin);

            printf("Calcular um novo erro? \n(1)SIM \n(0)NÃO \n\n");
            scanf("%d", &menu);

            break;
        case 2:
            break;
        default:
            printf("Insira um valor correto\n");

            printf("\nCalcular um novo erro? \n(1)SIM \n(0)NÃO \n\n");
            scanf("%d", &menu);
        }
    }
    while(menu != 0);

    printf("Programa encerrado");
    return 0;
}
