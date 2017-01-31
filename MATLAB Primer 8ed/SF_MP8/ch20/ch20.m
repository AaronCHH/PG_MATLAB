%% 20 Polynomials, Interpolation, and Integration

%% 20.1 Representing polynomials
p = [1 -15 -24 360]
r = roots(p)

%% 
A = magic(3)
s = poly(A)
roots(s)
eig(A)
% f = poly(sym(A))
f = charpoly(sym(A))
solve(f)
eig(sym(A))

%% 20.2 Evaluating polynomials
%% 
x = -1:2 ;
y = polyval(p,x)

%% 
syms x
f = poly2sym(p)
sym2poly(f)

%% 20.3 Polynomial interpolation
%% 
p = polyfit(x, y, n)
x = 0:.1:pi ;
y = sin(x) ;
p = polyfit(x, y, 5)
figure(1) ; clf
ezplot(@sin, [0 pi])
hold on
xx = 0:.001:pi ;
plot(xx, polyval(p,xx), 'r-')

%% 
n = 10
x = -5:.1:5 ;
y = 1 ./ (x.^2+1) ;
p = polyfit(x, y, n)
figure(2) ; clf
ezplot(@(x) 1 ./ (x.^2+1))
hold on
xx = -5:.01:5 ;
plot(xx, polyval(p,xx), 'r-')

%% 
figure(3) ; clf
yy = spline(x, y, xx) ;
plot(xx, yy, 'g')

%% 
figure(4) ; clf
pp = spline(x, y)
yy = ppval(pp, xx) ;
plot(xx, yy, 'c')

%% 20.4 Numeric integration (quadrature)
%% 
quad(@(x) x.^5, 1, 2)
quad(@log, 1, 4)
quad(@(x) x .* exp(x), 0, 2)
quad(@(x) exp(-x.^2), 0, 1e6)
quad(@(x) sqrt(1 + x.^3), -1, 2)
quad(@(x) real(airy(x)), -3, 3)

%% 
int('x^5', 1, 2)
int('log(x)', 1, 4)
int('x * exp(x)', 0, 2)
int('exp(-x^2)', 0, inf)
int('sqrt(1 + x^3)', -1, 2)
int('real(airy(x))', -3, 3)

