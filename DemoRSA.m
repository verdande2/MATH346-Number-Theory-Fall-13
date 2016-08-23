start = tic;

[pub, priv] = GenerateKeyPair(16);

fprintf('Keys generated:\n');
N = cell2mat(pub(1))
c = cell2mat(pub(2))
d = cell2mat(priv(2))

original = 'This is a really really really really long Test!!!'


e = RSAEncrypt(String2BigInt(original), pub)
m = RSADecrypt(e, priv)

result = BigInt2String(m)

fprintf('Done in %.3fs.\n', toc(start));