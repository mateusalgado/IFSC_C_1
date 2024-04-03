m = input("Entre com o multiplicando:")
n = input("Entre com o multiplicador:")

produto = 0

for k=1:n
    produto = produto + m
end

printf("%d x %d = %d", m,n, produto)
