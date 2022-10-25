
t1 = [-1:0.01:3];
x1 = t1;
t2 = [3:0.01:6];
x2 = [t2 - 1];
t3 = [6:0.01:9]
x3 = [zeros(1,301)];
hold on;
plot(t1,x1)
plot(t2,x2)
plot(t3,x3)
xlabel('time')
ylabel('x(t)')