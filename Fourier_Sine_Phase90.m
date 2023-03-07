n = [-10:0.01:10];
x = sin(2*pi*2.*n);
T = 0.5;
M = 100;
Am = zeros(1, (2*M)+1);
freq = -M:M;
n_new = -100:100;
y_n = zeros(1, (2*M)+1);
for i = [1:(2*M)+1]
    Am(i) = (1/T)*sum(x.*(exp(-2*pi*1i*freq(i)*n/T)));
end

for j = [1:201]
    y_n(j) = sum(Am.*exp(2*pi*1i*freq*n_new(j)/T));
end 

plot(n, x)
