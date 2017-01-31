%% 4 Submatrices and Colon Notation

%% 4.1 Generating vectors
1:5

0:0.2:1

(1:5)-3

1:4.9 

5:-1:1

5:1:1

linspace(1,5.1,5)

%% 4.2 Accessing submatrices
A = rand(6,6)
B = rand(6,4)

A(:,[2 4 5]) = B(:,1:3)
A(:,[2 4]) = A(:,[2 4]) * [1 2 ; 3 4]

a = A(5,1)
b = A(3,1)
G = [a b ; -b a] / norm([a b])
A([5 3], :) = G * A([5 3], :)

A(:, [2 4]) = 99

A(:, [2 4]) = []

x = rand(1,5)
x = x(end:-1:1)