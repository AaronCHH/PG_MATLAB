%% 5 MATLAB Functions

%% 5.1 Constructing matrices
%%
%{
  eye         % identity matrix
  zeros       % matrix of zeros
  ones        % matrix of ones
  diag        % create or extract diagonals
  triu        % upper triangular part of a matrix
  tril        % lower triangular part of a matrix
  rand        % randomly generated matrix
  hilb        % Hilbert matrix
  magic       % magic square
  toeplitz    % Toeplitz matrix
  gallery     % a wide range of interesting matrices
%}

%%
A = rand(3)

%%
x = 1:3
diag(x)
diag(A)
diag(diag(A))

%% 
B = [A zeros(3,2) ; pi*ones(2,3), eye(2)]

%% 
triu(A)
triu(A) == A

%% 
A = gallery('parter', 6)
svd(A)

%% 
A = rosser;
eig(A)
eigs(A)

%% 5.2 Scalar functions
%{
  abs atan2 exp log10 rem sqrt
  acos ceil floor log2 round tan
  asin conj imag mod sign
  atan cos log real sin
%}

%% 
x = (0:0.1:2)'
y = sin(x)
[x y]

%% 5.3 Vector functions and data analysis
%{
  max sum median any sort var
  min prod mean all std mode
%}

%% 5.4 Matrix functions
%{
  eig       % eigenvalues and eigenvectors
  eigs      % like eig, for large sparse matrices
  chol      % Cholesky factorization
  svd       % singular value decomposition
  svds      % like svd, for large sparse matrices
  lu        % LU factorization
  qr        % QR factorization
  poly      % characteristic polynomial
  det       % determinant
  size      % size of an array
  length    % length of a vector
  norm      % 1-norm, 2-norm, Frobenius-norm, ¡Û-norm
  cond      % condition number in the 2-norm
  condest   % condition number estimate
  rank      % rank
  kron      % Kronecker tensor product
  find      % find indices of nonzero entries
  linsolve  % solve a special linear system
%}

lambda = eig(A)

[V, Lambda] = eig(A)

%% 5.5 The linsolve function

%% 
A = [1 2 ; 3 4]
b = [4 10]'
A\b
linsolve(A,b)

%% 
C = [2 1 ; 1 2]
x = C\b

%% 
R = chol(C)
y = R'\b
x = R\y

%% 
opts.UT = true
opts.TRANSA = true
y = linsolve(R,b,opts)

%% 5.6 The find function
%% 
x = 2*rand(1,5)
y = x(find(x > 1))

%% 
A = rand(3)
[i,j,x] = find(A)

%% 
[i,j,x] = find(A > .5)
[i j x]


%% 5.7 1-D indexing and the reshape function
%% 
A = rand(5)
k = find(A > .5)
A(k)
A(k) = A(k) + 99

%% 
A = rand(3)
A(1,2)
A(4)

%% 
A(:)

%% 
A = magic(5)
A([1 2 ; 5 6])
A(1:7)
A([1:7]')

%% 
A([1 2 ; 5 6]) = 101:104
A(1:7) = 0
A([1:7]') = -1

%% 
A = magic(5)
k = [1 2 ; 5 6]
k = k(:)
A(k) = 101:104

%% 
A = reshape(1:16, 4, 4)
C = reshape(A, 2, 8)

%% 5.8 Logical indexing
%% 
A = rand(5)
S = A > .5
A(S)
A(S) = A(S) + 99

%% 
S = randi([0 1], 5)
A(S) % fails
A(S==1) % OK

%% 5.9 The bsxfun and repmat functions
%% 
A = rand(5)
C = A - mean(A(:))

%% 
n = size(A,1)
C = A - repmat(mean(A), n, 1)

%% 
C = bsxfun(@minus, A, mean(A))
mean(C)

%% 
C = bsxfun(@minus, A, mean(A,2))
mean(C,2)

%% 
%{
  @plus + @minus
  @times . * @power .^
  @rdivide ./ @ldivide .\
  @lt < @gt >
  @le <= @ge >=
  @eq == @ne ~=
  @max maximum @min minimum
%}

%% 
C = bsxfun(@minus, A, min(A))
min(C)

%% 
d = max(abs(A), [], 2)
C = bsxfun(@ldivide, d, A)
C = diag(d) \ A
n = size(A,1)
C = spdiags(d,0,n,n) \ A
