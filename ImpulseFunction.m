
function [n,f] = ImpulseFunction(x)
    n = [-x:x];
    f = [zeros(1,x) 1 zeros(1,x)];
end 