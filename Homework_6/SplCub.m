function [S,dS,d2S]=SplCub(X,Y,dfa,dfb,x)
h=X(2)-X(1);
N=length(X)-1;
B(1,1)=1;
B(N+1,N+1)=1; 
for j=2:N
        B(j,j)=4;
        B(j,j+1)=1;
        B(j,j-1)=1;
end
W(1)=dfa;
W(N+1)=dfb;
for j=2:N
    W(j)=(3/h)*(Y(j+1)-Y(j-1));
end
b=B\transpose(W);
for j=1:N
    a(j)=Y(j);
    c(j)=3/h^2*(Y(j+1)-Y(j))-((b(j+1)+2*b(j))/h);
    d(j)=-2/h^3*(Y(j+1)-Y(j))+(1/h^2)*(b(j+1)+b(j));
end
for j=1:N
    if(X(j)<=x && X(j+1)>=x)
        S=a(j)+b(j)*(x-X(j))+c(j)*((x-X(j))^2)+d(j)*((x-X(j))^3);
        dS=b(j)+2*c(j)*(x-X(j))+3*d(j)*((x-X(j))^2);
        d2S=2*c(j)+6*d(j)*(x-X(j));
        break;
    end
end    
end
