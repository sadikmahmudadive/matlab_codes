%false position method
clc;

%ingredients:
f = @(x) (x^3 - 2*x - 5);
xL = 1;
xU = 3;

%process:
for i = 1:10
    x2(i) = xL-(xU-xL)/(f(xU)-f(xL))*f(xL);
    if f(x2(i))>0;
        xU  = x2(i);
    else
        xL = x2(i);
    end
    p = x2(i);
end
fprintf('Solution: %f',p);