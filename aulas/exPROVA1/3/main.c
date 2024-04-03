#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char menu;
    float fonte, r1,r2, sobre;

    while(menu != 'c')
    {
        fflush(stdin);
        sobre = 0;
        r1 = 0;
        r2 = 0;
        fonte = 0;

        printf("Selecione o que voc� quer fazer, digite: \n(a)Divisor de tens�o \n(b)Divisor de corrente \n(c)Encerrar \n\n");
        toupper(scanf("%1c", &menu));

        if(menu == 'a')
        {
            printf("Qual o valor da fonte de tens�o? \n");
            scanf("%f", &fonte);

            printf("Qual o valor do R1? \n");
            scanf("%f", &r1);
            printf("Qual o valor do R2? \n");
            scanf("%f", &r2);

            sobre = (fonte/(r1+r2))*r2;
            printf("Tens�o sobre o resistor R2 � igual �: %.2f V \n\n", sobre);
        }
        else if(menu == 'b')
        {

            printf("Qual o valor da fonte de corrente? \n");
            scanf("%f", &fonte);

            printf("Qual o valor do R1? \n");
            scanf("%f", &r1);
            printf("Qual o valor do R2? \n");
            scanf("%f", &r2);

            sobre = (fonte/(r1+r2))*r1;
            printf("Corrente sobre o resistor R2 � igual �: %.2f A \n\n", sobre);
        }
        else if(menu != 'c')
        {
            printf("Digite algo v�lido seu tanso \n\n");
        }
    }

    return 0;
}
