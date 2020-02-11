function [ y ] = MetDirecta2( X,Y,x )
    syms P;
    n=length(X)-1;
    Pn=0;
    for i=1:n+1
        for j=1:n+1
            A(i,j)=X(i)^(j-1);
        end
    end
    a=A\transpose(Y);
    for i=1:length(a)
        Pn=Pn+a(i)*(P^(i-1));
    end
    Pn=matlabFunction(Pn,'vars',{P});
    y=Pn(x);
end


