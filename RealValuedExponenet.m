

subplot(2,1,1)
n = [-10:10]
f = 2.^(-n)
stem(n, f)
xlabel('samples')
ylabel('amplitude')
title('decay')

subplot(2,1,2)
n = [-10:10]
f = 2.^(n)
stem(n, f)
xlabel('samples')
ylabel('amplitude')
title('growth')