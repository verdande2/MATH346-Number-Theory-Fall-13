start = tic;


original = 'Super Duper secret message: "Mary''s father has 5 daughters – Nana, Nene, Nini, Nono. What is the fifth daughters name?"';

N = [82 34 87 10 68 51 36 24 83 20 2 32 17 67 47 33];
c = [19 80 34 22 4];
d = [59 86 76 1 55 27 67 36 14 28 41 33 44 76 32 10];

pub = {N; c};
priv = {N; d};

e = RSAEncrypt(String2BigInt(original), pub)
m = RSADecrypt(e, priv)

result = BigInt2String(m)

fprintf('Done in %.3fs.\n', toc(start));