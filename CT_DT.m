close all;
clear all;
clc;

n = -6:1:6;
x = [zeros(1,1) 0.5 ones(1,9) 0.5 zeros(1,1)];
subplot(1,2,1);
stem(n, x)
xlabel('samples')
ylabel('amplitude')
title('Discrete time')

subplot(1,2,2);
plot(n, x)
xlabel('time')
ylabel('amplitude')
title('Continuous time')
