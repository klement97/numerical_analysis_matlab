function [ x, eps ] = MPF(F, x0, tol, nmax)
%METODA E PIKES FIKSE

    F=inline(F);
    it=0;
    eps=tol+1;
        
        while (eps>=tol) && (it<=nmax)
            x=F(x0);
            eps=abs(x-x0);
            x0=x;
            it=it+1;
        end
end

