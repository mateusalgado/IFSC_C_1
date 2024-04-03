#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#define MAX 15

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char nome[MAX],sobrenome[MAX],nomecompleto[MAX+MAX];

    printf("Informe seu nome: ");
    //fgets(nome, MAX, stdin);
    gets(nome);

    printf("Informe seu sobrenome: ");
    //fgets(sobrenome, MAX, stdin);
    gets(sobrenome);

    strcpy(nomecompleto, nome);
    strcat(nomecompleto, " ");
    strcat(nomecompleto, sobrenome);

    printf("Bem vindo %s !Seu nome tem %d letras", nomecompleto);

    return 0;
}
