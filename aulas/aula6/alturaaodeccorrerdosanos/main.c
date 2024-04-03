#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_CTYPE,"");

    int anos = 0;
    for(float ze=1.41, chico=1.50; ze<chico; anos++){
        ze = ze + 0.032;
        chico = chico = 0.018;
    }
    printf("Zé ficará mais alto que Chico após %d anos", anos);

    return 0;
}
