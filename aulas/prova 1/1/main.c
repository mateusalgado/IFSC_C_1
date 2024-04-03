#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>

/*
Autor: Mateus Salgado
Este programa informa o quadrante das coordenadas cartesianas e sua dsit�ncia da origem
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

        printf("\n MENU \n(a)Informe as coordenadas do ponto no sistema cartesiano(x e y) \n(b)Localize o ponto no sistea cartesiano: quadrante (1�,2�,3�,4�), eixo (x ou y) ou origem (0,0) \n(c)Informe a dist�ncia do ponto em rela��o � origem \n(d)Limpe a tela \n(e)Encerrar programa \n\nOp��o: \n");
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
                printf("Localiza��o: Primeiro quadrante\n");
            }
            else if(pontoX < 0 && pontoY > 0)
            {
                printf("Localiza��o: Segundo quadrante\n");
            }
            else if(pontoX < 0 && pontoY < 0)
            {
                printf("Localiza��o: Terceiro quadrante\n");
            }
            else if(pontoX > 0 && pontoY < 0)
            {
                printf("Localiza��o: Quarto quadrante\n");
            }
        }
        else if(menu == 'c')
        {
            distancia = sqrt(pontoX*pontoX+pontoY*pontoY);
            printf("Dist�ncia= %f\n", distancia);
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
