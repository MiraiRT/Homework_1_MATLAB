function [ y_out ] = laff_axpy( alpha , x ,y )
% Function : y_out = ( alpha * x ) + y.

% Check alpha is scalar?.
if ~isscalar( alpha )
    y_out = 'FAILED';
    return
end

% Get size of x and y.
[ i_x , j_x ] = size (x);
[ i_y , j_y ] = size (y);

% Check x,y are vector nx1 or 1xn.
if (i_x ~= 1 && j_x ~= 1) | (i_y ~=1 && j_y ~=1)
    y_out = 'FAILED';
    return
end

% Check Size ( nx1 or 1xn ) of x = y.
if (i_x * j_x ~= i_y * j_y)
    y_out = 'FAILED';
    return
end

% Operating Method.
if (j_x == 1)
    if (j_y == 1)
        for i = 1:i_x
            y (i,1) = laff_scal( alpha,x( i,1 ) ) + y( i,1 );
        end
    else 
        for i = 1:i_x
            y (1,i) = laff_scal( alpha,x( i,1 ) ) + y( 1,i );
        end
    end
else
    if (j_y == 1)
        for i = 1:j_x
            y (i,1) = laff_scal( alpha,x( 1,i ) ) + y( i,1 );
        end
    else
        for i = 1:j_x
            y(1,i) = laff_scal( alpha,x( 1,i ) ) + y( 1,i );
        end
    end
end

y_out = y;
return

end

