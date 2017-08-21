function [ y_out ] = laff_copy( x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[ i_x , j_x ] = size ( x );
[ i_y , j_y ] = size ( y );

% Only Vector n*1 or 1*n
if (i_x ~= 1 && j_x ~= 1) | (i_y ~=1 && j_y ~=1)
    y_out = 'FAILED';
    return
end

% Check Size of x = y
if (i_x * j_x ~= i_y * j_y)
    y_out = 'FAILED';
    return
end

% Start to Copy
if (j_x == 1)
    if (j_x == 1)
        y_out = x;
    else 
        y_out = x';
    end
else
    if (j_x == 1)
        y_out = x';
    else
        y_out = x;
    end
end

return
end

