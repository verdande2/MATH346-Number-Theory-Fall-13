function [n] = carry(n, b)

l = length(n);
k = 1;
flag = true;
while flag
    c = floor(n(k) / b);
    if c>0
        if k==l
            n = [n 0];
            l = l+1;
        end
        n(k+1) = n(k+1) + c;
        n(k) = mod(n(k), b);
    end
    
    if(k==l && c==0)
        flag = false;
    end
    k = k+1; % manual increment
end
    
% make sure the data is proper form (no negative coefficients)

% remove any leading zeros



% for k = 1:l-1
%     % take the carry over
%     n(k+1) = n(k+1) + floor(n(k) / b);
%     
%     % mod the current entry
%     n(k) = mod(n(k), b);
% end

% % for last entry
% last = length(n);
% if(n(last) > b)
%     % take the carry over
%     n(last+1) = floor(n(last) / b);
%     
%     % mod the current entry
%     n(last) = mod(n(last), b);
% end



end