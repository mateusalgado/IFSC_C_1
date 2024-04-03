#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a,b,c, maior;

    printf("Informe 3 valores inteiros distintos: ");
    scanf("%d %d %d", &a, &b, &c);

    if(a>b && a>c)
    {
        maior = a;
    }
    else if (b>c)
    {
        maior = b;
    }
    else
    {
        maior = c;
    }

    printf("O maior valor digitado é: %d", maior);
    return 0;
}
