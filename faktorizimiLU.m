function [ x ] = faktorizimiLU( L,U,b )
%faktorizimi LU
% HYRJE- 
%L(lower)= matrica g e perftuar pas gauss
%U(upper)= matrica A e perftuar pas gauss
%b= vektori i termave te lira
% DALJE-
%x=vektori x i zgjidhjes se sistemit

%  Ly=b
%  Ux=y
% zgjidhja e ketij sistemi me matrica trekendeshe 
%na jep vektorin x

y=lowerM(L,b);
x=upperM(U,y);

    

