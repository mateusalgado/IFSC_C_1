/*
AUTOR: MATEUS SALGADO
ESTE PROGRAMA FAZ A SOMA DOS TERMOS DA PA E IMPRIME ELES
*/

clc

soma = 0;

a=input("Entre com o valor a do primeiro elemento da PA:");
n=input("Entre com o número n total de termos da PA:");
d=input("Entre com a diferença d entre elementos da PA:");

printf("Termos da série: ");
for i=1:n
    soma = soma + a;
    printf("%d : ", a);
    a = a + d;
end

printf(".\n");
printf("Soma dos termos da série %.2f \n\n", soma);
