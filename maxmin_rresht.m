function [ max,min ] = maxmin_rresht( A )
%funksion per gjetjen e max dhe min sipas rreshtave
%kthen dy vektor-
%max=[max1; max2; max3]
%min=[min1; min2; min3]
%vektoret jane vektor shtylle
permasa=size(A);
max=zeros(permasa(1),1);
min=zeros(permasa(1),1);
    for i=1:permasa(1)
        max(i)=A(i,1);
        min(i)=A(i,1);
        for j=1:permasa(2)
            if A(i,j)>max(i)
            max(i)=A(i,j);
            end
            if A(i,j)<min(i)
                min(i)=A(i,j);
            end
        end
    end


end

