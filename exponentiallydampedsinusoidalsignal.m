

t = [0:0.01:10]
e = exp(-t)
s = (sin(t*2*pi))
n = e.*s
plot(t, n)
title('exponentially damped sinusoidal signal')