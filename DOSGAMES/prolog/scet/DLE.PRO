domains
    list= integer*
predicates
    list_delete(integer, list, list)
clauses
    list_delete(X, [X], []).
    list_delete(X,[X|L1], L1).
    list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).






goal:-list_delete(3,[1,3,4,5,7],NewList).

NewList = [1,4,5,7] ?

