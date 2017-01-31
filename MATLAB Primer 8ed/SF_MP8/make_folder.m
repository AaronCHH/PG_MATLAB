%% // Start;
clc;clear;close all;
tic;

%% // Read;
fdrnm = 'ch';
N = 23;
for i = 1:N;
  if i < 10
    mkdir([fdrnm,num2str(0), num2str(i)]);
  else
    mkdir([fdrnm, num2str(i)]);
  end
end

%% // End;
toc;