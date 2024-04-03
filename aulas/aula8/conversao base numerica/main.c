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
        printf("<Conversão de base>\n (1) decimal para hexadecimal \n (2) hexadecimal para decimal \n (3) decimal para octal \n (4) octal para decimal \n (5) Encerrar \n");
        fflush(stdin);
        menu = getchar();

        switch(menu)
        {
        case '1':
            printf("\nInsira um número decimal \n\n", numero);
            scanf("%d", &numero);

            printf("\nNúmero %d em hexadecimal: %x \n\n", numero, numero);
            system("pause");
            break;

        case '2':
            printf("\nInsira um número hexadecimal \n\n", numero);
            scanf("%x", &numero);

            printf("\nNúmero %x em decimal: %d \n\n", numero, numero);
            system("pause");
            break;

        case '3':
            printf("\nInsira um número decimal \n\n", numero);
            scanf("%d", &numero);

            printf("\nNúmero %d em octal: %o \n\n", numero, numero);
            system("pause");
            break;

        case '4':
            printf("\nInsira um número octal \n\n", numero);
            scanf("%o", &numero);

            printf("\nNúmero %o em decimal: %d \n\n", numero, numero);
            system("pause");
            break;
        }

        system("cls");
    }
    while(menu != '5');
    return 0;
}
