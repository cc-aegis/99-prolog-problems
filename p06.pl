:- use_module(p05).

palindrone(L) :-
    reverse(L, R),
    L = R.
