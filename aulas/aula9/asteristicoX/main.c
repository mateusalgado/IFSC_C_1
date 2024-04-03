#include <stdio.h>
#include <stdlib.h>
#define H 5

int main()
{
    int i=1, j=1;
    while(i<=H)
    {
        while(j<=H)
        {
            if(j == i || j == H-i+1)
            {
                printf("*");
            }
            else
            {
                printf(" ");

            }
            j++;

        }
        printf("\n");
        j = 1;
        i++;

    }
    return 0;
}
