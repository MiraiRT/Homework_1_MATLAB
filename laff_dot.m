function [ alpha ] = laff_dot( x,y )
% Function : Return the dot product from 2 Vectors.

alpha = 0;

% Get size of x and y.
[ i_x , j_x ] = size ( x );
[ i_y , j_y ] = size ( y );

% Check x,y are vector nx1 or 1xn.
if (i_x ~= 1 && j_x ~= 1) | (i_y ~=1 && j_y ~=1)
    alpha = 'FAILED';
    return
end

% Check Size ( nx1 or 1xn ) of x = y.
if (i_x * j_x ~= i_y * j_y)
    alpha = 'FAILED';
    return
end

% Operating Method
if (j_x == 1)
    if (j_y == 1)
        for i = 1:i_x
            alpha = alpha + y (i,1) * x (i,1);
        end
    else 
        for i = 1:i_x
            alpha = alpha + y (1,i) * x (i,1);
        end
    end
else
    if (j_y == 1)
        for i = 1:j_x
            alpha = alpha + y (i,1) * x(1,i);
        end
    else
        for i = 1:j_x
            alpha = alpha + y(1,i) * x (1,i);
        end
    end
end


return

end

