%% 8 Advanced Data Structures

%% 8.1 Cell arrays
%% 
c = {[3 2 1] ,'I love MATLAB'}

%% 
d = {'Why do' ,'I love MATLAB?', c}

%% 8.2 Structs
%% 
clear z
z.particle = 'electron'
z.position = [2 0 3]
z.spin = 'up'

%% 
z(2,3).particle = 'proton'
z(2,3).position = 'unknown'

%% 
z = struct ( ...
  'particle', {'electron',[],[] ;
                [],[],'proton' }, ...
  'position', {[2 0 3], [],[] ;
                [],[],'unknown'}, ...
  'spin', {'up', [],[] ;
                [],[],[]}) 

%% 8.3 Sets
%% 
%{
  ismember
  intersect
  union
  setdiff
  unique
  setxor
  issorted
%}

%% 
A = [1 2 5 6 8 8 9]
B = [1 2 3 5 7]
ismember(3,A)   % 0
ismember(3,B)   % 1
intersect(A,B)  % [1 2 5]
setdiff(A,B)    % [6 8 9]
union(A,B)      % [1 2 3 5 6 7 8 9]
setxor(A,B)     % [3 6 7 8 9]
unique(A)       % [1 2 5 6 8 9]


%% 8.4 Other data types
%% 
A = ones(3,4)
B = rand(3,4)
C = cat(3, A, B)



