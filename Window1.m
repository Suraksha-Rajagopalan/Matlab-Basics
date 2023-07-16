close all
clear al
clc
N = 9;
Wc = 1;
hd = zeros(1,N);
n = (-N+1)/2 : (N-1)/2;
for i = 1:length(n)
    if (n(i) == 0)
        hd(i) = Wc/pi;
    else
        hd(i) = sin(Wc*n(i))/(n(i)*pi);
    end
end

%Rectangular Windowing
W1 = ones(1,N);
hn1 = hd.*W1;
Wn = 0:(0.01)*pi:pi;  % this is given because the freq response is given in the form of radians/sec, but for plotting with hz no need to define Wn.
[hn1,f]=freqz(hn1,1,Wn);
plot(f,(abs(hn1)))
xlabel("Frequency(rad/sec)")
ylabel("Magnitude")
title("Magnitude response (Rectangular Window)")

figure
%Hamming Windowing
W3 = 0.54 + (0.46)*cos((2*pi*n)/(N-1));
hn2 = hd.*W3;
[h3,f3]=freqz(hn2,1.2,Wn);
subplot(2,1,1)
plot(f3,(abs(h3)))
ylabel("Magnitude")
xlabel("Frequency(rad/sec)")
title("Magnitude response (Hamming Window)")
subplot(2,1,2)
stem(n,hd)
title("Hamming Coefficients")
xlabel('n')
ylabel("Coefficents")

figure
%Hanning Windowing
W3 = 0.5 + (0.5)*cos((2*pi*n)/(N-1));
hn3 = hd.*W3;
[h3,f3]=freqz(hn2,1.2,Wn);
subplot(2,1,1)
plot(f3,(abs(h3)))
ylabel("Magnitude")
xlabel("Frequency(rad/sec)")
title("Magnitude response (Hanning Window)")
subplot(2,1,2)
stem(n,hd)
title("Hanning Coefficients")
xlabel('n')
ylabel("Coefficents")

figure
fs1 = 2800;
% Generate a test input signal
t = 0:1/fs1:1; % Time vector from 0 to 1 second
x1 = sin(2*pi*400*t);
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
