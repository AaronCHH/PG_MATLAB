
# 10 Advanced M-file Features


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [10 Advanced M-file Features](#10-advanced-m-file-features)
  * [10.1 Function handles and anonymous functions](#101-function-handles-and-anonymous-functions)
  * [10.2 Name resolution](#102-name-resolution)
  * [10.3 Error and warning messages](#103-error-and-warning-messages)
  * [10.4 User input](#104-user-input)
  * [10.5 Performance measures](#105-performance-measures)
  * [10.6 Efficient code](#106-efficient-code)

<!-- tocstop -->


## 10.1 Function handles and anonymous functions


```python
%%matlab
f = @sqrt
f(2)
sqrt(2)
```



    f =

        @sqrt


    ans =

        1.4142


    ans =

        1.4142





```python
%%matlab
f = str2func('sqrt')
f(2)
```



    f =

        @sqrt


    ans =

        1.4142





```python
%%matlab
g = @(x) x^2-5*x+6-sin(9*x)
g(1)
```



    g =

        @(x)x^2-5*x+6-sin(9*x)


    ans =

        1.5879





```python
%%matlab
g = @(x) x.^2-5*x+6-sin(9*x)
g([0 1])
```



    g =

        @(x)x.^2-5*x+6-sin(9*x)


    ans =

        6.0000    1.5879




- The general syntax for an anonymous function is
```        
handle = @(arg1, arg2, ...) expression
```


```python
%%matlab
norm2 = @(x,y) sqrt(x^2 + y^2)
norm2(4, 5)
norm([4 5])
```



    norm2 =

        @(x,y)sqrt(x^2+y^2)


    ans =

        6.4031


    ans =

        6.4031





```python
%%matlab
A = [3 2 ; 1 3]
b = [3 ; 4]
y = A\b
resid = @(x) A*x-b
resid(y)
A*y-b
```



    A =

         3     2
         1     3


    b =

         3
         4


    y =

        0.1429
        1.2857


    resid =

        @(x)A*x-b


    ans =

       1.0e-15 *

             0
       -0.4441


    ans =

       1.0e-15 *

             0
       -0.4441





```python
%%matlab
func2str(f)
func2str(g)
func2str(norm2)
func2str(resid)
functions(f)
```



    ans =

    sqrt


    ans =

    @(x)x.^2-5*x+6-sin(9*x)


    ans =

    @(x,y)sqrt(x^2+y^2)


    ans =

    @(x)A*x-b


    ans =

        function: 'sqrt'
            type: 'simple'
            file: ''





```python
%%matlab
h{1} = f
h{2} = g
h{1}(2)
f(2)
h{2}(1)
g(1)
```



    h =

        @sqrt


    h =

        @sqrt    @(x)x.^2-5*x+6-sin(9*x)


    ans =

        1.4142


    ans =

        1.4142


    ans =

        1.5879


    ans =

        1.5879





```python
%%matlab
bisect(@sin, [3 4])
bisect('sin', [3 4])
bisect(g, [0 3])
g(ans)
```



    ans =

        3.1416


    ans =

        3.1416


    ans =

        1.4929


    ans =

      -1.1102e-16




## 10.2 Name resolution


```python
%%matlab
clear
which i
i = 3
which i
which i -all
```


    built-in (C:\Program Files\MATLAB\R2015b\toolbox\matlab\elmat\i)

    i =

         3

    i is a variable.
    i is a variable.
    built-in (C:\Program Files\MATLAB\R2015b\toolbox\matlab\elmat\i)  % Shadowed



## 10.3 Error and warning messages


```python
%%matlab
A = rand(4,3)
[m n] = size(A) ;
if m ~= n
    error('A must be square') ;
end
```

```
warning('A singular; computing anyway')
```

## 10.4 User input


```python
iter = input('iteration count: ') ;
```


```python
disp('Hit enter to continue: ') ;
pause
```

## 10.5 Performance measures

```
tic ; statement ; t = toc
```


```python
%%matlab
n = 1000 ;
A = rand(n) ;
b = rand(n,1) ;
tic ; x = A\b ; t = toc
r = norm(A*x-b)
(2/3) *n^3 / t
```



    t =

        0.1389


    r =

       6.6297e-12


    ans =

       4.7996e+09





```python
%%matlab
m = 4000 ; n = 1000 ;
A = rand (m,n) ;
[v,beta,s] = gallery('house',A(:,1)) ;
tic ; C = A - v*(beta*(v' *A)) ; toc
tic ; C = A - beta*(v*(v' *A)) ; toc
tic ; C = A - beta*v*v' *A ; toc
tic ; C = A - beta*(v*v') *A ; toc
tic ; H = eye(m)-beta*v*v' ; C=H*A ; toc
```


    Elapsed time is 0.033155 seconds.
    Elapsed time is 0.018796 seconds.
    Elapsed time is 0.251161 seconds.
    Elapsed time is 0.271791 seconds.
    Elapsed time is 0.296172 seconds.




```python
%%matlab
s = whos
space = sum([s.bytes])
```



    s =

    14x1 struct array with fields:

        name
        size
        bytes
        class
        global
        sparse
        complex
        nesting
        persistent


    space =

       192048064




## 10.6 Efficient code


```python
%%matlab
A = rand(1000) ;
tic ; B = ddom(A) ; toc
tic ; B = ddomloops(A) ; toc
```


    Elapsed time is 0.100303 seconds.
    Elapsed time is 0.060182 seconds.




```python
# %load ddom.m
function [B,i] = ddom(A, tol)
% B = ddom(A,tol) returns a diagonally
% dominant matrix B by modifying the
% diagonal of A.

[m n] = size(A) ;
if m ~= n
    error('A must be square') ;
end

if (nargin == 1)
    tol = 100 * eps ;
end

d = diag(A) ;
a = abs(d) ;
f = sum(abs(A), 2) - a ;
i = find(f >= a) ;
[m n] = size(A) ;
k = i + (i-1)*m ;
% tol = 100 * eps ;
s = 2 * (d(i) >= 0) - 1 ;
A(k) = (1+tol) * s .* max(f(i), tol) ;

B = A ;


```


```python
# %load ddomloops.m
function B = ddomloops(A,tol)
%DDOMLOOPS make matrix diagonally dominant
% B = ddomloops(A) returns a diagonally
% dominant matrix B by modifying the
% diagonal of A.
%
% Example
%     A = [1 0 ; 4 1]
%     B = ddomloops(A)
%     B is the same as A, except B(2,2)
%     is slightly greater than 4.
%
% See also DDOM.

% Copyright 2010, Me.

[m, n] = size(A) ;
if (m ~= n)
    error ('A must be square') ;
end
if (nargin == 1)
    tol = 100 * eps ;
end
for i = 1:n
    d = A(i,i) ;
    a = abs(d) ;
    f = 0 ;
    for j = 1:n
        if (i ~= j)
            f = f + abs(A(i,j)) ;
        end
    end
    if (f >= a)
        aii = (1 + tol) * max(f, tol) ;
        if (d < 0)
            aii = -aii ;
        end
        A(i,i) = aii ;
    end
end
B = A ;


```


```python

```
