%% 14 Calling Java from MATLAB

%% 14.1 A simple example

%% 14.2 Encryption/decryption

%% 14.3 Java class path

%% 14.4 Calling your own Java methods
%% 
s = urlread('http://www.mathworks.com')

%% 
!javac myreader.java

%% 
myreader.geturl('http://www.google.com','my.txt')

%% 14.5 Loading a URL as a matrix
w = loadurl('http://www.cise.ufl.edu/~davis/MATLABPrimer8E/w')

%% 
s = loadurl('http://www.cise.ufl.edu/research/sparse/mat/HB/west0479.mat')
prob = s.Problem
spy(prob.A)
title([prob.name ': ' prob.title])



