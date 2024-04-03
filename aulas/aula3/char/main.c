#include <stdio.h>
#include <stdlib.h>
//#include <locale.h>
#include <windows.h>

int main()
{
 char c;

 //setlocale(LC_CTYPE,"");

 SetConsoleCP(1252);
 SetConsoleOutputCP(1252);

 printf("A letra é: \n");
 printf("Informe uma letra: ");

 c = getchar();

 printf("Letra = %c", c);
 return 0;
}
