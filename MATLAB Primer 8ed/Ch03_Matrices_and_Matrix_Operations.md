
# 3 Matrices and Matrix Operations

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [3 Matrices and Matrix Operations](#3-matrices-and-matrix-operations)
  * [3.1 Referencing individual entries](#31-referencing-individual-entries)
  * [3.2 Matrix operators](#32-matrix-operators)
  * [3.3 Matrix division (slash and backslash)](#33-matrix-division-slash-and-backslash)
  * [3.4 Entry-wise operators](#34-entry-wise-operators)
  * [3.5 Relational operators](#35-relational-operators)
  * [3.6 Complex numbers](#36-complex-numbers)
  * [3.7 Strings](#37-strings)

<!-- tocstop -->


## 3.1 Referencing individual entries


```python
%load_ext pymatbridge
```

```python
%%matlab
A = [1 2 3 ; 4 5 6 ; -1 7 9]
A(2,3)
```



    A =

         1     2     3
         4     5     6
        -1     7     9


    ans =

         6





```python
%%matlab
x = [3 2 1]'
```



    x =

         3
         2
         1





```python
%%matlab
x = [3 ; 2 ; 1]
```



    x =

         3
         2
         1




## 3.2 Matrix operators

```matlab
+ addition or unary plus
- subtraction or negation
* multiplication
^ power
' matrix transpose
.' array transpose
\ left division (backslash or mldivide)
/ right division (slash or mrdivide)
```


```python
%%matlab
y = [1 2 3]'
x' * y
x * y'
```



    y =

         1
         2
         3


    ans =

        10


    ans =

         3     6     9
         2     4     6
         1     2     3




## 3.3 Matrix division (slash and backslash)

The matrix “division” operations deserve special comment.

If A is an invertible square matrix and b is a compatible column vector or, respectively, a compatible row vector, then x=A\b is the solution of A*x=b, and x=b/A is the solution of x*A=b.

These are informally called the backslash (\) and slash operators (/); they are also referred to as the mldivide and mrdivide functions.

If A is square and non-singular, then A\b and b/A are mathematically the same as respectively, where inv(A) computes the inverse of A.

The left and right division operators do not compute the inverse and are more accurate and efficient than inv(A) *b.

In left division, if A is square, then it is factorized (if necessary), and these factors are used to solve A*x=b.

If A is not square, the under- or over-determined system is solved in the least squares sense.

Right division is defined in terms of left division by b/A=(A’\b’)’ .

Try this:


```python
%%matlab
A = [1 2 ;  3 4]
b = [4 10]'
x = A\b
```



    A =

         1     2
         3     4


    b =

         4
        10


    x =

        2.0000
        1.0000




## 3.4 Entry-wise operators


```python
%%matlab
[1 2 3 4] .* [1 2 3 4]
[1 2 3 4] .^ 2
```



    ans =

         1     4     9    16


    ans =

         1     4     9    16




## 3.5 Relational operators

> The relational operators in MATLAB are:

```
< less than
> greater than
<= less than or equal
>= greater than or equal
== equal
~= not equal
```

> They all operate entry-wise.  
Note that = is used in an assignment statement whereas == is a relational operator.  
Relational operators may be connected by logical operators:


```
& and
| or
~ not
&& short-circuit and
|| short-circuit or
```


```python
%%matlab
A = [1 2 ; 3 4]
A >= 2
B = [1 3 ; 4 2]
A < B
```



    A =

         1     2
         3     4


    ans =

         0     1
         1     1


    B =

         1     3
         4     2


    ans =

         0     1
         1     0




## 3.6 Complex numbers

> MATLAB allows complex numbers in most of its operations and functions.  
Three convenient ways to enter complex matrices are:


```python
%%matlab
clear i
B = [1 2 ; 3 4] + i*[5 6 ; 7 8]
B = [1+5i, 2+6i ; 3+7i, 4+8i]
B = complex([1 2 ; 3 4], [5 6 ; 7 8])
```



    B =

       1.0000 + 5.0000i   2.0000 + 6.0000i
       3.0000 + 7.0000i   4.0000 + 8.0000i


    B =

       1.0000 + 5.0000i   2.0000 + 6.0000i
       3.0000 + 7.0000i   4.0000 + 8.0000i


    B =

       1.0000 + 5.0000i   2.0000 + 6.0000i
       3.0000 + 7.0000i   4.0000 + 8.0000i




> Either i or j may be used as the imaginary unit.  
You can use i and j as variables and overwrite their values, since they are also commonly used as loop indices (this is why the example above starts with clear i).  
You may generate a new imaginary unit with, say, ii=sqrt(-1).  
The simplest thing to do is to always use the constants 1i or 1j , which cannot be reassigned and are always equal to the imaginary unit.  
Thus,



```python
%%matlab
B = [1 2 ; 3 4] + 1i*[5 6 ; 7 8]
```



    B =

       1.0000 + 5.0000i   2.0000 + 6.0000i
       3.0000 + 7.0000i   4.0000 + 8.0000i




## 3.7 Strings

* Enclosing text in single quotes forms strings with the char data type:


```python
%%matlab
S = 'I love MATLAB'
```



    S =

    I love MATLAB




* To include a single quote inside a string, use two of them together, as in:


```python
%%matlab
S = 'Green''s function'
```



    S =

    Green's function




* A 2-D array of strings can represent multiple lines of text. For example,


```python
%%matlab
S = [ 'I love MATLAB'
     'It''s powerful' ]
```



    S =

    I love MATLAB
    It's powerful





```python
%%matlab
strcmp('A','a')
str2double('3.14')
str2num('3.14')
```



    ans =

         0


    ans =

        3.1400


    ans =

        3.1400





```python

```
