#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a,b,c, maior;

    printf("Informe 3 valores inteiros distintos: ");
    scanf("%d %d %d", &a, &b, &c);

    maior = a>b && a>c ? a : b>c ? b :c;

    printf("O maior valor digitado é: %d", maior);
    return 0;
}
