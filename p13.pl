encode_direct([], []).
encode_direct([A], [A]).
encode_direct([H, H2 | InTail], [H | OutTail]) :-
  H \= H2,
  encode_direct([H2 | InTail], OutTail).
encode_direct([H, H | InTail], [[2, H] | OutTail]) :-
  encode_direct([H | InTail], [H | OutTail]).
encode_direct([H, H | InTail], [[N, H] | OutTail]) :-
  encode_direct([H | InTail], [[N2, H] | OutTail]),
  N is N2 + 1.
