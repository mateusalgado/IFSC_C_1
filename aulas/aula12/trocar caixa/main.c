#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void Troca_caixa(char *);

int main()
{
    setlocale(LC_CTYPE,"");

    char frase[500];

    printf("Digite uma frase: ");
    gets(frase);

    Troca_caixa(frase);

    printf("\n%s\n", frase);
    printf("Número de caracteres: %d \n", i);
    return 0;
}

void Troca_caixa(char *ptr)
{
#include <ctype.h>

    int i =0;
    while(*(ptr+i) != '\0')
    {
        *(ptr+i) = toupper(*(ptr+i));
        i++;
    }

    /*
    while(*ptr != '\0')
    {
        *ptr = toupper(*ptr);
        ptr++;
    }
    */
}
