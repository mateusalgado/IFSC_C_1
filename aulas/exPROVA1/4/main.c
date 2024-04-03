#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int lados, tamanho;
    float area;

    printf("Qual o n�mero de lados?");
    scanf("%d", &lados);
    printf("Qual o tamanho dos lados?");
    scanf("%d", &tamanho);

    if(lados != 3 && lados != 4 && lados != 6 && lados != 8)
    {
        printf("N�o sei calcular a �rea deste pol�gono");
    }
    else
    {
        switch (lados)
        {
        case 3:
            area = (tamanho*tamanho)*(1.73/4);
            break;
        case 4:
            area = tamanho*tamanho;
            break;
        case 6:
            area = (6*tamanho*tamanho)*(1.73/4);
            break;
        case 8:
            area = (2*tamanho*tamanho)*(1+sqrt(2));
            break;
        }

        printf("�rea do pol�gono = %.2f", area);
    }

    return 0;
}
