close all
clear all
clc
N = 5;
Fc = 500;
Fs = 1500;
Wc = 2*Fc/Fs;
[b,a] = butter(N,Wc,'high','s');
H = tf(b,a);
[h,w] = freqs(b,a);
figure
plot(w/(2*pi),abs(h))
xlabel("Frequency(Hz)")
ylabel("Magnitude")
title("Magnitude Response")
figure
plot(w/(2*pi),angle(h))
xlabel("Frequency(Hz)")
ylabel("Phase")
title("Phase Response")
figure
p=roots(a);
z=roots(b);
pzmap(p,z)
% Generation of a composite signal
t = 0:1/Fs:1;
x1 = sin(2*pi*250*t);
x2 = sin(2*pi*650*t);
x = [x1 x2];
%Passing the composite Signal through the Filter
X = filter(b,a,x);
figure
subplot(2, 1, 1);
plot(x)
title('Composite Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(2, 1, 2)
plot(X)
title('Filtered Signal')
xlabel('Time')
ylabel('Amplitude')

