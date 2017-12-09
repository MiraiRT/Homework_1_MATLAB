function [ x_out ] = laff_autotrmvp( x )
% Function : auto multiply vector x with upper triangular matrix.
%                      1 1 1
% y = Ux    >>   y = ( 0 1 1 ) ( x ) if size of x is 3x1
%                      0 0 1

% Get size of x.
[ i , j ] = size(x);

% Check x is vector nx1 or 1xn.
if (i ~= 1 && j ~= 1) && ~isvector(x)
    x_out = 'FAILED';
    return
end

x_out = x;


if j == 1
    max = i;
    for i = 1:i
        k = i;
        x_out(i,1) = 0;
        for k = k:max
            x_out(i,1) = x_out(i,1) + x(k,1);
        end
    end
end
if i == 1
    max = j;
    for j = 1:j
        k = j;
        x_out(1,j) = 0;
        for k = k:max
            x_out(1,j) = x_out(1,j) + x(1,k);
        end
    end
end

return
end