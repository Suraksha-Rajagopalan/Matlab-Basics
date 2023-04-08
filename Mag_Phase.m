close all;
clear all;
clc;
 
n = [0:1:4];
x = [4 3 2 1 0];
N = 5;
k=n;
y = zeros(1, N);
for m = 1:1:N
    y(m) = (1/N)*sum(x.*exp(-1*1i*2*(1/N)*pi*k(m)*n));
end
% for magnitude spectrum 
subplot(1,2,1);
plot(k, abs(y));
xlabel('frequency');
ylabel('Coefficients');
title('magnitude spectrum');
 
%for phase spectrum
subplot(1,2,2);
plot(k, angle(y));
xlabel('frequency');
ylabel('Coefficients');
title('phase spectrum');
