
# 19 The Symbolic Math Toolbox


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [19 The Symbolic Math Toolbox](#19-the-symbolic-math-toolbox)
  * [19.1 Symbolic variables](#191-symbolic-variables)
  * [19.2 Calculus](#192-calculus)
  * [19.3 Variable precision arithmetic](#193-variable-precision-arithmetic)
  * [19.4 Numeric and symbolic substitution](#194-numeric-and-symbolic-substitution)
  * [19.5 Algebraic simplification](#195-algebraic-simplification)
  * [19.6 Two-dimensional graphs](#196-two-dimensional-graphs)
  * [19.7 Three-dimensional surface graphs](#197-three-dimensional-surface-graphs)
  * [19.8 Three-dimensional curves](#198-three-dimensional-curves)
  * [19.9 Symbolic matrix operations](#199-symbolic-matrix-operations)
  * [19.10 Symbolic linear algebraic functions](#1910-symbolic-linear-algebraic-functions)
  * [19.11 Solving algebraic equations](#1911-solving-algebraic-equations)
  * [19.12 Solving differential equations](#1912-solving-differential-equations)
  * [19.13 Further MuPAD access](#1913-further-mupad-access)

<!-- tocstop -->

## 19.1 Symbolic variables


```python
syms x
syms x real
```


      File "<ipython-input-84-dc243fd6597c>", line 1
        syms x
             ^
    SyntaxError: invalid syntax




```python
%%matlab
z = 1/10
a = sym(z)
y = rand(1)
b = sym(y, 'd')
a = sym('1/10')
a = 1 / sym(10)
```


```python
%%matlab
sym(log(2))
sym('log(2)')
log(sym(2))
```


```python
%%matlab
syms x
f = sym('f(x)')
```

## 19.2 Calculus


```python
%%matlab
syms x
f = x^2 * exp(x)
diff(f)
syms t
diff(sin(pi*t))
```


```python
%%matlab
syms x n
f = sym('f(x)')
g = sym('g(x)')
pretty(diff(f*g))
pretty(diff(f/g))
pretty(diff(1/f))
pretty(simple(diff(f^n)))
```


```python
%%matlab
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
```


```python
%%matlab
syms x y
g = x*y + x^2
diff(g)         % computes g/ x
diff(g, x)      % also computes g / x
diff(g, y)      % computes g/y
```


```python
%%matlab
syms x x1 x2 theta
F = x * (x1*x2 + x1 - 2)
findsym(F,1)
diff(F, x)          % computes F / x
diff(F, x1)         % computes F / x 1
diff(F, x2)         % computes F / x 2
G = cos(theta*x)
diff(G, theta)      % computes G/δθ
```


```python
%%matlab
diff(sin(2*x), 2)
diff(sin(2*x), x, 2)
```


```python
%%matlab
syms a b t x y z theta
int(sin(a*t + b))
int(sin(a*theta + b), theta)
int(x*y^2 + y*z, y)
int(x^2 * sin(x))
```


```python
%%matlab
int(exp(-x^2))
int(sqrt(1 + x^3))
```


```python
%%matlab
f = sym('f(x)')
int(diff(f) / f)
```


```python
%%matlab
int(sin(x), 0, pi)
int(sin(theta), theta, 0, pi)
```


```python
%%matlab
int(x^5, 1, 2)
int(log(x), 1, 4)
int(x * exp(x), 0, 2)
int(exp(-x^2), 0, inf)
```


```python
%%matlab
int(exp(-x^2), 0, inf)
```


```python
%%matlab
vpa(ans, 25)
```


```python
%%matlab
syms h n x
limit((1 + x/n)^n, n, inf)
```


```python
%%matlab
limit(sin(x), x, 0)
limit((sin(x+h)-sin(x))/h, h, 0)
```


```python
%%matlab
taylor(cos(x) + sin(x))
```


```python
%%matlab
taylor(cos(x^2), 8, x, pi)
```

## 19.3 Variable precision arithmetic


```python
%%matlab
s = simple(sym('13/17 + 17/23'))
```


```python
%%matlab
pi*log(2)
```


```python
%%matlab
vpa('pi * log(2)')
vpa(sym(pi) * log(sym(2)))
vpa('pi * log(2)', 50)
```


```python
%%matlab
pretty(vpa('pi', 10000))
```


```python
%%matlab
vpa(pi * log(2))
```

## 19.4 Numeric and symbolic substitution


```python
%%matlab
syms x s t
subs(sin(x), x, pi/3)
subs(sin(x), x, sym(pi)/3)
double(ans)
subs(g*t^2/2, t, sqrt(2*s))
subs(sqrt(1-x^2), x, cos(x))
subs(sqrt(1-x^2), 1-x^2, cos(x))
```


```python
%%matlab
syms x y
S = x^y
subs(S, x, 3)
subs(S, {x y}, {3 2})
subs(S, {x y}, {3 x+1})
```


```python
%%matlab
# x=0:.1:1.
syms x
F = x^2 * sin(x)
G = diff(F)
subs(G, x, 0:.1:1)
```


```python
%%matlab
a = subs(S, y, 1:9)
a(3)
a = subs(S, {x y},{2*ones(9,1) (1:9)'})
```


```python
%%matlab
f = sym('f(x)')
g = sym('g(x)')
diff(subs(f, g))
pretty(ans)
```


## 19.5 Algebraic simplification


```python
%%matlab
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
```


```python
%%matlab
simplify(sin(x)^2 + cos(x)^2)
simplify(exp(5*log(x) + 1))
d = diff((x^2 + 1)/(x^2 - 1))
simplify(d)
```


```python
%%matlab
simplify(cos(x) + (-sin(x)^2)^(1/2))
simple (cos(x) + (-sin(x)^2)^(1/2))
simplify((1/x^3+6/x^2+12/x+8)^(1/3))
simple ((1/x^3+6/x^2+12/x+8)^(1/3))
```


```python
%%matlab
factor(4248)
factor(sym('4248'))
factor(sym('4549319348693'))
factor(sym('4549319348597'))
```

## 19.6 Two-dimensional graphs


```python
%%matlab
syms t x y
ezplot(sin(2*x))
ezplot(t + 3*sin(t))
ezplot(2*x/(x^2 - 1))
ezplot(1/(1 + 30*exp(-x)))
```


```python
%%matlab
ezplot(x*sin(1/x), [-.2 .2])
```


```python
%%matlab
ezplot(x*exp(-x))
ezplot(x*exp(-x), [-1 4])
```


```python
%%matlab
ezplot(x^2 + y^2 - 1)
```


```python
%%matlab
ezplot(x^2 + y^2 - 1, [-1 1 -1 1])
```


```python
%%matlab
ezplot(x^2 + y^2 - 1, [-1 1 -1 1])
axis equal
```


```python
%%matlab
x = t-sin(t)
y = 1-cos(t)
ezplot(x,y, [-4*pi 4*pi])
```


```python
%%matlab
ezpolar(sin(3*t))
ezpolar(1/t, [1 10*pi])
```

## 19.7 Three-dimensional surface graphs

```
ezcontour   3-D contour plot
ezcontourf  3-D filled contour plot
ezmesh      3-D mesh plot
ezmeshc     3-D mesh and contour plot
ezsurf      3-D surface plot
ezsurfc     3-D surface and contour plot
```


```python
%%matlab
syms x y
f = sin((x^2+y)/2)/(x^2-x+2)
ezsurfc(f)
```


```python
%%matlab
ezsurf(f, [-4 4 -pi pi])
```


```python
%%matlab
f = sin(abs(sqrt(x^2+y)))/(x^2-x+2)
ezsurf(f)
```


```python
%%matlab
figure(1) ; clf
syms u v x y z
ezsurfc(x,y,z,[0 2*pi])
```

## 19.8 Three-dimensional curves


```python
%%matlab
syms x y z t
x = 3*t / (1+t^3)
y = 3*t^2 / (1+t^3)
z = sin(t)
ezplot3(x,y,z)
```


```python
%%matlab
ezplot3(x,y,z,[-.9 10])
```


```python
%%matlab
ezplot3(x,y,z,'animate')
ezplot3(x,y,z, [-.9 10], 'animate')
```


```python
%%matlab
syms z
z = 0
ezplot3(x,y,z,'animate')
```

## 19.9 Symbolic matrix operations


```python
%%matlab
a = magic(3)
A = sym(a)
```


```python
%%matlab
syms a b s
K = [a + b, a - b ; b - a, a + b]
G = [cos(s), sin(s); -sin(s), cos(s)]
```

```
K+G matrix addition
K-G matrix subtraction
K*G matrix multiplication
K\G left matrix division
K/G right matrix division
G^2 power
G.' array transpose
G'  matrix transpose
```


```python
%%matlab
L = K^2
collect(L)
factor(L)
diff(L, a)
int(K, a)
J = K/G
simplify(J*G)
simplify(G*(G.'))
```


## 19.10 Symbolic linear algebraic functions

```
det       determinant
inv       inverse
null      basis for null space
colspace  basis for column space
eig       eigenvalues and eigenvectors
poly      characteristic polynomial
svd       singular value decomposition

jordan    Jordan canonical form
```


```python
%%matlab
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
```


```python
%%matlab
inv(K)
simplify(inv(G))
p = poly(G)
simplify(p)
pretty(simple(solve(p)))
pretty(simple(eig(G)))
y = simple(svd(G))
pretty(y)
syms s real
r = simple(svd(G))
syms s clear
```


```python
%%matlab
A = [t 1 0 ; 1 t 1 ; 0 1 t]
```


```python
%%matlab
syms t
A = [t 1 0 ; 1 t 1 ; 0 1 t]
p = det(A)
solve(p)
```


```python
%%matlab
for n = 4:6
    A = sym(magic(n))
    [V, D] = eig(A)
end
```


```python
%%matlab
A = sym(randi([0 9], 3))
[V, D] = eig(A)
pretty(V)
```


```python
%%matlab
A = vpa(randi([0 9], 3))
[V, D] = eig(A)
```

## 19.11 Solving algebraic equations


```python
%%matlab
syms x b
solve(2^x - b)
solve(2^x + 3^x - 1)
solve(2^x + 3^x - b)
```


```python
%%matlab
syms x
f = x*cos(x) - 1
s = solve(f)
```


```python
%%matlab
Z = solve(x^2 + 2*x - 1)
pretty(Z)
syms x y z
f = x^2 + y^2 + z^2 + x*y*z
a = solve(f)
pretty(a)
simplify (subs (f, ’x’, a))
b = solve(f, y)
pretty(b)
simplify (subs (f, ’y’, b))
```


```python
%%matlab
X = solve('log(x) = x - 2')
X = solve(log(x) - x + 2)
vpa(X)
X = solve('2^x = x + 2')
X = solve(2^x - x - 2)
vpa(X)
```


```python
%%matlab
solve('1 + (a+b)/(a-b) = b', 'a')
```


```python
%%matlab
solve('1 + (a+b)/(a-b) = b', 'b')
```


```python
%%matlab
syms a b c x
solve(a*x^2 + b*x + c, x)
pretty(ans)
```


```python
%%matlab
S1 = 'x^2 + y^2 + z^2 = 2'
S2 = 'x + y = 1'
S3 = 'y + z = 1'

[X, Y, Z] = solve(S1, S2, S3)
```


```python
%%matlab
a = solve(S1, S2, S3)
a.x
a.y
a.z
```


```python
%%matlab
S2 = 'x + y + z = 1'
```



    S2 =

    x + y + z = 1





```python
%%matlab
[X, Y, Z] = solve(S1, S2, S3)
```



    X =

                                          [0]
                                          [ ]
                                          [0]

    Y =

                                   [           1/2]
                                   [1/2 - 1/2 3   ]
                                   [              ]
                                   [           1/2]
                                   [1/2 + 1/2 3   ]

    Z =

                                   [           1/2]
                                   [1/2 + 1/2 3   ]
                                   [              ]
                                   [           1/2]
                                   [1/2 - 1/2 3   ]




```python
%%matlab
syms x y z
S1 = x^2 + y^2 + z^2 - 2
S2 = x + y - 1
S3 = y + z - 1
a = solve(S1, S2, S3)
```



    S1 =

                                    2    2    2
                                   x  + y  + z  - 2

    S2 =

                                       x + y - 1

    S3 =

                                       y + z - 1

    a =

        x: [2x1 sym]
        y: [2x1 sym]
        z: [2x1 sym]




## 19.12 Solving differential equations


```python
%%matlab
Y = dsolve('Dy = x^2*y', 'x')
```



    Y =

                                                 3
                                    _C1 exp(1/3 x )




```python
%%matlab
Y = dsolve('Dy = x^2*y', 'y(0)=4', 'x')
```



    Y =

                                                3
                                     4 exp(1/3 x )




```python
%%matlab
dsolve('D2y + y = 0')
dsolve('D2y + y = x^2', 'x')
dsolve('D2y + y = x^2', 'y(0) = 4', 'Dy(0) = 1', 'x')
```



    ans =

                                _C1 sin(t) + _C2 cos(t)

    ans =

                                                      2
                           sin(x) _C2 + cos(x) _C1 + x  - 2

    ans =

                                                   2
                              sin(x) + 6 cos(x) + x  - 2




```python
%%matlab
dsolve('D2y - Dy = 2*y')
dsolve('D2y + 6*Dy = 13*y')
dsolve('D3y - 3*Dy = 2*y')
pretty(ans)
```



    ans =

                              _C1 exp(-t) + _C2 exp(2 t)

    ans =

                                   1/2                       1/2
                   _C1 exp((-3 + 22   ) t) + _C2 exp(-(3 + 22   ) t)

    ans =

                      _C1 exp(2 t) + _C2 exp(-t) + _C3 exp(-t) t

                      _C1 exp(2 t) + _C2 exp(-t) + _C3 exp(-t) t




```python
%%matlab
E1 = 'Dx = -2*x + y'
E2 = 'Dy = x - 2*y + z'
E3 = 'Dz = y - 2*z'
```



    E1 =

    Dx = -2*x + y


    E2 =

    Dy = x - 2*y + z


    E3 =

    Dz = y - 2*z





```python
%%matlab
[x, y, z] = dsolve(E1, E2, E3)
pretty(x)
pretty(y)
pretty(z)
```



    x =

           1/2                   1/2
      1/2 2    _C2 exp(-2 t + t 2   ) + exp(-2 t) _C1

                    1/2                   1/2
             - 1/2 2    _C3 exp(-2 t - t 2   )

    y =

                                   1/2                      1/2
                    _C2 exp((-2 + 2   ) t) + _C3 exp(-(2 + 2   ) t)

    z =

             1/2                   1/2                   1/2      1/2
      - 1/2 2    _C2 exp(-2 t + t 2   ) + _C2 exp((-2 + 2   ) t) 2

                              1/2      1/2        1/2                   1/2
             - _C3 exp(-(2 + 2   ) t) 2    + 1/2 2    _C3 exp(-2 t - t 2   )

             - exp(-2 t) _C1

           1/2                   1/2
      1/2 2    _C2 exp(-2 t + t 2   ) + exp(-2 t) _C1

                    1/2                   1/2
             - 1/2 2    _C3 exp(-2 t - t 2   )

                                   1/2                      1/2
                    _C2 exp((-2 + 2   ) t) + _C3 exp(-(2 + 2   ) t)

             1/2                   1/2                   1/2      1/2
      - 1/2 2    _C2 exp(-2 t + t 2   ) + _C2 exp((-2 + 2   ) t) 2

                              1/2      1/2        1/2                   1/2
             - _C3 exp(-(2 + 2   ) t) 2    + 1/2 2    _C3 exp(-2 t - t 2   )

             - exp(-2 t) _C1



## 19.13 Further MuPAD access

> In all of the examples you have worked through so far, you accessed the MuPAD symbolic engine through MATLAB commands.

> You can access more features in the Symbolic Math Toolbox via a powerful GUI interface called the MuPAD Notebook.

> Type mupadwelcome at the command line, and create a new Notebook.

> Once the GUI starts, you can enter commands directly into the MuPAD Notebook.

> The syntax of the MuPAD language is much like Pascal.

> It is very different than the MATLAB language and beyond the scope of this primer.

> For help, type doc(symengine) in the MATLAB Command Window (be sure to use the parentheses) or click the help button in the menu bar at the top of the MuPAD Notebook.

> For an extensive tutorial on MuPAD, click on the PDF documentation link in the MuPAD Help window, and read The MuPAD Tutorial.




```python

```
