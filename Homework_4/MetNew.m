function [ y ] = MetNew(X,Y,x)
    n=length(X)-1;
    syms P;
    Pn=0;
    for i=1:n+1
        for j=1:n+1
            if j==1
                A(i,j)=1;
            elseif j>i
                A(i,j)=0;
            else 
                p=1;
                for k=1:j-1
                    p=p*(X(i)-X(k));
                end
                A(i,j)=p;
            end
        end
    end
    C = SubsAsc(A, Y');
    for i=1:n+1
        co=C(i);
        for j=1:(i-1)
            co=co*(P-X(j));
        end
        Pn=Pn+co;
    end
    Pn=matlabFunction(Pn, 'vars' , {P});
    y=Pn(x);
end

