function [x,eps]=combine(f ,F ,x0, c, tol, nmax)

    f=inline(f);
    F=inline(F);
    eps=tol+1;
    it=0;
        while (eps >= tol) && (it <= nmax)
            xL= x0- ((f(x0))*(x0-c)) / ( f(x0) - f(c) );
            xN= x0- f(x0)/F(x0);
            x=(xL+xN)/2;
            eps=abs(x-x0);
            x0=x;
            it=it+1;
            
       fprintf('\n i=%i, xL=%f, xN=%f x=%f, eps=%e', it,xL,xN, x, eps);   %behet printimi(" Iteracioni, perafrimi, gabimi")

        end
end