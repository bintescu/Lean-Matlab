function [y] = MetNewtonDD (fx,x,aprox)
syms z
n = length(x);
Q=zeros(n,n);
for i=1:n
    Q(i,1) = fx(i);
end
for i=2:n
    for j=2:i
        Q(i,j) = (Q(i,j-1) - Q(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
P = Q(1,1);
for k=2:n
    prod = 1;
    sum = 0;
    for i=2:k
        prod = prod * (aprox - x(i));
    end
    P(k) = P(k-1) + Q(k,k)*prod;
end
y = P;
end