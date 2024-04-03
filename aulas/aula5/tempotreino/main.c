#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main()
{
    int tempo, idade;
    char sexo;

    printf("Informe seu sexo (M ou F): ");
    sexo = toupper(getchar());

    printf("Informe sua idade: ");
    scanf("%d", &idade);

    if(sexo == 'M')
    {
        tempo = idade < 30 ? 55 : 40;
    }
    else if(sexo == 'F')
    {
        tempo = idade < 30 ? 45 : 35;
    }
    else
    {
        printf("Informe um sexo correto");
    }

    printf("O seu tempo de treino é: %d", tempo);
    return 0;
}
