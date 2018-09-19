-module(discrepancy_3).

-compile(export_all).

add(A, B) ->
    A + B.

broken() ->
  Tuple = {"hello", 42, 15},
  add(read_tuple(Tuple, 1), read_tuple(Tuple,2)).

read_tuple({V, _, _}, 1) -> V;
read_tuple({_, V, _}, 2) -> V;
read_tuple({_, _, V}, 3) -> V.

% this is too complex for dialyzer to understand.
