clear all
function[x] = FactLU(A)
n = size(A,1);
L = eye(n);
for k=1:n-1
   p = k;
   max = abs(A(j,k));
   for j=k:n
       if abs(A(j,k)) > max
           max = abs(A(j,k));
           p = j;
       end
   end
   if A(p,k) == 0
       fprintf('Sis incomp sau comp nedet');
       return
   end
   w(k) = p;
   if p~=k
       A([p,k],:) = A([k,p],:);
   end
   for l=k+1:n
       L(l,k) = A(l,k)/A(k,k);
       A(l,:) = A(l,:) - L(l,k)*A(k,:);
   end
   if k > 1
       L([p,k],1:k-1) = L([k,p],1:k-1);
   end
end
if A(n,n) == 0
    fprintf('Nu admite factLU');
    return
end
U = A;
end