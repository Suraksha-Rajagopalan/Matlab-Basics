close all;
clear all;
clc;

% Generation of unit impulse signal 
n = -50:1:50;
imp = [zeros(1,50) 1 zeros(1,50)];
subplot(3,2,1);
stem(n, imp)
xlabel('samples')
ylabel('amplitude')
title('Unit impulse signal(Discrete Time)')

subplot(3,2,2);
plot(n, imp)
xlabel('time(sec)')
ylabel('amplitude')
title('Unit impulse signal(Continuous Time)')

% Generation of unit step signal 
step = [zeros(1,50) ones(1, 51)];
subplot(3, 2, 3);
stem(n, step)
xlabel('samples')
ylabel('amplitude')
title('Unit step signal(Discrete Time)')
subplot(3, 2, 4);
plot(n, step)
xlabel('time(sec)')
ylabel('amplitude')
title('Unit step signal(Continuous Time)')

% Generation of ramp signal 
x = 0:1:100;
ramp = [ones(1, 101)].*x;
subplot(3, 2, 5);
stem(x, ramp)
xlabel('samples')
ylabel('amplitude')
title('ramp signal(Discrete Time)')

subplot(3, 2, 6);
plot(x, ramp)
xlabel('time(sec)')
ylabel('amplitude')
title('ramp signal(Continuous Time)')
