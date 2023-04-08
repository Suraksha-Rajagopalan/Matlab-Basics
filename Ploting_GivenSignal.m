close all;
clear all;
clc;

% x= (1/2)^n.u[n]+(1/4)^n.u[n-4]+(1/3)^n.u[n-8]+(1/8)^n.u[n-12]

% The time delay in each unit step signal
a1 = 4;
a2 = 8;
a3 = 12;

% here, x1 = (1/2)^n.u[n]
subplot(1,5,1);
n = 0:1:50;
x1 = [ones(1,51)].*(0.5.^n);
stem(n,x1);
xlabel('sample')
ylabel('amplitude')
title('x1 = (1/2)^n.u[n]')

% here, x2 = (1/4)^n.u[n-4]
subplot(1,5,2);
x2 = [zeros(1, a1) ones(1,(51-a1))].*(0.25.^n);
stem(n,x2);
xlabel('sample')
ylabel('amplitude')
title('x2 = (1/4)^n.u[n-4]')

% here, x3 = (1/3)^n.u[n-8]
subplot(1,5,3);
x3 = [zeros(1, a2) ones(1,(51-a2))].*((1/3).^n);
stem(n,x3);
xlabel('sample')
ylabel('amplitude')
title('x3 = (1/3)^n.u[n-8]')

% here, x4 = (1/8)^n.u[n-12]
subplot(1,5,4);
x4 = [zeros(1, a3) ones(1,(51-a3))].*((1/8).^n);
stem(n,x4);
xlabel('sample')
ylabel('amplitude')
title('x4 = (1/8)^n.u[n-12]')

% plotting the final function x
subplot(1,5,5);
x = x1+x2+x3+x4;
stem(n,x)
xlabel('sample')
ylabel('amplitude')
title('Final plot of x')
