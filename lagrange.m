function [ x, eps ] = lagrange(f, x0, c, tol, nmax)
%METODA LAGRANGE(KORDES) PER TE GJETUR PERAFRIMIN E RRENJES SE NJE
%EKUACIONI POLINOMIAL

    %Perdoruesi duhet te kete izlouar rrenjen me nje segment [a,b] dhe
    %segmenti te permbaje vetem nje rrenje. 
    %Marrim nga perdoruesi vleren a, b, tolernac, nmax (kushtet e ndalimit)
    %Marrim si x0 skajin e poshtem dhe c skajin e siperm
    %formula: Xn+1= Xn - [f(Xn)(Xn - c)] / [f(Xn) - f(c)]
        
        if nargin==3
            tol=1e-05;
            nmax=1e02;
        elseif nargin==4
            nmax=1e02;
        elseif nargin~=5
            error('Parametra hyres te gabuar.');
        end
        f=inline(f);
        it=0;
        eps=tol+1;
        if sign(f(x0))* sign(f(c) )<0
            while ( eps>=tol) && (it <= nmax)
                x= x0 - (( f(x0)*(x0 - c) ) / ( f(x0) - f(c) ));
                eps= abs(x-x0);
                x0=x;
                it=it + 1;
                    fprintf('\n Iteracioni:%i, {Perafrimi:%f, Epsilon:%e' , it, x, eps);
            end
        else
            disp 'Te dhenat nuk jane te sakta' 
end

