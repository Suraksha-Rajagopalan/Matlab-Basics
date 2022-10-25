

n = [-10:0.1:10]
f = 3.+[zeros(1,100) 1 zeros(1,100)]

figure
plot(n,f)
xlabel('smaples')
ylabel('amplitude')
title('unit impulse plot(continuous)')