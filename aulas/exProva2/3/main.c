#include <stdio.h>
#include <stdlib.h>

/*************************************************************
* Autor: Mateus Salgado *
* Dado um número inteiro positivo e par n lido do teclado,
elaborar um programa para calcular e imprimir o valor das somas : *
*
*************************************************************/

void Somar(int *, int *, int *);

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int n, somaA, somaB;

    do
    {
        printf("Entre com um número inteiro positivo e par: \n");
        scanf("%d", &n);
    }
    while((n%2 != 0) || (n < 1));

    Somar(&n, &somaA, &somaB);

    printf("Soma A = %d\nSoma B = %d", somaA, somaB);
    return 0;
}

void Somar(int *num, int *resA,int *resB)
{
#include <math.h>

    for(int i=0; i<=*num; i++)
    {
        *resA = *resA + (pow(-1,i))/((2*i)+1);
    }

    for(int i=0; i<=*num; i++)
    {
        *resB = *resB + (-log10(1+((2*i -1)/2)));
    }
}
