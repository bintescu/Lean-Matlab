function [y,z] = MetHermit(X,Y,Z,x)
n = length(X)-1;
Her=0;
Herp=0;
for k=1:n+1
    L=ones(size(x));
    Lpk=0;
    a=1;
    for j=1:n+1
        if j~=k
            L=(x-X(j))/(X(k)-X(j)).*L;
            Lpk=Lpk+1/(X(k)-X(j));
            a=a*(X(k)-X(j));
        end
    end
    Lp=zeros(size(x));
    for i=1:n+1
        if i~=k
            p=ones(size(x));
            for j=1:n+1
                if j~=k && j~=i
                    p=p.*(x-X(j));
                end
            end
            Lp=Lp+p;
        end
    end
    Lp=Lp/a;
    H=L.*L.*(1-2*Lpk*(x-X(k)));
    K=L.*L.*(x-X(k));
    Hp=2*L.*Lp.*(1-2*Lpk*(x-X(k)))+L.^2.*(-2*Lpk)
    Kp=2*L.*Lp.*(x-X(k))+L.^2;
    Her=Her+H*Y(k)+K*Z(k);
    Herp=Herp+Hp*Y(k)+Kp*Z(k);
end
y=Her;
z=Herp;
end