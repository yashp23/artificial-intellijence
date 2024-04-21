domains
    bird = string.

predicates
    bird(bird).
    canfly(bird).

clauses
    bird("crow").
    bird("sparrow").
    bird("parrot").
    bird("penguins").
    bird("dove").
    bird("robin").
    bird("turkey").
    bird("hawk").
    bird("goose").
    bird("swallow").
    bird("pigeon").
    bird("woodpecker").

    canfly("penguins") :- !, fail.
    canfly(A) :- bird(A).



%goal - canfly("penguins")
     % canfly("crow")