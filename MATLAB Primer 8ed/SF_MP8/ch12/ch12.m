%% 12 Calling C from MATLAB

%% 12.1 A simple example
%% 
mex hello.c

%% 
hello

%% 12.2 C versus MATLAB arrays

%% 12.3 A matrix computation in C
mex diagdom.c 
mex diagom_mex.c
A = rand(6) ;
B = ddom(A) ;
C = diagdom(A) ;

%% 12.4 MATLAB mx and mex routines

%% 12.5 Online help for MEX routines

%% 12.6 Larger examples on the web
web www.cise.ufl.edu/research/sparse