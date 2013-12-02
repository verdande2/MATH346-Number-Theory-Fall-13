function [ i ] = BigInt2Int( n, b )
% i: bigint (up to intmax in matlab) to convert to int
% b: base for bignum
    i = 0;
    d = 1;
    
    for j = 1:length(n)
        i = i + n(j)*d;
        d = d * b;
    end

end

