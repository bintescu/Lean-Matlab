function [x] = GaussFaraPiv(A,b)
n=length(b);
A=[A b];
for k=1:n-1
    max=A(k,k);
    for i=k:n
        if A(i,k)~=0
            max=A(i,k);
            p=i;
            break
        end
    end
    if max==0
        disp('Sistem incompatibil sau compatibil nedeterminat');
        x='Nu exista solutie';
        return 
    end
    if p~=k
        A([p,k],:)=A([k,p],:);
    end
    for l=k+1:n
        mlk=A(l,k)/A(k,k);
        A(l,:)=A(l,:)-mlk*A(k,:);
    end
end
if A(n,n)==0
    disp('Sistemul este incompatibil sau compatibil nedeterminat');
    x='Nu exista solutie';
    return 
end
x=SubsDesc(A(:,1:n),A(:,n+1));