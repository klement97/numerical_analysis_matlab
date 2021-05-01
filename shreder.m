function [ x, eps ] = shreder(f,F,x0,p,tol,nmax)
%Algoritmi Shreder-it ose algoritmi Newton-p
%Perdoret per zgjidhjen e ekuacioneve me rrenje te p-fishta

f=inline(f);
F=inline(F);
eps=tol+1;
it=0;

while (eps>=tol) && (it<nmax) %dy kushte te ndalimit
   
    x=x0 - p*f(x0)/F(x0); %formula iterative
    eps=abs(x-x0); %gabimi
    x0=x;   %zevendesimi perafrimit
    it=it+1;    %rritja iteracionit
    fprintf('\ni=%i, x=%f, eps=%f', it,x,eps);
    
end


end

