%% 22 Displaying Results
format short
x = [0:.1:pi]';
f = {@sin, @cos, @tan, @cot} ;
y = x ;
for i = 1:length(f)
  y = [y f{i}(x)] ;
end
disp(y)

%% 
y = [x sin(x) cos(x) tan(x) cot(x)] ;

%% 
fprintf('pi is %12.8f\n', pi)

%% 
A = magic(3)
fprintf('%4.2f %4.2f %4.2f\n', A')
b = (1:3)' ;
fprintf('A\\b is [%g %g %g]''\n', A\b);

%% 
fprintf('x is %d\n', 1:5)
%% 
fprintf('x is %d\n', (1:5)')
%% 
fprintf('row %d is %4.2f %4.2f %4.2f\n', [(1:3)' A]')

%% 
x = [0:.1:pi]' ;
f = {@sin, @cos, @tan, @cot} ;
y = x ;
fprintf(' x') ;
for i = 1:length(f)
  fprintf(' %s(x)',func2str(f{i}));
  y = [y f{i}(x)] ;
end
fprintf('\n') ;
fprintf('%3.2f %9.4f %9.4f %9.4f %9.4f\n',y');

%% 
fid = fopen('mytable.txt', 'w') ;
% fprintf
fclose(fid) ;

%% 
title(sprintf('The result is %g', pi))

%% 
for n = 1:16
  s = num2str(n) ;
  s = ['%2d digits: %.' s 'g\n'] ;
  fprintf(s, n, pi) ;
end

