function [ q, n ] = BigDiv2( n, d, b )
% n: number
% d: divisor
% b: base


while BigComp(n, d, b) == 'm'
    
    ln = length(n);
    ld = length(d);
    guess = floor(n(ln)/d(ld));
    
    if guess==0
        guess = floor((n(ln)*b +n(ln-1))/d(ld));
        ln = ln - 1;
    end
    
    
    
    sub = [zeros(1, ln-ld) carry(guess*d, b)];
    
    while BigComp(n, sub, b) == 'l'
        guess = guess - 1;
        sub = [zeros(1, ln-ld) carry(guess*d, b)];
    end
    
    n = BigAdd(n, -sub, b);
    n = carry(n, b);
    
    q(ln-ld+1) = guess;
end

end
