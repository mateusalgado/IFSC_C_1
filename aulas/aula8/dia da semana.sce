d = input("Entre com o dia:")
m = input("Entre com o mes:")
a = input("Entre com o ano:")

temp = int((m-14)/12)

dj = int(d - 32075 + 1461*( a + 4800 + temp) / 4 )
dj = dj + int(367*( m - 2 - temp * 12 ) / 12)
dj = dj - int(3*( ( a + 4900 + temp) / 100 ) / 4)

resto = modulo(dj,7)

select resto
case 0 then
    disp("segunda-feira")
case 1 then
    disp("terça-feira")
case 2 then
    disp("quarta-feira")
case 3 then
    disp("quinta-feira")
case 4 then
    disp("sexta-feira")
case 5 then
    disp("sábado")
case 6 then
    disp("domingo")
end
