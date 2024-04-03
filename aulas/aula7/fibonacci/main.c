#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i, atual, passado = 1, retrasado = 0;

    for(i = 0; i < 15; i++)
    {
        atual = passado + retrasado;
        passado = retrasado;
        retrasado = atual;

        printf("%d, ", atual);
    }

    return 0;
}
