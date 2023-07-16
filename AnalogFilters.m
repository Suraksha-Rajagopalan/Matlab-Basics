close all;

b = 1.5791e+08;
a = [1 1.7769e+04 1.5791e+08];
sys = tf(b, a);    %tf is transfer function
[h w] = freqs(b, a);
figure
freqs(b,a)
title('Low pass filter second order');

result = 0;
count = 0;

for i = 1:200
    if abs(h(i)) > 0.68 && abs(h(i)) < 0.73
        result = result + w(i);
        count = count+1;
    end
end

fprintf('The frequency is: %d', result/count)
figure
pzmap(sys);

