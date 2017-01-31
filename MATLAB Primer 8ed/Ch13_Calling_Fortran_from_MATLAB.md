
# 13 Calling Fortran from MATLAB


```python
%load_ext pymatbridge
```

    The pymatbridge extension is already loaded. To reload it, use:
      %reload_ext pymatbridge



<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [13 Calling Fortran from MATLAB](#13-calling-fortran-from-matlab)
  * [13.1 Solving a transposed system](#131-solving-a-transposed-system)
  * [13.2 A Fortran mexFunction with %val](#132-a-fortran-mexfunction-with-val)
  * [13.3 If you cannot use %val](#133-if-you-cannot-use-val)

<!-- tocstop -->


## 13.1 Solving a transposed system

```
subroutine utsolve (n, x, A, b)
integer n
real*8 x(n), A(n,n), b(n), xi
integer i, j
do 1 i = 1,n
    xi = b(i)
    do 2 j = 1,i-1
        xi = xi - A(j,i) * x(j)
    continue
    x(i) = xi / A(i,i)
continue
return
end
```

## 13.2 A Fortran mexFunction with %val

```
subroutine mexFunction
$ (nargout, pargout, nargin, pargin)
integer nargout, nargin
integer pargout ( *), pargin ( *)
```

```
integer mxGetN, mxGetPr
integer mxCreateDoubleMatrix
```

```
integer n, one
one = 1
n = mxGetN (pargin (1))
pargout (1) =
$ mxCreateDoubleMatrix (n, one, 0)
```

```
call utsolve (n,
$ %val (mxGetPr (pargout (1))),
$ %val (mxGetPr (pargin (1))),
$ %val (mxGetPr (pargin (2))))
return
end
```

```
n = 5000
A = triu(rand(n,n)) ;
b = rand(n,1) ;
tic ; x = A'\b ; toc
opts.UT = true
opts.TRANSA = true
tic ; x2 = linsolve(A,b,opts) ; toc
tic ; x3 = utsolve(A,b) ; toc
norm(x-x2)
norm(x-x3)
```

## 13.3 If you cannot use %val

```
integer nmax
parameter (nmax = 5000)
real*8 A(nmax,nmax), x(nmax), b(nmax)
```

```
if (n .gt. nmax) then
    call mexErrMsgTxt ("n too big")
endif
```

```
call mxCopyPtrToReal8
$ (mxGetPr (pargin (1)), A, n**2)
call mxCopyPtrToReal8
$ (mxGetPr (pargin (2)), b, n)
call utsolve (n, x, A, b)
call mxCopyReal8ToPtr
$ (x, mxGetPr (pargout (1)), n)
```


```python

```
