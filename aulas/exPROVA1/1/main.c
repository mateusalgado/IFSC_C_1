#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

int main()
{
    int soma = 0, num;

    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    printf("Entre com um n�mero e retornarei a soma dos n�meros impares at� ele: ");
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
