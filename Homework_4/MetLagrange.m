function [ y ] = MetLagrange(X, Y, x)
    n=length(X)-1;
    syms P;
    Pn=0;
    for k=1:n+1
        Lnk=1;
        for i=1:n+1
            if i~=k
                Lnk=Lnk*((P-X(i)) / (X(k)-X(i)));
            end
        end
        Pn=Pn + Lnk*Y(k);
    end
    Pn=matlabFunction(Pn, 'vars' , {P});
    y=Pn(x);
end

