function [ a ] = BigMult( m, n, b )
% m: first number
% n: second number
% b: base

lm = length(m);
ln = length(n);

a = zeros(1, 2*max(lm, ln)-1); % ln-digit num * lm-digit num = no more than a (ln+lm-1)-digit number


for i = 1 : ln
    for j = 1 : lm
        a(i-1+j) = a(i-1+j) + n(i)*m(j);
    end
    
end

a = carry(a, b);
end

