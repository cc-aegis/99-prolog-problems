dupli([], []).
dupli([H | T1], [H, H | T2]) :- dupli(T1, T2).
