%% EXC5
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
dfb=df(pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i),d2s(i)]=SplCub(X,Y,dfa,dfb,xgr(i));
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(2)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
figure(3)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,d2s,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(4);
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
dfb=df(pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i),d2s(i)]=SplCub(X,Y,dfa,dfb,xgr(i));
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(5)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
figure(6)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,d2s,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(7);
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
dfb=df(pi/2);
xgr=linspace(-pi/2,pi/2,100);
for i=1:length(xgr)
    [S(i),ds(i),d2s(i)]=SplCub(X,Y,dfa,dfb,xgr(i));
end
plot(xgr,S,'o','MarkerFaceColor','b','Markersize',10);
figure(8)
fplot(df,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,ds,'o','MarkerFaceColor','b','Markersize',10);
figure(9)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[-pi/2,pi/2]);
hold on;
grid on;
plot(xgr,d2s,'o','MarkerFaceColor','b','Markersize',10);
%%
f=@(x)sin(x);
n=10;
X=linspace(-pi/2,pi/2,n+1);
Y=f(X);
xgr=linspace(-pi/2,pi/2,100);
[y,ypr,y2pr]=SplCubv(X,Y,dfb,dfa,xgr)