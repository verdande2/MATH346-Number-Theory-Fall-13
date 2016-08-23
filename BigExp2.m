function [ a ] = BigExp2( m, c, b )
% calculates a = m^c in base b where m and c are big integers stored in
% ascending powers of b

    a = 1;
    while BigComp(c, 0, b) ~= 'e' % while c != 0
        [q, r] = BigDiv(c, 2, b); % c/2 returns floor and remainder
        c = q;
        if BigComp(r, 1, b) == 'e' % if r == 1
            a = BigMult(m, a, b); % ans *= m
        end
        if BigComp(c, 0, b) ~= 'e' % if c~=0
            m = BigMult(m, m, b); % m = m^2 "power of 2" part here
        end


    end

    %a = BigMult(m, a, b); % ans *= m
    %a = BigMod(a, N, b); % ans = mod(ans, N)
end
