#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

int main()
{
    int soma = 0, num;

    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    printf("Entre com um número e retornarei a soma dos números impares até ele: ");
    scanf("%d", &num);

    do
    {
        if (num % 2)
        {
            soma += num;
            num -= 2;
        }
        else
        {
            num--;
        }
    }
    while (num > 0);

    printf("Soma: %d", soma);
    return 0;
}
