domains
     list=integer*
predicates
     nele(list, integer, list)
clauses
     nele([H|_],1,X):-
     X=[H].
     nele([_|T],N,X):-
     N1=N-1,
     nele(T,N1,Χ).






goal:- nele([5,4,3,2,1],4,X)
ans:- X=[2]