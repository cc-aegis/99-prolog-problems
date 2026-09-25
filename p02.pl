last_but_one(X, [X, _]).
last_but_one(X, [Y|Ys]) :- last_but_one(X, Ys).
