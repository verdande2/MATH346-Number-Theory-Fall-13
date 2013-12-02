function [ q, r ] = BigDiv( n, d, b )
% n: number
% d: divisor
% b: base
%     if BigComp(d, Int2BigInt(2, b), b) == 'e'
%         % divide by 2
%         
%         %%r = sign(n) * ~iseven(n);
%         %q = shiftdec ( 5*n, -1);
%         
%     elseif BigComp(d, Int2BigInt(10, b), b) == 'e'
%         % divide by 10
%         r = sign(n) * trailingdigit(n, 1);
%         q = shiftdec(n, -1);
%         
%     elseif BigComp(d, Int2BigInt(5, b), b) == 'e'
%         % divide by 5
%         r = sign(n) * mod(n(1), 5);
%         q = shiftdec(2*n, -1);
%         
%     else
        
    
        
    % quickly and sloppily allocate q
    q = zeros(1, length(n)); % the leading zeros will be trimmed later
    while BigComp(n, d, b) == 'm' || BigComp(n,d,b) == 'e'

        ln = length(n);
        ld = length(d);

        guess = floor(n(end) / d(end));

        % guessing is a pain in the ass
        if guess==0
            guess = floor( (n(end)*b + n(end-1)) / d(end) ); % takes another digit of n, should always be >0
            ln = ln - 1;
        end



        sub = [zeros(1, ln-ld) carry(guess*d, b)];

        % in the case we've guessed too high
        while BigComp(n, sub, b) == 'l'
            guess = guess - 1;

            if guess == 0
                guess = floor( (n(end)*b + n(end-1)) / d(end) ); % takes another digit of n, should always be >0
                ln = ln - 1;
            end

            sub = [zeros(1, ln-ld) carry(guess*d, b)];
        end

        n = BigAdd(n, -sub, b);
        n = carry(n, b);

        q(ln-ld+1) = q(ln-ld+1) + guess;
    end

    r = n; % just for readability's sake
    q = carry(q, b);
end
