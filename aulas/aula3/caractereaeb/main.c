#include <stdio.h>
#define WINDOWS

int main()
{
    char a,b;

    printf("Informe um caractere: ");
    a = getchar();

    printf("Informe outro caractere: ");
    #ifdef WINDOWS
     fflush(stdin);
    #else
    __fpurge(stdin);
    #endif // WINDOWS

    b = getchar();

    printf("Seus caracteres %s", nome);
    return 0;
}
