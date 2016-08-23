function [ m ] = RSADecrypt( e, priv_key)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N = priv_key(1);
N = cell2mat(N);

d = priv_key(2);
d = cell2mat(d);

m = [];
es = vec2mat(e, length(N)-1);

for i = 1:size(es,1)
    m = [m BigExp(es(i,:), d, N, 95)]; % note 95 hardcoded
end

end

