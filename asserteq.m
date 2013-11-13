function [  ] = asserteq( a, b, msg )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

assert(prod(a==b)==1, msg)

end

