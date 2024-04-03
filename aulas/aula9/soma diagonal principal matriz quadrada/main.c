#include <stdio.h>
#include <stdlib.h>

int main()
{
    int A[10][10],i,j,m,n,soma=0;

    printf("Entre com a ordem m x n da matriz <m,n>: \n");
    scanf("%d", &m);

    for(i=0; i<m; i++){
        for(j=0 ; j<m ; j++){

            printf("A[%d][%d] = ", i+1,j+1);
            scanf("%d", &A[i][j]);
        }
        soma = soma +A[i][i];
    }
    printf("\n A soma dos elemntos vale %d.", soma);

    return 0;
}
