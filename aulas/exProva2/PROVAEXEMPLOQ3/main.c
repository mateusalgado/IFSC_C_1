#include <stdio.h>
#include <locale.h>
#include <math.h>

float Leibniz(int );
float Serie_log(int );
int main()
{
    int n;
    setlocale(LC_CTYPE,"");
    printf("Entre com o numero de elementos das séries: ");
    scanf("%d",&n);
    printf("Valor de PI/4: %f\n",Leibniz(n));
    printf("Valor da série log: %f\n",Serie_log(n));
    return 0;
}
float Leibniz(int n)
{
    float soma=0;
    for(int i=0;i<n;i++)
        soma = soma + pow(-1,i)/(2*i+1);
    return soma;
}
float Serie_log(int n)
{
    float soma=0;
    for(int i=1;i<=n;i++)
        soma = soma + pow(-1,i)*log10(i+0.5);
    return soma;
}

