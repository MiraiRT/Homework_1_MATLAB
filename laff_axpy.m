function [ y_out ] = laff_axpy( alpha , x ,y )


if ~isscalar( alpha )
    y_out = 'FAILED';
    return
end

[ i_x , j_x ] = size (x);
[ i_y , j_y ] = size (y);

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

% Start to axpy
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

