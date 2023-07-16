close all; 
clear all; 
clc; 

N = 20;
shift = -2; 
n = 0:1:19; 
k = 0:1:(N-1); 
x_n = sin((2*pi*n)/20); 
subplot(2, 2, 1); 
stem(n, x_n); 
xlabel('time'); 
ylabel('amplitude'); 
title('x(n)'); 
y = zeros(1, N); 

for m = 1:1:N 

    y(m) = sum(x_n.*exp(-1*1i*2*(1/N)*pi*k(m)*n)); 

end 

subplot(2, 2, 2); 
stem(k, angle(y)); 
xlabel('frequency'); 
ylabel('Dk'); 
title('Phase  X(k)'); 
x_2 = circshift(x_n, shift); 

subplot(2, 2, 3); 
stem(n, x_2); 
xlabel('time'); 
ylabel('amplitude'); 
title('phase x(n-2)'); 

%Corelation between is 
y1 = zeros(1, N); 
for m = 1:1:N 

    y1(m) = sum(x_n.*exp(-1*1i*2*(1/N)*pi*k(m)*n)); 

end 
y1 = y1.*exp((2*-1i*pi*shift)/N) ;
subplot(2, 2, 4); 
y1 = angle(y1); 
stem(k, y1); 
xlabel('frequency'); 
ylabel('Dk'); 
title('Phase X1(k)'); 
