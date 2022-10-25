
n1 = [0 1 2 3 4 5];
n2 = [6 7 8 9];
n3 = [10 11 12 13]
x1 = [3 3 3 3 3 3];
x2 = [2*t2 + 1];
x3 = [zeros(1,4)];
hold on;
stem(n1,x1)
stem(n2,x2)
stem(n3,x3)
hold off
xlabel('time')
ylabel('x(n)')