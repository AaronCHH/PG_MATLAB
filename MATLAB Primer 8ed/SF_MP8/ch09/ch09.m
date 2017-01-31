%% 9 Object-Oriented Programming
z(1,2).Particle = 'neutron'

%% 
A = rand(4)
F = factor0
[F.L F.U] = lu(A)
whos

%% 9.1 Object methods
%% 
A = rand(4)
b = rand(4,1)
F = factor1(A)
F\b
A\b


%% 9.2 Object inheritance and abstract classes
A = rand(4) ;
C = A' *A ; % symmetric pos. definite
b = rand(4,1) ;
F = factor2_lu(A) ;
F\b
A\b
G = factor2_chol(C) ;
G\b
C\b

%% 9.3 Object attributes


%% 9.4 A more extensive example


%% 9.5 Object handle classes




