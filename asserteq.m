function [ ] = asserteq(a, b, msg)
    pass = (a == b);
    if isscalar(pass)
        % do nothing
    elseif isvector(pass)
        pass = prod(pass);
    else
        error('a and b must be scalars or vectors only')
    end
    assert(pass, msg)
end