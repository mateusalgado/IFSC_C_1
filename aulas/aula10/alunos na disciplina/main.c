#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#define TAM 20

struct turma
{
    char nome [40];
    int mat;
    float nota[3];
    float media;

};

int main()
{
    setlocale(LC_CTYPE,"");

    struct turma a[TAM];
    int n=0;

    while(n<TAM)
    {
        printf("Entre o nome do aluno ou FIM para encerrar: \n");
        scanf("%39[^\n]s", a[n].nome);A

        if(!strcmp(a[n].nome,"FIM"))
            break;

        printf("Informe o número da matrícula: \n");
        scanf("%d", &a[n].mat);

        printf("Informe as 3 notas do aluno: \n");
        scanf("%f %f %f", &a[n].nota[0], &a[n].nota[1], &a[n].nota[2]);

        a[n].media = ((a[n].nota[0] + a[n].nota[1] + a[n].nota[2])/3);

        n++;
        fflush(stdin);
    }
    printf("Resultado dos alunos: \n");

    for (int i=0; i<n; i++)
    {
        if(a[i].media >= 6.0)
        {
            printf("O aluno %s está APROVADO com média = %.2f \n", a[i].nome,a[i].media);
        }
        if(a[i].media < 6.0)
        {
            printf("O aluno %s está REPROVADO com média = %.2f \n", a[i].nome,a[i].media);
        }
    }


    return 0;
}
