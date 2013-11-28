function [ a ] = BigMult( m, n, b )
% m: first number
% n: second number
% b: base

lm = length(m);
ln = length(n);

a = zeros(1, 2*max(lm, ln)-1);

% implement me!


a = carry(a, b);
end

