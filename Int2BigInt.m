function [ n ] = Int2BigInt( i, b )
% i: integer (up to intmax in matlab) to convert to bigint
% b: desired base for bignum
n = [];

negative = false;
if i<0
    negative = true;
    i = -i;
end

while i ~= 0
    n = [n mod(i, b)];
    i = floor(i/b);
end

if negative
    n = -n;
end

end

