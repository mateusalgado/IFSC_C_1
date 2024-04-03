clear
clc
 k=1;
n = input("Insira um número potência de 2:");

while(n >= 1)
    if(floor(log2(n)) ~= ceil(log2(n))) then
        {
        printf("Insira um número potência de 2:")
        }
    else
        {
        for k : k<=n : k*2
            printf("%d ", k);
        end
        }
    end
end
