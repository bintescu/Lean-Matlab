function [x] = GaussPivTot(A,b)
n = length(b);
index = 1:n;
A=[A,b];
for k=1:n-1
    max=abs(A(k,k));
    for i=k:n
    for j=k:n
        if abs(A(i,j))>max
            max=abs(A(i,j));
            p=i;
            m=j;
        end
    end
end
if max == 0
    fprintf ('Sistem incompatibil sau compatibil nedeterminat')
    return 
end
if p~=k
    A([p,k],:) = A([k,p],:)        %interschimbam linia p cu linia k%
end
if m~=k
    A(:,[m,k]) = A(:,[k,m]);     %interschimbam coloana m cu coloana k%
    index([m,k]) = index([k,m]); %interschimbam si indicii%
end
for l=k+1:n                        %facem zerouri%
    mlk = A(l,k)/A(k,k);
    A(l,:) = A(l,:) - mlk*A(k,:);  %schimbarea liniei l%
end
if A(n,n) == 0                   %daca ultimul element e 0%
    fprintf ('Sistem incompatibil sau compatibil nedeterminat.')
    return
end
y = SubsDesc(A(1:n,1:n),A(:,n+1)); %metoda subst descendente%
for i=1:n
    x(index(i))=y(i);
end
end


