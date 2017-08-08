inverteLista([],[]).
inverteLista([Head|Tail],List):- inverteLista(Tail,Rest), concat(Rest,[Head],List).

concat([],L,L).
concat([X|L1],L2,[X|L3]):- concat(L1,L2,L3). 

:- initialization(main).

main:-
read(X),
inverteLista(X,Y),
write(Y),nl,
halt(0).



