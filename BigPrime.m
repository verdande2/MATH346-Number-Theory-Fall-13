function [ p ] = BigPrime( n, b )
% n:    number of digits
% b:    base
    p_check_max = 50;

    prob_not_prime = 1;
    prime = false;

    
    p_list = primes(p_check_max);
    lp = length(p_list);

    fprintf('Checking the first %d primes <= %d...\n' ,length(p_list), p_check_max)

    while prime == false
        p = floor(b*rand(1, n)); % shouldn't need to carry this, as all digits generated are between 0-(b-1)

        % debug fix
        x = 0;
        for i = 1:length(p)
            x = b*x + p(i);
        end
        p = x; 
            
        
        % add p adjustments here if wanted (I don't think I care to do
        % this, as it just does a mod and add, whereas mine just fails
        % through and generates another random number to try
        
        i = 1; % reset index in p_list
        
        prime = true; % assume p is prime initially
        while prime == true % working under the assumption p is prime until failing Fermat's test
            check_prime = p_list(i);
            test_prime = p;
            
            if i==lp % we've hit the max amount of primes we're testing against in Fermat's
                break
            elseif p<p_list(i)
                break % our check prime has exceeded our test prime
            end
            
            m = mod(p^(p_list(i)-1), p_list(i));
            if m == 1
            %if BigMod(BigExp(p, p_list(i)-1, p_list(i), b), p_list(i), b) == 1
                % passes Fermat test!
                prob_not_prime = prob_not_prime/2; % further reduces the chance of p being composite
            else
                prime = false;
                prob_not_prime = 1;
            end

            prob_prime = 1 - prob_not_prime;

            fprintf('Prime Candidate: %d (chance of primality: %0.8f\n', p, prob_prime)

            i = i+1;

        end
        % if execution reaches this line and prime is still true, we're
        % prob_prime probability that p is prime! good to go!
    end

end
