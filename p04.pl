my_length([], 0).
my_length([_|T], Len) :-
    my_length(T, TLen),
    Len is TLen + 1.
