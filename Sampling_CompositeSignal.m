Code: 
close all; 
clear all; 
clc; 
 
Ts1 = 1/120; 
Ts2 = 1/60; 
Ts3 = 1/30; 
Ts4 = 1/15; 
 
t = 0:0.01:0.2; 
x = 4*cos(30*pi.*t) + 2*sin(20*pi*t); 
subplot(4,1,1); 
[h,f] = freqz(x,1,512,100); 
t1 = 0:Ts1:0.2; 
x1 = 4*cos(30*pi.*t1 )+ 2*sin(20*pi*t1); 
[h1,f1] = freqz(x1,1,512,(1/Ts1)); 
plot(f1,20*log10(abs(h1))); 
 
subplot(4,1,2); 
t2 = 0:Ts2:0.2; 
x2 = 4*cos(30*pi.*t2 )+ 2*sin(20*pi*t2); 
[h2,f2] = freqz(x2,1,512,(1/Ts2)); 
plot(f2,20*log10(abs(h2))) 
xlabel('samples'); 
ylabel('amplitude'); 
 
subplot(4,1,3); 
t3 = 0:Ts3:0.2; 
x3 = 4*cos(30*pi.*t3 )+ 2*sin(20*pi*t3); 
[h3,f3] = freqz(x3,1,512,(1/Ts3)); 
plot(f3,20*log10(abs(h3))) 
xlabel('samples'); 
ylabel('amplitude'); 
 
subplot(4,1,4); 
t4 = 0:Ts4:0.2; 
x4 = 4*cos(30*pi.*t4 )+ 2*sin(20*pi*t4); 
[h4,f4] = freqz(x4,1,512,(1/Ts4)); 
plot(f3,20*log10(abs(h4))) 
xlabel('samples'); 
ylabel('amplitude'); 
