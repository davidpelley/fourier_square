%FOURIER SERIES SQUARE WAVE
% David Pelley

%housekeeping 
clc;
clear;
close all;

%variables 
x = -2:.001:2;   % BOUNDS.. this is a specific example 
x = x';


%for loops
n= 1; % 1 term variables 
wave1 = zeros(size(x,1),1);
for i = 1:2:n %for loop to run 1 term
  wave1 = wave1 + 4*(sin(2*i*pi*x)/(2*i*pi));  % FUNCTION.. also specific
                                                % change/play with as
                                                % needed
end
n= 5; % 5 term variables
wave5 = zeros(size(x,1),1);
for i = 1:2:n %for loop to run 5 terms
  wave5 = wave5 + 4*(sin(2*i*pi*x)/(2*i*pi));
end
n= 10; %10 term variables
wave10 = zeros(size(x,1),1);
for i = 1:2:n %for loop to run 10  terms
  wave10 = wave10 + 4*(sin(2*i*pi*x)/(2*i*pi));
end
n= 100; %100 term variables 
wave100 = zeros(size(x,1),1);
for i = 1:2:n %for loop to run 100 terms
  wave100 = wave100 + 4*(sin(2*i*pi*x)/(2*i*pi));
end

%plotting and labeling
plot(x,wave1)
hold on
plot(x,wave5)
hold on
plot(x,wave10)
hold on
plot(x,wave100)
legend ('1 term','5 terms','10 terms','100 terms')
xlabel('time')
ylabel('amplitude')
title('Fourier Series of Square Wave')