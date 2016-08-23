function [ pub_key, priv_key ] = GenerateKeyPair( n )
% n: num of digits for p, q
% b: base
b = 95;

p = 1;
q = 1;

rng 'shuffle' twister;

while length(p) ~= n
    p = BigPrime(n, b);
end

while length(q) ~= n
    q = BigPrime(n, b);
end

N = BigMult(p, q, b);

p1 = BigAdd(p, Int2BigInt(-1,b), b);
q1 = BigAdd(q, Int2BigInt(-1,b), b);

phi_N = BigMult(p1, q1, b);


c = phi_N;
l_phi_N = length(phi_N);
while BigGCD(c, phi_N, b) ~= 1
    % I want a c < phi_N that is gcd(c,phi_N)=1
    c = randi(100,1,floor(l_phi_N/2)); % so that c is ~half as many bits as phi_N
    c = carry(c, b);
end

[d, k] = BigEuclid(c, phi_N, b);

while BigComp(d, 0, b) == 'l'
    d = BigAdd(d, phi_N, b);
    k = BigAdd(k, -c, b);
end

% debugging here
%d*c + phi_N*k
BigAdd(BigMult(c,d,b), BigMult(k,phi_N,b), b)

fprintf('dumping out d and k:\n');
d
k

pub_key = {N; c};
priv_key = {N; d};


end

