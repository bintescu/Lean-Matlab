function [ x ] = SubsAsc( A, b )
n=length(b);
x(1)=(1/A(1,1))*b(1);
    for k=2:n
        s=0;
        for j=1:k-1
            s=s+A(k,j)*x(j);
        end
        x(k)=(b(k)-s)/A(k,k);
    end
    x=transpose(x);
end

