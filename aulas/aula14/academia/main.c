#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct aluno
{
    char[50] nome;
    char[1] sexo;
    int idade;
    float peso;
    float altura;
    float imc;
};

void CalculaIMC(struct aluno*);

int main()
{
    struct aluno aluno[2];

    printf("Informe as coordenadas do ponto 1: \n");
    scanf("%d %d", &p[0].x, &p[0].y);

    printf("Qual : \n");
    scanf("%d %d", &p[1].x, &p[1].y);

    TrocaAbcissa(p);

    printf(" \na = {%d, %d} e b = {%d, %d} \n", p[0].x, p[0].y, p[1].x, p[1].y);
    return 0;
}

void TrocaAbcissa(struct ponto* p)
{
    int temp;

    //ponteiro membro

    temp = p->x;
    p->x = (p+1)->x;
    (p+1)->x = temp;

    //ponteiro vetor

    /*temp = p[0].x;
    p[0].x = p[1].x;
    p[1].x = temp;*/


}
