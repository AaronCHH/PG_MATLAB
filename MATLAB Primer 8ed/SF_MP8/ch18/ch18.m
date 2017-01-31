%% 18 Sparse Matrix Computations

%% 18.1 Storage modes
F = randi([0 9], 6)
F = triu(tril(F,1), -1)

%%
S=sparse(F) 

%%
F=full(S)

%% 18.2 Generating sparse matrices
m = 6 ;
n = 6 ;
e = ones(n,1) ;
d = -2*e ;
T = spdiags([e d e], [-1 0 1], m, n)
full(T)

%% 
i = [1 2 3 4 4 4] ;
j = [1 2 3 1 2 3] ;
s = [5 6 7 8 9 10] ;
S = sparse(i, j, s, 4, 3)
full(S)

%% 
i = [1 2 3 1] ;
j = [1 2 3 1] ;
s = [1 1 1 1] ;
S = sparse(i, j, s)
full(S)

%% 
n = 6 ;
e = randi([0 9], n-1, 1) ;
E = sparse(2:n, 1:n-1, e, n, n)

%% 
A = sparse(m,n) ;
for k = 1:length(s)
  A(i(k),j(k)) = s(k) ;
end

%% 18.3 Computation with sparse matrices
%{
  S+S S*S S. *S S. *F
  S-S S/Z S\Z -S
  S¡¦ S.¡¦ inv(S) chol(S)
  lu(S) diag(S) max(S) sum(S)
  S*n S/n S^n S.^n
n\S
%}


%% 18.4 Permutation vectors and matrices
%% 
load west0479 ; A = west0479 ;
[L,U,P,Q] = lu(A) ;
[L,U,p,q] = lu(A, 'vector') ;

%% 
[p j x] = find(P');    % converts P*A to A(p,:)
[q j x] = find(Q);     % converts A*Q to A(:,q)
P=sparse(1:m, p, 1)    % converts A(p,:) to P*A
Q=sparse(q, 1:n, 1)    % converts A(:,q) to A*Q

%% 18.5 Visualizing matrices
A = [
      -1 2 3 -4
      0 2 -1 0
      1 2 9 1
      -3 4 1 1]
C = ddom(A)
figure(1) ; spy(A ~= C)
figure(2) ; spy(A > 2)

