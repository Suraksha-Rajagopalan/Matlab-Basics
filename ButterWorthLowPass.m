close all;
clear all;
clc;

fs = 1000;
fp = 5000;
As = 0.8;
Ap = 0.2;
ws  = 2*pi*fs;
wp = 2*pi*fp;
N = ceil(log10((((1/As^2) - 1)/((1/Ap^2) - 1))^0.5)/log10(ws/wp));
wc = 0.5*(wp/(((1/Ap^2) - 1)^(0.5*(1/N))) + ws/(((1/As^2) - 1)^(0.5*(1/N))));

[b, a] = butter(N, wc, 's');

sys = tf(b,a);

[h w] = freqs(b,a);
subplot(3, 1, 1);
plot(w/(2*pi), abs(h));
title('Magnitude Response')
xlabel('Frequncy (Hz)');
ylabel('Magnitude');

subplot(3, 1, 2);
plot(w/(2*pi), angle(h));
title('Phase Response')
xlabel('Frequncy (Hz)');
ylabel('Phase');

result = 0;
count = 0;
for i = 1:200
    if abs(h(i)) > 0.68 && abs(h(i)) < 0.73
        result = result + w(i);
        count = count+1;
    end
end
disp(sys);
fprintf('The frequency for magnitude 0.707 is %d\n', result/count);

subplot(3, 1, 3);
pzmap(sys);
title('Pole Zero')
