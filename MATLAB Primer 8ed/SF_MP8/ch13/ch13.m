%% 13 Calling Fortran from MATLAB

%% 13.1 Solving a transposed system

%% 13.2 A Fortran mexFunction with %val
%% 
mex utsolve.f

%% 
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

%% 13.3 If you cannot use %val
