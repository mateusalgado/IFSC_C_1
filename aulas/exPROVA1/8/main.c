#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n, fatorial = 1;
    float e = 1;

    printf("Insira o valor de N e irei calcular o valor de E:");
    scanf("%d", &n);

    for(int i = 1; i<=n ; i++){

        for(int j=i;j>0;j--){
            fatorial = fatorial * j;
        }

        e = e + (1./(fatorial));
        fatorial = 1;
    }

    printf("E: %.2f", e);

    return 0;
}
