#include <stdio.h>
#include <stdlib.h>
#define TAM 30

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    float temp[TAM+1], media;
    unsigned short int n = 0;

    while(n<TAM)
    {
        printf("\nEntre com temperatura ou -50 para sair\n");

        printf("Temperatura(%d) = ", n+1);
        scanf("%f", &temp[n]);

        if(temp[n]==-50)
        {
            break;
        }

        media = media + temp[n];
        n++;
    }

    temp[n] =-50;
    media = media/n;
    printf("\nM�dia = %.2f \n", media);

    printf("Valores em cima da m�dia \n");
    for(n=0; temp[n]!= -50; n++)
    {
        if(temp[n]>media)
        {
            printf("%.2f, ", temp[n]);
        }
    }
    printf("\n");

    return 0;
}
