DOMAINS
    loc =right;middle;left

PREDICATES
    hanoi(integer)
    move(integer,loc,loc,loc)
    inform(loc,loc)

CLAUSES
    hanoi(N):-
        move(N,left,middle,right).

    move(1,A,_,C):-
        inform(A,C),!.

    move(N,A,B,C):-
        N1=N-1, move(N1,A,C,B),
        inform(A,C),move(N1,B,A,C).

    inform(Loc1, Loc2):-nl,
        write("Move a disk from ", Loc1, " to ", Loc2).