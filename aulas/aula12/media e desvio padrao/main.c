#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float MediaAritmetica(float*);
float DesvioPadrao(float*);

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int quantidade=0;

    printf("Informe a quantidade de valores: \n");
    scanf("%d", &quantidade);

    float  vetor[quantidade+1];
    unsigned short int n = 0;

    printf("\nEntre com os valores entre (-100 e 100) ou <101> para sair:\n");
    while(n<quantidade)
    {
        printf("Valor(%d) = ", n+1);
        scanf("%f", &vetor[n]);

        if(vetor[n]==101)
        {
            break;
        }
        n++;
    }
    vetor[quantidade] =101;

    printf("\nMédia Aritimética = %.2f \n", MediaAritmetica(vetor));
    printf("\nDesvio Padrão = %.2f \n", DesvioPadrao(vetor));

    return 0;
}

float MediaAritmetica(float*p)
{
    float soma = 0;
    int n=0;

    while(*(p+n)!=101)
    {
        soma = soma + *(p+n);
        n++;
    }

    return soma/n;
}

float DesvioPadrao(float*p)
{
    float media, soma = 0;
    int n=0;

    media = MediaAritmetica(p);

    while(*(p+n)!=101)
    {
        soma = soma + (*(p+n)-media)*(*(p+n)-media);
        n++;
    }

    return sqrt(soma/(n-1));
}
