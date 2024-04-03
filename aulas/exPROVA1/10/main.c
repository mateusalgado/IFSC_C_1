#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    float saldo, saque, deposito;
    char opcoes;

    do
    {
        printf("Opções:\n (a) Consulta de Saldo \n (b) Saque \n (c) Depósito \n (d) Sair \n");
        fflush(stdin);
        opcoes = tolower(getchar());

        switch(opcoes)
        {
        case 'a':
            printf("\nValor saldo: R$ %+.2f \n\n", saldo);
            break;

        case 'b':
            printf("\nQuanto você quer sacar?\n");
            scanf("%f", &saque);

            printf("\nValor saque: R$ %.2f \n\n", saque);

            saldo = saldo - saque;
            printf("\nValor saldo: R$ %+.2f \n\n", saldo);
            break;

        case 'c':
            printf("\nQuanto você quer depositar?\n");
            scanf("%f", &deposito);

            printf("\nValor depósito:R$ %.2f \n\n", deposito);

            saldo = saldo + deposito;
            printf("\nValor saldo: R$ %+.2f \n\n", saldo);
            break;
        }
    }
    while(opcoes != 'd');
    return 0;
}
