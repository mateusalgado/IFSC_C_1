#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int numero;
    char  menu;

    do
    {
        printf("<Convers�o de base>\n (1) decimal para hexadecimal \n (2) hexadecimal para decimal \n (3) decimal para octal \n (4) octal para decimal \n (5) Encerrar \n");
        fflush(stdin);
        menu = getchar();

        switch(menu)
        {
        case '1':
            printf("\nInsira um n�mero decimal \n\n", numero);
            scanf("%d", &numero);

            printf("\nN�mero %d em hexadecimal: %x \n\n", numero, numero);
            system("pause");
            break;

        case '2':
            printf("\nInsira um n�mero hexadecimal \n\n", numero);
            scanf("%x", &numero);

            printf("\nN�mero %x em decimal: %d \n\n", numero, numero);
            system("pause");
            break;

        case '3':
            printf("\nInsira um n�mero decimal \n\n", numero);
            scanf("%d", &numero);

            printf("\nN�mero %d em octal: %o \n\n", numero, numero);
            system("pause");
            break;

        case '4':
            printf("\nInsira um n�mero octal \n\n", numero);
            scanf("%o", &numero);

            printf("\nN�mero %o em decimal: %d \n\n", numero, numero);
            system("pause");
            break;
        }

        system("cls");
    }
    while(menu != '5');
    return 0;
}
