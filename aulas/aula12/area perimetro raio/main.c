#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void Circulo(float *,float *,float);

int main()
{
    setlocale(LC_CTYPE,"");

    float area, perimetro, raio;


    printf("Informe o raio do c�rculo: \n");
    scanf("%f", &raio);

    Circulo(&area, &perimetro,raio);

    printf("�rea = %.2f \n", area);
    printf("Per�metro = %.2f \n", perimetro);

    return 0;
}

void Circulo(float *prta, float *prtb,float r)
{
#include <math.h>

    *prta = M_PI*r*r;
    *prtb = 2*M_PI*r;
}
