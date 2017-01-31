
# 12 Calling C from MATLAB


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [12 Calling C from MATLAB](#12-calling-c-from-matlab)
  * [12.1 A simple example](#121-a-simple-example)
  * [12.2 C versus MATLAB arrays](#122-c-versus-matlab-arrays)
  * [12.3 A matrix computation in C](#123-a-matrix-computation-in-c)
  * [12.4 MATLAB mx and mex routines](#124-matlab-mx-and-mex-routines)
  * [12.5 Online help for MEX routines](#125-online-help-for-mex-routines)
  * [12.6 Larger examples on the web](#126-larger-examples-on-the-web)

<!-- tocstop -->


## 12.1 A simple example


```python
%%matlab
mex hello.c
hello
```


    Building with 'Microsoft Visual C++ 2010 (C)'.
    MEX completed successfully.
    hello world
    Howdy!




```python
%%matlab
[a,b] = hello('there')
```

## 12.2 C versus MATLAB arrays

## 12.3 A matrix computation in C


```python
%%matlab
mex diagdom.c diagom_mex.c
A = rand(6) ;
B = ddom(A) ;
C = diagdom(A) ;
```

## 12.4 MATLAB mx and mex routines

```
mxIsEmpty               1 if the matrix is empty, 0 otherwise
mxIsSparse              1 if the matrix is sparse, 0 otherwise
mxGetN                  number of columns of a matrix
mxGetM                  number of rows of a matrix
mxGetPr                 pointer to the real values of a matrix
mxGetScalar             the value of a scalar
mxCreateDoubleMatrix    create MATLAB matrix
mxMalloc                like malloc in ANSI C
mxFree                  like free in ANSI C
```

```
mexPrintf      like printf in C
mexErrMsgTxt   like MATLAB error statement
mexFunction    the gateway routine from MATLAB
```

## 12.5 Online help for MEX routines

```
function [B,i] = diagdom(A,tol)
%DIAGDOM: modify the matrix A.
% [B,i] = diagdom(A,tol) returns a
% diagonally dominant matrix B by
% modifying the diagonal of A. i is a
% list of modified diagonal entries.
error('diagdom mexFunction not found');
```

## 12.6 Larger examples on the web
