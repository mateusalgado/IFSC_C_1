#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int valor, imposto = 0, preco;
    char estado;

    printf("Qual o valor do produto?");
    scanf("%d", &valor);

    fflush(stdin);
    printf("Qual o estado de destino? ('MG', 'SP', 'RJ', 'MS')");
    toupper(scanf("%s", &estado));

    if(strcmp(estado, "MG") == 1 && strcmp(estado, "SP") == 1 && strcmp(estado, "RJ") == 1 && strcmp(estado, "MS") == 1)
    {
        printf("Insira um estado válido");
    }
    else
    {
        if(strcmp(estado, "MG")== 0)
        {
            imposto = 0.07;
            preco = valor + valor*imposto;
        }
        else if(strcmp(estado, "SP") == 0)
        {
            imposto = 0.12;
            preco = valor + valor*imposto;
        }
        else if(strcmp(estado, "RJ")== 0)
        {
            imposto = 0.15;
            preco = valor + valor*imposto;
        }
        else if(strcmp(estado, "MS")==0)
        {
            imposto = 0.08;
            preco = valor + valor*imposto;
        }
        printf("O preço do produto com imposto é = %d", preco);
    }

    return 0;
}
