#include <stdio.h>
#define H 5
#define MAX ((H+1)/2)

int main()
{
    int i=1, j=1, k=1;
    while(i>0)
    {
        while(j<=i)
        {
            printf("*");
            j++;
        }
        printf("\n");
        j = 1;
        i=i+k;
        if(i==MAX){
            k = -1;
        }
    }
    return 0;

    /*    int i=1, j=1, k=1;
    while(i<=H)
    {
        if(j<=MAX)
        {
            while(j<=i)
            {
                printf("*");
                j++;
            }
        }
        else
        {
            j--;
        }
        printf("\n");
        j = 1;
        i++;
    }
 */
}
