#include <stdio.h>
#include <stdlib.h>

float Circulo(float);

int main()
{


    float area,r;

    printf("Entre com o raio do circuilo\n");
    scanf("%f",&r);

    area = Circulo(r);

    printf("A area vale %.2f", area);
    return 0;
}

float Circulo(float r)
{
#include <math.h>
    float s;

    s = M_PI*r*r;
    return s;
    //return M_PI*r*r;
}
