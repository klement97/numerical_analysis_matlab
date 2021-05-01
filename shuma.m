function [ Srr, Ssh, Sm ] = shuma( A )
%funksion per shumen sipas rreshtave,shtyllave dhe gjith matrices
%Srr-vektor, Ssh-vektor ,Sm-numer

permasa=size(A); %size() kthen 2 permasat e matrices 
Srr=zeros(permasa(1),1); %sipas rreshtave, percaktuar me zero nje vektor shtylle
Ssh=zeros(1,permasa(2)); %sipas shtyllave, percaktuar me zero nje vektor rresht
Sm=0;
    
    %levizim nematric me dy cikle
    for i=1:permasa(1)
        for j=1:permasa(2)
            Sm=Sm + A(i,j); %shuma e pergjithshme
            Srr(j)=Srr(j) + A(j,i); %shuma sipas rreshtave
            Ssh(j)=Ssh(j) + A(i,j); %shuma sipas shtyllave
        end
    end
            
            


end

