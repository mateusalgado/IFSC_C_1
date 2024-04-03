#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>

/*
Autor: Mateus Salgado
ESTE PROGRAMA OBRIGA O USUÁRIO INSIRIR A SENHA CORRETAMENTE
*/

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char senha[6];

    int senha1 = 0,senha2 = 0,i = 0;

    int res = strcmp(senha, "M1abd!");
    int desbloqueio = strcmp(senha, "Ax64@28uRt*q");

    while(senha1 != 1)
    {
        for (i; i<3 ; i++)
        {
            printf("Insira a senha: \n");
            scanf("%d", &senha1);

            if(senha1 == 1)
            {
                printf("ACESSO PERMITIDO\n");
            }
            if(senha1 != 1)
            {
                printf("ACESSO NEGADO\n");
                continue;
            }
            do
            {
                printf("ACESSO BLOQUEADO\n");
                printf("Insira a senha de desbloqueio: \n");
                scanf("%d", &senha2);

                if(senha2 == 2)
                {
                    printf("INSIRA A SENHA DE 6 DÍGITOS\n");
                    i++;
                    break;
                }
                else
                {
                    printf("ACESSO NEGADO\n");
                }
            }
            while(i = 3);
        }
    }
    return 0;
}

