function [S,ds] = SplineP(X,Y,x,dfa)
    n=length(X)-1;
    b(1)=dfa;
    h=X(2)-X(1);
    for j=1:n-1
        b(j+1)=(2/h)*(Y(j+1)-Y(j))-b(j);
    end
    for j=1:n
        a(j)=Y(j);
        c(j)=(1/h^2)*(Y(j+1)-Y(j)-h*b(j));
    end
    for j=1:n
        if(X(j)<=x && X(j+1)>=x)
            S=a(j)+b(j)*(x-X(j))+c(j)*((x-X(j))^2);
            ds=b(j)+2*c(j)*(x-X(j));
            break
        end
    end
end

