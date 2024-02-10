% ingridents:
A = input ('Enter co-effcient matrix: ')
b = input ('Enter source vector: ')
N = length(b); % number of unknowns
X = zeros (N, 1);
Aug = [A b]
for j=1:N %j is for matrix column
    Aug(j, :) = Aug(j,:)/A(j,j)
    for i=1:N %i is for matrix row
        if i~=j
            m = A(i,j)
            Aug(i,:) = Aug(i,:)-m*Aug(j,i)
        end
    end
end

