
# 8 Advanced Data Structures  


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [8 Advanced Data Structures](#8-advanced-data-structures)
  * [8.1 Cell arrays](#81-cell-arrays)
  * [8.2 Structs](#82-structs)
  * [8.3 Sets](#83-sets)
  * [8.4 Other data types](#84-other-data-types)

<!-- tocstop -->


## 8.1 Cell arrays  


```python
%%matlab
c = {[3 2 1], 'I love MATLAB'}
```



    c =

        [1x3 double]    'I love MATLAB'





```python
%%matlab
d = {'Why do' ,'I love MATLAB?', c}
```



    d =

        'Why do'    'I love MATLAB?'    {1x2 cell}




## 8.2 Structs  


```python
%%matlab
clear z
z.particle = 'electron'
z.position = [2 0 3]
z.spin = 'up'
```



    z =

        particle: 'electron'


    z =

        particle: 'electron'
        position: [2 0 3]


    z =

        particle: 'electron'
        position: [2 0 3]
            spin: 'up'





```python
%%matlab
z(2,3).particle = 'proton'
z(2,3).position = 'unknown'
```



    z =

    2x3 struct array with fields:

        particle
        position
        spin


    z =

    2x3 struct array with fields:

        particle
        position
        spin





```python
%%matlab
z = struct ( ...
  'particle', {'electron',[],[] ;
  [],[],'proton' }, ...
  'position', {[2 0 3], [],[] ;
  [],[],'unknown'}, ...
  'spin', {'up', [],[] ;
  [],[],[]}) ;
```

## 8.3 Sets  

```
ismember     test membership, x ∈ A
intersect    set intersection, A ∩ B
union        set union, A ∪ B
setdiff      set difference, A \ B
unique       removes duplicates from a set
setxor       (A ∪ B) \ (A ∩ B)
issorted     checks if a set is sorted
```


```python
%%matlab
A = [1 2 5 6 8 8 9]
B = [1 2 3 5 7]
ismember(3,A)   % 0
ismember(3,B)   % 1
intersect(A,B)  % [1 2 5]
setdiff(A,B)    % [6 8 9]
union(A,B)      % [1 2 3 5 6 7 8 9]
setxor(A,B)     % [3 6 7 8 9]
unique(A)       % [1 2 5 6 8 9]
```



    A =

         1     2     5     6     8     8     9


    B =

         1     2     3     5     7


    ans =

         0


    ans =

         1


    ans =

         1     2     5


    ans =

         6     8     9


    ans =

         1     2     3     5     6     7     8     9


    ans =

         3     6     7     8     9


    ans =

         1     2     5     6     8     9




## 8.4 Other data types  


```python
%%matlab
A = ones(3,4)
B = rand(3,4)
C = cat(3, A, B)
```



    A =

         1     1     1     1
         1     1     1     1
         1     1     1     1


    B =

        0.8147    0.9134    0.2785    0.9649
        0.9058    0.6324    0.5469    0.1576
        0.1270    0.0975    0.9575    0.9706


    C(:,:,1) =

         1     1     1     1
         1     1     1     1
         1     1     1     1


    C(:,:,2) =

        0.8147    0.9134    0.2785    0.9649
        0.9058    0.6324    0.5469    0.1576
        0.1270    0.0975    0.9575    0.9706





```python

```
