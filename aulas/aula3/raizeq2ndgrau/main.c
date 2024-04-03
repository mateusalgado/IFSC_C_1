#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    float a,b,c,delta,x1,x2;

    printf("Informe os coef. a, b e c: ");

    scanf("%f %f %f", &a, &b, &c);

    delta = sqrt(b*b - 4*a*c);
    x1 = (-b + delta)/(2*a);
    x2 = (-b - delta)/(2*a);

    printf("x1 = %.2f e x2 = %.2f",x1,x2);
    return 0;
}
