function [ x ] = gaussZh( A,b )
%metoda e gauss-zhordan per zgjidhjen e sistemeve te ekuacioneve lineare
%njesoj si gauss por bejme zero edhe elementet siper celesit

n=length(b);
x=zeros(n,1);

%%
%KONTROLLI I CELESAVE
    for i=1:(n-1)
      if A(i,i)==0
        for j=(i+1):n
            if A(j,i)~=0
                tmp=A(i,:);
                A(i,:)=A(j,:);
                A(j,:)=tmp;
                
                tmp=b(i);
                b(i)=b(j);
                b(j)=tmp;
            end
        end
      end
%ketu perfundon kontrolli dhe nderrimi rreshtave
%cikli for i pare vazhdon

%%
%ELIMINIMI GAUSS
    for j=(i+1):n
        g=A(j,i)/A(i,i);
        A(j,i:end)=A(j,i:end) - g*A(i,i:end);
        b(j)= b(j) - g*b(i);
    end
    end 
%%
%IDEJA E ZHORDAN
%pasi kemi perftuar matricen e siperme nga matrica A tani bejme
%zero edhe elementet siper diagonales dhe keshtu fitojme 
%nje matrice qe ka zero cdo element pervec diagonales kryesore

for j=2:n
    for i=1:(j-1)
%         if i~=j
        g=A(i,j)/A(j,j);
        A(i,j:end)=A(i,j:end)-g*A(j,j:end);
        b(i)=b(i)-g*b(j);
        end
    end

    
%%
%ZEVENDESIMI
for i=1:n
        x(i)=b(i)/A(i,i);
end
    


