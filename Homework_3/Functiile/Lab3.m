
%% ex3 b)
A=[0,1,-2;1,-1,1;1,0,-1];
a=[4;6;2];
B=[0,1,1;2,1,5;4,2,1];
b=[3;5;1];
x=GaussPivTot(A,a)
x1=GaussPivPartiala(A,a)
x2=GaussFaraPiv(A,a)
x3=GaussPivTot(B,b)
x4=GaussPivPartiala(B,b)
x5=GaussFaraPiv(B,b)
%fprintf('Solutia sistemului Ax=b este: \n')
%fprintf('%5.2f\n',x)
%% ex 3 c)
e=10^-20
A=[e,1;1,1]
a=[1;2];

C=10^20
B=[1 C;1 1];
b=[C;2];
x=GaussFaraPiv(A,a)
x1=GaussPivPartiala(A,a)
x3=GaussPivTot(B,b)
x4=GaussPivPartiala(B,b)

%% ex 6
A=[1,2,-1;2,4,7;-1,2,5];
b=[2;13;10];
[L,U,w]=FactLU(A);
L*U  %Descompunerea sistemului
w
for i=1:2
aux=b(i);
b(i)=b(w(i));
b(w(i))=aux;

end
y=SubsAsc(L,b)
x=SubsDesc(U,y)

%% ex 8
clear all
A = [1 2 3;2 5 8;3 8 14];
b = [-5;-14;-25];
L = FactorizareCholesky(A)
y = SubsAsc(L,b)
x = SubsDesc(L',y)