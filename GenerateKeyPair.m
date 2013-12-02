function [ pub_key, priv_key ] = GenerateKeyPair( n)
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
while BigGCD(c, phi_N, b) ~= 1
    c = randi([2,intmax],1,1);
    c = BigMod(Int2BigInt(c, b), N, b); % ensure c < N
end

[d, k] = BigEuclid(c, phi_N, b);

pub_key = {N; c};
priv_key = {N; d};


end

