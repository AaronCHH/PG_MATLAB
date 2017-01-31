%% 3 Matrices and Matrix Operations

%% 3.1 Referencing individual entries
A = [1 2 3 ; 4 5 6 ; -1 7 9]
A(2,3)

x = [3 2 1]'

x = [3 ; 2 ; 1]

%% 3.2 Matrix operators
%{
  + addition or unary plus
  - subtraction or negation
  * multiplication
  ^ power
  ' matrix transpose
  .' array transpose
  \ left division (backslash or mldivide)
  / right division (slash or mrdivide)
%}

%% 3.3 Matrix division (slash and backslash)
A = [1 2 ; 3 4]
b = [4 10]'
x = A\b

%% 3.4 Entry-wise operators
[1 2 3 4] .* [1 2 3 4]
[1 2 3 4] .^ 2

%% 3.5 Relational operators
%{
  < less than
  > greater than
  <= less than or equal
  >= greater than or equal
  == equal
  ~= not equal
%}

%%

%{
  & and
  | or
  ~ not
  && short-circuit and
  || short-circuit or
%}

%% 
A = [1 2 ; 3 4]
A >= 2

%%
B = [1 3 ; 4 2]
A < B

%% 3.6 Complex numbers
clear i
B = [1 2 ; 3 4] + i*[5 6 ; 7 8]
B = [1+5i, 2+6i ; 3+7i, 4+8i]
B = complex([1 2 ; 3 4], [5 6 ; 7 8])

B = [1 2 ; 3 4] + 1i*[5 6 ; 7 8]

%% 3.7 Strings
S = 'I love MATLAB'
S = 'Green''s function'
S = [ 'I love MATLAB'
    'It''s powerful' ]

%%
S(1,:)
S(2,:)

%%
disp(S)
disp(B)

%%
strcmp('A','a')
strcmpi('A','a')

%%
% To convert a number displayed a string into a number, use
% str2double, str2num, or sscanf.
str2double('3.14') 

