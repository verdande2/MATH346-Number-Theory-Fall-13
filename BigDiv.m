function [ q ] = BigDiv( n, d, b )
% n: number
% d: divisor
% b: base

while BigComp(n, d, b) == 'm' % n > d
    ln = length(n);
    ld = length(d);
    
    % initial guess is floor of the first two digits of each n, d
    guess = floor( n(ln) / d(ld) );
    
    % if the guess is zero, take another digit
    while guess == 0
        guess = floor( (n(ln)*b + n(ln-1)) / d(ld)); % don't like the one...
        ln = ln - 1; % sdalkfj
    end
    
    % calculate the subtract quantity
    s = [zeros(1,ln-ld) carry(guess * d, b)];
    while BigComp(n, s, b) == 'l' % n < s
        guess = guess - 1; % refine guess slightly
        
        s = [zeros(1,ln-ld) carry(guess * d, b)]; % recalculate s
    end
    
    % if we get a 0 guess here, choke
    if guess == 0
        error('zero guess')
    end
    
    % subtract off the subtraction amount, leaving the leftover in n
    n = BigAdd(n, -s, b);
    
    % 
    q = guess; % broken line, determine solution later
end

end


% better pseudo code
% q = 0
% while n > d
%     k = 0
%     while n[end-k:end] < d % last k elements of n (first k digits)
%         k++
%     end
%     guess_numer = n[end-k:end]
%     guess_denom = d
%     
%     invalid = true
%     while invalid = true
%         invalid = true
%         check if guess*d is > guess_numer
%             if so, lower guess
%         check if guess = 0
%             if so, 
%                 k++
%                 recalc guess_numer
%                 
%         if guess ~= 0 && guess*d < guess_numer
%             invalid = false
%         end
%     
%     
