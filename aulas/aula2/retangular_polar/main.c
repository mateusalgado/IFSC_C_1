#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    float r1,r2,req_serie,req_paralelo;

    printf("Informe os valores dos dois resistores R1 e R2: ");

    scanf("%f %f", &r1, &r2);

    req_serie = (r1+r2);
    req_paralelo = ((r1+r2)/(r1 * r2));

    printf("req_serie = %.2f", req_serie);
    printf("req_paralelo = %.2f", req_paralelo);
    return 0;
}
