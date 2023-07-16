close all; 
clear all; 
clc; 
N = 5; 
n = 0:1:4; 
k = n; 
X_k = [5 6 1 2 9]; 
subplot(2, 2, 1); 
stem(n, abs(X_k)) 
xlabel('frequencies'); 
ylabel('coefficients'); 
title('X(k)'); 
y1 = zeros(1, N); 

for m = 1:N 

    y1(m) = (1/N)*sum(X_k.*exp(1*1i*2*(1/N)*pi*(m-1)*n)); 

end 

subplot(2, 2, 2); 
stem(n, y1) 
xlabel('time'); 
ylabel('amplitude'); 
title('x(n)'); 

%frequency shifting the signal 
y2 = y1.*exp((1i*2*pi*2*n)/N); 
subplot(2, 2, 4); 
stem(n, y2) 
xlabel('time'); 
ylabel('amplitude'); 
title('x1(n) after the frequency shifting '); 
y3 = zeros(1, N); 

for m = 1:1:N 

    y3(m) = sum(y2.*exp(-1*1i*2*(1/N)*pi*k(m)*n)); 

end 

subplot(2, 2, 3); 
stem(n, abs(y3)) 
xlabel('frequencies'); 
ylabel('coefficients'); 

title('X1(k) after the frequency shift'); 
