domains
      list=integer*
predicates
      list_member(integer,list).
clauses
      list_member(X,[X|_]).
      list_member(X,[_|TAIL]):-list_member(X,TAIL).


goal: list_member(5,[2,3,4,5,7]).


