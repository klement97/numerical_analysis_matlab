function [ x,eps ] = secant(f,x0,x1,tol,nmax)
%Metoda Prereses(secant)

    f=inline(f);
    it=0;
    eps=tol+1;
        
        while (eps >= tol) && (it <= nmax)
            
        x=x1-f(x1)*( (x1-x0)/(f(x1)-f(x0) ) );
        eps=abs(x-x1);
        x0=x1;
        x1=x;
        it=it+1;
        fprintf('\n i=%i, x=%f, eps=%f',it,x,eps);
        end

end


