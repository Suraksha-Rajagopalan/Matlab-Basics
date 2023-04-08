close all;
clear all;
clc;

v = (10-0)/0.1;
x = 0:0.1:10;
% Sine Wave plotting
s = [sin(2*pi.*x)];
subplot(3,2,1);
plot(x, s)
xlabel('time')
ylabel('amplitude')
title('Sine Wave')

subplot(3,2,2);
stem(x, s)
xlabel('sample')
ylabel('amplitude')
title('Sine Wave')

% Triangle Wave plotting
a = 4/v:4/v:(1-(4/v));
tri = [0 a 1 fliplr(a) 0 a 1 fliplr(a) 0];

subplot(3,2,3);
plot(x, tri)
xlabel('time')
ylabel('amplitude')
title('Triangle Wave')

subplot(3,2,4);
stem(x, tri)
xlabel('sample')
ylabel('amplitude')
title('Triangle Wave')

% Swathoth Wave plotting
z = 0:0.1:6.2;
b = [0:1/20:1];   %Since we need 3 waves (601/3)
sa = [b b b];
subplot(3,2,5);
plot(z, sa)
xlabel('time')
ylabel('amplitude')
title('Sawthoth Wave')

subplot(3,2,6);
stem(z, sa)
xlabel('sample')
ylabel('amplitude')
title('Sawthoth Wave')
