:- use_module(p09).

runlength([H|T], [L, H]) :- length([H|T], L).

encode(L, X) :-
  pack(L, P),
  maplist(runlength, P, X).
