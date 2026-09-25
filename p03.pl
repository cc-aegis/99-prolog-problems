element_at(X, [X|_], 1).
element_at(X, [_|Xs], I) :-
    element_at(X, Xs, I2),
    I is I2 + 1.
