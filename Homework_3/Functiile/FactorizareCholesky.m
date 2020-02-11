
function [L] = FactorizareCholesky(A)
n = size(A,1);
alfa = A(1,1);
if alfa <= 0
    fprintf('A nu admite factorizare Cholesky');
    L = 'error';
    return;
end
L(1,1) = sqrt(alfa);
for i=2:n
    L(i,1) = A(i,1)/L(1,1);
end
for k=2:n
    sum = 0;
    for s=1:k-1
        sum = sum + L(k,s)*L(k,s);
    end
    alfa = A(k,k) - sum;
    if alfa <= 0
        fprintf('A nu admite factorizare Cholesky');
        L='error';
        return;
    end
    L(k,k) = sqrt(alfa);
    for i=k+1:n
        sum = 0;
        for s=1:k-1
            sum = sum + L(i,s)*L(k,s);
        end
        L(i,k) = (A(i,k) - sum)/L(k,k);
    end
end
end