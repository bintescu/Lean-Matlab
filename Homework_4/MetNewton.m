function [ xaprox,N ] = MetNewton( F,J,x0,eps )
    k=0;
    xold=x0;
    while 1
        k=k+1;
        % sistem J(x(k-1))z=-F(x(k-1))
        % J(xold)z=-F(xold)
        % J(xold(1),xold(2))z=-F(xold(1),xold(2))
        % z=J(xold(1),xold(2))\-F(xold(1),xold(2));
         z=inv(J(xold(1),xold(2)))*-F(xold(1),xold(2));
        xnew=xold+z;
        if norm(z,2) < eps
            break;
        end
        xold=xnew;
    end
    xaprox=xnew;
    N=k;
end

