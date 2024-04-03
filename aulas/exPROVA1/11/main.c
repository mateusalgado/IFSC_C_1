#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
    setlocale(LC_CTYPE,"");

    float cel;

    printf("Farenheit | Celsius\n");
    printf("--------- | -------\n");

    for(float far = -10; far <= 80; far +=5)
    {
        cel = (far-32)/1.8;
        printf("%+9.3f | %+7.3f \n", far, cel);
    }
    return 0;
}
