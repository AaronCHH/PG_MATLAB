
# 5 MATLAB Functions

```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [5 MATLAB Functions](#5-matlab-functions)
  * [5.1 Constructing matrices](#51-constructing-matrices)
  * [5.2 Scalar functions](#52-scalar-functions)
  * [5.3 Vector functions and data analysis](#53-vector-functions-and-data-analysis)
  * [5.4 Matrix functions](#54-matrix-functions)
  * [5.5 The linsolve function](#55-the-linsolve-function)
  * [5.6 The find function](#56-the-find-function)
  * [5.7 1-D indexing and the reshape function](#57-1-d-indexing-and-the-reshape-function)
  * [5.8 Logical indexing](#58-logical-indexing)
  * [5.9 The bsxfun and repmat functions](#59-the-bsxfun-and-repmat-functions)

<!-- tocstop -->

## 5.1 Constructing matrices

* Convenient matrix building functions include:  

```    
eye           identity matrix
zeros         matrix of zeros
ones          matrix of ones
diag          create or extract diagonals
triu          upper triangular part of a matrix
tril          lower triangular part of a matrix
rand          randomly generated matrix
hilb          Hilbert matrix
magic         magic square
toeplitz      Toeplitz matrix
gallery       a wide range of interesting matrices
```


```python
%%matlab
A = rand(3)
```



    A =

        0.9649    0.9572    0.1419
        0.1576    0.4854    0.4218
        0.9706    0.8003    0.9157





```python
%%matlab
x = 1:3
diag(x)
diag(A)
diag(diag(A))
```



    x =

         1     2     3


    ans =

         1     0     0
         0     2     0
         0     0     3


    ans =

        0.7922
        0.8491
        0.7431


    ans =

        0.7922         0         0
             0    0.8491         0
             0         0    0.7431





```python
%%matlab
B = [A zeros(3,2) ; pi*ones(2,3), eye(2)]
```



    B =

        0.7922    0.0357    0.6787         0         0
        0.9595    0.8491    0.7577         0         0
        0.6557    0.9340    0.7431         0         0
        3.1416    3.1416    3.1416    1.0000         0
        3.1416    3.1416    3.1416         0    1.0000





```python
%%matlab
triu(A)
triu(A) == A
```



    ans =

        0.7922    0.0357    0.6787
             0    0.8491    0.7577
             0         0    0.7431


    ans =

         1     1     1
         0     1     1
         0     0     1





```python
%%matlab
A = gallery('parter', 6)
svd(A)
```



    A =

        2.0000   -2.0000   -0.6667   -0.4000   -0.2857   -0.2222
        0.6667    2.0000   -2.0000   -0.6667   -0.4000   -0.2857
        0.4000    0.6667    2.0000   -2.0000   -0.6667   -0.4000
        0.2857    0.4000    0.6667    2.0000   -2.0000   -0.6667
        0.2222    0.2857    0.4000    0.6667    2.0000   -2.0000
        0.1818    0.2222    0.2857    0.4000    0.6667    2.0000


    ans =

        3.1416
        3.1416
        3.1409
        3.1244
        2.8875
        1.4161





```python
%%matlab
A = rosser;
eig(A)
eigs(A)
```



    ans =

       1.0e+03 *

       -1.0200
        0.0000
        0.0001
        1.0000
        1.0000
        1.0199
        1.0200
        1.0200


    ans =

       1.0e+03 *

       -1.0200
        1.0200
        1.0200
        1.0199
        1.0000
        1.0000




## 5.2 Scalar functions

```
abs atan2 exp log10 rem sqrt
acos ceil floor log2 round tan
asin conj imag mod sign
atan cos log real sin
```


```python
%%matlab
x = (0:0.1:2)';
y = sin(x);
[x y]
```



    ans =

             0         0
        0.1000    0.0998
        0.2000    0.1987
        0.3000    0.2955
        0.4000    0.3894
        0.5000    0.4794
        0.6000    0.5646
        0.7000    0.6442
        0.8000    0.7174
        0.9000    0.7833
        1.0000    0.8415
        1.1000    0.8912
        1.2000    0.9320
        1.3000    0.9636
        1.4000    0.9854
        1.5000    0.9975
        1.6000    0.9996
        1.7000    0.9917
        1.8000    0.9738
        1.9000    0.9463
        2.0000    0.9093




## 5.3 Vector functions and data analysis

```
max sum median any sort var
min prod mean all std mode
```

## 5.4 Matrix functions

* Much of the power of MATLAB comes from its matrix functions. Here is a partial list of the most important ones:

```
eig           eigenvalues and eigenvectors
eigs          like eig, for large sparse matrices
chol          Cholesky factorization
svd           singular value decomposition
svds          like svd, for large sparse matrices
lu            LU factorization
qr            QR factorization
poly          characteristic polynomial
det           determinant
size          size of an array
length        length of a vector
norm          1-norm, 2-norm, Frobenius-norm, ∞-norm
cond          condition number in the 2-norm
condest       condition number estimate
rank          rank
kron          Kronecker tensor product
find          find indices of nonzero entries
linsolve      solve a special linear system
```


```python
%%matlab
lambda = eig(A)
```



    lambda =

       1.0e+03 *

       -1.0200
        0.0000
        0.0001
        1.0000
        1.0000
        1.0199
        1.0200
        1.0200





```python
%%matlab
[V, Lambda] = eig(A)
```



    V =

        0.0031   -0.0447    0.6294   -0.1760   -0.3421    0.0623   -0.2236    0.6324
        0.0016   -0.0894   -0.3147    0.5330   -0.5549   -0.0312    0.4472    0.3162
        0.0016    0.0894    0.3147    0.3521    0.6841    0.0312    0.4472    0.3162
        0.0031    0.0447   -0.6294   -0.2665    0.2775   -0.0623   -0.2236    0.6324
        0.3162   -0.6261   -0.0312    0.4296    0.1531    0.3147   -0.4472   -0.0016
        0.3162   -0.6261    0.0312   -0.4554    0.0239   -0.3147    0.4472   -0.0016
       -0.6324   -0.3130    0.0623    0.2148    0.0766   -0.6294   -0.2236    0.0031
       -0.6324   -0.3130   -0.0623   -0.2277    0.0120    0.6294    0.2236    0.0031


    Lambda =

       1.0e+03 *

       -1.0200         0         0         0         0         0         0         0
             0   -0.0000         0         0         0         0         0         0
             0         0    0.0001         0         0         0         0         0
             0         0         0    1.0000         0         0         0         0
             0         0         0         0    1.0000         0         0         0
             0         0         0         0         0    1.0199         0         0
             0         0         0         0         0         0    1.0200         0
             0         0         0         0         0         0         0    1.0200





```python
%%matlab
A*V
```



    ans =

       -3.1623   -0.0000    0.0617 -176.0401 -342.0671   63.5610 -228.0789  645.1279
       -1.5812    0.0000   -0.0309  532.9658 -554.9301  -31.7805  456.1579  322.5639
       -1.5812    0.0000    0.0309  352.0801  684.1342   31.7805  456.1579  322.5639
       -3.1623    0.0000   -0.0617 -266.4829  277.4651  -63.5610 -228.0789  645.1279
     -322.5639   -0.0000   -0.0031  429.6026  153.1066  320.9517 -456.1579   -1.5812
     -322.5639   -0.0000    0.0031 -455.4434   23.9026 -320.9517  456.1579   -1.5812
      645.1279    0.0000    0.0061  214.8013   76.5533 -641.9034 -228.0789    3.1623
      645.1279    0.0000   -0.0061 -227.7217   11.9513  641.9034  228.0789    3.1623





```python
%%matlab
V*Lambda
```



    ans =

       -3.1623    0.0000    0.0617 -176.0401 -342.0671   63.5610 -228.0789  645.1279
       -1.5812    0.0000   -0.0309  532.9658 -554.9301  -31.7805  456.1579  322.5639
       -1.5812   -0.0000    0.0309  352.0801  684.1342   31.7805  456.1579  322.5639
       -3.1623   -0.0000   -0.0617 -266.4829  277.4651  -63.5610 -228.0789  645.1279
     -322.5639    0.0000   -0.0031  429.6026  153.1066  320.9517 -456.1579   -1.5812
     -322.5639    0.0000    0.0031 -455.4434   23.9026 -320.9517  456.1579   -1.5812
      645.1279    0.0000    0.0061  214.8013   76.5533 -641.9034 -228.0789    3.1623
      645.1279    0.0000   -0.0061 -227.7217   11.9513  641.9034  228.0789    3.1623




## 5.5 The linsolve function


```python
%%matlab
A = [1 2 ; 3 4]
b = [4 10]'
A\b
linsolve(A,b)
```



    A =

         1     2
         3     4


    b =

         4
        10


    ans =

        2.0000
        1.0000


    ans =

        2.0000
        1.0000





```python
%%matlab
C = [2 1 ; 1 2]
x = C\b
```



    C =

         2     1
         1     2


    x =

       -0.6667
        5.3333





```python
%%matlab
R = chol(C)
y = R'\b
x = R\y
```



    R =

        1.4142    0.7071
             0    1.2247


    y =

        2.8284
        6.5320


    x =

       -0.6667
        5.3333





```python
%%matlab
opts.UT = true
opts.TRANSA = true
y = linsolve(R,b,opts)
```



    opts =

        UT: 1


    opts =

            UT: 1
        TRANSA: 1


    y =

        2.8284
        6.5320




## 5.6 The find function


```python
%%matlab
x = 2*rand(1,5)
y = x(find(x > 1))
```



    x =

        1.6469    1.3897    0.6342    1.9004    0.0689


    y =

        1.6469    1.3897    1.9004





```python
%%matlab
A = rand(3)
[i,j,x] = find(A)
```



    A =

        0.4387    0.7952    0.4456
        0.3816    0.1869    0.6463
        0.7655    0.4898    0.7094


    i =

         1
         2
         3
         1
         2
         3
         1
         2
         3


    j =

         1
         1
         1
         2
         2
         2
         3
         3
         3


    x =

        0.4387
        0.3816
        0.7655
        0.7952
        0.1869
        0.4898
        0.4456
        0.6463
        0.7094





```python
%%matlab
[i,j,x] = find(A > .5)
[i j x]
```



    i =

         3
         1
         2
         3


    j =

         1
         2
         3
         3


    x =

         1
         1
         1
         1


    ans =

         3     1     1
         1     2     1
         2     3     1
         3     3     1




## 5.7 1-D indexing and the reshape function


```python
%%matlab
A = rand(5)
k = find(A > .5)
A(k)
A(k) = A(k) + 99
```



    A =

        0.7547    0.1190    0.2238    0.8909    0.2575
        0.2760    0.4984    0.7513    0.9593    0.8407
        0.6797    0.9597    0.2551    0.5472    0.2543
        0.6551    0.3404    0.5060    0.1386    0.8143
        0.1626    0.5853    0.6991    0.1493    0.2435


    k =

         1
         3
         4
         8
        10
        12
        14
        15
        16
        17
        18
        22
        24


    ans =

        0.7547
        0.6797
        0.6551
        0.9597
        0.5853
        0.7513
        0.5060
        0.6991
        0.8909
        0.9593
        0.5472
        0.8407
        0.8143


    A =

       99.7547    0.1190    0.2238   99.8909    0.2575
        0.2760    0.4984   99.7513   99.9593   99.8407
       99.6797   99.9597    0.2551   99.5472    0.2543
       99.6551    0.3404   99.5060    0.1386   99.8143
        0.1626   99.5853   99.6991    0.1493    0.2435





```python
%%matlab
A = rand(3)
A(1,2)
A(4)
```



    A =

        0.9293    0.2511    0.3517
        0.3500    0.6160    0.8308
        0.1966    0.4733    0.5853


    ans =

        0.2511


    ans =

        0.2511





```python
%%matlab
A = magic(5)
A([1 2 ; 5 6])
A(1:7)
A([1:7]')
```



    A =

        17    24     1     8    15
        23     5     7    14    16
         4     6    13    20    22
        10    12    19    21     3
        11    18    25     2     9


    ans =

        17    23
        11    24


    ans =

        17    23     4    10    11    24     5


    ans =

        17
        23
         4
        10
        11
        24
         5





```python
%%matlab
A([1 2 ; 5 6]) = 101:104
A(1:7) = 0
A([1:7]') = -1
```



    A =

       101   104     1     8    15
       103     5     7    14    16
         4     6    13    20    22
        10    12    19    21     3
       102    18    25     2     9


    A =

         0     0     1     8    15
         0     0     7    14    16
         0     6    13    20    22
         0    12    19    21     3
         0    18    25     2     9


    A =

        -1    -1     1     8    15
        -1    -1     7    14    16
        -1     6    13    20    22
        -1    12    19    21     3
        -1    18    25     2     9





```python
%%matlab
A = magic(5)
k = [1 2 ; 5 6]
k = k(:)
A(k) = 101:104
```



    A =

        17    24     1     8    15
        23     5     7    14    16
         4     6    13    20    22
        10    12    19    21     3
        11    18    25     2     9


    k =

         1     2
         5     6


    k =

         1
         5
         2
         6


    A =

       101   104     1     8    15
       103     5     7    14    16
         4     6    13    20    22
        10    12    19    21     3
       102    18    25     2     9





```python
%%matlab
A = reshape(1:16, 4, 4)
C = reshape(A, 2, 8)
```



    A =

         1     5     9    13
         2     6    10    14
         3     7    11    15
         4     8    12    16


    C =

         1     3     5     7     9    11    13    15
         2     4     6     8    10    12    14    16




## 5.8 Logical indexing


```python
%%matlab
A = rand(5)
S = A > .5
A(S)
A(S) = A(S) + 99
```



    A =

        0.5497    0.3804    0.7792    0.0119    0.5285
        0.9172    0.5678    0.9340    0.3371    0.1656
        0.2858    0.0759    0.1299    0.1622    0.6020
        0.7572    0.0540    0.5688    0.7943    0.2630
        0.7537    0.5308    0.4694    0.3112    0.6541


    S =

         1     0     1     0     1
         1     1     1     0     0
         0     0     0     0     1
         1     0     1     1     0
         1     1     0     0     1


    ans =

        0.5497
        0.9172
        0.7572
        0.7537
        0.5678
        0.5308
        0.7792
        0.9340
        0.5688
        0.7943
        0.5285
        0.6020
        0.6541


    A =

       99.5497    0.3804   99.7792    0.0119   99.5285
       99.9172   99.5678   99.9340    0.3371    0.1656
        0.2858    0.0759    0.1299    0.1622   99.6020
       99.7572    0.0540   99.5688   99.7943    0.2630
       99.7537   99.5308    0.4694    0.3112   99.6541





```python
%%matlab
S = randi([0 1], 5)
% A(S) % fails
A(S==1) % OK
```



    S =

         0     0     1     0     1
         0     0     0     0     0
         1     0     0     0     1
         0     1     0     1     0
         0     1     1     1     1


    ans =

        0.2858
        0.0540
       99.5308
       99.7792
        0.4694
       99.7943
        0.3112
       99.5285
       99.6020
       99.6541




## 5.9 The bsxfun and repmat functions


```python
%%matlab
A = rand(5)
C = A - mean(A(:))
```



    A =

        0.1890    0.7802    0.4359    0.8176    0.5328
        0.6868    0.0811    0.4468    0.7948    0.3507
        0.1835    0.9294    0.3063    0.6443    0.9390
        0.3685    0.7757    0.5085    0.3786    0.8759
        0.6256    0.4868    0.5108    0.8116    0.5502


    C =

       -0.3715    0.2198   -0.1246    0.2572   -0.0276
        0.1264   -0.4793   -0.1136    0.2344   -0.2097
       -0.3769    0.3690   -0.2541    0.0839    0.3786
       -0.1919    0.2153   -0.0519   -0.1818    0.3155
        0.0652   -0.0736   -0.0496    0.2512   -0.0103





```python
%%matlab
n = size(A,1)
C = A - repmat(mean(A), n, 1)
```



    n =

         5


    C =

       -0.2217    0.1696   -0.0058    0.1282   -0.1169
        0.2761   -0.5295    0.0051    0.1054   -0.2990
       -0.2272    0.3187   -0.1353   -0.0451    0.2893
       -0.0422    0.1651    0.0669   -0.3108    0.2262
        0.2149   -0.1239    0.0691    0.1222   -0.0996





```python
%%matlab
C = bsxfun(@minus, A, mean(A))
mean(C)
```



    C =

       -0.2217    0.1696   -0.0058    0.1282   -0.1169
        0.2761   -0.5295    0.0051    0.1054   -0.2990
       -0.2272    0.3187   -0.1353   -0.0451    0.2893
       -0.0422    0.1651    0.0669   -0.3108    0.2262
        0.2149   -0.1239    0.0691    0.1222   -0.0996


    ans =

       1.0e-15 *

        0.0444    0.0222   -0.0111    0.1332   -0.0222





```python
%%matlab
C = bsxfun(@minus, A, mean(A,2))
mean(C,2)
```



    C =

       -0.3621    0.2291   -0.1152    0.2665   -0.0183
        0.2147   -0.3909   -0.0253    0.3228   -0.1213
       -0.4170    0.3289   -0.2942    0.0438    0.3385
       -0.2130    0.1943   -0.0729   -0.2028    0.2945
        0.0286   -0.1102   -0.0862    0.2146   -0.0468


    ans =

       1.0e-15 *

       -0.0222
       -0.0555
        0.0222
        0.1110
        0.1110




> The @ symbol creates a function handle, which is described in more detail in Section 10.1. Each MATLAB operator has a function name associated with it.  
You must add @ to the name to create a function handle, which can then be passed to bsxfun. Here is a list of the most common entry-wise functions to use with bsxfun (see doc bsxfun for a complete list):

```
@plus     +         @minus     -
@times    .*        @power     .^
@rdivide  ./        @ldivide   .\
@lt       <         @gt        >
@le       <=        @ge        >=
@eq       ==        @ne        ~=
@max      maximum   @min       minimum
```


```python
%%matlab
C = bsxfun(@minus, A, min(A))
min(C)
```



    C =

        0.0054    0.6991    0.1295    0.4390    0.1821
        0.5033         0    0.1404    0.4162         0
             0    0.8483         0    0.2657    0.5883
        0.1850    0.6946    0.2022         0    0.5252
        0.4421    0.4057    0.2044    0.4330    0.1994


    ans =

         0     0     0     0     0





```python
%%matlab
d = max(abs(A), [], 2)
C = bsxfun(@ldivide, d, A)
C = diag(d) \ A
n = size(A,1)
C = spdiags(d,0,n,n) \ A
```



    d =

        0.8176
        0.7948
        0.9390
        0.8759
        0.8116


    C =

        0.2311    0.9543    0.5331    1.0000    0.6517
        0.8641    0.1021    0.5621    1.0000    0.4413
        0.1954    0.9898    0.3263    0.6862    1.0000
        0.4207    0.8856    0.5805    0.4322    1.0000
        0.7709    0.5998    0.6294    1.0000    0.6779


    C =

        0.2311    0.9543    0.5331    1.0000    0.6517
        0.8641    0.1021    0.5621    1.0000    0.4413
        0.1954    0.9898    0.3263    0.6862    1.0000
        0.4207    0.8856    0.5805    0.4322    1.0000
        0.7709    0.5998    0.6294    1.0000    0.6779


    n =

         5


    C =

        0.2311    0.9543    0.5331    1.0000    0.6517
        0.8641    0.1021    0.5621    1.0000    0.4413
        0.1954    0.9898    0.3263    0.6862    1.0000
        0.4207    0.8856    0.5805    0.4322    1.0000
        0.7709    0.5998    0.6294    1.0000    0.6779





```python

```
