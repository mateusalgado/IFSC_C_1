#include <stdio.h>
#include <stdlib.h>

/*************************************************************
* Autor: Mateus Salgado *
* Este programa é para calcular o tempo transcorrido entre duas marcações
subsequentes de um cronômetro, de acordo com as especificações *
*
*************************************************************/

struct tempo
{
    int hora;
    int min;
    int seg;
};

void Elapsed_time( struct tempo*, struct tempo*, struct tempo*);

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    struct tempo ti, tf, delta_t;

    printf("Entre com a marcação inicial do cronometro em horas minutos e segundos <h> <min> <seg>: \n");
    scanf("%d %d %d", &ti.hora, &ti.min, &ti.seg);

    printf("Entre com a marcação final do cronometro em horas minutos e segundos <h> <min> <seg>: \n");
    scanf("%d %d %d", &tf.hora, &tf.min, &tf.seg);

    Elapsed_time(&ti, &tf, &delta_t);

    fflush(stdin);

    printf("O intervalo de tempo transcorrido foi de:\n%d h %d min %d seg\n", delta_t.hora, delta_t.min, delta_t.seg);
    return 0;
}

void Elapsed_time(struct tempo *tinicial, struct tempo *tfinal,struct tempo *delta_tempo)
{
    delta_tempo->seg = (tfinal->seg + tfinal->hora*3600 + tfinal->min*60)-(tinicial->seg + tinicial->hora*3600 + tinicial->min*60);

    delta_tempo->hora = delta_tempo->seg / 3600;
    delta_tempo->seg = delta_tempo->seg - delta_tempo->hora*3600;

    delta_tempo->min = delta_tempo->seg / 60;
    delta_tempo->seg = delta_tempo->seg - delta_tempo->min*60;
}
