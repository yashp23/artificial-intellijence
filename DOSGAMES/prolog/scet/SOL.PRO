domains
       list=integer*
predicates
       size(list,integer)
clauses
       size([],0).
       size([_|T],N):-size(T,N1),N=N1+1.









%goal:- size<[1,2,3,4,5,6,7],N>
%ans:- 7