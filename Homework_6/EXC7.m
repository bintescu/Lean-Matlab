%% EXC 7
%%
figure(1)
f=@(x)sin(x);
n=4;
X=linspace(0,pi,100);
h=X(2)-X(1);
Y=f(X);
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
hold on;
grid on;
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
fplot(df,[0,pi]);
xgr=linspace(0,pi,100);
for i=1:length(xgr)
    [dfr(i)]=MetRichardson(f,xgr(i),h,n);
end
plot(xgr,dfr,'o','MarkerFaceColor','b','Markersize',10);
dfr
figure(2)
disp('Reprezentare eroare E=|f-Dr|');
syms xp;
Dr=0;
for i=1:length(xgr)
    Dr=Dr+(i*dfr(i)*(xp^(i-1)));
end
Dr=matlabFunction(Dr,'vars',{xp});
Dr(xp)
E1=abs(f(xp)-Dr(xp))
fplot(E1,[0,pi]);
for i=1:length(xgr)
    [df2r(i)]=MetRichardsond(f,xgr(i),h,n-1);
end
Dr2=0;
for i=1:length(xgr)
    Dr2=Dr2+(i*(i-1)*df2r(i)*(xp^(i-2)));
end
Dr2=matlabFunction(Dr2,'vars',{xp});
Dr2(xp)
figure(3)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[0,pi]);
hold on;
grid on;
plot(xgr,df2r,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(4)
f=@(x)sin(x);
n=6;
X=linspace(0,pi,100);
h=X(2)-X(1);
Y=f(X);
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
hold on;
grid on;
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
fplot(df,[0,pi]);
xgr=linspace(0,pi,100);
for i=1:length(xgr)
    [dfr(i)]=MetRichardson(f,xgr(i),h,n);
end
plot(xgr,dfr,'o','MarkerFaceColor','b','Markersize',10);
dfr
figure(5)
disp('Reprezentare eroare E=|f-Dr|');
syms xp;
Dr=0;
for i=1:length(xgr)
    Dr=Dr+(i*dfr(i)*(xp^(i-1)));
end
Dr=matlabFunction(Dr,'vars',{xp});
Dr(xp)
E2=abs(f(xp)-Dr(xp))
fplot(E2,[0,pi]);
for i=1:length(xgr)
    [df2r(i)]=MetRichardsond(f,xgr(i),h,n-1);
end
Dr2=0;
for i=1:length(xgr)
    Dr2=Dr2+(i*(i-1)*df2r(i)*(xp^(i-2)));
end
Dr2=matlabFunction(Dr2,'vars',{xp});
Dr2(xp)
figure(6)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[0,pi]);
hold on;
grid on;
plot(xgr,df2r,'o','MarkerFaceColor','b','Markersize',10);
%%
figure(7)
f=@(x)sin(x);
n=8;
X=linspace(0,pi,100);
h=X(2)-X(1);
Y=f(X);
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
hold on;
grid on;
syms x;
df=diff(f(x),x);
df=matlabFunction(df,'vars',{x});
fplot(df,[0,pi]);
xgr=linspace(0,pi,100);
for i=1:length(xgr)
    [dfr(i)]=MetRichardson(f,xgr(i),h,n);
end
plot(xgr,dfr,'o','MarkerFaceColor','b','Markersize',10);
dfr
figure(8)
disp('Reprezentare eroare E=|f-Dr|');
syms xp;
Dr=0;
for i=1:length(xgr)
    Dr=Dr+(i*dfr(i)*(xp^(i-1)));
end
Dr=matlabFunction(Dr,'vars',{xp});
Dr(xp)
E3=abs(f(xp)-Dr(xp))
fplot(E3,[0,pi]);
for i=1:length(xgr)
    [df2r(i)]=MetRichardsond(f,xgr(i),h,n-1);
end
Dr2=0;
for i=1:length(xgr)
    Dr2=Dr2+(i*(i-1)*df2r(i)*(xp^(i-2)));
end
Dr2=matlabFunction(Dr2,'vars',{xp});
Dr2(xp)
figure(9)
d2f=diff(df(x),x);
d2f=matlabFunction(d2f,'vars',{x});
fplot(d2f,[0,pi]);
hold on;
grid on;
plot(xgr,df2r,'o','MarkerFaceColor','b','Markersize',10);