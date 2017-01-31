%% 10 Advanced M-file Features

%% 10.1 Function handles and anonymous functions
%% 
f = @sqrt
f(2)
sqrt(2)

%% 
f = str2func('sqrt')
f(2)

%% 
g = @(x) x^2-5*x+6-sin(9*x)
g(1)

%% 
g = @(x) x.^2-5*x+6-sin(9*x)
g([0 1])

%% 
norm2 = @(x,y) sqrt(x^2 + y^2)
norm2(4, 5)
norm([4 5])

%% 
A = [3 2 ; 1 3]
b = [3 ; 4]
y = A\b
resid = @(x) A*x-b
resid(y)
A*y-b

%{
  func2str(f)
  func2str(g)
  func2str(norm2)
  func2str(resid)
  functions(f)
%}

h{1} = f
h{2} = g
h{1}(2)
f(2)
h{2}(1)
g(1)

%% 
bisect(@sin, [3 4])
bisect('sin', [3 4])
bisect(g, [0 3])
g(ans)

%% 10.2 Name resolution
clear
which i
i = 3
which i
which i -all

%% 10.3 Error and warning messages
A = rand(4,3)
[m n] = size(A) ;
if m ~= n
  error('A must be square') ;
end


%% 10.4 User input
%% 
iter = input('iteration count: ');

%% 
disp('Hit enter to continue: ');
pause

%% 10.5 Performance measures
%% 
n = 1000 ;
A = rand(n) ;
b = rand(n,1) ;
tic ; x = A\b ; t = toc
r = norm(A*x-b)
(2/3) *n^3 / t


%% 
m = 4000 ; n = 1000 ;
A = rand (m,n) ;
[v,beta,s] = gallery('house',A(:,1)) ;
tic ; C = A - v*(beta*(v' *A)) ; toc
tic ; C = A - beta*(v*(v' *A)) ; toc
tic ; C = A - beta*v*v' *A ; toc
tic ; C = A - beta*(v*v') *A ; toc
tic ; H = eye(m)-beta*v*v' ; C=H*A ; toc


%% 10.6 Efficient code
%% 
A = rand(1000) ;
tic ; B = ddom(A) ; toc
tic ; B = ddomloops(A) ; toc

%% 
M = magic(6) ;
E = zeros(6,50) ;
for j = 1:50
  E(:,j) = eig(M^j);
end
