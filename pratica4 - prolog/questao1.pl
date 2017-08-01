reinado(rhodi, 884, 878).
reinado(anarawd, 878, 916).
reinado(hywel_dda, 916, 950).
reinado(lago_ap_idwal, 950, 979).
reinado(hywal_ap_Ieuaf, 979, 985).
reinado(cadwallon, 985, 986).
reinado(maredudd, 986, 999).

principe_reinou(NOME, ANO) :- 
	reinado(NOME, ANO1, ANO2), 
	ANO >= ANO1,
	ANO =< ANO2. 

:- initialization(main).

main:-
	repeat,
	read(ANO),
	principe_reinou(NOME, ANO),
	write(NOME),nl,
	halt(0).
