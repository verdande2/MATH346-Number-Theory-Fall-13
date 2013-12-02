function [ e ] = RSAEncrypt( str, pub_key)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N = pub_key(1);
N = cell2mat(N);

c = pub_key(2);
c = cell2mat(c);

m = String2BigInt(str);


e = [];
%e = m^c mod N
ms = vec2mat(m, length(N));
for i = 1:size(ms,1)
    e = [e BigExp(ms(i,:), c, N, 95)]; % note 95 hardcoded
end

end

