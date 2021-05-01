function [ x ] = lowerM( L,b )
%zgjidhja sistemit me matric trekendeshe te poshtme

%perdorim funksionin length() per te gjetur numrin e shtyllave te matrices
n=length(b);
%percaktojme vektorin kolone te zgjidhjeve x me n gjatesi
x=zeros(n,1);

    for i=1:n
        x(i)=b(i);
        for j=1:i-1
            x(i)=x(i)-A(i,j)*x(j);x
        end
    x(i) = x(i)/A(i,i);
    end
disp(x)
end

