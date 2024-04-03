#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct ponto
{
    int x;
    int y;
};

void Troca_x(struct ponto*, struct ponto*);

int main()
{
    setlocale(LC_CTYPE,"");

    struct ponto a,b;

    printf("Informe as coordenadas do ponto 1: \n");
    scanf("%d %d", &a.x, &a.y);

    printf("Informe as coordenadas do ponto 2: \n");
    scanf("%d %d", &b.x, &b.y);

    Troca_x(&a, &b);

    printf("a = {%d, %d} e b = {%d, %d}", a.x, a.y, b.x, b.y);
    return 0;
}

void Troca_x(struct ponto* pa, struct ponto* pb)
{
    int temp;

    temp = pa->x;
    pa->x = pb->x;
    pb->x = temp;
}
