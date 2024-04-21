domains 
     loc = N1;N
predicates
      factorial(integer,integer)
      factorial(integer)
clauses
      factorial(0,X):- X=1.
      factorial(N,X):- NN=N-1, factorial(NN,X1), X=X1*N.
      factorial(N):- factorial(N,X), write(X).






