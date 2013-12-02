function [ e ] = RSAEncrypt( m, pub_key)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N = pub_key(1);
N = cell2mat(N);

c = pub_key(2);
c = cell2mat(c);


%e = m^c mod N
e = BigExp(m, c, N, 95); % note 95 hardcoded

end

