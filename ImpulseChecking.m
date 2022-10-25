
c = [5]
[p,q] = ImpulseFunction(c)
figure
stem(p,q)
xlabel('smaples')
ylabel('amplitude')
title('unit impulse plot(discrete)')