function [y,z] = MetHermitDD (X,Y,Z,x)
syms t
n = length(X)-1;
Q = zeros(2*n+2,2*n+2);
for i=1:n+1
    xc(2*i-1) = X(i);
    xc(2*i) = X(i);
    Q(2*i-1,1) = Y(i);
    Q(2*i,1) = Y(i);
end
for i=1:n+1
    Q(2*i,2) = Z(i);
end
for i=2:n+1
    Q(2*i-1,2) = (Q(2*i-1,1)-Q(2*i-2,1))/(xc(2*i-1)-xc(2*i-2));
end
for i=3:2*n+2
    for j=3:i
        Q(i,j) = (Q(i,j-1)-Q(i-1,j-1))/(xc(i)-xc(i-j+1));
    end
end
Her = Q(1,1);
for i=2:2*n+2
    prod = Q(i,i);
    for k=2:i
        prod = prod.*(t-xc(k-1));
    end
    Her = Her + prod;
end
Herp = diff(Her);
Her = matlabFunction(Her,'vars',{t});
Herp = matlabFunction(Herp,'vars',{t});
y = Her(x);
z = Herp(x);
end