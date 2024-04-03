#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#define MAX 15

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char nome [MAX];

    printf("Informe seu nome: ");
    scanf("%[a-z A-Z]",nome);

    printf("Bem vindo, %s", nome);
    return 0;
}
