X=[0 1+1i 1 1-1i];
N=4;
n=0:3;
X1=X(mod(n-1,N)+1);
X2=.5*(X(mod(n-1,N)+1)+X(mod(n+1,N)+1));

for k=n
    X3(k+1)=X(k+1).*exp(-1i*pi*k/N);
End

figure(2)
stem(n,ifft(X));
figure(1)
subplot(4,1,1)
stem(n,abs(X));
title(" DFT of original signal");
xlabel("frequency");
ylabel("amplitude");

subplot(4,1,2)
stem(n,abs(X1));
title(" DFT of frequency shifted original signal by 1");
xlabel("frequency");
ylabel("amplitude");

subplot(4,1,3)
stem(n,abs(X2));
title(" DFT of original signal multiplied with cos(n*pi/2)");
xlabel("frequency");
ylabel("amplitude");

subplot(4,1,4)
stem(n,abs(X3));
title(" DFT of time shifted original signal by 1");
xlabel("frequency");
ylabel("amplitude");

