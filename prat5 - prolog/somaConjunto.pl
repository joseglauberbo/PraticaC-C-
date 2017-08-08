retiraTudo(_,[],[]).
retiraTudo(X,[X|Y],L) :- retiraTudo(X,Y,L).
retiraTudo(X,[Z|Y],[Z|W]) :- X \== Z, retiraTudo(X,Y,W).

retiraRepetidos([],[]).
retiraRepetidos([X|Y],[X|Z]) :- retiraTudo(X,Y,L), retiraRepetidos(L,Z).

somaElem([],0).
somaElem([A|B],Y) :- somaElem(B,Y1), Y is A+Y1.

somaNaoRepetidos(X,Y) :- retiraRepetidos(X,Z), somaElem(Z,Y).  

:- initialization(main).

main:-
read(X),
somaNaoRepetidos(X,Y),
write(Y),nl,
halt(0).
