

function [] = UnitStepFunction(x) 
    n = [-10:10]
    f = [zeros(1,10) ones(1,11)]
    stem(n,f)
    xlabel('samples')
    ylabel('amplitude')
    title('unit delayed signal(discrete)')
end