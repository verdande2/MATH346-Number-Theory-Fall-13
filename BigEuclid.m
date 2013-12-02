function [ k, l ] = BigEuclid( n, m, b )
% solves for k,l in k*n + l*m = gcd(n,m)

    if BigComp(n,m,b) == 'l'
        t = m;
        m = n;
        n = t;
    end

    k1 = 0;
    k2 = [1];
    k3 = 0;
    l1 = [1];
    l2 = 0;
    l3 = 0;

    r = 1; % remainder

    while BigComp(r, 0, 10) == 'm'
        [q, r] = BigDiv(n,m,b);

        % compute k,l
        k3 = BigAdd(k1, -BigMult(q, k2, b), b);
        l3 = BigAdd(l1, -BigMult(q, l2, b), b);

        % shift k,l left once
        k1 = k2; l1 = l2;
        k2 = k3; l2 = l3;

        % use Euclid's theorem here to calculate next k,l
        n = m;
        m = r;
    end

    k = k1;
    l = l1;

end

