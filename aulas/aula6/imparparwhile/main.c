#include <stdio.h>
#include <stdlib.h>

int main()
{
    int num;

    do
    {
        printf("Entre com um numero: ");
        scanf("%d", &num);
        if(num%2)
        {
            printf("Numero impar \n");
        }
        else
            printf("Numero par \n");
}
while(num!=0);

return 0;
}
