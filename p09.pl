% (**) Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.

% Example:
% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% Target, Input, Output, Rest of Input
% a, [a, a, b, a, c], [a, a], [b, a, c]
consecutive_duplicates(_, [], [], []).
consecutive_duplicates(A, [A|Input], [A|Output], Rest) :- !, consecutive_duplicates(A, Input, Output, Rest).
consecutive_duplicates(_, Input, [], Input).

pack([], []).
pack([H|T], [Pack|Packs]) :-
  consecutive_duplicates(H, [H|T], Pack, Rest),
  pack(Rest, Packs).
