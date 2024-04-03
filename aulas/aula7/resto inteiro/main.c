#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int divisor = 0, dividendo = 0, i=0, acumulador = 0;

    printf("Qual o dividendo?\n");
    scanf("%d", &dividendo);

    printf("Qual o divisor?\n");
    scanf("%d", &divisor);

    while(1)
    {
        acumulador += divisor;

        if (acumulador>dividendo)
        {
            break;
        }
        else
        {
            i++;
        }
    }

    printf("Resultado inteiro da divisão = %d\n", i);

    return 0;
}
