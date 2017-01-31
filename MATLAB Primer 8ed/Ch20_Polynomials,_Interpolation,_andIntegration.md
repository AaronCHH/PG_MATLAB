
# 20 Polynomials, Interpolation, and Integration


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [20 Polynomials, Interpolation, and Integration](#20-polynomials-interpolation-and-integration)
  * [20.1 Representing polynomials](#201-representing-polynomials)
  * [20.2 Evaluating polynomials](#202-evaluating-polynomials)
  * [20.3 Polynomial interpolation](#203-polynomial-interpolation)
  * [20.4 Numeric integration (quadrature)](#204-numeric-integration-quadrature)

<!-- tocstop -->


## 20.1 Representing polynomials


```python
%%matlab
p = [1 -15 -24 360]
r = roots(p)
```



    p =

         1   -15   -24   360


    r =

       15.0000
       -4.8990
        4.8990





```python
%%matlab
A = magic(3)
s = poly(A)
roots(s)
eig(A)
f = poly(sym(A))
solve(f)
eig(sym(A))
```



    A =

         8     1     6
         3     5     7
         4     9     2


    s =

        1.0000  -15.0000  -24.0000  360.0000


    ans =

       15.0000
       -4.8990
        4.8990


    ans =

       15.0000
        4.8990
       -4.8990


    f =

                                 3       2
                                x  - 15 x  - 24 x + 360

    ans =

                                       [  15   ]
                                       [       ]
                                       [   1/2 ]
                                       [2 6    ]
                                       [       ]
                                       [    1/2]
                                       [-2 6   ]

    ans =

                                       [  15   ]
                                       [       ]
                                       [   1/2 ]
                                       [2 6    ]
                                       [       ]
                                       [    1/2]
                                       [-2 6   ]



## 20.2 Evaluating polynomials


```python
%%matlab
x = -1:2 ;
y = polyval(p,x)
```



    y =

       368   360   322   260





```python
%%matlab
syms x
f = poly2sym(p)
sym2poly(f)
```



    f =

                                 3       2
                                x  - 15 x  - 24 x + 360

    ans =

                                  [1, -15, -24, 360]




```python

```

## 20.3 Polynomial interpolation

```
p = polyfit(x, y, n)
```


```python
%%matlab
x = 0:.1:pi ;
y = sin(x) ;
p = polyfit(x, y, 5)
figure(1) ; clf
ezplot(@sin, [0 pi])
hold on
xx = 0:.001:pi ;
plot(xx, polyval(p,xx), 'r-')
```



    p =

        0.0002    0.0359   -0.2296    0.0487    0.9860    0.0007





![png](Ch20_Polynomials%2C_Interpolation%2C_andIntegration_files/Ch20_Polynomials%2C_Interpolation%2C_andIntegration_11_1.png)



```python
%%matlab
n = 10
x = -5:.1:5 ;
y = 1 ./ (x.^2+1) ;
p = polyfit(x, y, n)
figure(2) ; clf
ezplot(@(x) 1 ./ (x.^2+1))
hold on
xx = -5:.01:5 ;
plot(xx, polyval(p,xx), 'r-')
```



    n =

        10


    p =

       -0.0000    0.0000    0.0002   -0.0000   -0.0062    0.0000    0.0725   -0.0000   -0.3911    0.0000    0.8976





![png](Ch20_Polynomials%2C_Interpolation%2C_andIntegration_files/Ch20_Polynomials%2C_Interpolation%2C_andIntegration_12_1.png)



```python
%%matlab
figure(3) ; clf
yy = spline(x, y, xx) ;
plot(xx, yy, 'g')
```


![png](Ch20_Polynomials%2C_Interpolation%2C_andIntegration_files/Ch20_Polynomials%2C_Interpolation%2C_andIntegration_13_0.png)



```python
%%matlab
figure(4) ; clf
pp = spline(x, y)
yy = ppval(pp, xx) ;
plot(xx, yy, 'c')
```



    pp =

          form: 'pp'
        breaks: [1x101 double]
         coefs: [100x4 double]
        pieces: 100
         order: 4
           dim: 1





![png](Ch20_Polynomials%2C_Interpolation%2C_andIntegration_files/Ch20_Polynomials%2C_Interpolation%2C_andIntegration_14_1.png)


## 20.4 Numeric integration (quadrature)


```python
%%matlab
quad(@(x) x.^5, 1, 2)
quad(@log, 1, 4)
quad(@(x) x .* exp(x), 0, 2)
quad(@(x) exp(-x.^2), 0, 1e6)
quad(@(x) sqrt(1 + x.^3), -1, 2)
quad(@(x) real(airy(x)), -3, 3)
```



    ans =

       10.5000


    ans =

        2.5452


    ans =

        8.3891


    ans =

        0.8862


    ans =

        4.0826


    ans =

        1.1314





```python
%%matlab
int('x^5', 1, 2)
int('log(x)', 1, 4)
int('x * exp(x)', 0, 2)
int('exp(-x^2)', 0, inf)
int('sqrt(1 + x^3)', -1, 2)
int('real(airy(x))', -3, 3)
```



    ans =

                                         21/2

    ans =

                                     -3 + 8 log(2)

    ans =

                                      1 + exp(2)

    ans =

                                             1/2
                                       1/2 pi

    ans =

                  3/4                1/2  1/2        1/2
      12/5 + 2/5 3    EllipticK(1/4 2    3    + 1/4 2   )

                                       3/4
                    3/4               3            1/2  1/2        1/2
             - 1/5 3    EllipticF(2 --------, 1/4 2    3    + 1/4 2   )
                                         1/2
                                    3 + 3

    ans =

                                    3
                                   /
                                  |
                                  |   real(airy(x)) dx
                                  |
                                 /
                                   -3




```python

```
