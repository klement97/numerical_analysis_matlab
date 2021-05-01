function [ x ] = upperM( U,b )
%upperM - upper matrix
%zgjidhja e sistemeve me matric trekendeshe te siperme

%marrim gjatesine e vektorit x nga gjatesia e vektorit b
n=length(b);
%iniciojme vektorin shtylle x me zero fillimisht
x=zeros(n,1);

    for i=n: -1 :1
        s=0;
        for j=i+1:n
            s=s + x(j)*U(i,j);
        end
        x(i) = ( b(i) - s) / U(i,i);
    end

end

