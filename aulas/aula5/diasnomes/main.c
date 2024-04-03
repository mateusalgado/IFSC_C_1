#include <stdio.h>
#include <stdlib.h>

int main()
{
    int mes, dias, ano;

    printf("Informe o mes: ");
    scanf("%d", &mes);

    if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12)
    {
        dias = 31;
    }
    else if (mes == 4 || mes == 6 || mes == 9 || mes == 11)
    {
        dias = 30;
    }
    else if (mes == 2)
    {
        printf("Informe o ano: ");
        scanf("%d", &ano);

        if(!(ano%4) && ano%100 || !(ano%400))
        {
            dias = 29;
        }
        else
        {
            dias = 28;
        }
    }
    else
    {
        printf("O mes nao existe: ");
    }

    printf("O mes digitado tem: %d", dias);
    return 0;
}
