%Vectori si matrice
A=1:0.5:5
length(A)
sum(A)
prod(A)
M=[1:1:3 ; 2:1:4]
A=[1 2 3 4 ; 5 6 7 8 ; 23 8 7 6 ; 4 5 4 4 ]
det(A)
B=[A [-1 -2 -3 -4]'] 
reshape(B,5,4)
%Instructiuni Matlab
for i=1:5
    a(i)=i*2
end
i=1
while i <= 5
    b(i)=i*3
    i=i+1
end

test=-5
if test>=0 
    'este pozitiva'
else 'este negativa'
end

%Reprezentari grafice

t = 0 :0.001 :2*pi ;
plot(t, sin(t), t, cos(t))
xlabel('time')
grid
title('sin(time), cos(time)')
figure(2)
t = 0: 0.001: 2*pi;
x = sin(t);
plot(t, x)
xlabel('0 \leq \theta \leq 2\pi')
ylabel('sin(\theta )')
title('Functia sin(\theta)')
grid

figure(3)
t = 0:0.01:4*pi;
x = sin(t) ./ t;
plot(t, x)
grid
xlabel('\bft[s]')
texstr = '$\frac{sin(t)}{t}$';
text('string',texstr,  'interpreter', 'latex', 'fontsize',40,...
             		'units','norm', 'pos',[.5 .5]);




