disp("aX^2 + bX + c = 0")

a=input("Informe os coef. a:");
b=input("Informe os coef. b:");
c=input("Informe os coef. c:");

delta = sqrt(b*b - 4*a*c);
x1 = (-b + delta)/(2*a);
x2 = (-b - delta)/(2*a);

disp(x2, "x2=",x1,"x1=");
