#include <stdio.h>
#include <stdlib.h>
#include <math.h>'
#include <locale.h>

int main()
{
    float v,r,i;

    setlocale(LC_CTYPE,"");

    printf("Informe o valor da tens�o e do resistor: ");

    scanf("%f %f", &v, &r);
    i = (v/r);

    if(i>1)
    {
        printf("Ultrapassou o m�x permitido, corrente = %.3f A", i);
    }
    else if (i==1)
    {
        printf("Alcan�ou o m�x permitido, corrente = %.3f A", i);
    }
    else
    {
        printf("Faltam %.3f A para atingir o limite", 1-i);
    }

    return 0;
}
