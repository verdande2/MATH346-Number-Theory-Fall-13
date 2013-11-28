function [ a ] = BigExp( m, c, N, b )
% calculates a = m^c mod N in base b where m and c are big integers stored in
% ascending powers of b

a = 1; 
while BigComp(c, 0, b) ~= 'e' % while c != 0
    Q = BigDiv(c, 2, b); % c/2 returns floor and remainder
    c = Q(1); % c = floor
    if BigComp(Q(2), 1, b) == 'e' % if r == 1
        a = BigMult(m, a, b); % ans *= m
        a = BigMod(a, N, b); % ans = mod(ans, N)
    end
    if BigComp(c, 0, b) ~= 'e' % if c~=0
        m = BigMult(m, m, b); % m *= m
        m = BidMod(m, N, b); % m = mod(m, N)
    end
    

end

