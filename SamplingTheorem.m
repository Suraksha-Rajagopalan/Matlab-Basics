close all; 
clear all; 
clc; 
 
fm = 100; 
t = 0:0.001:0.5; 
x = 3*sin(2*pi*100.*t); 
subplot(3,1,1); 
plot(t, x); 
hold on; 
 
fs1 = 1.2*fm; 
t1 = 0:(1/fs1):0.5; 
x1 = 3*sin(2*pi*fm*t1); 
plot(t1, x1); 
xlabel('samples'); 
ylabel('amplitude'); 
title('fs<fm'); 
legend('original', 'fs<fm'); 
 
subplot(3,1,2); 
plot(t, x); 
hold on; 
fs2 = 2*fm; 
t2 = 0:(1/fs2):0.5; 
x2 = 3*sin(2*pi*100*t2); 
plot(t2, x2); 
xlabel('samples'); 
ylabel('amplitude'); 
title('fs=fm'); 
legend('original', 'fs=fm'); 
 
subplot(3,1,3); 
plot(t, x); 
hold on; 
fs3 = 5*fm; 
t3 = 0:(1/fs3):0.5; 
x3 = 3*sin(2*pi*100*t3); 
plot(t3, x3); 
xlabel('samples'); 
ylabel('amplitude'); 
title('fs>fm'); 
legend('original', 'fs>fm'); 
