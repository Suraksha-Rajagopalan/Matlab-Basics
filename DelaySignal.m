

n = [-10:10]
f = [zeros(1,10) 1 zeros(1,10)]
F = f'
del = delayseq(F, 5)
figure
stem(n, del)
xlabel('smaples')
ylabel('amplitude')
title('impulse plot(discrete)')