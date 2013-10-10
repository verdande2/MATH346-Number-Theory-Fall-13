function [ cmp ] = BigComp( m, n, b)
% m: first number
% n: second number
% b: base
% returns -1 if m < n, 0 if m==n and 1 if m>n

% ensure numbers are properly formatted with carry function
m = carry(m, b);
n = carry(n, b);

% simple checks
lm = length(m);
ln = length(n);
if lm < ln
    cmp = -1;
elseif lm > ln
    cmp = 1;
else
    % same length, check digits in reverse order
    k = lm; % doesn't matter if ln or lm, as they're equal...
    
    % loop over digits of m,n and find the first where they differ
    while(k > 0 && m(k) == n(k))
        k = k - 1;
    end
    
    if k==0
        cmp = 0;
    elseif m(k) < n(k)
        cmp = -1;
    elseif m(k) > n(k)
        cmp = 1;
    end

end

