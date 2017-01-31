function B = ddomloops(A,tol)
%DDOMLOOPS make matrix diagonally dominant
% B = ddomloops(A) returns a diagonally
% dominant matrix B by modifying the
% diagonal of A.
%
% Example
%     A = [1 0 ; 4 1]
%     B = ddomloops(A)
%     B is the same as A, except B(2,2)
%     is slightly greater than 4.
%
% See also DDOM.

% Copyright 2010, Me.

[m, n] = size(A) ;
if (m ~= n)
    error ('A must be square') ;
end
if (nargin == 1)
    tol = 100 * eps ;
end
for i = 1:n
    d = A(i,i) ;
    a = abs(d) ;
    f = 0 ;
    for j = 1:n
        if (i ~= j)
            f = f + abs(A(i,j)) ;
        end
    end
    if (f >= a)
        aii = (1 + tol) * max(f, tol) ;
        if (d < 0)
            aii = -aii ;
        end
        A(i,i) = aii ;
    end
end
B = A ;

