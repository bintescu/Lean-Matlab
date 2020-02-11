function [d2f] = MetRichardsond(f,x,h,n)
    phi=@(x,h)((f(x+h)-2*f(x)+f(x-h))/(h^2));
    for i=1:n
        Q(i,1)=phi(x,(h/(2^(i-1))));
    end
    for i=2:n
        for j=2:i
            Q(i,j)=Q(i,j-1)+(1/((2^(j-1))-1))*(Q(i,j-1)-Q(i-1,j-1));
        end
    end
    d2f=Q(n,n);
end

