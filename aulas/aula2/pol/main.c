#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
    float amp, fase,x,y;

    printf("insira os volores real e imaginario: ");
    scanf("%f%f",&x,&y);

    amp = hypotf(x,y);
    fase = atan2(y,x)*180/M_PI;

    printf("fasor:%.3f com angulo de %f graus",amp,fase);

    return 0;
}
