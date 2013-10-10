function [ a ] = BigAdd( m, n, b )
% m: first number
% n: second number
% b: base

lm = length(m);
ln = length(n);

a = zeros(1, max(lm, ln));
for i=1:length(a)
    if(i<=lm)
        a(i) = a(i) + m(i);
    end
    if(i<=ln)
        a(i) = a(i) + n(i);
    end
end

a = carry(a, 10);
end

