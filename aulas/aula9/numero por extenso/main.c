#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char extenso [11][7] = {"zero","um", "dois", "tr�s", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez"};
    short int num;

    printf("Entre com um n�mero de 0 a 10: ");
    scanf("%hd", &num);

    printf("N�mero %hd por extenso: %s.", num, extenso[num]);

    return 0;
}
