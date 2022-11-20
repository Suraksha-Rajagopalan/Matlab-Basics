function [x, s] = sigfold(n, s1)
    x = fliplr(n);
    x = -1.*x;
    s = fliplr(s1);
end