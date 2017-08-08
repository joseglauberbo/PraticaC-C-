removePrimeiro(X, [], []).
removePrimeiro(X, [X|C], C).
removePrimeiro(X, [Y|C], [Y|D]) :- removePrimeiro(X, C, D).

:- initialization(main).

main:-
	read(X),
	read(Y),
	removePrimeiro(Y,X,Z),
	write(Z),nl,
	halt(0).
