#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void Equivalente(float *,float *, float ,float);

int main()
{
    setlocale(LC_CTYPE,"");

    float r1,r2,req_serie,req_paralelo;

    printf("Informe os valores dos dois resistores R1 e R2: ");
    scanf("%f %f", &r1, &r2);

    Equivalente(&req_serie, &req_paralelo, r1,r2);

    printf("Req(série) = %.2f\n", req_serie);
    printf("Req(paralelo) = %.2f\n", req_paralelo);

    return 0;
}

void Equivalente(float *rs, float *rp,float rum, float rdois)
{
    *rs = (rum+rdois);
    *rp = ((rum * rdois)/(rum+rdois));
}
