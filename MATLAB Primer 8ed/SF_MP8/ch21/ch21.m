%% 21 Solving Equations

%% 21.1 Symbolic equations

%% 21.2 Linear systems of equations

%% 21.3 Polynomial roots

%% 21.4 Nonlinear equations
%% 
fzero(@(x) x^2-2, 1)

%% 
fa = @(x) (x-2)^2
fb = @(x) (x-2)^2 - 1e-12

%% 
% fzero(fa, 1)
% fzero(fb, 3)

%% 
syms x
solve((x-2)^2)
s = solve((x-2)^2-1e-12)
fb(s(1))
fb(s(2))

%% 
fzero(fb, 2)
format long
fzero(fb, [2 3])
fzero(fb, [1 2])

%% 
f = @(x) real(airy(x))
figure(1) ; clf
ezplot(f)
solve('real(airy(x))')

%% 
s = fzero(f, 0)
hold on
plot(s, f(s), 'ro')

%% 
xmin = fminbnd(f, -4, 0)
plot(xmin, f(xmin), 'ko')

%% 
g = @(x) -real(airy(x))
xmax = fminbnd(g, -5, -4)
plot(xmax, f(xmax), 'ko')

%% 
s = fzero(f, [xmax xmin])
plot(s, f(s), 'ro')

%% 
xmin = fminsearch(f, -6)
plot(xmin, f(xmin), 'kx')


%% 21.5 Ordinary differential equations
%% 
syms t y
Y = dsolve('Dy = t^2*y', 'y(0)=1', 't')

%%
% [tt,yy] = ode45(@f, tspan, y0)

%% 
f1 = @(t,y) t^2 * y

%% 
[tr,yr] = ode45(f1, [0 2], 1) ;

%% 
ts = 0:.05:2 ;
ys = subs(Y, t, ts) ;
figure(2) ; clf
plot(ts,ys, 'r-', tr,yr, 'bx') ;
legend('symbolic', 'numeric')
ys = subs(Y, t, tr) ;
[tr ys yr ys-yr]
err = norm(ys-yr) / norm(ys)

%% 
Y = dsolve('D2y + y = t^2', 'y(0)=1', 'Dy(0)=0', 't')

%% 
f2 = @(t,y) [y(2) ; t^2-y(1)]
[tr,yy] = ode45(f2, [0 2], [1 0]') ;
yr = yy(:,1) ;

%% 21.6 Other differential equations


