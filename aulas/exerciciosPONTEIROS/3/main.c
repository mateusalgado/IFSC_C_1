#include <stdio.h>
#include <stdlib.h>

void Conta(int *,int , int);

int main()
{
    int numero, vetor[100], vezes;

    vetor[100]=-1;
    printf("Entre com um vetor de n�meros inteiros e positivos:\n");

    for(int i=0; i<10; i++)
    {
        scanf("%d", &vetor[i]);
        if(vetor[i]<0)
        {
            printf("Entre com um n�mero positivo:\n");
            i = i-1;
        }
    }

    printf("Entre com um n�mero inteiro e positivo.\nQue irei verificar quantas vezes o n�mero aparece no vetor.\n");
    scanf("%d", &numero);

    printf("Existem %d elementos antes do %d\n", Conta(&vezes, vetor, numero), numero);

    return 0;
}
void Conta(int *pvezes, int vetor, int numero)
{
    for(int i=0 ; vetor[i] != -1;)
        if(vetor[i] == numero)
           pvezes = pvezes + i++;

}
