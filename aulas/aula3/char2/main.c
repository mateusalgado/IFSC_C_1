#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <ctype.h>

int main()
{
 char c;

 printf("Informe um letra: ");

 c = toupper(getchar());

 printf("Letra = %c", c);
 return 0;
}
