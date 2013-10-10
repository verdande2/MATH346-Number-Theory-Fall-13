function [n] = carry(n, b)
% n: 

l = length(n);
k = 1; % index pointer

flag = true; % termination condition
while flag
    % division algorithm coefficients
    q = mod(n(k), b);
    r = floor(n(k) / b);
    
    if r>0
        % if there is a positive carry
        
        % do we need to resize n to accomodate the carry?
        if k==l
            n = [n 0]; % append a zero to the end of the number
            l = l+1; % update the length
        end
        
        % add the carry to the next biggest coefficient
        n(k+1) = n(k+1) + r;
        
        % update the current coefficient to the mod (after the carry has
        % been removed)
        n(k) = q;
    elseif r<0
        % if there is a negative carry (ie. backwards)
        error('Carry:NegativeCoefficient', 'Negative Coefficient Detected')
    end
    
    % if we're on the last element of n and there is no carry, terminate
    % loop
    if(k==l && r==0)
        flag = false;
    end
    
    k = k+1; % manual increment
end
    
% make sure the data is proper form (no negative coefficients) NO.

% remove any leading zeros (must be last step, due to perhaps creating more
% in the process of carrying negatives over)
while(n(length(n))==0)
    n = n(1:length(n)-1);
end


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