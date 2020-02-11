%% ex1

f = @(x) sin(x);
x = [-pi/2,0,pi/2];
for i=1:length(x)
    fx(i) = f(x(i));
end
aprox = pi/6;
Pn1 = MetNewtonDD(fx,x,aprox);
Pn2 = MetNeville(fx,x,aprox);
Er1 = abs(Pn1(2) - f(pi/6))
Er2 = abs(Pn2(2) - f(pi/6))

%% ex2 

f = @(x) 3^x;
x = [-2,-1,0,1,2];
for i=1:length(x)
    fx(i) = f(x(i));
end
aprox = sqrt(3);
y = MetNeville(fx,x,aprox);
y(5)

%% ex3 ,4 ,5

 f = @(x)sin(x);
fp = @(x)cos(x);

X = linspace(-pi/2,pi/2,10);
Y = f(X);
Z = fp(X);

figure(1)
plot(X,Y,'or');

figure(2)
plot(X,Z,'or');

x = linspace(-pi/2,pi/2,100);
[y,z] = MetHermit(X,Y,Z,x);

figure(1)
hold on
plot(x,y)

figure(2)
hold on
plot(x,z)

E = abs(y-z);
figure(3)
plot(x,E);

%% ex 6

e = exp(1);
syms x
f = 3*x*(e.^x) - (e.^(2*x));
fp = diff(f);
f = matlabFunction(f);
fp = matlabFunction(fp);
X = [1 1.03 1.05];
Y = f(X);
Z = fp(X);
[y,z] = MetHermit(X,Y,Z,X);
E = abs(f(2) - y(2));

%% ex 7

e = exp(1);
syms x
f = 3*x*(e.^x) - (e.^(2*x));
fp = diff(f);
f = matlabFunction(f);
fp = matlabFunction(fp);
X = [1 1.03 1.05];
Y = f(X);
Z = fp(X);
[y,z] = MetHermitDD(X,Y,Z,X);
E = abs(f(2) - y(2));

%% ex 8
 f = @(x)sin(x);
fp = @(x)cos(x);

X = linspace(-pi/2,pi/2,10);
Y = f(X);
Z = fp(X);

figure(1)
plot(X,Y,'or');

figure(2)
plot(X,Z,'or');

x = linspace(-pi/2,pi/2,100);
[y,z] = MetHermitDD(X,Y,Z,x);

figure(1)
hold on
plot(x,y)

figure(2)
hold on
plot(x,z)

E = abs(y - f(x));
figure(3)
plot(x,E);
