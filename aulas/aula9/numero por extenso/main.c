#include <stdio.h>
#include <stdlib.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char extenso [11][7] = {"zero","um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez"};
    short int num;

    printf("Entre com um número de 0 a 10: ");
    scanf("%hd", &num);

    printf("Número %hd por extenso: %s.", num, extenso[num]);

    return 0;
}
