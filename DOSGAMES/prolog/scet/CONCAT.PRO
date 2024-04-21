domains
    list= integer*
predicates
    list_concat(list,list,list)
clauses
      list_concat([],L,L).
      list_concat([X1|L1],L2,[X1|L3]) :- list_concat(L1,L2,L3).











%goal:-

%list_concat([1,2],[57,63,55],NewList).

%NewList = [1,2,57,63,55]