function [ x, eps ] = newton( f, df, x0, tol, nmax )
%METODA E NEWTON-IT

%marim njerin nga skajet si x0 fillestar
%dhe x(n+1)=x(i)-(f(x)/f'(x))

if nargin==3    %nese 3 dmth qe nuk kemi tolerancen dhe nmax
    tol=1e-4;   %i japim vleren 0.0001 tolerances
    nmax=1e2;   %i japim vleren 100 nmax-it
elseif nargin==4    %ne kete rast kemi tolerancen por jo nmax
    nmax=1e2;       %i japim nmax vleren 100
elseif nargin~=5    %ne kete rast ose na mungojne shum vlera ose kemi me shum sec duhet prandaj afishohet mesazhi
    error('Parametra hyres te gabuar');
end
f=inline(f);    %e kthejme f nga string ne funksion
df=inline(df);  %e kthejme derivatin ne funksion
eps=tol+1;      %vlera e eps ne fillim
it=0;           %iteracioni=0 meqe skemi filluar asnje hap
while(eps>=tol) && (it<=nmax)   %kushtet e ndalimit te algoritmit
    x=x0 - ( f(x0)/df(x0) );    %zbatimi formules iterative
    eps= abs(x-x0);             %gjetja e eps ne hapin perkates
    x0=x;                       %si Xo tani na sherben vlera e re e gjetur nga formula
    it=it+1;                    %iteracioni shtohet me 1
    fprintf('\n i=%i, x=%f, eps=%e', it, x, eps);   %behet printimi(" Iteracioni, perafrimi, gabimi")
end     %mbyllet cikli while

end     %mbyllet funksioni