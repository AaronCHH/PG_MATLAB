%% 7 Control Flow Statements

%% 7.1 The for loop
%% 
n = 10 ; x = [];
for i = 1:n
  x = [x, i^2]
end

%% 
n = 10 ; x = [];
for i = n:-1:1
  x = [i^2, x]
end

%% 
m = 6 ; n = 4
for i = 1:m
  for j = 1:n
    H(i,j) = 1/(i+j-1) ;
  end
end
H

%% 
A = rand(5)
[m n] = size(A) ;
for j = 1:n
  for i = 1:m
    if (A(i,j) > .5)
      A(i,j) = A(i,j) + 99 ;
    end
  end
end
A

%% 
s = 0 ;
for c = H
  s = s + sum(c) ;
end

%% 7.2 The while loop
%% 
a = 1e9
n = 0
while 2^n <= a
  n = n + 1 ;
end
n

%% 
[f,n] = log2(a)

%% 
for i = 1:10
  if (mod(i,2) == 0)
    continue
  end
  i
  if (i == 7)
    break
  end
end

%% 7.3 The if statement
%% 
for n = -2:5
  if n < 0
    parity = 0 ;
  elseif rem(n,2) == 0
    parity = 2 ;
  else
    parity = 1 ;
  end
  disp([n parity])
end

%% 7.4 The switch statement
%% 
switch x
  case 0
    disp ('x is zero') ;
  case {2, 4, 6, 8}
    disp ('x is 2,4,6, or 8') ;
    x = x / 2 ;
  otherwise
    disp ('x is something else') ;
    x = 0 ;
end

%% 7.5 The try/catch statement
%% 
try
  A = load ('mymatrix.txt') ;
catch
  disp ('could not find mymatrix') ;
  A = magic (5) ;
end


%% 7.6 Matrix expressions (if and while)
%% 
A = [ 1 2 ; 3 4 ]
B = [ 2 3 ; 3 5 ]

%% 
if A == B
  disp('A and B are equal')
end

%% 
if any(any(A ~= B))
  disp('A and B are not equal')
end

%% 
if A == B else
  disp('A and B are not equal')
end

%% 
if A ~= B
  disp('not what you think')
end

%% 
isequal('a', 'bb')
all('a' == 'bb')

%% 7.7 Infinite loops
i = 1
while i > 0
  i = i + 1
end

