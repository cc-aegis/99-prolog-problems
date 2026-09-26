:- use_module(p09).

runlength([X], X) :- !.
runlength([H|T], [L, H]) :- length([H|T], L).

encode_modified(L, X) :-
  pack(L, P),
  maplist(runlength, P, X).
