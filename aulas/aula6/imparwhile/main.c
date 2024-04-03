#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i=1, nmax, ler=1,x=2;
    while(i>0)
    {
        if(ler)
        {
            printf("Entre com um numero impar maior que 1: ");

            if(scanf("%d", &nmax)!=1 || nmax<=1 || !(nmax%2))
            {

                printf("Dado incorreto, tente novamente: \n");
                fflush(stdin);
                continue;
            }

            ler = 0;
        }
        printf("%d ", i);
        i = i + x;

        if(i==nmax)
        {
            x=-2;
        }
    }

    return 0;
}
