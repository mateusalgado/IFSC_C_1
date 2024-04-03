#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    unsigned short int idade;

    printf("Informe a idade do nadador: \n");
    scanf("%hu", &idade);

    switch(idade)
    {
    case 1:
    case 2:
    case 3:
    case 4:
        printf("Fraldinha \n");
        break;

    case 5:
    case 6:
    case 7:
        printf("Infantil A \n");
        break;

    case 8:
    case 9:
    case 10:
        printf("Infantil B \n");
        break;

    case 11:
    case 12:
    case 13:
        printf("Juvenil A \n");
        break;

    case 14:
    case 15:
    case 16:
    case 17:
        printf("Juvenil B \n");
        break;

    default:
        printf("Adulto \n");
        break;
    }

    return 0;
}
