function [p] = sigpower(n)
    b = n.*n;
    p = sum(b)/length(b);
end