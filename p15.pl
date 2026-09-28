prepend(_, 0, R, R).
prepend(X, N, L, [X | L2]) :-
  N2 is N - 1,
  prepend(X, N2, L, L2).

dupli([], _, []).
dupli([H | T1], N, R) :-
  dupli(T1, N, T2),
  prepend(H, N, T2, R).
