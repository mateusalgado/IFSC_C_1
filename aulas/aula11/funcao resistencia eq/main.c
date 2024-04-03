#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>

float Req(float, float, char);

int main()
{
    setlocale(LC_CTYPE,"");

    float req,r1,r2;
    char op;

    while(1){
        printf("Informe o tipo de associação:\n <s>érie ou <p>aralelo: \n");
        op = tolower(getchar());

        if(op=='s'||op =='p')
            break;
        fflush(stdin);
        printf("Erro, insira um tipo de associação correto.\n");
    }

    printf("Entre com os resistores r1 e r2:\n");
    scanf("%f %f",&r1, &r2);

    req = Req(r1,r2,op);

    printf("A resistência equivalente Req é: %.2f", req);
    return 0;
}

float Req(float ra, float rb, char c)
{
#include <math.h>
    float res;

    res = ra+rb;
    if(c == 'p')
        res = ra*rb/res;

    return res;
}
