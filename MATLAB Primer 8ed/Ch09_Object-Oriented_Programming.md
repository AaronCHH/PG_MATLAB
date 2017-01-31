
## 9 Object-Oriented Programming


```python
%load_ext pymatbridge
```

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [9 Object-Oriented Programming](#9-object-oriented-programming)
* [9.1 Object methods](#91-object-methods)
* [9.2 Object inheritance and abstract classes](#92-object-inheritance-and-abstract-classes)
* [9.3 Object attributes](#93-object-attributes)
* [9.4 A more extensive example](#94-a-more-extensive-example)
* [9.5 Object handle classes](#95-object-handle-classes)

<!-- tocstop -->


## 9.1 Object methods


```python
%%matlab
z(1,2).Particle = 'neutron'
```



    z =

    1x2 struct array with fields:

        Particle





```python
# %load factor0.m
classdef factor0
    % FACTOR0  my first object
    properties
        L, U ;
    end
end

```


```python
%%matlab
A = rand(4)
F = factor0
[F.L F.U] = lu(A)
whos
```



    A =

        0.8147    0.6324    0.9575    0.9572
        0.9058    0.0975    0.9649    0.4854
        0.1270    0.2785    0.1576    0.8003
        0.9134    0.5469    0.9706    0.1419


    F =

      factor0 with properties:

        L: []
        U: []


    F =

      factor0 with properties:

        L: [4x4 double]
        U: [4x4 double]


    F =

      factor0 with properties:

        L: [4x4 double]
        U: [4x4 double]

      Name                 Size            Bytes  Class      Attributes

      A                    4x4               128  double               
      F                    1x1               360  factor0              
      toolbox_version      1x5                10  char                 
      z                    1x2               198  struct               





```python
# %load factor1.m
classdef factor1
    %FACTOR1 my first useful object
    properties
        L, U, morestuff ;
    end
    methods
        function F = factor1 (A)
            [F.L F.U] = lu (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.L \ b) ;
        end
    end
end

```


```python
%%matlab
A = rand(4)
b = rand(4,1)
F = factor1(A)
F\b
A\b
```



    A =

        0.4218    0.6557    0.6787    0.6555
        0.9157    0.0357    0.7577    0.1712
        0.7922    0.8491    0.7431    0.7060
        0.9595    0.9340    0.3922    0.0318


    b =

        0.2769
        0.0462
        0.0971
        0.8235


    F =

      factor1 with properties:

                L: [4x4 double]
                U: [4x4 double]
        morestuff: []


    ans =

       -1.2594
        1.4004
        2.0297
       -2.2699


    ans =

       -1.2594
        1.4004
        2.0297
       -2.2699





```python

```

## 9.2 Object inheritance and abstract classes


```python
# %load factor2_chol.m
classdef factor2_chol < factor2_generic
    %FACTOR2_CHOL for Cholesky
    methods
        function F = factor2_chol (A)
            F.U = chol (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.U' \ b) ;
        end
    end
end

```


```python
# %load factor2_lu.m
classdef factor2_lu < factor2_generic
    %FACTOR2_LU for LU factorization
    methods
        function F = factor2_lu (A)
            [F.L F.U] = lu (A) ;
        end
        function x = mldivide (F,b)
            x = F.U \ (F.L \ b) ;
        end
    end
end

```


```python
%%matlab
A = rand(4);
C = A'*A;         % symmetric pos. definite
b = rand(4,1) ;
F = factor2_lu(A) ;
F\b
A\b
G = factor2_chol(C) ;
G\b
C\b
```

## 9.3 Object attributes

```
properties (SetAccess = protected)
```

```
properties (SetAccess = protected, ...
  GetAccess = public)
```

## 9.4 A more extensive example


```python

```

## 9.5 Object handle classes


```python

```
