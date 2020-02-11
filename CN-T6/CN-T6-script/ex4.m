%% ex4
%%
figure(1);
f=@(x)sin(x);
n=2;
X=linspace(-pi/2,pi/2,n+1);
Y=f(X);
fplot(f,[-pi/2,pi/2]);
hold on;
grid on;
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
dfa=df(-pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i)]=SplineP(X,Y,xgr(i),dfa);
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(2)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(3);
f=@(x)sin(x);
n=4;
X=linspace(-pi/2,pi/2,n+1);
Y=f(X);
fplot(f,[-pi/2,pi/2]);
hold on;
grid on;
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
dfa=df(-pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i)]=SplineP(X,Y,xgr(i),dfa);
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(4)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(5);
f=@(x)sin(x);
n=10;
X=linspace(-pi/2,pi/2,n+1);
Y=f(X);
fplot(f,[-pi/2,pi/2]);
hold on;
grid on;
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
dfa=df(-pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i)]=SplineP(X,Y,xgr(i),dfa);
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(6)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
%%
f=@(x)sin(x);
n=10;
X=linspace(-pi/2,pi/2,n+1);
Y=f(X);
xgr=linspace(-pi/2,pi/2,100);
[y,ypr]=SplinePv(X,Y,xgr,dfa)