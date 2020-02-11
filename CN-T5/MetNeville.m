function [y] = MetNeville (fx,x,aprox)
n = length(x);
Q = zeros(n,n);
syms z;
for i = 1:n
    Q(i,1) = fx(i);
end
for i=2:n
    for j=2:i
        Q(i,j) = ((aprox-x(i-j+1))*Q(i,j-1) - (aprox-x(i))*Q(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
for i=1:n
    P(n) = Q(n,n);
end
    y = P;
end
        