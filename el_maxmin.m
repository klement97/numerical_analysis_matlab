function [ max,min ] = el_maxmin( A )
%funksioni gjen maksimumin dhe minimumin e matrices se dhene A
permasat=size(A);
min=A(1,1);
max=A(1,1);
   
    for i=1:permasat(1)
        for j=1:permasat(2)
            if A(i,j)<min
                min=A(i,j);
            end
            if A(i,j)>max
                max=A(i,j);
            end
        end
    end

end

