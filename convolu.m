function[n, convol] = convolu(n1, n2, n3, n4, x, h)
convol = [];
n = [n1+n3 : n2+n4];
y = h.*x;
for count = ((min(size(x))+min(size(h))):1:(max(size(x))+max(size(y))))
    sum = 0;
    for i = [1:1:3]
        for j = [1:1:3]
            if (i+j == count)

                sum = sum+y(i,j);
            end
        end

    end
    convol = [convol sum];
end
end