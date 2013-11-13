function [ out ] = randallcarry( n,b )


l = length(n);

for k = 1:l-1
    n(k+1) = n(k+1) + floor(n(k)/b);
    n(k) = mod(n(k),b);
end

if n(l) < 0
    n = -n;
    n = carry(n,b);
    l = length(n);
    n = -n;
end

while n(l) >= b
    n(l+1) = floor(n(l)/b);
    n(l) = mod(n(l),b);
    l = l + 1;
end

while l > 1 && n(l) == 0
    n = n(1:l-1);
    l = l - 1;
end

out = n;
end

