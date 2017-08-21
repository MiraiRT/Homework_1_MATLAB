function [ x_out ] = laff_scal( alpha , x )
% Function : Multiply component in x by Alpha(scalar).

% Get size of x.
[ i , j ] = size(x);

% Check x is vector nx1 or 1xn.
if (i ~= 1 && j ~= 1)
    x_out = 'FAILED';
    return
end

% Check alpha is scalar.
if ~isscalar( alpha )
    x_out = 'FAILED';
    return
end

if(j == 1)
    % Size x: (n x 1).
    for i = 1:i
        x (i,1) = alpha * x(i,1);
    end
else
    % Size x: (1 x n).
    for i = 1:j
        x (1,i) = alpha * x(1,i);
    end
end

x_out = x;
return

end

