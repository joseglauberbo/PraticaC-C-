notas(joao, 5, 7, 8).
notas(maria, 6, 6, 6).
notas(joana, 8, 5.1, 10).
notas(mariana, 9, 9, 3).
notas(cleuza, 8.5, 7, 8.6).
notas(jose, 3.5, 3.0, 2.0).
notas(mary, 10, 8, 7).
 
media(ALUNO, MEDIA) :- notas(ALUNO, NOTA1,NOTA2, NOTA3), MEDIA is ((NOTA1+NOTA2+NOTA3)/3).

status(MEDIAGERAL, RESPOSTA) :- MEDIAGERAL =< 10, MEDIAGERAL >= 7, RESPOSTA = "aprovado".
status(MEDIAGERAL, RESPOSTA) :- MEDIAGERAL =< 6.9, MEDIAGERAL >= 4, RESPOSTA = "final".
status(MEDIAGERAL, RESPOSTA) :- MEDIAGERAL =< 3.9, MEDIAGERAL >= 0, RESPOSTA = "reprovado".
 
:- initialization(main).
 
main:-
    read(ALUNO),
    media(ALUNO,MEDIA),
    status(MEDIA,RESULTADO),
    write(RESULTADO),nl,
    halt(0).
