#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define DIM 10
void Cria_Matriz(int (*)[DIM],int,int );
void Imprime_Matriz(int [][DIM],int,int );
void Aumenta_Matriz(int [][DIM],int*,int,int );

int main()
{
    setlocale(LC_CTYPE,"");

    int matriz[DIM][DIM],m,n,coluna[DIM];

    printf("Informa as dimensões <m>x<n> da matriz: ");
    scanf("%d %d",&m,&n);

    Cria_Matriz(matriz,m,n);
    printf("Matriz gerada: \n");
    Imprime_Matriz(matriz,m,n);

    printf("Entre com a nova coluna da matriz: ");
    for (int i=0; i<m; i++)
        scanf("%d",&coluna[i]);

    Aumenta_Matriz(matriz,coluna,m,n);
    printf("Matriz gerada aumentada: \n");
    Imprime_Matriz(matriz,m,n+1);

    return 0;
}
void Cria_Matriz(int (*pmatriz)[DIM],int m,int n)
{
    int i,j;
    for (i=0; i<m; i++)
        for (j=0; j<n; j++)
            pmatriz[i][j]=(5-i)*(j+1);
}
void Imprime_Matriz(int pmatriz[][DIM],int m,int n)
{
    for (int i=0; i<m; i++)
    {
        printf("|");
        for (int j=0; j<n; j++)
            printf("%2d ",pmatriz[i][j]);
        printf("|\n");
    }
}
void Aumenta_Matriz(int pmatriz[][DIM],int*p,int m,int n)
{
    for (int i=0; i<m; i++)
    {
        pmatriz[i][n]=*(p+i);
    }
}
