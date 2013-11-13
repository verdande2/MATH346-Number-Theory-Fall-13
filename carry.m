function [n] = carry(n, b)
% n: 

l = length(n);
k = 1; % index pointer

flag = true; % termination condition
while flag
    DEBUG_current_value = n(k);
    
    % division algorithm coefficients
    q = floor(n(k) / b);
    r = mod(n(k), b);
    
    if q ~= 0
        % if there is a positive carry
        
        % do we need to resize n to accomodate the carry?
        if k==l
            n = [n 0]; % append a zero to the end of the number
            l = l+1; % update the length
        end
        
        % add the carry to the next biggest coefficient
        n(k+1) = n(k+1) + q;
        
        % update the current coefficient to the mod (after the carry has
        % been removed)
        n(k) = r;
    %elseif q<0
        % if there is a negative carry (ie. backwards)
        %error('Carry:NegativeCoefficient', 'Negative Coefficient Detected')
    end
    
    
%     % if we're on the last element of n and there is no carry, terminate
%     % loop
%     if(k==l && q==0)
%         flag = false;
%     end
    % if we're on the last element of n
    if(k==l)
        flag = false;
    end
    
    k = k+1; % manual increment
end

% TEST SECTION
if n(l) < 0
    n = -carry(-n, b);
    l = length(n);
end
% make sure the data is proper form (either ALL or NO negative coefficients ie. ALL => negative number, NONE => positive number)


% remove any leading zeros (must be last step, due to perhaps creating more
% in the process of carrying negatives over)
while(length(n) > 1 && n(length(n))==0)
    n = n(1:length(n)-1);
end




end