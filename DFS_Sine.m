close all;
clear all;
clc;
 
n = -4:1:5;
N = 10;
k = n;
y = zeros(1,N);
for m = 1:1:N
    y(m) = (1/N)*sum(sin(0.2*pi*n).*exp(-1*1i*0.2*pi*k(m)*n));
end
y
plot(n, y);
xlabel('frequency');
ylabel('Dk');
