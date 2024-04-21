domains
    person = symbol
    gender = male ; female

predicates
    male(person)
    female(person)
    father(person, person)
    mother(person, person)
    wife(person, person)
    parent(person, person, person)
    sister(person, person)
    brother(person, person)
    siblings(person, person)
    husband(person, person)
    son(person, person)
    daughter(person, person)
    grandfather(person, person)
    grandmother(person, person)
    uncle(person, person)
    aunt(person, person)
    cousin(person, person)

clauses
    male("raj").
    male("khush").
    male("sid").
    male("atul").
    male("dev").
    female("hetal").
    female("neha").
    female("kajal").
    female("chetna").

    father("raj", "khush").
    father("raj", "sid").
    father("khush", "atul").
    father("sid", "dev").
    father("sid", "chetna").
    mother("hetal", "khush").
    mother("hetal", "sid").
    mother("neha", "atul").
    mother("kajal", "dev").
    mother("kajal", "chetna").
    wife("hetal", "raj").
    wife("neha", "khush").
    wife("kajal", "sid").
    parent("raj", "hetal", "khush").
    parent("raj", "hetal", "sid").
    parent("khush", "neha", "atul").
    parent("sid", "kajal", "dev").
    parent("sid", "kajal", "chetna").



sister (X, Y):-parent (A, B, X), parent (A, B, Y), female (X), X <> Y.
brother (X, Y):- parent (A, B, X), parent (A, B, Y), male (X), X <> Y.
siblings (X, Y):- parent (A, B, X), parent (A, B, Y), X <> Y.
husband (X, Y):- wife (Y, X).
son (X, Y):- father (Y, X); mother (Y, X), male (X).
daughter (X, Y):-father (Y, X); mother (Y, X), female (X).
grandfather (X, Y):-father (X, Z), father (Z, Y).
grandmother (X, Y):-mother (X, Z), father (Z, Y).
uncle (X, Y):-brother (Z, X), father(Z, Y).
aunt (X, Y):- husband (Z, X), uncle (Z, Y).
cousin (X, Y):-uncle (Z, X), father (Z, Y).




%goal sister(chetna,dev)
%goal siblings(khush,dev)