function [x] = GaussPivPartiala(A,b)
n = length(b);
A = [A,b];
for k=1:n-1
    max = abs(A(k,k));
    p=k;
    for j=k:n
        if abs(A(j,k)) > max
            max = abs(A(j,k));
            p = j;
        end
    end
    if max == 0
        fprintf('Sist incompatibil sau compatibil nedeterminat.');
        return
    end
    if p~=k
      A([p,k],:)=A([k,p],:);
    end
    for l=k+1:n
        mlk = A(l,k)/A(k,k);
        A(l,:) = A(l,:) - mlk*A(k,:);
    end
    if A(n,n) == 0
        fprintf('Sist incompatibil sau compatibil nedeterminat.');
        return
    end
    x = SubsDesc(A(1:n,1:n),A(:,n+1));
end