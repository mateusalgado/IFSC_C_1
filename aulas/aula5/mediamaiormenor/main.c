#include <stdio.h>
#include <stdlib.h>
#include <math.h>'
#include <locale.h>

int main()
{
    float n1,n2,media;

    setlocale(LC_CTYPE,"");

    printf("Informe as duas notas: ");

    scanf("%f %f", &n1, &n2);
    media = (n1+n2)/2;

    if(media>=6)
    {
        printf("Aluno APROVADO");
    }
    else
    {
        printf("Aluno REPROVADO");
    }

    return 0;
}
