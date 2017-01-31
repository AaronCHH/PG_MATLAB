%% 19 The Symbolic Math Toolbox

%% 19.1 Symbolic variables
%% 
syms x

%% 
syms x real

%% 
z = 1/10
a = sym(z)
y = rand(1)
b = sym(y, 'd')

%% 
a = sym('1/10')
a = 1 / sym(10)

%% 
sym(log(2))
sym('log(2)')
log(sym(2))

%% 
syms x
f = sym('f(x)')

%% 19.2 Calculus
%% 
syms x
f = x^2 * exp(x)
diff(f)

%% 
syms t
diff(sin(pi*t))

%% 
syms x n
f = sym('f(x)')
g = sym('g(x)')
pretty(diff(f*g))
pretty(diff(f/g))
pretty(diff(1/f))
pretty(simplify(diff(f^n)))

%% 
syms x a b
f = x/(a*x+b)
pretty(f)
g = int(f)
pretty(g)
latex(g)
ccode(g)
fortran(g)
int(g)
pretty(ans)

%% 
syms x y
g = x*y + x^2
diff(g)
diff(g, x)
diff(g, y)

%% 
syms x x1 x2 theta
F = x * (x1*x2 + x1 - 2)
findsym(F,1)
findsym(F,1)
diff(F, x)
diff(F, x1)
diff(F, x2)
G = cos(theta*x)
diff(G, theta)

%% 
diff(sin(2*x), 2)
diff(sin(2*x), x, 2)

%% 
syms a b t x y z theta
int(sin(a*t + b))
int(sin(a*theta + b), theta)
int(x*y^2 + y*z, y)
int(x^2 * sin(x))

%% 
int(exp(-x^2))
int(sqrt(1 + x^3))

%% 
f = sym('f(x)')
int(diff(f) / f)

%% 
int(sin(x), 0, pi)
int(sin(theta), theta, 0, pi)

%% 
int(x^5, 1, 2)
int(log(x), 1, 4)
int(x * exp(x), 0, 2)
int(exp(-x^2), 0, inf)

%% 
int(exp(-x^2), 0, inf)

%% 
pi^(1/2)/2

%% 
vpa(ans, 25)

%% 
syms h n x
limit((1 + x/n)^n, n, inf)

%% 
limit(sin(x), x, 0)
limit((sin(x+h)-sin(x))/h, h, 0)

%% 
taylor(cos(x) + sin(x))

%% 
% taylor(cos(x^2), 8, x, pi)

%% 19.3 Variable precision arithmetic
%%
s = simplify(sym('13/17 + 17/23'))

%% 
pi*log(2)

%% 
vpa('pi * log(2)')
vpa(sym(pi) * log(sym(2)))
vpa('pi * log(2)', 50)

%% 
pretty(vpa('pi', 10000))

%% 
vpa(pi * log(2))

%% 19.4 Numeric and symbolic substitution
syms x s t
subs(sin(x), x, pi/3)
subs(sin(x), x, sym(pi)/3)
double(ans)
subs(g*t^2/2, t, sqrt(2*s))
subs(sqrt(1-x^2), x, cos(x))
subs(sqrt(1-x^2), 1-x^2, cos(x))


%% 
syms x y
S = x^y
subs(S, x, 3)
subs(S, {x y}, {3 2})
subs(S, {x y}, {3 x+1})

%% 
x=0:.1:1.
syms x
F = x^2 * sin(x)
G = diff(F)
subs(G, x, 0:.1:1)

%% 
a = subs(S, y, 1:9)
a(3)
a = subs(S, {x y},{2*ones(9,1) (1:9)'})

%% 
f = sym('f(x)')
g = sym('g(x)')
diff(subs(f, g))
pretty(ans)

%% 19.5 Algebraic simplification
syms a b x y z
expand((a + b)^5)
factor(ans)
expand(exp(x + y))
expand(sin(x + 2*y))
factor(x^6 - 1)
collect(x * (x * (x + 3) + 5) + 1)
horner(ans)
collect((x + y + z) *(x - y - z))
collect((x + y + z) *(x - y - z), y)
collect((x + y + z) *(x - y - z), z)
diff(x^3 * exp(x))
factor(ans)

%% 
simplify(sin(x)^2 + cos(x)^2)
simplify(exp(5*log(x) + 1))
d = diff((x^2 + 1)/(x^2 - 1))
simplify(d)

%% 
simplify(cos(x) + (-sin(x)^2)^(1/2))
% simple (cos(x) + (-sin(x)^2)^(1/2))
simplify((1/x^3+6/x^2+12/x+8)^(1/3))
% simple ((1/x^3+6/x^2+12/x+8)^(1/3))

%% 
factor(4248)
factor(sym('4248'))
factor(sym('4549319348693'))
factor(sym('4549319348597'))

%% 19.6 Two-dimensional graphs
%% 
syms t x y
figure; ezplot(sin(2*x))
figure; ezplot(t + 3*sin(t))
figure; ezplot(2*x/(x^2 - 1))
figure; ezplot(1/(1 + 30*exp(-x)))
figure; ezplot(x*sin(1/x), [-.2 .2])
figure; ezplot(x*exp(-x))
figure; ezplot(x*exp(-x), [-1 4])
figure; ezplot(x^2 + y^2 - 1)
figure; ezplot(x^2 + y^2 - 1, [-1 1 -1 1]); axis equal;

%% 
x = t-sin(t)
y = 1-cos(t)
ezplot(x,y, [-4*pi 4*pi])

%% 
ezpolar(sin(3*t))
ezpolar(1/t, [1 10*pi])

%% 19.7 Three-dimensional surface graphs
%{
  ezcontour 3-D contour plot
  ezcontourf 3-D filled contour plot
  ezmesh 3-D mesh plot
  ezmeshc 3-D mesh and contour plot
  ezsurf 3-D surface plot
  ezsurfc 3-D surface and contour plot
%}

%% 
syms x y
f = sin((x^2+y)/2)/(x^2-x+2)
ezsurfc(f)

%% 
ezsurf(f, [-4 4 -pi pi])

%% 
f = sin(abs(sqrt(x^2+y)))/(x^2-x+2)
ezsurf(f)

%% 
% figure(1) ; clf
% syms u v x y z

%% 
% ezsurfc(x,y,z,[0 2*pi])

%% 19.8 Three-dimensional curves
%% 
syms x y z t
x = 3*t / (1+t^3)
y = 3*t^2 / (1+t^3)
z = sin(t)
ezplot3(x,y,z)

%% 
ezplot3(x,y,z,[-.9 10])

%% 
ezplot3(x,y,z,'animate')
%% 
ezplot3(x,y,z, [-.9 10], 'animate')
%% 
syms z
z = 0
ezplot3(x,y,z,'animate')

%% 19.9 Symbolic matrix operations
%% 
a = magic(3)
A = sym(a)

%% 
syms a b s
K = [a + b, a - b ; b - a, a + b]
G = [cos(s), sin(s); -sin(s), cos(s)]

%% 
L = K^2
collect(L)
% factor(L)
diff(L, a)
int(K, a)
J = K/G
simplify(J*G)
simplify(G*(G.'))


%% 19.10 Symbolic linear algebraic functions
%{
  det determinant
  inv inverse
  null basis for null space
  colspace basis for column space
  eig eigenvalues and eigenvectors
  poly characteristic polynomial
  svd singular value decomposition
  jordan Jordan canonical form
%}

%% 
c = randi([0 9], 4)
D = sym(c)
A = inv(D)
inv(A)
inv(A) * A
det(A)
b = ones(4,1)
x = A\b
A*x
A^3

%% 
inv(K)
simplify(inv(G))
p = poly(G)
simplify(p)
pretty(simple(solve(p)))
pretty(simple(eig(G)))
y = simplify(svd(G))
pretty(y)
syms s real
r = simplify(svd(G))
syms s clear

%% 
A = [t 1 0 ; 1 t 1 ; 0 1 t]

%% 
syms t
A = [t 1 0 ; 1 t 1 ; 0 1 t]
p = det(A)
solve(p)

%% 
for n = 4:6
  A = sym(magic(n))
  [V, D] = eig(A)
end

%% 
A = sym(randi([0 9], 3))
[V, D] = eig(A)
pretty(V)

%% 
A = vpa(randi([0 9], 3))
[V, D] = eig(A)

%% 19.11 Solving algebraic equations
%% 
syms x b
solve(2^x - b)
solve(2^x + 3^x - 1)
solve(2^x + 3^x - b)

%% 
syms x
f = x*cos(x) - 1
s = solve(f)

%% 
Z = solve(x^2 + 2*x - 1)
pretty(Z)

%% 
syms x y z
f = x^2 + y^2 + z^2 + x*y*z
a = solve(f)
pretty(a)
simplify (subs (f, 'x', a))

%% 
b = solve(f, y)
pretty(b)
simplify (subs (f, 'y', b))

%% 
X = solve('log(x) = x - 2')
X = solve(log(x) - x + 2)
vpa(X)

%% 
X = solve('2^x = x + 2')
X = solve(2^x - x - 2)
vpa(X)

%% 
solve('1 + (a+b)/(a-b) = b', 'a')
%% 
solve('1 + (a+b)/(a-b) = b', 'b')

%% 
syms a b c x
solve(a*x^2 + b*x + c, x)
pretty(ans)

%% 
S1 = 'x^2 + y^2 + z^2 = 2'
S2 = 'x + y = 1'
S3 = 'y + z = 1'

%% 
[X, Y, Z] = solve(S1, S2, S3)

%% 
a = solve(S1, S2, S3)
a.x
a.y
a.z

%% 
S2 = 'x + y + z = 1'
[X, Y, Z] = solve(S1, S2, S3)

%% 
syms x y z
S1 = x^2 + y^2 + z^2 - 2
S2 = x + y - 1
S3 = y + z - 1
a = solve(S1, S2, S3)
a.x
a.y
a.z

%% 19.12 Solving differential equations
%% 
Y = dsolve('Dy = x^2*y', 'x')
%% 
Y = dsolve('Dy = x^2*y', 'y(0)=4', 'x')
%% 
dsolve('D2y + y = 0')
dsolve('D2y + y = x^2', 'x')
dsolve('D2y + y = x^2', 'y(0) = 4', 'Dy(0) = 1', 'x')
dsolve('D2y - Dy = 2*y')
dsolve('D2y + 6*Dy = 13*y')
dsolve('D3y - 3*Dy = 2*y')
pretty(ans)

%% 
E1 = 'Dx = -2*x + y'
E2 = 'Dy = x - 2*y + z'
E3 = 'Dz = y - 2*z'

%% 
[x, y, z] = dsolve(E1, E2, E3)
pretty(x)
pretty(y)
pretty(z)

%% 19.13 Further MuPAD access
