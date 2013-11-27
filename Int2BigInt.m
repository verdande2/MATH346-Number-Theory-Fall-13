function [ n ] = Int2BigInt( i, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = [];

while i ~= 0
    n = [n mod(i, b)];
    i = floor(i/b);
end


end

