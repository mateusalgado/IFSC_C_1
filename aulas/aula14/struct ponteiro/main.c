#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct ponto
{
    int x;
    int y;
};

float Dist(struct ponto*, struct ponto*);

int main()
{
    setlocale(LC_CTYPE,"");

    float d;
    struct ponto a,b;

    printf("Informe as coordenadas do ponto 1: \n");
    scanf("%d %d", &a.x, &a.y);

    printf("Informe as coordenadas do ponto 2: \n");
    scanf("%d %d", &b.x, &b.y);

    d = Dist(&a, &b);

    printf("A distância entre os pontos é = %.2f",d);
    return 0;
}

float Dist(struct ponto* pa, struct ponto* pb)
{
#include <math.h>
    return sqrt(((pa->x-pb->x)*(pa->x-pb->x))+((pa->y-pb->y)*(pa->y-pb->y)));
}
