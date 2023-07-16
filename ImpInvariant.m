close all;
clear all;
clc;

As = 0.2;
Ap = 0.8;
Ws = 0.5*pi;
Wp = 0.25*pi;
T = 1;
as = (1/As)^2-1;
ap = (1/Ap)^2-1;

N = ceil(log10(sqrt(as/ap))/log10(Ws/Wp));

Wc = 0.5*(Wp/((ap)^(1/(2*N))) + Ws/((as)^(1/(2*N))));
N = ceil(log10(sqrt(as/ap))/log10(Ws/Wp));

[b,a] = butter(N,Wc,'s');
H = tf(b,a);
[h,w] = freqs(b,a);
subplot(2,1,1)
plot(w/(2*pi),20*log10(abs(h)))
xlabel("Frequency(Hz)")
ylabel("Magnitude")
title("Magnitude Response for the analog Filter")
subplot(2,1,2)
plot(w/(2*pi),angle(h))
xlabel("Frequency(Hz)")
ylabel("Phase")
title("Phase Response for the analog Filter")

figure
pzmap(H);

Fs = 1/T;
[bz, az] = impinvar(b, a, T);

Hz = tf(bz, az, T);
figure
[h1, w1] = freqz(bz,az);
freqz(bz,az);

figure
pzmap(bz,az);

t = 0:0.001:1;
f1 = 200;
f2 = 600;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);
x = [x1 x2];

X = filter(bz,az,x);

figure
subplot(2,1,1);
plot(x);
title('Composite Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(2, 1, 2)
plot(X)
title('Filtered Signal')
xlabel('Time')
ylabel('Amplitude')
