subplot(3, 1, 1)
t = [0:0.1:2*pi]
a = sin(t);
plot(t,a)
title('Sine wave(f=1Hz, a=1)');

subplot(3, 1, 2)
t = [0:0.1:2*pi]
a = sin(t*2);
plot(t,a)
title('Sine wave(f=2Hz, a=1)');

subplot(3, 1, 3)
t = [0:0.1:2*pi]
a = 3*sin(t);
plot(t,a)
title('Sine wave(f=1Hz, a=3)');
