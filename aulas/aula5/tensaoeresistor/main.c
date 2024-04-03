#include <stdio.h>
#include <stdlib.h>
#include <math.h>'
#include <locale.h>

int main()
{
    float v,r,i;

    setlocale(LC_CTYPE,"");

    printf("Informe o valor da tensão e do resistor: ");

    scanf("%f %f", &v, &r);
    i = (v/r);

    if(i>1)
    {
        printf("Ultrapassou o máx permitido, corrente = %.3f A", i);
    }
    else if (i==1)
    {
        printf("Alcançou o máx permitido, corrente = %.3f A", i);
    }
    else
    {
        printf("Faltam %.3f A para atingir o limite", 1-i);
    }

    return 0;
}
