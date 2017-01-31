%% 6 M-Files

%% 6.1 M-File Editor window
f = sum(A, 2) ;
A = A + diag(f) ;

%% 6.2 Script files
%% 
A = rand(3)
ddom
A

%% 
A = [1 -2 ; -1 1]
ddom
A

%% 
f = sum(abs(A), 2) ;

%% 
d = diag(A) ;
a = abs(d) ;
f = sum(abs(A), 2) - a ;
i = find(f >= a) ;
A(i,i) = A(i,i) + diag(f(i))

%% 
clear
A = [-1 2 ; 1 -1]
ddom

%% 
A = A - diag(f)

%% 
s = sign(d(i)) ;
A(i,i) = A(i,i) + diag(s . * f(i)) ;

%% 
d = diag(A) ;
a = abs(d) ;
f = sum(abs(A), 2) - a ;
i = find(f >= a) ;
[m n] = size(A) ;
k = i + (i-1) *m ;
tol = 100 * eps ;
s = 2 * (d(i) >= 0) - 1 ;
A(k) = (1+tol) * s .* max(f(i), tol)

%% 6.3 Function files
%% 
B = A

%% 
C = [1 -2 ; -1 1]
D = ddom(C)


%% 6.4 Multiple inputs and outputs

%% 6.5 Variable arguments

%% 6.6 Unused arguments
% Not all output arguments of a function are needed every
% time the function is used. To ignore arguments that appear
% at the end of the list of outputs, simply remove them from
% the list. For example, with your new 2-output ddom
% function, D=ddom(C) returns only the first argument. The
% second output i is ignored.
% To ignore an argument, use a tilde (~) in its place. For
% example, to obtain just the indices of the diagonal entries
% that ddom would modify, use [~,i]=ddom(C) . Try it.

[~,i] = ddom(C)

%% 6.7 Comments and documentation

%% 6.8 The MATLAB path