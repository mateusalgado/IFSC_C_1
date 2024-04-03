#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>

/*
Autor: Mateus Salgado
Este programa informa o quadrante das coordenadas cartesianas e sua dsitância da origem
*/

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char menu;
    float pontoX, pontoY, distancia;

    while(menu != 'e')
    {
        fflush(stdin);

        printf("\n MENU \n(a)Informe as coordenadas do ponto no sistema cartesiano(x e y) \n(b)Localize o ponto no sistea cartesiano: quadrante (1°,2°,3°,4°), eixo (x ou y) ou origem (0,0) \n(c)Informe a distância do ponto em relação à origem \n(d)Limpe a tela \n(e)Encerrar programa \n\nOpção: \n");
        scanf("%lc", &menu);

        if(menu == 'a')
        {
            printf("Coordenadas: \n");
            scanf("%f %f", &pontoX, &pontoY);
        }
        else if(menu == 'b')
        {
            if(pontoX > 0 && pontoY > 0)
            {
                printf("Localização: Primeiro quadrante\n");
            }
            else if(pontoX < 0 && pontoY > 0)
            {
                printf("Localização: Segundo quadrante\n");
            }
            else if(pontoX < 0 && pontoY < 0)
            {
                printf("Localização: Terceiro quadrante\n");
            }
            else if(pontoX > 0 && pontoY < 0)
            {
                printf("Localização: Quarto quadrante\n");
            }
        }
        else if(menu == 'c')
        {
            distancia = sqrt(pontoX*pontoX+pontoY*pontoY);
            printf("Distância= %f\n", distancia);
        }
        else if(menu == 'd')
        {
            system("cls");
        }
        else
        {
            printf("******PROGRAMA ENCERRADO*********");
            return 0;
        }
    }
}
