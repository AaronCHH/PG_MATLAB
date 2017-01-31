
# 7 Control Flow Statements


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [7 Control Flow Statements](#7-control-flow-statements)
  * [7.1 The for loop](#71-the-for-loop)
  * [7.2 The while loop](#72-the-while-loop)
  * [7.3 The if statement](#73-the-if-statement)
  * [7.4 The switch statement](#74-the-switch-statement)
  * [7.5 The try/catch statement](#75-the-trycatch-statement)
  * [7.6 Matrix expressions (if and while)](#76-matrix-expressions-if-and-while)
  * [7.7 Infinite loops](#77-infinite-loops)

<!-- tocstop -->


## 7.1 The for loop


```python
%%matlab
n = 10 ; x = []
for i = 1:n
    x = [x, i^2]
end
```


```python
%%matlab
n = 10 ; x = []
for i = n:-1:1
    x = [i^2, x]
end
```


```python
%%matlab
m = 6 ; n = 4
    for i = 1:m
        for j = 1:n
            H(i,j) = 1/(i+j-1) ;
        end
    end
H
```


```python
%%matlab
A = rand(5)
[m n] = size(A);
for j = 1:n
    for i = 1:m
        if (A(i,j) > .5)
            A(i,j) = A(i,j) + 99 ;
        end
    end
end
A
```


```python
%%matlab
s = 0 ;
for c = H
    s = s + sum(c) ;
end
s
```

## 7.2 The while loop

```
while expression    
    statements    
end
```


```python
%%matlab
a = 1e9
n = 0
while 2^n <= a
    n = n + 1 ;
end
n
```


```python
%%matlab
[f,n] = log2(a)
```


```python
%%matlab
for i = 1:10
    if (mod(i,2) == 0)
        continue
    end
    i
    if (i == 7)
        break
    end
end
```

## 7.3 The if statement

```
if expression
    statements
end
```


```python
%%matlab
for n = -2:5
    if n < 0
        parity = 0 ;
    elseif rem(n,2) == 0
        arity = 2 ;
    else
        parity = 1 ;
    end
    disp([n parity])
end
```

## 7.4 The switch statement

```
switch expression
    case expression2
        statements
    otherwise
        statements
end
```

```
switch x
  case 0
      disp ('x is zero') ;
  case {2, 4, 6, 8}
      disp ('x is 2,4,6, or 8');
      x = x / 2 ;
  otherwise
      disp ('x is something else');
      x = 0 ;
end
```

## 7.5 The try/catch statement

```
try
    statements
catch ME
    error handling statements
    rethrow (ME)
end
```

```
try
    A = load ('mymatrix.txt') ;
catch
    disp ('could not find mymatrix') ;
    A = magic (5) ;
end
```

## 7.6 Matrix expressions (if and while)


```python
%%matlab
A = [ 1 2 ; 3 4 ]
B = [ 2 3 ; 3 5 ]
```


```python
%%matlab
if A == B
    disp('A and B are equal')
end
```


```python
%%matlab
if A ~= B
    disp('A and B are not equal')
end
```


```python
%%matlab
if A == B else
    disp('A and B are not equal')
end
```


```python
%%matlab
if A ~= B
    disp('not what you think')
end
```

```
if all(all( expression))
    statement
end
```

```
isequal('a', 'bb')
all('a' == 'bb')
```

## 7.7 Infinite loops

```
i = 1
while i > 0
    i = i + 1
end
```


```python

```
