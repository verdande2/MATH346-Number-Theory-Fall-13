function [ ans ] = BigPrint( n )
% n: number to print

fprintf('%s = ', inputname(1))
for k=1:length(n)
    fprintf('%d ', n(k))
end
fprintf('\n')
ans = true; % return true
end

