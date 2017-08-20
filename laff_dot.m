function [ alpha ] = laff_dot( x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

alpha = 0;

[ i_x , j_x ] = size ( x );
[ i_y , j_y ] = size ( y );

% Only Vector n*1 or 1*n
if (i_x ~= 1 && j_x ~= 1) | (i_y ~=1 && j_y ~=1)
    alpha = 'FAILED';
    return
end

% Check Size of x = y
if (i_x * j_x ~= i_y * j_y)
    alpha = 'FAILED';
    return
end

% Start to Copy
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

