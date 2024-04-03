#include <stdio.h>
#include <locale.h>
struct tempo
{
    int hora;
    int min;
    int seg;
};
void Elapsed_time( struct tempo*, struct tempo*, struct tempo*);
int Segundos(struct tempo*);
int main()
{
    struct tempo ti, tf, delta;
    setlocale(LC_CTYPE,"");
    printf("Entre com a marcação inicial do cronometro em horas\n");
    printf("minutos e segundos <h> <min> <seg>:\n");
    scanf("%d %d %d",&ti.hora,&ti.min,&ti.seg);
    printf("Entre com a marcação final do cronometro em horas\n");
    printf("minutos e segundos <h> <min> <seg>:\n");
    scanf("%d %d %d",&tf.hora,&tf.min,&tf.seg);
    Elapsed_time(&ti,&tf,&delta);
    printf("Tempo transcorrido: %02d:%02d:%02d",delta.hora,delta.min,delta.seg);
    return 0;
}
void Elapsed_time( struct tempo*pi, struct tempo*pf, struct tempo*pd)
{
    int total;
    total = Segundos(pf)-Segundos(pi);
    pd->hora = total/3600;
    total = total%3600;
    pd->min = total/60 ;
    pd->seg = total%60 ;
}
int Segundos(struct tempo* p)
{
    return 60*((p->hora)*60+(p->min))+p->seg;
}
