function [ g ] = BigGCD( m, n, b )
% solves for gcd(n,m)
%     if isequal(n,[1]) || isequal(m,[1])
%         g = 1;
%     else
%         g = BigGCD(BigMod(n,m,b), n, b);
%     end

%     % djikstra's algorith hits recursion limit very very quickly
%     if BigComp(m, n, b) == 'e'
%         g = m;
%     elseif BigComp(m, n, b) == 'g'
%         g = BigGCD(m-n, n, b);
%     else
%         g = BigGCD(m, n-m, b);
%     end

%     % Euclid's algorithm hits recursion limit quickly
%     r = BigMod(m, n, b);
%     if r == [0]
%         g = n;
%     else
%         g = BigGCD(n, r, b);
%     end

    % skip recursion flat out, instead of passing a mod b, b, just loop
    % over and over and over
    while BigComp(n, 0, b) == 'm'
        t = BigMod(m, n, b);
        m = n;
        n = t;
    end
    g = m; % do I need to check if g > 0 ? shouldn't.
end

