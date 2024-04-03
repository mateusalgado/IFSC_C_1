#include <stdio.h>
//#include <stdlib.h>
//#include <conio.h>
//#include <ctype.h>

int main()
{
 char c,d;

 printf("Informe a primeira letra: ");
 scanf("%c",&c);

 printf("Informe a segunda letra: ");
 fflush(stdin);

 d=getchar();

 printf("Letra 1 = %c, codigo ASCII = %d\n",c,c);
 printf("Letra 2 = %c, codigo ASCII = %d\n",d,d);
 return 0;
}
