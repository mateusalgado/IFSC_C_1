#include <stdio.h>
#include <stdlib.h>

int main()
{   int alunos[] = {5, 6, 7, -4, 6, 21, 5, 2,10};
    int i,n,j,temp;
    n=sizeof(alunos)/sizeof(int);
    for(i=1; i<n; i++)
        for(j=0; j<=n-i-1; j++) // A cada elemento ordenado, ao executar o for interno
        {
            // necessito uma iteração a menos por isso "n-i"
            // o menos "1" se deve ao fato de compararmos [j] com [j+1]
            if(alunos[j]<alunos[j+1])
            {
                temp = alunos[j];
                alunos[j] = alunos[j+1];
                alunos[j+1]=temp;
            }
        }
    for(i=0; i<n; i++)
    {
        printf("%d ",alunos[i]);
    }
    return 0;
}
