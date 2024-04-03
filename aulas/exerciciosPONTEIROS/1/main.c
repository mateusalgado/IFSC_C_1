#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void Area(float *,float,float);
void Hipotenusa(float *,float,float);

int main()
{
    setlocale(LC_CTYPE,"");

    float area, a, b, h;

    printf("Informe os catetos a e b de um triângulo retângulo: \n");
    scanf("%f %f", &a, &b);

    Hipotenusa(&h, a,b);
    Area(&area, a,b);

    printf("Área = %.2f \n", area);
    printf("Hipotenusa = %.2f \n", h);

    return 0;
}

void Area(float *parea, float a,float b)
{

    *parea = (a*b)/2;
}
void Hipotenusa(float *ph, float a,float b)
{
#include <math.h>

    *ph = sqrt(a*a+b*b);
}
