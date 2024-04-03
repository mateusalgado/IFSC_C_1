#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

int main()
{
    setlocale(LC_CTYPE,"");

    int n=3, k=1;

    do
    {
        if(floor(log2(n)) != ceil(log2(n)))
        {
            printf("Insira um número potência de 2:\n");
            scanf("%d", &n);
            continue;
        }
        else
        {
            for(k; k<=n; k=k*2)
            {
                printf("%d ", k);
            }
        }
    }
    while(n >= 1);

    return 0;
}
