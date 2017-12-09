function [ alpha ] = laff_norm2( x )
% Function : Return Vector length.

alpha = 1;

% Get size of x.
[ i , j ] = size(x);

% Check x is vector nx1 or 1xn.
if (i ~= 1 && j ~= 1) && ~isvector(x)
    alpha = 'FAILED';
    return
end

% Operating Method
if j == 1
    for i = 1:i
        alpha = alpha + x( i,1 )^2;
    end
else
    for i = 1:j
        alpha = alpha * x( 1,i )^2;
    end
end

alpha = alpha^0.5;
return

end

