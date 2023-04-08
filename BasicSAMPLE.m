close all; 
clear all; 
clc; 
 
% sine wave using Sampling Theorem 
 
samples = 100; 
t = 0:(1/samples):1; 
f = 20; 
x = 5.*sin(2*pi*f.*t); 
plot(t, x) 
xlabel('time'); 
ylabel('amplitude'); 
title('Sampling Theorem'); 
