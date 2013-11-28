function [ p ] = BigPrime( n, b )
% n:    number of digits
% b:    base
    p_check_max = 50;

    prime = false;

    
    p_list = primes(p_check_max);
    lp = length(p_list);

    fprintf('Checking the first %d primes <= %d...\n' ,length(p_list), p_check_max)

    while prime == false
        prob_not_prime = 1;
        p = floor(b*rand(1, n)); % shouldn't need to carry this, as all digits generated are between 0-(b-1)

        % if the most significant digit is a zero, it will be truncated, so
        % ensure it is nonzero
        while p(length(p)) == 0
            p(length(p)) = floor(b*rand(1,1));
        end
        
        % debug fix
%         x = 0;
%         for i = 1:length(p)
%             x = b*x + p(i);
%         end
%         p = x; 
            
        
        % add p adjustments here if wanted 
        a = 1;
        for i = 1 : 6 % first 6 primes 2, 3, 5, 7, 11, 13
            if BigMod(p, p_list(i), b) == 0
                p = BigAdd(p, a, b);
                p = carry(p, b);
            end
            a = BigMult(a,p_list(i),10);
        end
        
        prime = true; % assume p is prime initially
        while prime == true % working under the assumption p is prime until failing Fermat's test
            % perform the Fermat primality test
            
            % pick a random integer in [1, n-1]
            a = ceil(rand(1,1) * BigAdd(p, -1, b));
            a = carry(a, b); % fix a if needed
            m = BigExp(a, BigAdd(p, -1, b), p, b);
            % m = a^(p-1) mod p
            if m == 1
                % passes Fermat test!
                prob_not_prime = prob_not_prime/2; % further reduces the chance of p being composite
            else
                prime = false;
                prob_not_prime = 1;
            end

            prob_prime = 1 - prob_not_prime;

            fprintf('Prime Candidate: ')
            BigPrint(p);
            fprintf('(chance of primality: %0.8f\n', prob_prime)

        end
        % if execution reaches this line and prime is still true, we're
        % prob_prime probability that p is prime! good to go!
        
        if prime && length(p) ~= n
            fprintf('NOTE: Requested prime of length %d, received prime of length %d', n, length(p))
        end
        
    end

end
