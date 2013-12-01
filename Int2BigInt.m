function [ n ] = Int2BigInt( i, b )
% i: integer (up to intmax in matlab) to convert to bigint
% b: desired base for bignum
n = [];

while i ~= 0
    n = [n mod(i, b)];
    i = floor(i/b);
end


end

