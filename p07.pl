flatten([], []).
flatten([H|T], R) :-
    is_list(H), !,
    flatten(H, HFlat),
    flatten(T, TFlat),
    append(HFlat, TFlat, R).
flatten([H|T], [H|TFlat]) :-
    flatten(T, TFlat).
