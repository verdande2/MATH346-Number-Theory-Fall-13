function [ k, l ] = BigEuclid( n, m, b )
% solves for k,l in k*n + l*m = gcd(n,m)

    if BigComp(n,m,b) == 'l'
        t = m;
        m = n;
        n = t;
    end

    kv = [0 1 0];
    lv = [1 0 0];

    r = 1; % remainder

    while BigComp(r, 0, 10) == 'm'
        [q, r] = BigDiv(n,m,b);

        % compute k,l
        kv(3) = kv(1) - q*kv(2);
        lv(3) = lv(1) - q*lv(2);

        % shift k,l left once
        kv(1) = kv(2); lv(1) = lv(2);
        kv(2) = kv(3); lv(2) = lv(3);

        % use Euclid's theorem here to calculate next k,l
        n = m;
        m = r;
    end

    k = kv(1);
    l = lv(1);

end

