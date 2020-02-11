function [y] = SplineLv(X,Y,x)
    n=length(X)-1;
    for j=1:n
        a(j)=Y(j);
        b(j)=(Y(j+1)-Y(j))/(X(j+1)-X(j))
    end
    for i=1:length(x)
        for j=1:n
            if (x(i)>=X(j) & x(i)<=X(j+1))
                S=a(j)+b(j)*(x(i)-X(j));
                break
            end
        end
        y(i)=S;    
    end
end