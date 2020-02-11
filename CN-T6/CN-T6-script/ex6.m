%% ex6
figure(1)
f=@(x)sin(x);
X=linspace(0,pi,101);
h=X(2)-X(1);
Y=f(X);
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
hold on;
grid on;
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
fplot(df,[0,pi]);
    [dfd]=DerivNum(X,Y,'dfp');
xgr=linspace(0,pi,100);
plot(xgr,dfd,'o','MarkerFaceColor','b','Markersize',10);
figure(2)
disp('Reprezentare eroare E=|f-Dr|');
syms xp;
Dr=0;
for i=1:length(xgr)
    Dr=Dr+(i*dfd(i)*(xp^(i-1)));
end
Dr=matlabFunction(Dr,'vars',{xp});
Dr(xp)
E1=abs(f(xp)-Dr(xp))
fplot(E1,[0,pi]);
