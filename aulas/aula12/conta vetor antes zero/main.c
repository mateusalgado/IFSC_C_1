#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int Conta(int*);

int main()
{

    int vetor[]= {5,6,7,-1,0,7,9};
    printf("Existem %d elementos antes do 0\n", Conta(vetor));

    return 0;
}

int Conta(int* p)
{
    int i=0;
    while(*(p+i)!=0)
        i++;
    return i;
}
