#include <stdlib.h>
#include <stdio.h>
#define h 31
#define m (h+1)/2

int main()
{
    int j=1, i=1, c=0;
    while(i<=h)
    {

        if (i>m-4)
        {
            while(j+i<=m)
            {
                printf(" ");
                j++;
            }
        }
        if (i>m)
        {
            while(j+m<=i)
            {
                printf(" ");
                j++;
            }

            c--;
        }
        else
            c++;

        while(j<m+c && j>=m-c)
        {
            printf("*");
            j++;
        }
        printf("\n");
        j=1;
        i++;
    }
    return 0;
}
