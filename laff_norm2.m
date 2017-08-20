function [ alpha ] = laff_norm2( x )

alpha = 1;

[ i_x , j_x ] = size(x);

if (i_x ~= 1 && j_x ~= 1) && ~isvector(x)
    alpha = 'FAILED';
    return
end


if(j_x == 1)
    for i = 1:i_x
        alpha = alpha + x( i,1 )^2;
    end
else
    for i = 1:j_x
        alpha = alpha * x( 1,i )^2;
    end
end

alpha = alpha^0.5;
return

end

