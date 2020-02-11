function [ a ] = MetDirecta( x,y )
    n=length(x)-1;
    for i=1:n+1
        for j=1:n+1
            A(i,j)=x(i)^(j-1);
        end
    end
    a=A\transpose(y);
end

