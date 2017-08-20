function [ alpha ] = laff_norm2( x )

[ i_x , j_x ] = size(x);

if (i_x ~= 1 && j_x ~= 1) && ~isvector(x)
    x_out = 'FAILED';
    return
end

if ~isscalar( alpha )
    x_out = 'FAILED';
    return
end

if(j_x == 1)
    for i = 1:i_x
        x (i,1) = alpha* x(i,1);
    end
else
    for i = 1:j_x
        x (1,i) = alpha* x(1,i);
    end
end

x_out = x;


end

