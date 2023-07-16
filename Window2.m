close all;
clear all;
clc;

N =7;                        
Fs = 1000;        % Fs should be greater than 800.            
Fc = 400;                      
Wc = 2*pi*Fc/Fs;
hd1 = zeros(1,N);
n = (-N+1)/2 : (N-1)/2;
for i = 1:length(n)
    if (n(i) == 0)
        hd1(i) = Wc/pi;
    else 
        hd1(i) = sin(Wc*n(i))/(n(i)*pi);
    end
end
W1 = ones(1,N);
hn1 = hd1.*W1;

%Rectangular Window
[h1,f1]=freqz(hn1,1,Fc,Fs);
subplot(2,1,1)
plot(f1,(abs(h1)))
ylabel("Magnitude")
title("Magnitude response")
xlabel("Frequency(Hz)")
subplot(2,1,2)
stem(n,hd1)
title("Rectangular Coefficients")
xlabel('n')
ylabel("Coefficents")

W2 = 0.54 + (0.46)*cos((2*pi*n)/(N-1));
hn2 = hd1.*W2;
figure

%Hamming Window Used for precise filteration of the signals eg ECG/EEG
%also the transient for the hamming decreases 
[h2,f2]=freqz(hn2,1,Fc,Fs);
subplot(2,1,1)
plot(f2,(abs(h2)))
ylabel("Magnitude")
xlabel("Frequency(Hz)")
title("Magnitude response")
subplot(2,1,2)
stem(n,hd1)
title("Hamming Coefficients")
xlabel('n')
ylabel("Coefficents")

hd3 = zeros(1,N);
n = (-N+1)/2 : (N-1)/2;
for i = 1:length(n)
    if (n(i) == 0)
        hd3(i) = Wc/pi;
    else 
        hd3(i) = sin(Wc*n(i))/(n(i)*pi);
    end
end

W3 = 0.5 + (0.5)*cos((2*pi*n)/(N-1));
hn3 = hd3.*W3;
figure

%Hanning Window - We can say it is rounded version of the hamming as it is
%similar to hamming but does not provides values as minute as hamming
[h3,f3]=freqz(hn3,1,Fc,Fs);
subplot(2,1,1)
plot(f3,(abs(h3)))
ylabel("Magnitude")
xlabel("Frequency(Hz)")
title("Magnitude response")
subplot(2,1,2)
stem(n,hd3)
title("Hanning Coefficients")
xlabel('n')
ylabel("Coefficents")

figure
fs1 = 2800;
% Generate a test input signal
t = 0:1/fs1:1; % Time vector from 0 to 1 second
x1 = sin(2*pi*300*t);
x2 = sin(2*pi*1200*t);% Signal with two sinusoidal components
x= [x1 x2];
t1=0:length(x)-1;
% Apply the filter using the filter command
y = filter(hn3, 1, x);
% Plot the input signal and the filtered output signal
subplot(2,1,1);
plot(t1,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Signal');
subplot(2,1,2);
plot(t1,y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Output');
