function [ p ] = BigPrime( n, b, debug)
% n:    number of digits
% b:    base
% debug: true for debug output mode
    if nargin < 2
        error('BigPrime needs at least 2 arguments!\n');
    elseif nargin == 2
        debug = true; % set debug default here
    end
    
    % configurable settings here
    num_a = 10; % ie. chance of being composite = 1/2^50 ~= 8 *10^-16
    p_check_max = 15;

    rng 'shuffle' twister;
    
    debug && fprintf('Seeking a big prime %d-digits long in base %d with certainty %0.8f (%d primality test trials)...\n',n,b,1-(1/2^num_a), num_a);
    
    % setup vars for later
    prime = false; % assume p is not prime to begin with
    
    a_list = []; % list of 'a's we have tried to use in Fermat test

    p_list = primes(p_check_max); % list of primes <= p_check_max
    lp = length(p_list);

    debug && fprintf('Checking the first %d primes <= %d...\n' ,lp, p_check_max);

    while prime == false
        prob_not_prime = 1;
        tested_a = 0;
        
        p = floor(b*rand(1, n)); % shouldn't need to carry this, as all digits generated are between 0-(b-1)

        debug && fprintf('Random p:\n');
        debug && BigPrint(p);
        
        % if the most significant digit is a zero, it will be truncated, so
        % ensure it is nonzero
        while p(length(p)) == 0
            p(length(p)) = floor(b*rand(1,1));
        end
        
        debug && fprintf('After fixing leading zeros of p\n');
        debug && BigPrint(p);
        
        % debug fix
%         x = 0;
%         for i = 1:length(p)
%             x = b*x + p(i);
%         end
%         p = x; 
            
        
        % add p adjustments here if wanted 
        a = 1;
        for i = 1 : lp 
            fprintf('Now checking if p is divisible by %d\n', p_list(i))
            if BigMod(p, Int2BigInt(p_list(i), b), b) == 0
                debug && fprintf('p is divisible by %d!\n', p_list(i));
                debug && fprintf('Adding a to p to correct! ');
                debug && BigPrint(a);
                
                p = BigAdd(p, a, b);
                p = carry(p, b);
                debug && fprintf('New p: ');
                debug && BigPrint(p);
            end
            a = BigMult(a,p_list(i),10);
        end
        
        debug && fprintf('Now beginning primality tests...\n');
        
        prime = true; % assume p is prime initially
        while prime == true && tested_a < num_a % working under the assumption p is prime until failing Fermat's test
            % perform the Fermat primality test
            
            % pick a random integer in (1, n-1]
            p1 = BigAdd(p, -1, b);
            a = ceil(1 + (p1)*rand(1,1));
            a = carry(a, b); % fix a if needed
            
            
%             if length(a_list) == BigInt2Int(p1, b) % if number of numbers we've tried is = p, then we can't try any more without duplicates
%                 %debug && fprintf();
%                 error('Ran out of candidate ''a''s!');
%             end
            
%             while ismember(a, a_list, 'rows') 
%                 debug && BigPrint(a);
%                 debug && fprintf(' appears to have already been tested!');
%                 a = ceil(1 + (p1)*rand(1,1));
%                 a = carry(a, b); % fix a if needed
%             end
            
%            a_list = [a_list; a]; % add a to the list of numbers we're tried in the primality test
                
            
            debug && fprintf('Fermat test with ');
            debug && BigPrint(a);
            
            m = BigExp(a, p1, p, b);
            % m = a^(p-1) mod p
            
            debug && fprintf('Result of Fermat test (a^(p-1) mod p) = %d\n', m);
            
            if m == 1
                % passes Fermat test!
                prob_not_prime = prob_not_prime/2; % further reduces the chance of p being composite
            else
                prime = false;
                prob_not_prime = 1;
            end
            tested_a = tested_a + 1;

            prob_prime = 1 - prob_not_prime;

            debug && fprintf('Prime Candidate ');
            debug && BigPrint(p);
            debug && fprintf('(current chance of primality: %0.8f)\n', prob_prime);

        end
        % if execution reaches this line and prime is still true, we're
        % prob_prime probability that p is prime! good to go!
        
        if prime
            
            debug && fprintf('Passed all primality tests!\n');
        
            if length(p) ~= n
                debug && fprintf('NOTE: Requested prime of length %d, received prime of length %d.\n', n, length(p));
            end
        else
            debug && fprintf('p failed one or more Fermat tests. Rerolling a new p...\n');
        end
        
    end

end
