clc;
%ingridients:
f = input('Enter your function: ');
a = input('Enter left side of your Root guess: ');
b = input('Enter right side of your Root guess: ');
n = input('Enter left the number of itterations: ');
e = input('Enter tolerance: ');
if f(a)*f(b)<0 && a<b
    for i=1:n
        c = (a*f(b)-b*f(a))/(f(b)-f(a));
        fprintf('c%d = %.4f\n', i, c)
        if abs(f(c))<e
            break
        end
        if f(a)*f(b)<0
            b = c;
        elseif f(b)*f(c)<0
            a = c;
        end
    end
else
    disp('No root found between given information!')
end