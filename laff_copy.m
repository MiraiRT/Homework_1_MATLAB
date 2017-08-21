function [ y_out ] = laff_copy( x,y )
% Function : Copy component in x to y

[ i_x , j_x ] = size ( x );
[ i_y , j_y ] = size ( y );

% Check x,y only vector nx1 or 1xn
if (i_x ~= 1 && j_x ~= 1) || (i_y ~=1 && j_y ~=1)
    y_out = 'FAILED';
    return
end

% Check Size ( nx1 or 1xn ) of x = y
if (i_x * j_x ~= i_y * j_y)
    y_out = 'FAILED';
    return
end

% Copy Method
if (j_x == 1)
    if (j_y == 1)
        % x Size n x 1 , y Size n x 1
        for i = 1:i_x
            y (i , 1) = x (i , 1);
        end
    else
        % x Size n x 1 , y Size 1 x n
        for i = 1:i_x
            y (1 , i) = x (i , 1);
        end
    end
else
    if (j_y == 1)
        % x Size 1 x n , y Size n x 1
        for i = 1:j_x
            y (i , 1) = x (1 , i);
        end
    else
        % x Size 1 x n , y Size 1 x n
        for i = 1:j_x
            y (1 , i) = x (1 , i);
        end
    end
end

y_out = y;
return

end
