#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void AreaHipotenusa(float *, float *,float,float);

int main()
{
    setlocale(LC_CTYPE,"");

    float area, a, b, h;

    printf("Informe os catetos a e b de um triângulo retângulo: \n");
    scanf("%f %f", &a, &b);

    AreaHipotenusa(&h,&area, a,b);

    printf("Hipotenusa = %.2f \n", h);
    printf("Área = %.2f \n", area);

    return 0;
}

void AreaHipotenusa(float *ph,float *parea, float a,float b)
{
#include <math.h>

    *ph = sqrt(a*a+b*b);
    *parea = (a*b)/2;
}
