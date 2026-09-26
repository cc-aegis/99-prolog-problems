decode_single_encoding([0, _], []).
decode_single_encoding([Len, Lit], [Lit|Res]) :-
  Len2 is Len - 1,
  decode_single_encoding([Len2, Lit], Res).

decode_modified([], []).
decode_modified([H|T], Res) :-
  is_list(H),
  !,
  decode_single_encoding(H, DeH),
  decode_modified(T, DeT),
  append(DeH, DeT, Res).
decode_modified([H|T], [H|DeT]) :-
  decode_modified(T, DeT).
