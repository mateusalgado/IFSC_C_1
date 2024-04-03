#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

struct ponto
{
    float x;
    float y;
};

int main()
{
    setlocale(LC_CTYPE,"");

    struct ponto a,b;
    float d;

    printf("Entre com a cordenada do ponto 1: \n");
    scanf("%f %f", &a.x, &a.y);

    printf("Entre com a cordenada do ponto 2: \n");
    scanf("%f %f", &b.x, &b.y);

    d= sqrt((a.x-b.x)*(a.x-b.x)+(a.y-b.y)*(a.y-b.y));
    printf("A distância entre os dois pontos é: %f", d);

    return 0;
}
