#include <stdio.h>
#include <stdlib.h>
//#include <locale.h>
#include <stdint.h>

int main()
{
    //setlocale(LC_CTYPE,"");

    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int produto, contagem = 1, quantidade = 1, total = 0;

    printf("Menu: \n <100> Cachorro quente \n <101> Bauru simples \n <102> Bauru com ovo \n <103> Hamburguer \n <104> Cheeseburguer \n <105> Suco \n <106> Refrigerante \n\n < 0 > Finalizar o pedido \n <200> Encerrar do Programa \n\n");

    //if(produto != 100 && produto != 101 && produto != 102 && produto != 103 && produto != 104 && produto != 105 &&produto != 106 &&produto != 0 && produto != 200)

    do
    {
        printf("\n\rDigite o código do produto %d : ", contagem);
        scanf("%d", &produto);

        if (produto == 0)
        {
            printf("\n\rTOTAL A PAGAR: R$ %d : ", total);
            printf("\n\rDigite algo para continuar");
            contagem = 1;
            total = 0;
            scanf("%d", &quantidade);
       }
        else if (produto == 200)
        {
            break;
        }
        else
        {
            printf("\n\rDigite a quantidade: ");
            scanf("%d", &quantidade);

            switch(produto)
            {
            case 100:
                total = total + 10*quantidade;
                break;
            case 101:
                total = total + 5*quantidade;
                break;
            case 102:
                total = total + 7*quantidade;
                break;
            case 103:
                total = total + 12*quantidade;
                break;
            case 104:
                total = total + 14*quantidade;
                break;
            case 105:
                total = total + 3*quantidade;
                break;
            case 106:
                total = total + 4*quantidade;
                break;
            default:
                printf("\n\rProduto não encontrado");
                break;
            }
            contagem++;
        } // else if
    }
    while (1);

    return 0;
}
