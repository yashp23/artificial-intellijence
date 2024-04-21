domains
    list=integer*.
predicates
    findlast(list,list).
clauses
    findlast([H],X):-
    X=[H].
    findlast([_|T],X):-
    findlast(T,X).





%goal:- findlast([1,2,3,4],X)
%X=[4]