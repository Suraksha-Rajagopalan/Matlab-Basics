close all;
clear all;
clc;

% Prompt the user for input sequences
xn = input('Enter the values for x(n) = ');
hn = input('Enter the values for h(n) = ');

% Zero-pad the input sequence xn to ensure proper output size
n1 = length(xn);
n2 = length(hn);
xnzp = [xn, zeros(1, n2-1)];

% Compute the output sequence yn using the overlap-add method
N1 = ceil(n1 / n2);
N = n1 + n2 - 1;
yn = zeros(1, N);
for n = 1:N1
    xan = xnzp((n-1)*n2+1:n*n2);
    yan1 = conv(xan, hn);
    yn((n-1)*n2+1:n*n2+length(hn)-1) = yn((n-1)*n2+1:n*n2+length(hn)-1) + yan1;
end

% Display the output sequence yn
fprintf('The output sequence y(n) =\n');
fprintf('%d ', yn);
fprintf('\n');
