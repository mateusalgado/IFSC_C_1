#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_CTYPE,"");

    int anos = 0;
    float A=80000, B=200000 ,crescimentoA = 0.03, crescimentoB = 0.015;

    for(anos = 0 ; A<B; anos++){
        A = A + A*crescimentoA;
        B = B + B*crescimentoB;

        crescimentoA=crescimentoA-0.0005;
        crescimentoB=crescimentoB-0.00025;
    }
    printf("A população do país A ultrapassará ou igualará a população do país B em %d anos", anos);

    return 0;
}
