#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

int main()
{
    int quantidade, i=1;
    char sair;
    float resistor, paralelo = 0 ;

    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    do
    {
        printf("Informe o número de resistores: ");
        scanf("%d", &quantidade);

        if(quantidade <= 0)
        {
            printf("Informe um quantidade válida de resistores: \n");
            continue;
        }

        do
        {
            printf("Entre com o resistor %d: ", i);
            scanf("%f", &resistor);
            paralelo = paralelo + (1/resistor);
            i++;

        }
        while (i<=quantidade);

        fflush(stdin);
        printf("Req: %f \n", 1/paralelo);

        printf("Deseja sair? Digite 'sair' %c", sair);
        scanf("%c", &sair);

        paralelo = 0;
        i= 1;
        fflush(stdin);
    }
    while(sair!='s');

    return 0;
}
