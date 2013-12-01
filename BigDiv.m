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
        
    if BigComp(n,d,b) ~= 'e'
        % quickly and sloppily allocate q
        q = zeros(1, length(n)); % the leading zeros will be trimmed later
        while BigComp(n, d, b) == 'm'

            ln = length(n);
            ld = length(d);
            guess = floor(n(ln)/d(ld));

            digits = 1;
            
            % guessing is a pain in the ass
            while guess==0
                [guess, r] = BigDiv(n(end-digits+1:end), d, b);
                ln = ln - 1;
                digits = digits + 1;
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

        r = n; % just for readability's sake
        q = carry(q, b);
    else
        q = 1;
        r = 0;
    end
end
