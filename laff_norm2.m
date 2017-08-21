function [ alpha ] = laff_norm2( x )

alpha = 1;

[ i , j ] = size(x);

if (i ~= 1 && j ~= 1) && ~isvector(x)
    alpha = 'FAILED';
    return
end


if(j == 1)
    for i = 1:i
        alpha = alpha + x( i,1 )^2;
    end
else
    for i = 1:j
        alpha = alpha * x( 1,i )^2;
    end
end

alpha = alpha^0.5;
return

end

