function [x,A,g] =gauss(A,b)
%Metoda e Eliminimit te Gauss-it

%Perdorim b meqenese A eshte matrice
%dhe mund te mos jete gjithmone katrore
n=length(b);
%vektori x i zgjidhjes, si fillim e caktojme me zero
%kujdesi qendron qe te jete vektor shtylle
g=eye(n);

% do te perdorim indekset: i-rreshta, j-shtylla

%% 
%KONTROLLI I CELESAVE
for i=1:(n-1) %levizim nga rreshti 1 deri te n-1 meqe posht rreshtit n skemi elemente
    if A(i,i)==0 %elementi i diagonales kryesore
        for j=i+1:n %for per nderrim rreshtash
            if A(j,i)~=0
                %nese celesi ==0 bejme nderrimin e rreshtit
                tmp=A(i,:);
                A(i,:)=A(j,:);
                A(j,:)=tmp;
                
                tmp=b(i);
                b(i)=b(j);
                b(j)=tmp;
            end
        end
    end
%%
%ELIMINIMI
    for  j=(i+1):n %for per eliminim
        g(j,i)=A(j,i)/A(i,i); %koeficenti 
        A(j,i:end)=A(j,i:end) - g(j,i)*A(i,i:end); %
        b(j)=b(j) - g(j,i)*b(i);
    end
end
%%
%ZEVENDESIMI
       x=upperM(A,b);
    
end

